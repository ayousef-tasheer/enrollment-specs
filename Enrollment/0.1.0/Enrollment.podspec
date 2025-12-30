Pod::Spec.new do |s|
  s.name             = 'Enrollment'
  s.version          = '0.1.0'
  s.summary          = 'Tasheer Enrollment SDK'
  s.description      = <<-DESC
  SDK for document reading and passive liveness used in Tasheer enrollment flows.
  Includes resources and vendored frameworks and depends on Regula DocumentReader and DOT Liveness.
  DESC

  s.homepage         = 'https://github.com/ayousef-tasheer/enrollment'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.authors          = { 'Abdallah Essam Shaban' => 'ashaban@tasheer.com' }

  # For local development, keep s.source, but it's ignored when using :path in Podfile.
 
  s.source = {
  :http   => 'https://drive.usercontent.google.com/download?id=1Q6lVVpQdLZ_5QxyTTxwd9Sg9xeb-Q3Fo&export=download&authuser=0&confirm=t&uuid=c19b74c2-3415-4466-a2dc-fdb109e31c75&at=ANTm3cyaPjZDjgfTOUVs3m3XKViQ:1767091877829',
  :type   => 'zip'               # <-- tell CocoaPods it's a ZIP
  }

  s.ios.deployment_target = '12.0'
  s.swift_version    = '5.0'

  # Prebuilt binary & resources
  s.vendored_frameworks = [
    'Enrollment/Frameworks/TasheerEnrollment.xcframework',
    # 'Enrollment/Frameworks/aaPrintScannerFw.framework',
    # 'Enrollment/Frameworks/aaPrintScannerLic.framework'
  ]

  s.resources = [
    'Enrollment/Frameworks/TasheerEnrollmentResources.bundle'
  ]

  # Uncomment if you want static linkage
  # s.static_framework = true

  s.ios.frameworks = ['UIKit', 'AVFoundation', 'Foundation']

  # External pods
  s.dependency 'DocumentReader', '~> 7.4'
  s.dependency 'DocumentReaderOCRRFID', '~> 7.4'
  s.dependency 'dot-face-passive-liveness', '~> 3.8'
end