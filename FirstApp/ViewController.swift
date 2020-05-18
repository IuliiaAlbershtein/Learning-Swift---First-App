//
//  ViewController.swift
//  FirstApp
//
//  Created by LocaJuli on 02/05/2020.
//  Copyright © 2020 LocaJuli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }

    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var textField3: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var runButton: UIButton!
    
    @IBOutlet weak var sumLabel: UILabel!
    @IBOutlet weak var sumButton: UIButton!

    
    
    @IBAction func runButtonClicked(_ sender: Any) {
        
//        runButton.setTitle("test", for: .normal)

        
        //task1()
        //task3()
        task4()
    }
    @IBAction func sumButtonDoubleClicked(_ sender: Any) {

        //task2()
        task5()
        //task6()
    }
    
//    func test(int a, int b) {
    func sum(a: Int, b: Int) -> Int {
        
        return a + b
    }
    // find maximum of 3 numbers
    func task1() {
        let m = Int (textField1.text!)!
        let k = Int (textField2.text!)!
        let p = Int (textField3.text!)!
        let result = maxValue(m, k, p)
        resultLabel.text = "maximum: \(result)"
    }
    // Find max sum 2 out of 3 numbers
    func task2(){
        let m = Int (textField1.text!)!
        let k = Int (textField2.text!)!
        let p = Int (textField3.text!)!
        let result = maxSum(m, k, p)
        sumLabel.text = "maximum sum: \(result)"
    }
    // Amount of positive numbers
    func task3(){
        let m = Int (textField1.text!)!
        let k = Int (textField2.text!)!
        let p = Int (textField3.text!)!
        let result = positiveNumbers(m, k, p)
        resultLabel.text = "Positive numbers are: \(result)"
    }
    // Same numbers
    func task4(){
        let m = Int (textField1.text!)!
        let k = Int (textField2.text!)!
        let p = Int (textField3.text!)!
        let result = statement(m, k, p)
        if result == "YES"{
            resultLabel.text = "There are same numbers"
        } else {
            resultLabel.text = "There are no same numbers"
        }
    }
    // Sum of 2 numbers is equal to 3 number
    func task5(){
        let m = Int (textField1.text!)!
        let k = Int (textField2.text!)!
        let p = Int (textField3.text!)!
        let result = statementSum(m, k, p)
        if result == "YES"{
            sumLabel.text = "Sum of 2 numers is equal to 3 number"
            sumLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
            sumLabel.numberOfLines = 2
        } else {
            sumLabel.text = "Sum of 2 numers is not equal to 3 number"
            //sumLabel.lineBreakMode = UILineBreakModeWordWrap
            sumLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
            sumLabel.numberOfLines = 2
        }
    }
    // Sum of all number inside the entered number: n=10, sum=55
    func task6(){
        let m = Int (textField1.text!)!
        var k = 1
        var p = 1
        while p < m {
            p += 1
            k = k + p
        }
        let result = k
        sumLabel.text = "Sum of numbers inside is: \(result)"
    }
    func statementSum(_ a: Int, _ b: Int, _ c: Int) -> String{
        var statement = "NO"
        if a == b + c {
            statement = "YES"
        } else {
            if b == a + c {
                statement = "YES"
            } else {
                if c == a + b {
                    statement = "YES"
                } else {
                    statement = "NO"
                }
            }
        }
        return statement
    }
    func statement(_ a: Int, _ b: Int, _ c: Int) -> String{
        var statement = "NO"
        if a == b {
            statement = "YES"
        } else {
            if a == c {
                statement = "YES"
            } else {
                if b == c {
                    statement = "YES"
                } else {
                    statement = "NO"
                }
            }
        }
        return statement
    }
    func positiveNumbers(_ a: Int, _ b: Int, _ c: Int) -> Int{
        var count = 0
        if a > 0 {
            count += 1
        }
        if b > 0 {
            count += 1
        }
        if c > 0 {
            count += 1
        }
        return count
    }
    
    func maxSum(_ a: Int, _ b: Int, _ c: Int) -> Int{
        let m = a + b
        let k = b + c
        let p = a + c
        return maxValue(m, k, p)
    }
    
    func maxValue(_ a: Int, _ b: Int, _ c: Int) -> Int {
        
        if a > b {
            if a > c {
                return a
            } else {
                return c
            }
        } else {
            if b > c {
                return b
            } else {
                return c
            }
        }
    }
}

class Dog {
    
    
}

class IntList {
    private var array: [Int] = [5]
    //var count can be set only in private scope (within class).
    //outside of the class only getter is available in our case
    //if setter is public, then can be put new value into count var outside the class
    
    public private(set) var count: Int = 0
    //private var count: Int = 0
    /*public class var count: Int {
        get { return self.count }
        set { self.count = newValue }
    }
    */
    public var capacity: Int {
        get { return self.array.capacity }
    }
    public func IntList() {
        
    }
    

}

