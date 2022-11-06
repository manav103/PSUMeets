//
//  QuestionViewController.swift
//  Bunty Social
//
//  Created by Manav Chordia on 11/5/22.
//

import UIKit
import WebKit

class QuestionViewController: UIViewController,WKNavigationDelegate {
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: "https://forms.gle/c3qXgcJRi3bPZY5s8")!
        webView.load(URLRequest(url: url))
        webView.allowsBackForwardNavigationGestures = true
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
