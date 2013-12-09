#include "audio.h"

static int paCallback(const void *inputBuffer,
		      void *outputBuffer,
		      unsigned long framesPerBuffer,
		      const PaStreamCallbackTimeInfo* timeInfo,
		      PaStreamCallbackFlags statusFlags,
		      void *userData)
{
  paData *data = (paData*)userData;
  float *out = (float*) outputBuffer;
  unsigned long i;

  (void) timeInfo;
  (void) statusFlags;
  (void) inputBuffer;

  for(i=0; i<framesPerBuffer; i++)
    {
      *out++ = data->sine[data->left_phase];
      *out++ = data->sine[data->right_phase];
      data->left_phase += data->left_inc;
      if(data->left_phase >= TABLE_SIZE) data->left_phase -= TABLE_SIZE;
      data->right_phase += data->right_inc;
      if(data->right_phase >= TABLE_SIZE) data->right_phase -= TABLE_SIZE;
    }
  return paContinue;
}

static void StreamFinished(void*)
{
  std::cout << "Stream Completed." << std::endl;
}

soundy::Sound::audio::audio()
{
  for(int i=0; i<TABLE_SIZE; i++){
    _data.sine[i] = (float) sin( ((double)i/(double)TABLE_SIZE) * M_PI * 2. );
  }

  _data.left_phase = _data.right_phase = 0;
  _err = Pa_Initialize();
  if(_err != paNoError) reportError();

  
    _outputParameters.device = Pa_GetDefaultOutputDevice(); /* default output device */
    if (_outputParameters.device == paNoDevice) {
      std::cout << "Error: No default output device found" << std::endl;
      reportError();
    }
    _outputParameters.channelCount = 2;       /* stereo output */
    _outputParameters.sampleFormat = paFloat32; /* 32 bit floating point output */
    _outputParameters.suggestedLatency = Pa_GetDeviceInfo( _outputParameters.device )->defaultLowOutputLatency;
    _outputParameters.hostApiSpecificStreamInfo = NULL;

    _err = Pa_OpenStream(
			 &_stream,
			 NULL,
			 &_outputParameters,
			 SAMPLE_RATE,
			 FRAMES_PER_BUFFER,
			 paClipOff,
			 paCallback,
			 &_data);
    if( _err != paNoError ) reportError();

    _err = Pa_SetStreamFinishedCallback(_stream, &StreamFinished);
    if(_err != paNoError) reportError();
}


void soundy::Sound::audio::reportError()
{
  Pa_Terminate();
  std::cerr << "An error occured while using portaudio stream."
	    << std::endl;

  std::cerr << "Error number: " << _err << std::endl;
  std::cerr << "Error message: " << Pa_GetErrorText(_err) << std::endl;
  
}

void soundy::Sound::audio::playSound(int left_inc, int right_inc)
{
  _data.left_inc = left_inc;
  _data.right_inc = right_inc;
  //Pa_Sleep(50);
}

void soundy::Sound::audio::initSound()
{
  _err = Pa_StartStream(_stream);
  if(_err != paNoError) reportError();
}

void soundy::Sound::audio::stopSound()
{
  _err = Pa_CloseStream(_stream);
  if(_err != paNoError) reportError();
}

soundy::Sound::audio::~audio()
{
  _err = Pa_CloseStream(_stream);
  if( _err != paNoError ) reportError();
  _err = Pa_StopStream(_stream);
  if(_err != paNoError) reportError();
  Pa_Terminate();
  std::cout << "Audio object destroyed." << std::endl;
}
