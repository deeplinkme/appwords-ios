Pod::Spec.new do |s|
  s.name             = "AppWords"
  s.version          = "1.0.2"
  s.summary          = "Deeplink AppWords SDK"
  s.description      = <<-DESC
                       Deeplink’s AppWords Assistant will enable you to offer an AI assistant right inside your app!  Helps your users discover other great things inside of your app, based on the actions they take and where you’d like them to go.
                       DESC
  s.homepage         = 'https://github.com/deeplinkme/appwords-ios'
  s.license          = 'MIT'
  s.author           = { 'Itamar Weisbrod' => 'itamar@deeplink.me' }
  s.source           = { :git => "#{s.homepage}.git", :tag => "V#{s.version}" }
  s.social_media_url = 'https://twitter.com/deeplinkme'
  
  s.ios.deployment_target = '9.0'
  s.vendored_frameworks = "AppWords/Framework/AppWordsSDK.framework"
end
