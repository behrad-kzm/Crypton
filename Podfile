# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'
def rx_swift
	pod 'RxSwift', '~> 4.0'
end

def rx_cocoa
	pod 'RxCocoa', '~> 4.0'
end

target 'Crypton' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!
	rx_cocoa
	rx_swift
	pod 'RxDataSources', '~> 3.0'
  	pod 'IQKeyboardManagerSwift'
	pod 'SkyFloatingLabelTextField', '~> 3.0'
  # Pods for Crypton

end

target 'Domain' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!
	rx_swift
	pod 'RxAlamofire'
	pod 'ReachabilitySwift'
  # Pods for Domain

end

target 'NetworkPlatform' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!
	rx_swift
	pod 'Alamofire'
	pod 'RxAlamofire'
	pod 'RxStarscream'
  # Pods for NetworkPlatform

end
