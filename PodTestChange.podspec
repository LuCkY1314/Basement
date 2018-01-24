#
#  Be sure to run `pod spec lint PodTestChange.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "PodTestChange"
  s.version      = "1.0.0"
  s.summary      = "It will be the first of my son."
  s.description  = <<-DESC     
                          PodTestChange 是一个用于测试的demo,希望能够通过                                     
                          DESC
  s.homepage     = "https://github.com/LuCkY1314/Basement"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "siqingchan" => "siqingchan_ajk@58ganji.com" }
  s.ios.deployment_target = "8.0"
  s.source 	 = { :git => "https://github.com/LuCkY1314/Basement.git", :tag => s.version }
  s.source_files = "PodTestChange", "PodTestChange/**/*.{h,m}"
  s.requires_arc = true
end
