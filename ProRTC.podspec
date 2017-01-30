
Pod::Spec.new do |s|
  s.name             = 'ProRTC'
  s.version          = '1.0.0-beta2'
  s.summary          = 'An easy-to-use framework provides native WebRTC support on iOS platform.'
  s.homepage         = 'https://prortc.com'
  s.license          = { :type => 'Commercial', :text => 'https://prortc.com/terms-conditions.php' }
  s.author           = { 'ProRTC project authors' => 'support@prortc.com' }
  s.source           = { :git => 'https://github.com/ProRTC/ProRTC.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/ProRTCApp'

  s.ios.deployment_target = '9.0'
  s.requires_arc = true

  s.ios.vendored_frameworks = 'ProRTC/ProRTC.framework'
  s.frameworks = [
                  'SystemConfiguration',
                  'UIKit',
                  'GLKit',
                  'CoreMedia',
                  'CoreGraphics',
                  'AVFoundation',
                  'Foundation',
                  'Security',
                  'CFNetwork',
                  'AudioToolbox',
                  'VideoToolbox',
                  'CoreAudio',
                  'CoreVideo',
                  'OpenGLES',
                  'QuartzCore'
                  ]

  s.libraries = [
                 'c++',
                 'icucore',
                 'stdc++',
                 'System',
                 'sqlite3'
                 ]

  s.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-ObjC',
                            'FRAMEWORK_SEARCH_PATHS' => '${PODS_ROOT}/ProRTC_iOS'
                          }
end
