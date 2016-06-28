workspace 'ElenaCode.xcworkspace'
xcodeproj 'ElenaCode/ElenaCode.xcodeproj'
xcodeproj 'ElenaRACDemo/ElenaRACDemo.xcodeproj'
xcodeproj 'ElenaUnitTestDemo/ElenaUnitTestDemo.xcodeproj'

target 'ElenaCode' do
 xcodeproj 'ElenaCode/ElenaCode.xcodeproj'
 platform :ios, '7.0'
 pod 'AFNetworking', "~> 3.0"
end

target 'ElenaRACDemo' do
    platform :ios, '7.0'
    xcodeproj 'ElenaRACDemo/ElenaRACDemo.xcodeproj'
    pod “ReactiveCocoa”,"~> 2.0"
end
target 'ElenaUnitTestDemoTests' do
    xcodeproj 'ElenaUnitTestDemo/ElenaUnitTestDemo.xcodeproj'
    pod 'OCMock','~>3.0'
    pod 'Kiwi'
end