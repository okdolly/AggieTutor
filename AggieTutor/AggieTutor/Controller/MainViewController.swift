//
//  ViewController.swift
//  AggieTutor
//
//  Created by Zaid Alrakabi on 11/15/18.
//  Copyright © 2018 Aggie Tutor. All rights reserved.
//

import UIKit
import Firebase

class MainViewController: UIViewController {
    
    /*
     let storyboard = UIStoryboard(name: "Request", bundle: nil)
     let vc = storyboard.instantiateViewController(withIdentifier: "RequestVC")
     self.navigationController?.pushViewController(vc, animated: true)
 */
    
    @IBAction func FindTutorPressed(_ sender: Any) {
        let storyboard = UIStoryboard(name: "JobsTutors", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "TutorsVC")
        self.navigationController?.pushViewController(vc, animated: true)
    }
    

    @IBAction func FindJobPressed(_ sender: Any) {
        let storyboard = UIStoryboard(name: "JobsTutors", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "JobsVC")

        self.navigationController?.pushViewController(vc, animated: true)
    }
    @IBAction func handleLogOut(_ sender: Any) {
        try! Auth.auth().signOut()
        navigationController?.popToRootViewController(animated: true)
        
    }
    

override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.hidesBackButton = true
        view.addVerticalGradientLayer(topColor: secondaryColor, bottomColor: primaryColor)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
}


