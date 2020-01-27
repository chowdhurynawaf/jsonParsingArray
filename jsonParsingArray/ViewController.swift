//
//  ViewController.swift
//  jsonParsingArray
//
//  Created by Macbook on 27/01/2020.
//  Copyright © 2020 Macbook. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
        
        let json = "https://api.letsbuildthatapp.com/jsondecodable/courses"
        guard let url = URL(string: json) else {return}
        
        
        var dataTask = URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            
            guard let data = data else {return}
            
            
            do {
                       let courses = try JSONDecoder().decode([Courses].self ,from : data)
                print(courses[0])
                print("\n")
                
                print(courses[1])
                
                   }catch{
                       print("error")
                   }
                   
            
        }
        
        dataTask.resume()
        
        
       
        
    }


}

