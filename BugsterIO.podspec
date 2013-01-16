Pod::Spec.new do |s|
  s.name         = "BugsterIO"
  s.version      = "0.9"
  s.summary      = "Reporting UI mobile bugs has never been easier."
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
  s.source       = { :git => "https://github.com/BugsterIO/BugsterIO-iOS.git", :branch => '0.9' }
  s.source_files = '*.h'
  s.preserve_paths = 'libBugsterIO.a'
  s.library = 'BugsterIO'
  
  s.resources = "BugsterIO.bundle"
  s.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '$(PODS_ROOT)/BugsterIO/' }

  s.frameworks = 'UIKit', 'CoreGraphics'
  s.ios.dependency 'AFNetworking'
end
