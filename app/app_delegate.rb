class AppDelegate
  attr_accessor :window
  attr_accessor :connectedWatch
  
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    PBPebbleCentral.setDebugLogsEnabled(true)
    
    self.connectedWatch = PBPebbleCentral.defaultCentral.lastConnectedWatch
    uuidString          = "33ad3e1c-7a52-434f-bfaf-efcc4f842474"
    PBPebbleCentral.defaultCentral.setAppUUID(uuidString)
    
    NSLog("Hi there!")
    
    # Weeee, the fun begins! (Remove #s to see what's happening)
    # receiveUpdateHandler = self.connectedWatch.appMessagesAddReceiveUpdateHandler(
    #   -> watch, update {
    #     NSLog("Received message: %@", update)
    #     return true
    #   }
    # )
    # Oh crap, its broken.
    
    NSLog("Where am I?!")
    
    self.window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    viewController = UIViewController.alloc.init
    viewController.view.backgroundColor = UIColor.whiteColor
    self.window.rootViewController = viewController
    self.window.makeKeyAndVisible
    
    true
  end
end
