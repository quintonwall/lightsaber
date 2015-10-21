#
# Be sure to run `pod lib lint lightsaber.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "lightsaber"
  s.version          = "0.1.0"
  s.summary          = "A modern, lightweight, alternative to connecting iOS apps with force.com"
  s.description      = "Lightsaber provides a lightweight alternative to the Salesforce Mobile SDK for developers who are comfortable working with RESTful endpoints."

  s.homepage         = "https://github.com/quintonwall/lightsaber"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Quinton Wall" => "quinton@quintonwall.com" }
  s.source           = { :git => "https://github.com/quintonwall/lightsaber.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/quintonwall'

  s.platform     = :ios, '8.0'
  s.requires_arc = false

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'lightsaber' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
    s.dependency 'OAuthSwift', '~> 0.4.6'
    s.dependency 'Alamofire', '~> 3.0.0-beta.3'
#s.dependency 'SwiftyJSON', '~> 2.2.0'
end
