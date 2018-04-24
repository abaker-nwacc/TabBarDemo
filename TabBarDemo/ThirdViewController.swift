//
//  ThirdViewController.swift
//  TabBarDemo
//
//  Created by Baker, Allen on 4/24/18.
//  Copyright © 2018 Baker, Allen. All rights reserved.
//

import UIKit
import WebKit

class ThirdViewController: UIViewController, UITextFieldDelegate, WKUIDelegate {

    @IBOutlet weak var NameTextField: UITextField!
    @IBOutlet weak var WebViewKit: WKWebView!
    
    var nwaccURL: URL?
    var nwaccURLRequest: URLRequest?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NameTextField.delegate = self
        //WebViewKit.navigationDelegate = self
        WebViewKit.uiDelegate = self
        
        nwaccURL = URL(string: "https://www.nwacc.edu")
        nwaccURLRequest = URLRequest(url: nwaccURL!)
        
        WebViewKit.load(nwaccURLRequest!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func reloadButtonTapped(_ sender: UIButton) {
        if let str = NameTextField.text{
            nwaccURL = URL(string: str)
            nwaccURLRequest = URLRequest(url: nwaccURL!)
            WebViewKit.load(nwaccURLRequest!)
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        NameTextField.resignFirstResponder()
        return true
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
