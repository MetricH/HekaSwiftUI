Pod::Spec.new do |s|
    s.name             = 'HekaSwiftUI'
    s.version          = '0.0.4'
    s.summary          = 'Integrate fitness data sources into your app.'
    s.homepage         = 'https://www.hekahealth.co'
    s.license          = { :type => 'GNU AGPL', :file => 'LICENSE' }
    s.author           = { 'Heka' => 'contact@hekahealth.co' }
    s.source           = { :git => 'https://github.com/HekaHealth/HekaSwiftUI.git', :tag => s.version.to_s }
    # Swift UI is not supported for versions below 13.0
    s.ios.deployment_target = '13.0'
    s.swift_version = '5.0'
    s.source_files = 'Sources/HekaSwiftUI/**/*.{swift, plist}'
    s.dependency 'HekaCore', '~> 0.0.11'
    s.resource_bundles = {
        'heka_heka' => [
            'Sources/HekaSwiftUI/**/*.{ storyboard,xib,xcassets,json,png }'
        ]
    }
  end