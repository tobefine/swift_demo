//
//  MainBarController.swift
//  demo
//
//  Created by xda on 2017/7/18.
//  Copyright © 2017年 lxl. All rights reserved.
//

import UIKit
class MainBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        self.addSubController(Controller: HomePageViewController(), title: "首页", img:"", heightImg:"")
        self.addSubController(Controller: MessageViewController(), title: "消息", img:"", heightImg:"")
        self.addSubController(Controller: DiscoverViewController(), title: "发现", img:"", heightImg:"")
        self.addSubController(Controller: MyselfViewController(), title: "我的", img:"", heightImg:"")
    }

    func addSubController(Controller:UIViewController,title:String,img:String,heightImg:String) {
        let baseVC = BaseNavViewController(rootViewController: Controller)
        Controller.title = title;
        Controller.tabBarItem.image = UIImage(named: title)
        Controller.tabBarItem.selectedImage = UIImage(named: heightImg)
        self.addChildViewController(baseVC)
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
