Pod::Spec.new do |s|
  s.name         = 'TrustCore'
  s.version      = '0.3.2'
  s.summary      = 'Core Ethereum data structures and algorithms.'
  s.homepage     = 'https://github.com/HEchooo/TrustCore'
  s.license      = 'MIT'
  s.authors      = { 'Alejandro Isaza' => 'al@isaza.ca' }

  s.ios.deployment_target = '11.0'
  s.osx.deployment_target = '10.12'
  s.swift_version = '5.0'

  s.source       = { git: 'https://github.com/HEchooo/TrustCore.git', tag: s.version }
  s.source_files = 'Sources/**/*.{swift,h,m}'
  s.public_header_files = 'Sources/TrustCore.h', 'Sources/Crypto.h'

  s.dependency 'BigInt'
  s.dependency 'TrezorCrypto', '~> 0.0.8'
  s.dependency 'SwiftProtobuf', '~> 1.0'

  s.pod_target_xcconfig = { 'SWIFT_OPTIMIZATION_LEVEL' => '-Owholemodule' }
end
