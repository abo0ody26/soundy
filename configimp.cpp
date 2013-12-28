// config implementation
#include "soundy.h"

//soundy::Config::configParams soundy::Config::configParams::cp;

bool soundy::Config::readConfig()
{
  std::string line;
  configInputStream = ifstream(configFileName);
  if(configInputStream.is_open()) {
    for(int i=0; i < TOTAL_CONFIG_LINES; i++) {
      std::getline(configInputStream, line);
      if(i = LOW_H_LINE) soundy::Config::cp.lowH = atoi(line.c_str());
      if(i = HIGH_H_LINE) soundy::Config::cp.highH = atoi(line.c_str());
      if(i = LOW_S_LINE) soundy::Config::cp.lowS = atoi(line.c_str());
      if(i = HIGH_S_LINE) soundy::Config::cp.highS = atoi(line.c_str());
      if(i = LOW_V_LINE) soundy::Config::cp.lowV = atio(line.c_str());
      if(i = HIGH_V_LINE) soundy::Config::cp.highV = atio(line.c_str());
    }
    configInputStream.close();
  } else { // that means there is no config file
    configOutputStream = ofstream(configFileName);
    if(configOutputStream.is_open()) {
      configOutputStream << "0\n"; // lowH
      configOutputStream << "180\n"; // highH
      configOutputStream << "0\n"; // lowS
      configOutputStream << "255\n"; // highS
      configOutputStream << "0\n"; //lowV
      configOutputStream << "255\n"; // highV
      configOutputStream.close();
    } else { // that means I can't open the config file
      if(DEBUG) std::cout << "Unable to open configuration."
			  << std::endl;
      return false;
    }
  }
  return true;
}

bool soundy::Config::writeConfig(int lowH, int highH, int lowS,
				 int highS, int lowV, int highV)
{
  configOutputStream = ofstream(configFileName, std::fstream::trunc);
  if(configOutputStream.is_open()){
    configOutputStream << lowH << "\n";
    configOutputStream << highH << "\n";
    configOutputStream << lowS << "\n";
    configOutputStream << highS << "\n";
    configOutputStream << lowV << "\n";
    configOutputStream << highV << "\n";
  } else {
    std::cout << "Unable to open configuration for output."
	      << std::endl;
    return false;
  }

  return true;
}

void soundy::Config::setConfig(int lowH, int highH, int lowS,
			       int highS, int lowV, int highV)
{
  cp.lowH = lowH;
  cp.highH = highH;
  cp.lowS = lowS;
  cp.highS = highS;
  cp.lowV = lowV;
  cp.highV = highV;
}
