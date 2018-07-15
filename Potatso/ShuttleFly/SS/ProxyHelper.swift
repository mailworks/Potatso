//
//  ProxyHelper.swift
//  Potatso
//
//  Created by zeng on 2018/7/15.
//  Copyright © 2018年 TouchingApp. All rights reserved.
//

import UIKit
import PotatsoModel

class ProxyHelper: NSObject {
    
    /// <#Description#>
    ///
    /// - Parameter type: SS / SSR
    @objc static func addProxy(type:String, name:String, host:String, port:String, encryption:String, passwrod:String) -> () {
        let proxy = Proxy();
        do {
            proxy.type = ProxyType(rawValue: type)!;
//            proxy.name = name
//            proxy.host = host
//            proxy.port = port
//            proxy.authscheme = authscheme
//            proxy.user = user
//            proxy.password = password
//            proxy.ota = ota
//            proxy.ssrProtocol = values[kProxyFormProtocol] as? String
//            proxy.ssrObfs = values[kProxyFormObfs] as? String
//            proxy.ssrObfsParam = values[kProxyFormObfsParam] as? String
            
            try DBUtils.add(proxy);
        } catch {
            print("导入代理信息错误");
        }
    }
}
