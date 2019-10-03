
Pod::Spec.new do |spec|

  spec.name         = "CustomEngine"
  spec.version      = "0.0.1"
  spec.summary      = "设备管理"
  spec.homepage     = "https://github.com/Rover001/SDK"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author             = { "Rover001" => "zengyun6666@163.com" }
  spec.platform     = :ios
  spec.platform     = :ios, "9.0"
  spec.ios.deployment_target = "9.0"
  spec.source       = { :git => "https://github.com/Rover001/SDK.git", :tag => "#{spec.version.to_s}" }
  #spec.source_files  = "src"
  spec.ios.vendored_frameworks  = "CustomEngine/*.framework"
  #spec.frameworks = "UIKit","Foundation"
  spec.requires_arc = true
end
