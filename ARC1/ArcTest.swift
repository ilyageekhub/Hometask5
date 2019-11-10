//
//  ArcTest.swift
//  ARC1
//
//  Created by Admin on 02/11/2019.
//  Copyright © 2019 Admin. All rights reserved.
//

import Foundation

class ArcTest {
    var name: String
    weak var other: ArcTest?
    init(name: String){
        self.name = name
        print("added " + name)    }
    deinit {
        print("removed " + name)
    }
}

class ArcTest1 {
    var name: String
    weak var other: ArcTest2?
    init(name: String){
        self.name = name
        print("added " + name)    }
    deinit {
        print("removed " + name)
    }
}
class ArcTest2 {
    var name: String
    weak var other: ArcTest3?
    init(name: String){
        self.name = name
        print("added " + name)    }
    deinit {
        print("removed " + name)
    }
}

class ArcTest3 {
    var name: String
    weak var other: ArcTest1?
    init(name: String){
        self.name = name
        print("added " + name)    }
    deinit {
        print("removed " + name)
    }
}
