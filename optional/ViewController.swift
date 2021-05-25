//
//  ViewController.swift
//  optional
//
//  Created by Daniel Washington Ignacio on 18/05/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        // Do any additional setup after loading the view.
  
        self.sum(valueF1: 1.1, valueF2: 2)
        self.sum2(valueF1: 1.1, valueF2: 2)
        self.sum3(valueF1: 1.1, valueF2: 2)
        self.sum4(valueF1: 1.1, valueF2: 2)
        self.sum5(valueF1: 1.1, valueF2: 2)
        self.printPerson(name: "Daniel", surname: "Ignacio", year: 35, height: 1.83, weight: 73)
        self.printPerson2(name: "Daniel", surname: "Ignacio", year: 35, height: 1.83, weight: 73)
        self.printPerson3(name: "Daniel", surname: "Ignacio", year: 35, height: 1.83, weight: 73)
        self.printPerson4(name: "Daniel", surname: "Ignacio", year: 35, height: 1.83, weight: 73)
        self.printPerson5(name: "Daniel", surname: "Ignacio", year: 35, height: 1.83, weight: 73)
        
    }

    func sum(valueF1: Float?, valueF2: Float?){
        
        let valueTeste1: Float = valueF1 ?? 0.0
        let valueTeste2: Float = valueF2 ?? 0.0
        
        let totalValue: Float = valueTeste1 + valueTeste2
        
        print("the sum of the values: \(totalValue)")
    }
    
    func sum2(valueF1: Float?, valueF2: Float?){
        
       if let _valueF1 = valueF1 , let _valueF2 = valueF2{
              let totalValue: Float = _valueF1 + _valueF2
              print("the sum of the values: \(totalValue)")
      }
        
    }
    
    func sum3(valueF1: Float?, valueF2: Float?){
        
        guard let _valueF1 = valueF1 else {
            return
        }
        guard let _valueF2 = valueF2 else {
            return
        }
        
        let totalValue: Float = _valueF1 + _valueF2
        print("the sum of the values: \(totalValue)")
        
    }
    
    func sum4(valueF1: Float?, valueF2: Float?){
        
         if let _valueF1 = valueF1{
             if let _valueF2 = valueF2{
         let totalValue: Float = _valueF1 + _valueF2
         print("the sum of the values: \(totalValue)")
             }
         }
    }
    
    func sum5(valueF1: Float?, valueF2: Float?){
        
        let totalValue: Float = (valueF1 ?? 0) + (valueF2 ?? 0)
        print("the sum of the values: \(totalValue)")
    }
    
    
    
    func printPerson(name: String?,surname: String? ,year: Int?, height: Float?, weight: Float?){
        let nameValue:String = name ?? ""
        let surnameValue:String = surname ?? ""
        let yearValue:Int = year ?? 0
        let heightValue:Float = height ?? 0.0
        let weightValue:Float = weight ?? 0.0
        
        print("Person: \(nameValue) \(surnameValue), \(yearValue), \(heightValue), \(weightValue)k")
        
    }
    
    func printPerson2(name: String?,surname: String? ,year: Int?, height: Float?, weight: Float?){
        if let nameValue = name{
            if let surnameValue = surname{
                if let yearValue = year{
                    if let heightValue = height{
                        if let weightValue = weight{
                            print("Person: \(nameValue) \(surnameValue), \(yearValue), \(heightValue), \(weightValue)k")
                        }
                    }
                }
            }
        }
    }
    
    func printPerson3(name: String?,surname: String? ,year: Int?, height: Float?, weight: Float?){
        guard let nameValue = name else {
            return
        }
        guard let surnameValue = surname else {
            return
        }
        guard let yearValue = year else {
            return
        }
        guard let heightValue = height else {
            return
        }
        guard let weightValue = weight else {
            return
        }
        print("Person: \(nameValue) \(surnameValue), \(yearValue), \(heightValue), \(weightValue)k")
    }
    
    
    func printPerson4(name: String?,surname: String? ,year: Int?, height: Float?, weight: Float?){
        if let nameValue = name , let surnameValue = surname, let yearValue = year, let heightValue = height, let weightValue = weight{
                print("Person: \(nameValue) \(surnameValue), \(yearValue), \(heightValue), \(weightValue)k")
            }
        }
    
    
    func printPerson5(name: String?, surname: String?, year: Int?, height: Float?, weight: Float?){
                guard let nameValue = name,
                      let surnameValue = surname,
                      let yearValue = year,
                      let heightValue = height,
                      let weightValue = weight else {
                    return
                    
                }
        print("Person: \(nameValue) \(surnameValue), \(yearValue), \(heightValue), \(weightValue)k")
            }
}

