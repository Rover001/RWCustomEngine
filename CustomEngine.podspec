
Pod::Spec.new do |spec|
  spec.name         = "CustomEngine"
  spec.version      = "0.1.4"
  spec.summary      = "自定义管理SDK"
  spec.homepage     = "https://cocoapods.org/pods/CustomEngine"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author       = { "Rover001" => "zengyun6666@163.com" }
  spec.platform     = :ios
  spec.platform     = :ios, "9.0"
  spec.ios.deployment_target = "9.0"
  spec.source       = { :git => "https://github.com/Rover001/CustomEngine.git", :tag => "#{spec.version}" }
  spec.ios.vendored_frameworks  = "Engine/Framework/*.framework"
  spec.requires_arc = true
  
  spec.subspec 'Category' do |s|
       s.source_files = 'Engine/Category/*.{h,m}'
       s.public_header_files = 'Engine/Category/*.h'
  end
    
end
