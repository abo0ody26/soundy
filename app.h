#ifndef APP_H
#define APP_H

#include <iostream>
#include <fstream>
#include <string>
#include <cstdlib>

#include "soundy.h"
#include "audio.h"
#include "configuration.h"
#include "colortracker.h"
#include "mainwindow.h"
#include "configwindow.h"

class soundy::app {
 public:
  app();
~app() {}
  
  int run();
  
  bool loadingError() {return _loadingError;}

 private:
  //std::ifstream configInputStream;
  //std::ofstream configOutputStream;
  bool _loadingError = false;
  //const std::string configFileName = "config.cfg";

  
};

#endif // APP_H
