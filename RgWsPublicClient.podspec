#
# Be sure to run `pod lib lint RgWsPublicClient.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "RgWsPublicClient"
  s.version          = "0.1.0"
  s.summary          = "A short description of RgWsPublicClient."
  s.description      = <<-DESC
                       An optional longer description of RgWsPublicClient

                       * Markdown format.
                       * Don't worry about the indent, we strip it!
                       DESC
  s.homepage         = "https://github.com/<GITHUB_USERNAME>/RgWsPublicClient"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Christos Koninis" => "christos.koninis@gmail.com" }
  s.source           = { :git => "https://github.com/<GITHUB_USERNAME>/RgWsPublicClient.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '7.0'
  s.requires_arc = false

  s.source_files = 'Pod/Classes'
  s.resource_bundles = {
    'RgWsPublicClient' => ['Pod/Assets/*.png']
  }

#spec.private_header_files = "/usr/include/libxml2/*.h"
    s.xcconfig = {'HEADER_SEARCH_PATHS' => '"/usr/include/libxml2"'}
    s.library  = 'xml2'
    # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
