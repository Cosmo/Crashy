# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/ios'

begin
  require 'bundler'
  Bundler.require
rescue LoadError
end

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'crashy'
  app.identifier = "com.example.crashy"
  
  app.entitlements['keychain-access-groups'] = [
    app.seed_id + '.' + app.identifier
  ]
  
  app.device_family = [:iphone, :ipad]
  
  
  app.info_plist['UISupportedExternalAccessoryProtocols'] = ["com.getpebble.public"]
  app.info_plist['UIBackgroundModes'] = ["external-accessory"]
  
  app.vendor_project('vendor/PebbleVendor.framework', :static, :products => ['PebbleVendor'], :headers_dir => 'Headers')
  app.vendor_project('vendor/PebbleKit.framework',    :static, :products => ['PebbleKit'], :headers_dir => 'Headers')
  
  app.frameworks << "MessageUI"
  app.frameworks << "CFNetwork"
  app.frameworks << "CoreMotion"
  app.frameworks << "CoreBluetooth"
  app.libs       << ['/usr/lib/libz.dylib']
  app.frameworks << "ExternalAccessory"
  app.frameworks << "CoreGraphics"
  app.frameworks << "UIKit"
  app.frameworks << "Foundation"
end
