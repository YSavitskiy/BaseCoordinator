Pod::Spec.new do |s|
  s.name             = 'BaseCoordinator'
  s.version          = '1.0.0'
  s.summary          = "Coordinator pattern"
  s.homepage         = 'https://github.com/YSavitskiy/BaseCoordinator'
  s.license          = { :type => '0BSD', :file => 'LICENSE' }
  s.author          = { '' => 'yursavitskiy@gmail.com' }
  s.source           = { :git => 'https://github.com/YSavitskiy/BaseCoordinator.git', :tag => s.version.to_s }
  s.ios.deployment_target = '9.0'

  s.source_files = 'BaseCoordinator/**/*.{swift}'  
  s.swift_version = "4.0"

end
