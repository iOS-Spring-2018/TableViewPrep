//
//  MyViewController.swift
//  TableViewPrep
//
//  Created by Jon Eikholm on 16/03/2018.
//  Copyright © 2018 Jon Eikholm. All rights reserved.
//

import UIKit
import WebKit


class MyViewController: UIViewController, WKNavigationDelegate {

    var text = "empty"
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var webview: WKWebView!
    
    override func loadView() {
        webview = WKWebView()
        webview.navigationDelegate = self
        view = webview
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
            text = (text.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed))!
        let query = "https://www.google.dk/search?q="+text+"&source=lnms&tbm=isch&sa=X&ved=0ahUKEwiv0r_Ci_HZAhXP_KQKHRsBDVUQ_AUICigB&biw=1333&bih=960"
        print(query)
        let url = URL(string: query)!
        webview.load(URLRequest(url: url))
        webview.allowsBackForwardNavigationGestures = true
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
