//
//  Container+Extension.swift
//  RecycleView
//
//  Created by 宇野凌平 on 2018/08/24.
//  Copyright © 2018年 ryouheiuno. All rights reserved.
//

import Swinject

extension Container {
    static let shared = assembler.resolver
    
    private static let assembler = Assembler([
        ViewControllerAssembly()
        ])
}
