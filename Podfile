# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

def shared_pods
pod 'Firebase/Core'
pod 'Firebase/Auth'
pod 'Firebase/Firestore'
pod 'Firebase/Storage'
#pod 'IQKeyboardManagerSwift'
pod 'Kingfisher', '~>4.0'
pod 'CodableFirebase'
end


target 'Fotografos' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for Fotografos
shared_pods
pod 'Firebase'
pod 'Stripe'
pod 'Alamofire', '~> 4.5'

  target 'Fotografos_AdminTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'Fotografos_AdminUITests' do
    # Pods for testing
  end

  target 'FotografosTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'FotografosUITests' do
    # Pods for testing
  end

end

target 'Fotografos_Admin' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for Fotografos_Admin
shared_pods
pod 'CropViewController' 
  
end
