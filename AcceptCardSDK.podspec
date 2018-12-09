#
# Be sure to run `pod lib lint AcceptCardSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AcceptCardSDK'
  s.version          = '1.0.4'
  s.summary          = 'An Online Payment Solution'
  s.swift_version    = '4.2'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'This Software Development Kit allows you to accept online payments provided by ACCEPT'

  s.homepage         = 'https://gitlab.com/mohamedghoneim/acceptcardsdk'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'mohamedghoneim' => 'mohamedghoneim@weaccept.co' }
  s.source           = { :git => 'https://gitlab.com/mohamedghoneim/acceptcardsdk.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  #s.source_files = 'AcceptCardSDK/Classes/**/*'
  s.ios.vendored_frameworks = 'AcceptCardSDK/Classes/AcceptSDK.framework'

  # s.resource_bundles = {
  #   'AcceptCardSDK' => ['AcceptCardSDK/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
