Pod::Spec.new do |s|
  s.name = 'FlurryAds'
    s.version = '5.0.0'
    s.license = 'Commercial'
    s.summary = 'Flurry AppSpot'
    s.homepage = 'http://flurry.com/'
    s.author = { 'Flurry' => 'http://flurry.com/' }
    s.source = { :git => 'https://github.com/louis49/Flurry.git' , :tag => '5.0.0'}
    s.platform = :ios
    s.source_files = 'FlurryAds/*.h'
    s.preserve_paths = 'FlurryAds/*.a'
    s.library = 'FlurryAds'
    s.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/FlurryAds"' }
    s.weak_frameworks = 'StoreKit' 
    s.frameworks = 'SystemConfiguration', 'MediaPlayer', 'Security', 'AdSupport'
    s.dependency 'FlurrySDK/FlurrySDK'  
end