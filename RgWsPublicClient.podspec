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
  s.version          = "0.1.1"
  s.summary          = "A client for retrieving legal entities details from GSIS"
  s.description      = "A client that provides access to the web service offered by Greece's Ministry of Finance General Secretariat of Information Systems for retrieving legal entities details"
  s.homepage         = "https://github.com/csknns/RgWsPublicClient"
  s.license          = 'MIT'
  s.author           = { "Christos Koninis" => "christos.koninis@gmail.com" }
  s.source           = { :git => "https://github.com/csknns/RgWsPublicClient.git", :tag => 'v0.1.1' }

  s.platform     = :ios, '8.0'
  s.requires_arc = true
  s.source_files = ['Pod/Classes/RgWsPublicClient.{m,h}']
  s.xcconfig = {'HEADER_SEARCH_PATHS' => '"/usr/include/libxml2"'}
  s.library  = 'xml2'

    s.subspec 'no-arc' do |sp|
        sp.source_files = ['Pod/Classes/NSDate+ISO8601Parsing.{m,h}', 'Pod/Classes/NSDate+ISO8601Unparsing.{m,h}', 'Pod/Classes/RgWsPublic.{m,h}', 'Pod/Classes/USAdditions.{m,h}', 'Pod/Classes/USGlobals.{m,h}', 'Pod/Classes/xsd.{m,h}']
        sp.requires_arc = false
    end

end
