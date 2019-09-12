
Pod::Spec.new do |s|
  s.name             = 'XZLWXBSDK'
  s.version          = '1.0.0'
  s.summary          = '新再灵维小保SDK'
  s.homepage         = 'https://github.com/yangtianyuHF/Wuye'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'yangtianyu' => '164878873@qq.com' }
  s.source           = { :git => 'https://github.com/yangtianyuHF/Wuye.git', :tag => s.version.to_s }
  s.ios.deployment_target = '9.0'
  s.frameworks = 'UIKit','CoreGraphics','Photos','AVFoundation','AssetsLibrary'
  s.vendored_frameworks ='XZLWXBSDK/Classes/Frameworks/XZLWXBSDK.framework'
  s.resource_bundles = {
      'XZLWXBSDKResource' => ['XZLWXBSDK/Assets/*']
  }

  s.dependency 'MBProgressHUD'
  s.dependency 'Masonry'
  s.dependency 'YYModel'
  s.dependency 'SDWebImage'
  s.dependency 'AFNetworking'

end
