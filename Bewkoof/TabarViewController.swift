//
//  TabarViewController.swift
//  Bewkoof
//
//  Created by Avikant Saini on 7/16/16.
//  Copyright © 2016 Dark Army. All rights reserved.
//

import UIKit

class TabarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
	
	
	override func viewWillLayoutSubviews() {
		var frame = self.tabBar.frame
		frame.size.height = 40
		frame.origin.y = self.view.bounds.size.height - 40
		self.tabBar.frame = frame
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
