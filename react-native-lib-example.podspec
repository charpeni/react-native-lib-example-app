require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = package['name']
  s.version      = package['version']
  s.summary      = package['description']
  s.license      = package['license']

  s.authors      = "Nicolas Charpentier"
  s.homepage     = "https://github.com/charpeni/react-native-lib-example-app"
  s.platform     = :ios, "9.0"

  s.source       = { :git => "https://github.com/charpeni/react-native-lib-example-app.git", :tag => "v#{s.version}" }
  s.source_files  = "ios/**/*.{h,m}"

  s.dependency 'React'
end
