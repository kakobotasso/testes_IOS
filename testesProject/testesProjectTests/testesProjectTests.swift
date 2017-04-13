//
//  testesProjectTests.swift
//  testesProjectTests
//
//  Created by Usuário Convidado on 12/04/17.
//  Copyright © 2017 Kako Botasso. All rights reserved.
//

import XCTest
@testable import testesProject

class testesProjectTests: XCTestCase {
    
    var vc = ViewController()
    
    override func setUp() {
        super.setUp()
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        vc = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testGetName() {
        let _ = vc.view // Com isso você garante que passou pelo viewDidLoad e etc
        
        let name = vc.getName(name: "João")
        XCTAssertTrue(name == "Nome: João")
    }
    
    func testGetAge(){
        let _ = vc.view // Com isso você garante que passou pelo viewDidLoad e etc
        
        let age = vc.getAge(age: 12)
        XCTAssertTrue(age == "Idade: 12 anos")
    }
    
    
}
