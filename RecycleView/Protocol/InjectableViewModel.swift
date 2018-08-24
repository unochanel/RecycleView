//
//  InjectableViewModel.swift
//  RecycleView
//
//  Created by 宇野凌平 on 2018/08/24.
//  Copyright © 2018年 ryouheiuno. All rights reserved.
//

protocol ViewModel {
    associatedtype Input
    associatedtype Output
    func build(input: Input) -> Output
}
