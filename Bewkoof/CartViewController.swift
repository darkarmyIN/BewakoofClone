//
//  CartViewController.swift
//  Bewkoof
//
//  Created by Avikant Saini on 7/16/16.
//  Copyright © 2016 Dark Army. All rights reserved.
//

import UIKit

class CartViewController: BaseViewController {

	override func viewDidLoad() {
		
		URLString = "https://www.bewakoof.com/cart"
		
		super.viewDidLoad()
		
		// Do any additional setup after loading the view.
	}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
