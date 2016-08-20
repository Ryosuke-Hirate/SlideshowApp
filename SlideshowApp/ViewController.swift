//
//  ViewController.swift
//  SlideshowApp
//
//  Created by 平手奈々 on 2016/08/13.
//  Copyright © 2016年 ryosuke.hirate. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var imageView: UIImageView!
    var scale:CGFloat = 1.0
    var width:CGFloat = 0
    var height:CGFloat = 0
    var screenWidth:CGFloat = 0
    var screenHeight:CGFloat = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?){
        
        let resultViewController :ViewController2 = segue.destinationViewController as! ViewController2
        
        resultViewController.dispImageNo = imageView.image
        
    }
    @IBAction func unwind(segue: UIStoryboardSegue){
        
    }


    @IBAction func onTapImage(sender: AnyObject) {
        performSegueWithIdentifier("result", sender: nil)
        
            if(width*scale < screenWidth*2){
            scale -= 0.2
        }
        
        let rect:CGRect = CGRectMake(0, 0, width*scale, height*scale)
        imageView.frame = rect;
        imageView.center = CGPointMake(187.5, 333.5)
        self.view.addSubview(imageView)
        }
   
    
   
    var timer: NSTimer?
    
    
    @IBOutlet weak var StartBtn: UIButton!
    
    @IBOutlet weak var onPrev: UIButton!
    @IBOutlet weak var onNext: UIButton!
    @IBAction func StartBtn(sender: AnyObject){
               if timer == nil{
            
            onPrev.enabled = false;
            onNext.enabled = false;
            
            StartBtn.setTitle("停止",forState:.Normal)
            
        }else{
            timer!.invalidate()
            timer = nil
            
            onPrev.enabled = true;
            onNext.enabled = true;
            
            StartBtn.setTitle("再生",forState:.Normal)
        }
        
        timer = NSTimer.scheduledTimerWithTimeInterval(
            2.0,
            target:self,
            selector:#selector(self.onNext(_:)),
            userInfo:nil,
            repeats:true
        )

        
        
    }



    @IBAction func onPrev(sender: AnyObject) {
        
        dispImageNo -= 1
        
        displayImage()
        
    }
    
    
    
    @IBAction func onNext(sender: AnyObject) {
        
        dispImageNo += 1
        
        displayImage()
        
        
    }
    
    var dispImageNo = 0
    
    func displayImage(){
        
        let imageNameArray = [
        
            "Bonn.jpg",
            "koeln.jpg",
            "dusseldorf.jpg"
            
        ]
        
        if dispImageNo < 0 {
            dispImageNo = 2
        }
        
        
        if dispImageNo > 2 {
            dispImageNo = 0
        }
        
        let name = imageNameArray[dispImageNo]
        
        let image = UIImage(named: name)
        
        imageView.image = image
        
}

}




