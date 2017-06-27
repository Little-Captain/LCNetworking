#
# Be sure to run `pod lib lint LCNetworking.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LCNetworking'
  s.version          = '1.3.0'
  s.summary          = 'LCNetworking 是一个基于 AFNetworking 的网络请求框架'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
LCNetworking 是一个基于 AFNetworking 的网络请求框架, 解决了 AFNetworking 中存在的内存泄漏问题
                       DESC

  s.homepage         = 'https://github.com/Little-Captain/LCNetworking'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Little-Captain' => 'littlecaptain@foxmail.com' }
  s.source           = { :git => 'https://github.com/Little-Captain/LCNetworking.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '7.0'
  s.osx.deployment_target = '10.9'

  s.source_files = 'LCNetworking/Classes/**/*'
  
  # s.resource_bundles = {
  #   'LCNetworking' => ['LCNetworking/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'AFNetworking'
end
