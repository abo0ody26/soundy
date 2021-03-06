#include "colortracker.h"
using namespace cv;

// this function thresholds the HSV image to create a binary image
Mat soundy::VP::ColorTracker::GetThresholdedImage(Mat imgHSV,
						  int lowH,
						  int highH,
						  int lowS,
						  int highS,
						  int lowV,
						  int highV)
{
  Mat imgThresh = Mat(imgHSV.size(), CV_8U, 1);
  inRange(imgHSV, Scalar(lowH, lowS, lowV), Scalar(highH, highS, highV), imgThresh);

  // initialize element for dilation 
  Mat element = getStructuringElement(MORPH_RECT,
				      Size(2*21 + 1, 2*21+1),
				      Point(21, 21));

  //apply dilation operation
  dilate(imgThresh, imgThresh, element);
  return imgThresh;
}

void soundy::VP::ColorTracker::trackObject(Mat imgThresh)
{

  Moments moment = moments(imgThresh, 1);
  double moment10 = moment.m10;
  double moment01 = moment.m01;
  double area = moment.m00;

  // if the area<1000, I consider that the there are no object in the image and it's because of the noise, the area is not zero 
  if(area>1000){
    // calculate the position of the ball
   _posX = moment10/area;
   _posY = moment01/area;

   _lastX = _posX;
   _lastY = _posY;
  }
}

soundy::VP::ColorTracker::ColorTracker() :
  _lastX(0), _lastY(0), _posX(0), _posY(0), _lowH(0), _highH(0), _lowS(0), _highS(255), _lowV(0), _highV(255), _error(0)
  /*  _lowH(0), _highH(180), _lowS(0), _highS(255), _lowV(0), _highV(255), _posX(0), _posY(0), _lastX(0), _lastY(0)
   */
{
  _capture.open(0);
  if(!_capture.isOpened()){
    if(DEBUG) std::cout << NO_CAPTURE << std::endl;;
    _error = -1;
  }
  double frame_width = _capture.get(CV_CAP_PROP_FRAME_WIDTH);
  double frame_height = _capture.get(CV_CAP_PROP_FRAME_HEIGHT);
  if(DEBUG) {
  std::cout << "frame width: " << frame_width << std::endl;
  std::cout << "frame height: " << frame_height << std::endl;
  }
  if(frame_width != VIDEO_FRAME_WIDTH && frame_height != VIDEO_FRAME_HEIGHT) _desired_res = false;
  
  if(!_desired_res) {
    _capture.set(CV_CAP_PROP_FRAME_WIDTH, 640);
    _cam_resize_support = _capture.set(CV_CAP_PROP_FRAME_HEIGHT, 480);// we care only about the width because this is used to calculate the sound pitch so if width is not resizable then that's ok but the height must be changed.
  }
}

soundy::VP::ColorTracker::ColorTracker(int lowH, int highH, int lowS, int highS, int lowV, int highV) :
  _lastX(0), _lastY(0), _posX(0), _posY(0), _lowH(lowH), _highH(highH), _lowS(lowS), _highS(highS), _lowV(lowV), _highV(highV), _error(0)
{
  _capture.open(0);
  if(!_capture.isOpened()){
    if(DEBUG) std::cout << NO_CAPTURE << std::endl;;
    _error = -1;
  }
}

soundy::VP::ColorTracker::~ColorTracker()
{
  _imgTracking.release();
  _capture.release();
}

Point soundy::VP::ColorTracker::ColorPos()
{
  Mat map_x;
  Mat map_y;
  
  _capture >> _frame;
  if(!_desired_res && !_cam_resize_support) {
    resize(_frame, _frame,
	   Size(VIDEO_FRAME_WIDTH, VIDEO_FRAME_HEIGHT),
	   0, 0, INTER_CUBIC);
  }
  // create a blank image and assign it to _imgTracking which has the same size as the captured image
  _imgTracking = Mat(_frame.size(), CV_8UC3);
  
  if(_frame.empty()) {
    if(DEBUG) std::cout << "no frame" << std::endl;
    _error = -1;
  }
  map_x.create(_frame.size(), CV_32FC1);
  map_y.create(_frame.size(), CV_32FC1);

  for(int j = 0; j < _frame.rows; j++){
    for(int i = 0; i < _frame.cols; i++){
      map_x.at<float>(j, i) = _frame.cols - i;
      map_y.at<float>(j, i) = j;
    }
  }
  //remap(InputArray src, OutputArray dst, InputArray map1, InputArray map2, int interpolation, int borderMode, const Scalar &borderValue)
  remap(_frame, _frame, map_x, map_y, CV_INTER_LINEAR, BORDER_CONSTANT, Scalar(0, 0, 0));

  GaussianBlur(_frame, _frame, Size(3, 3), 0, 0, BORDER_DEFAULT);
  Mat _imgHSV = Mat(_frame.size(), CV_8UC3);
  cvtColor(_frame, _imgHSV, CV_BGR2HSV);

  Mat _imgThresh = GetThresholdedImage(_imgHSV, _lowH, _highH, _lowS,
				       _highS, _lowV, _highV);

  GaussianBlur(_imgThresh, _imgThresh, Size(3, 3), 0, 0, BORDER_DEFAULT);
  
  trackObject(_imgThresh);
  _imgHSV.release();
  _pub_imgThresh = _imgThresh.clone();
  _imgThresh.release();
  _pub_frame = _frame.clone();
  _frame.release(); 
  return Point(_posX, _posY);
}


