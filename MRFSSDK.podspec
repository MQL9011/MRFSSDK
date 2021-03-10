Pod::Spec.new do |s|
  s.name             = 'MRFSSDK'
  s.version          = '0.1.0'
  s.summary          = 'FSMeeting SDK封装.'

  s.description      = <<-DESC
  FSMeeting SDK封装
                       DESC

  s.homepage         = 'https://github.com/MQL9011'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'mccree' => '301063915@qq.com' }
  s.source           = { :git => 'https://github.com/MQL9011/MRFSSDK.git', :tag => s.version.to_s }

  s.platform = :ios
  s.ios.deployment_target = '9.0'
  s.source_files = 'MRFSSDK/Classes/*.{h,m}'
  s.public_header_files = 'MRFSSDK/Classes/*.h'
  s.resources = "MRFSSDK/Assets/*.{bundle}"
  s.xcconfig = {
    'USER_HEADER_SEARCH_PATHS' => [
        '"$(SRCROOT)/../../SDK/inc"'
    ],
#    'ENABLE_BITCODE' => 'NO',
#    'OTHER_LDFLAGS' => '-ObjC',
#    'VALID_ARCHS' => 'arm64',
  }
#  s.user_target_xcconfig = {
#    'ENABLE_BITCODE' => 'NO'
#  }
#  s.vendored_frameworks = 'MRFSSDK/FSMeeting.framework'
#  s.dependency 'Masonry'
#  s.dependency 'ReactiveObjC'
#  s.dependency 'MJRefresh'
#  s.dependency 'JLRoutes'
#  s.dependency 'AFNetworking'
end
