source 'https://github.com/CocoaPods/Specs.git'

platform :ios, '9.0'
use_frameworks!
inhibit_all_warnings!
# 崩溃异常统计
def fabric
    pod 'Fabric'
    pod 'Crashlytics'
end

def library
    pod 'KissXML', '~> 5.2.2'
    pod 'ICSMainFramework', :path => "./Library/ICSMainFramework/"
    # host App 和 extension直接通信
    pod 'MMWormhole', '~> 2.0.0'
    pod 'KeychainAccess'
end

def tunnel
    pod 'MMWormhole', '~> 2.0.0'
end

def socket
    pod 'CocoaAsyncSocket', '~> 7.4.3'
end

def model
    pod 'RealmSwift', '~> 2.10.2'
end

target "Potatso" do
    pod 'Aspects', :path => "./Library/Aspects/"
    # A declarative Auto Layout DSL for Swift
    pod 'Cartography'
    pod 'AsyncSwift'
    # A Swift Extension for UIColor
    pod 'SwiftColor'
    # A utility that reminds your iPhone app's users to review the app
    pod 'Appirater'
    # 表单组件  XLForm的swift版本
    pod 'Eureka'
    pod 'MBProgressHUD'
    # urlScheme
    pod 'CallbackURLKit', :path => "./Library/CallbackURLKit"
    pod 'ICDMaterialActivityIndicatorView', '~> 0.1.0'
    pod 'Reveal-iOS-SDK', '~> 1.6.2', :configurations => ['Debug']
    pod 'ICSPullToRefresh', '~> 0.6'
    pod 'ISO8601DateFormatter', '~> 0.8'
    pod 'Alamofire'
    pod 'ObjectMapper'
    pod 'CocoaLumberjack/Swift', '~> 3.0.0'
    # advanced NSOperations usage
    pod 'PSOperations'
    tunnel
    library
    fabric
    socket
    model
    #####################################飞梭旅行 Pods ############################
    pod 'Masonry'
    pod 'AFNetworking', '~> 3.0'
    pod 'MBProgressHUD'
    pod 'YYModel'
    pod 'IQKeyboardManager', '~> 5.0.7'
    pod 'TZImagePickerController', '~> 1.9.8'
    pod 'SDWebImage', '~> 4.2.3'
    pod 'DZNEmptyDataSet', '~> 1.8.1'
    pod 'KxMenu', '~> 1'
    pod 'MJExtension', '~> 3.0.13'
    pod 'SAMKeychain'
end

target "PacketTunnel" do
    tunnel
    socket
end

target "PacketProcessor" do
    socket
end

target "TodayWidget" do
    pod 'Cartography'
    pod 'SwiftColor'
    library
    socket
    model
end

target "PotatsoLibrary" do
    library
    model
    # YAML-Framework 0.0.3 is not available in cocoapods so we install it from local using git submodule
    pod 'YAML-Framework', :path => "./Library/YAML-Framework"
end

target "PotatsoModel" do
    model
end

target "PotatsoLibraryTests" do
    library
end

