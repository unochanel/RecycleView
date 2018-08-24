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
        container.register(HomeViewController.self) { resolover in
            let viewController = HomeViewController()
            return viewController
        }
    }
}
