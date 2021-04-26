
Pod::Spec.new do |spec|
  spec.name         = "RWCustomEngine"
  spec.version      = "0.1.9"
  spec.summary      = "管理iPhone设备,适配页面开发"
  spec.homepage     = "https://cocoapods.org/pods/RWCustomEngine"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author       = { "Rover001" => "zengyun6666@163.com" }
  spec.platform     = :ios, "9.0"
  spec.ios.deployment_target = "9.0"
  spec.source       = { :git => "https://github.com/Rover001/RWCustomEngine.git", :tag => "#{spec.version}" }
  spec.ios.vendored_frameworks  = "RWDeviceEngine/*.framework"
  spec.requires_arc = true
  
  spec.subspec 'Category' do |s|
       s.source_files = 'Engine/Category/*.{h,m}'
       s.public_header_files = 'Engine/Category/*.h'
  end
    
end
