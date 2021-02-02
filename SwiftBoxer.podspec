#
# Be sure to run `pod lib lint SwiftBoxer.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SwiftBoxer'
  s.version          = '0.1.0'
  s.summary          = 'A short description of SwiftBoxer.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/nanliSKy/SwiftBoxer'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'nanliSKy' => '827752527@qq.com' }
  s.source           = { :git => 'https://github.com/nanliSKy/SwiftBoxer.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.swift_version = '4.2'

  s.subspec 'Core' do |core|
      core.source_files = 'SwiftBoxer/Classes/Core/**/*.swift'
  end
  
  s.subspec 'Helper' do |helper|
    helper.source_files = 'SwiftBoxer/Classes/Helper/**/*.swift'
  end

  s.subspec 'Foundation' do |f|
      f.source_files = 'SwiftBoxer/Classes/Foundation/**/*.swift'
      f.dependency 'SwiftBoxer/Core'
  end

  s.subspec 'UIKit' do |uikit|
      uikit.source_files = 'SwiftBoxer/Classes/UIKit/**/*.swift'
      uikit.dependency 'SwiftBoxer/Core'
      uikit.dependency 'SwiftBoxer/Foundation'
  end
  
  # s.resource_bundles = {
  #   'SwiftBoxer' => ['SwiftBoxer/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
