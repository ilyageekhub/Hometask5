//
//  main.swift
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
var a:ArcTest? = ArcTest(name: "thename")
var b: ArcTest? = ArcTest(name: "othername")
a?.other = b
b?.other = a
a = nil
b = nil


var a1: ArcTest1? = ArcTest1(name: "a1")
var a2: ArcTest2? = ArcTest2(name: "a2")
var a3: ArcTest3? = ArcTest3(name: "a3")
a1?.other = a2
a2?.other = a3
a3?.other = a1
a1 = nil
a2 = nil
a3 = nil

