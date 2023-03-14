####################################################################
#  Author - prashant divakaran
#  File - first powershell dsc test
#
#
####################################################################

Configuration ServiceConfig {
  Import-DscResource -ModuleName PSDesiredStateConfiguration
  
  Node "IISNLDEL-NB0113" {
    Service SpoolerService {
      Name = "Spooler"
      State = "Running"
      StartupType = "Automatic"
    }
  }
}
