//
//  ViewControllerAssembly.swift
//  RecycleView
//
//  Created by 宇野凌平 on 2018/08/24.
//  Copyright © 2018年 ryouheiuno. All rights reserved.
//

import UIKit
import Swinject

final class ViewControllerAssembly: Assembly {
    func assemble(container: Container) {

        //MARK: - HomeViewController
        container.register(HomeViewController.self) { resolover in
            let viewController = UIStoryboard.instantiateViewController(of: HomeViewController.self)
            return viewController
        }
    }
}
