#
# Be sure to run `pod spec lint BugsterIO.podspec' to ensure this is a
# valid spec.
#
# Remove all comments before submitting the spec. Optional attributes are commented.
#
# For details see: https://github.com/CocoaPods/CocoaPods/wiki/The-podspec-format
#
Pod::Spec.new do |s|
  s.name         = "BugsterIO"
  s.version      = "0.8"
  s.summary      = "Getting feedbacks has never been easier."
  s.homepage     = "https://github.com/BugsterIO/BugsterIO-iOS"

  s.license      = {
    :type => 'Commercial',
    :text => <<-LICENSE
              All text and design is copyright 2012-2013 BugsterIO, Inc.

              All rights reserved.

              https://github.com/BugsterIO/BugsterIO-iOS
    LICENSE
  }
  s.platform = :ios, '5.0'
  s.author       = { "Vincent Coste" => "coste.vincent@gmail.com" }
  s.source       = { :git => "https://github.com/BugsterIO/BugsterIO-iOS.git", :branch => '0.8' }
  s.source_files = '*.h'
  s.preserve_paths = 'libBugsterIO.a'
  s.library = 'libBugsterIO.a'
  s.ios.dependency 'AFNetworking'

  s.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '$(PODS_ROOT)/BugsterIO' }    
  s.frameworks = 'UIKit', 'CoreGraphics'
  s.resources = "BugsterIO.bundle"
end
