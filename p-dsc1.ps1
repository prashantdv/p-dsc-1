####################################################################
#  Author - prashant divakaran
#  File - first powershell dsc test
#
#
####################################################################

Configuration ServiceConfig {
  Import-DscResource -ModuleName PSDesiredStateConfiguration
  
  Node "IISNLDEL-NB0113" {
    Service TroubleShootingService {
      Name = "WdiSystemHost"
      State = "Running"
      StartupType = "Automatic"
    }
    LocalConfigurationManager {
      ConfigurationMode = 'ApplyAndAutoCorrect'
      
  }
  }
}

ServiceConfig