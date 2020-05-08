//
//  TheaterVC.swift
//  Sylver
//
//  Created by Vamsi Sistla on 4/30/20.
//  Copyright © 2020 Swaraag. All rights reserved.
//

import UIKit
import WebKit

class TheaterVC: UIViewController {

    @IBOutlet weak var Theater: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let movieView = URL(string: "https://www.amazon.com/ap/signin?openid.pape.max_auth_age=0&openid.return_to=https%3A%2F%2Fwww.amazon.com%2Famazonprime%3F_encoding%3DUTF8%26ref_%3Dnav_signin&openid.identity=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&openid.assoc_handle=usflex&openid.mode=checkid_setup&openid.claimed_id=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&openid.ns=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0&")
        
        Theater.load(URLRequest(url: movieView!))
    }
}
