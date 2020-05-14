//
//  ViewController.swift
//  jsonparsing
//
//  Created by michael ion on 5/14/20.
//  Copyright © 2020 michael ion. All rights reserved.
//
import UIKit
import Foundation

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // API endpoint
        let urlString = "https://api.duckduckgo.com/?q=burn%20notice%20characters&format=json&pretty=1"
        
        let url = URL(string: urlString)
        
        guard url != nil else {
            return
        }
        
        let session = URLSession.shared
        
        let dataTask = session.dataTask(with: url!) { (data, response, error) in
            if error == nil && data != nil  {
                
                // parse json
                let decoder = JSONDecoder()
                
                do {
                    let  relatedTopic = try decoder.decode(RelatedTopic.self, from: data!)
                    print(relatedTopic)
                }
                catch {
                    print("error in json parsing")
                }
            }
        }
        
        dataTask.resume()
    }
}
