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

  s.ios.deployment_target = '9.0'

  s.source_files = 'MRFSSDK/Classes/**/*'
  
end
