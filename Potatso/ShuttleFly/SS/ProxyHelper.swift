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
    
    
    /// 创建 SS
    ///
    /// - Parameters:
    ///   - name: name
    ///   - host: host
    ///   - port: port
    ///   - encryption: 加密方式
    ///   - password: 密码
    ///   - isOTA: 一次认证
    @objc static func addSSProxy(
        name:String,
        host:String,
        port:Int,
        encryption:String,
        password:String,
        isOTA:Bool
        ) -> () {
        let proxy = Proxy();
        do {
            proxy.type = ProxyType(rawValue: "SS")!;
            proxy.name = name;
            proxy.host = host;
            proxy.port = port;
            proxy.authscheme = encryption; //加密方式 md-5
            proxy.password = password;
            proxy.ota = isOTA; //一次认证
            try DBUtils.add(proxy);
        } catch {
            print("导入 SS 代理信息错误");
        }
    }
    
    @objc static func addSSRProxy(
        name:String,
        host:String,
        port:Int,
        encryption:String,
        password:String,
        ssrProtocol:String,
        ssrObfs:String,
        ssrObfsParam:String
        ) -> () {
        let proxy = Proxy();
        do {
            proxy.type = ProxyType(rawValue: "SSR")!;
            proxy.name = name;
            proxy.host = host;
            proxy.port = port;
            proxy.authscheme = encryption; //加密方式 md-5
            proxy.password = password;
            proxy.ssrProtocol = ssrProtocol;
            proxy.ssrObfs = ssrObfs;
            proxy.ssrObfsParam = ssrObfsParam
            //            proxy.user = user
            try DBUtils.add(proxy);
        } catch {
            print("导入 SSR 代理信息错误");
        }
    }
}
