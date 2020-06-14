//
//  StartScreenViewController.swift
//  gameOfLife2d
//
//  Created by Alvian Gozali on 12/06/20.
//  Copyright © 2020 danny santoso. All rights reserved.
//

import UIKit

class StartScreenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //print("test")
        // Do any additional setup after loading the view.
    }
    
    @IBAction func startBtnAction(_ sender: Any) {
        let vc = (storyboard?.instantiateViewController(identifier: "AddPlayerViewController")) as? AddPlayerViewController
        self.navigationController?.pushViewController(vc!, animated: true)
        //print("test")
    }
    
}

//Hide Nav Bar
extension StartScreenViewController {
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }

}
