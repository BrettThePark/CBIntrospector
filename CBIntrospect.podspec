Pod::Spec.new do |s|
  s.name     = 'CBIntrospect'
  s.version  = '0.3.2'
  s.summary  = 'Introspect is a tool for iOS that aids in debugging user interfaces built with UIKit. Communicates with View Introspector, a desktop app.'
  s.homepage = 'https://github.com/cbess/CBIntrospector'

  s.license  = 'MIT'
  s.author   = { 'Christopher Bess' => 'cbess@quantumquinn.com' }
  s.source   = { :git => 'https://github.com/cbess/CBIntrospector.git', :tag => 'v0.3.2' }

  s.platform = :ios
  s.requires_arc = false
  s.source_files = 'CBIntrospect'
  s.frameworks   = 'QuartzCore'
end
