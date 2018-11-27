module AppVersion
  #TODO we can check the git version based on that we can increase the version dynamically
  MAJOR_VERSION = "1"
  MINOR_VERSION = "0"
  BUILD_VERSION = "0"
  VERSION = AppVersion::MAJOR_VERSION+"."+AppVersion::MINOR_VERSION+"."+AppVersion::BUILD_VERSION
end