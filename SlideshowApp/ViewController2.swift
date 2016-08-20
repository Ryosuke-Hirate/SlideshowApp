//
//  ViewController2.swift
//  SlideshowApp
//
//  Created by 平手奈々 on 2016/08/13.
//  Copyright © 2016年 ryosuke.hirate. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    var dispImageNo : UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = dispImageNo
        
    }
    
                // Do any additional setup after loading the view

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
