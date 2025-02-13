#
# Be sure to run `pod lib lint LinkingIssueMRE.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LinkingIssueMRE'
  s.version          = '0.1.0'
  s.summary          = 'A short description of LinkingIssueMRE.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/Gradyn Wursten/LinkingIssueMRE'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Gradyn Wursten' => 'me@gradyn.com' }
  s.source           = { :git => 'https://github.com/GNUGradyn/LinkingIssueMRE.git', :tag => s.version.to_s }

  s.source_files = 'LinkingIssueMRE/Classes/**/*', 'GoogleSignIn-iOS/GoogleSignIn/Sources/**/*.[mh]'
  s.public_header_files = 'GoogleSignIn-iOS/GoogleSignIn/Sources/Public/GoogleSignIn/*.h'
  s.dependency 'AppCheckCore', '>= 10.19.1', '< 11.0'
  s.dependency 'AppAuth', '>= 1.7.3', '< 2.0'
  s.dependency 'GTMAppAuth', '>= 4.1.1', '< 5.0'
  s.dependency 'GTMSessionFetcher/Core', '~> 3.3'
  
  s.pod_target_xcconfig = {
    'HEADER_SEARCH_PATHS' => '"$(inherited)" "$(SRCROOT)/GoogleSignIn-iOS/GoogleSignIn/Sources/Public/GoogleSignIn" "$(SRCROOT)/GoogleSignIn-iOS/GoogleSignIn/Sources"'
  }

  s.user_target_xcconfig = {
    'HEADER_SEARCH_PATHS' => '"$(inherited)" "$(SRCROOT)/GoogleSignIn-iOS/GoogleSignIn/Sources/Public/GoogleSignIn" "$(SRCROOT)/GoogleSignIn-iOS/GoogleSignIn/Sources"'
  }
end
