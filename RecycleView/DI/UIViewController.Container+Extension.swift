//
//  UIViewController.Container+Extension.swift
//  RecycleView
//
//  Created by 宇野凌平 on 2018/08/24.
//  Copyright © 2018年 ryouheiuno. All rights reserved.
//

import Swinject
import UIKit

extension HomeViewController {
    static func make() -> HomeViewController {
        return Container.shared.resolve(HomeViewController.self)!
    }
}

extension PresentViewController {
    static func make(index: Int) -> PresentViewController {
        return Container.shared.resolve(PresentViewController.self, argument: index)!
    }
}
