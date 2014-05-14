Pod::Spec.new do |s|
  s.name     = 'FlurryAds'
  s.version  = '5.0.0'
  s.license  = { :type => 'Commercial', :text => 'Developer\'s use of the SDK is governed by the license in the applicable Flurry Terms of Service.  Some components of the SDK are governed by open source software licenses.  In the event of any conflict between the license in the applicable Flurry Terms of Service and the applicable open source license, the terms of the open source license shall prevail with respect to those components.' }
  s.summary  = 'FlurryAds for analytics reporting.'
  s.homepage = 'http://www.flurry.com'
  s.author   = { 'Flurry' => 'http://www.flurry.com' }
  s.source   = { :git => 'https://github.com/louis49/Flurry.git', :tag => '5.0.0' }
  s.description = 'FlurryAds for analytics tracking and reporting.'
  s.platform = :ios
  s.frameworks = 'SystemConfiguration', 'MediaPlayer', 'Security', 'AdSupport', %w{libz.dylib}

  s.subspec 'FlurryAds' do |ss|
    ss.source_files = 'FlurryAds/**/*.h'
    ss.preserve_paths = 'FlurryAds/**/*.a'
    ss.library = 'FlurryAds'
    ss.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/FlurryAds/FlurryAds"' }
  end
end
