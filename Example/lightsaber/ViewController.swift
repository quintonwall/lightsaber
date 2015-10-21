//
//  ViewController.swift
//  lightsaber
//
//  Created by Quinton Wall on 10/14/2015.
//  Copyright (c) 2015 Quinton Wall. All rights reserved.
//

import UIKit
import lightsaber

class ViewController: UIViewController {

    @IBOutlet weak var loginButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func loginTapped(sender: AnyObject) {
       
        Lightsaber.sharedInstance.login("3MVG98XJQQAccJQdj_1as3MoZaRmAZnoiGYB3yw.GeEuod0jd9oAjqd0ZK92ZI8XwDwtPaPtNTJunQP5sykT.", consumerSecret: "3030266816879795215",
          success: { manager in
            print("success")
        }, failure: { result in
            print(result)
        })
        
        
        /*
        Lightsaber.sharedInstance.login("consumerKey", "consumerSecret")
            .success { response in
                print("success")
            }
            .failure { response in
                print("failure:")
        }
        */
        /*
        Lightsaber mgr = Lightsaber.sharedInstance()
        mgr.login("consumerKey", "consumerSecret")
            .success { response in
                print("success")
            }
            .failure { response in
                print("failure:"+ response)
            }
        */
        
        
        
    }
    
}

