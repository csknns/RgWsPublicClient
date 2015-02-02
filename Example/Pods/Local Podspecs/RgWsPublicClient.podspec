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
  s.summary          = "A client for retrieving legal entities details from GSIS"
  s.description      = "A client that provides access to the web service offered by Greece's Ministry of Finance General Secretariat of Information Systems for retrieving legal entities details"
  s.homepage         = "https://github.com/csknns/RgWsPublicClient"
  s.license          = 'MIT'
  s.author           = { "Christos Koninis" => "christos.koninis@gmail.com" }
  s.source           = { :git => "https://github.com/csknns/RgWsPublicClient.git", :tag => 'v0.1.0' }

  s.platform     = :ios, '7.0'
  s.requires_arc = ['Classes/NSDate+ISO8601Parsing.m', 'NSDate+ISO8601Unparsing.m', 'Classes/RgWsPublic.m', 'Classes/USAdditions.m', 'USGlobals.m', 'xsd.m']

  s.source_files = 'Pod/Classes'
  s.resource_bundles = {
    'RgWsPublicClient' => ['Pod/Assets/*.png']
  }

    s.xcconfig = {'HEADER_SEARCH_PATHS' => '"/usr/include/libxml2"'}
    s.library  = 'xml2'
end
