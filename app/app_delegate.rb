class AppDelegate
  attr_accessor :connectedWatch
  
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    PBPebbleCentral.setDebugLogsEnabled(true)
    
    self.connectedWatch = PBPebbleCentral.defaultCentral.lastConnectedWatch
    uuidString          = "33ad3e1c-7a52-434f-bfaf-efcc4f842474"
    PBPebbleCentral.defaultCentral.setAppUUID(uuidString)
    
    NSLog("Hi there!")
    
    # Weeee, the fun begins!
    receiveUpdateHandler = self.connectedWatch.appMessagesAddReceiveUpdateHandler(
      -> watch, update {
        NSLog("Received message: %@", update)
        return true
      }
    )
    # Oh crap, its broken.
    
    NSLog("Where am I?!")
    
    true
  end
end
