Pod::Spec.new do |s|
  s.name     = 'YKSafariActivity'
  s.version  = '1.0.0'
  s.license  = 'MIT'
  s.summary  = 'A UIActivity subclass to open Safari'
  s.homepage = 'https://github.com/yuyak/YKSafariActivity'
  s.authors  = 'yuyak'
  s.source   = { :git => 'https://github.com/yuyak/YKSafariActivity.git', :tag => '1.0.0' }
  s.source_files = 'YKSafariActivity/*.{h,m}'
  s.resources = 'YKSafariActivity/*.png'
  s.requires_arc = true
  s.ios.deployment_target = '6.0'
end
