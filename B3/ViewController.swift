//
//  ViewController.swift
//  B3
//
//  Created by Hoang Son on 10/3/18.
//  Copyright © 2018 Hoang Son. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var m : Int = 0
    var n : Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       // self.creatView()
       self.childView()
    }
    
    func childView(){
       let rect =  CGRect(x: 100, y: 100, width: 10, height: 10)
       let childview = UIView(frame: rect)
       childview.backgroundColor = UIColor.red
       childview.tag = 10
       self.view.addSubview(childview)
    }
        
    @IBAction func btnLeft(_ sender: UIButton, forEvent event: UIEvent) {
        m += 1
        let rect =  CGRect(x: 100 - m*10, y: 100 - n*10 , width: 10, height: 10)
        let childview = UIView(frame: rect)
        childview.backgroundColor = UIColor.red
        self.view.addSubview(childview)
        childview.tag = 10
        if let viewWithTag = self.view.viewWithTag(10) {
            viewWithTag.removeFromSuperview()
        }
    }
    
    @IBAction func btnRight(_ sender: Any, forEvent event: UIEvent) {
        m -= 1
        let rect =  CGRect(x: 100 - m*10, y: 100 - n*10, width: 10, height: 10)
        let childview = UIView(frame: rect)
        childview.backgroundColor = UIColor.red
        self.view.addSubview(childview)
        childview.tag = 10
        if let viewWithTag = self.view.viewWithTag(10) {
            viewWithTag.removeFromSuperview()
            
        }
    }
 
    @IBAction func btnUp(_ sender: Any, forEvent event: UIEvent) {
        n += 1
        let rect =  CGRect(x: 100 - m*10, y: 100 - n*10, width: 10, height: 10)
        let childview = UIView(frame: rect)
        childview.backgroundColor = UIColor.red
        self.view.addSubview(childview)
        childview.tag = 10
        if let viewWithTag = self.view.viewWithTag(10) {
            viewWithTag.removeFromSuperview()
            
        }
    }
    
    @IBAction func btnDown(_ sender: Any, forEvent event: UIEvent) {
        n -= 1
        let rect =  CGRect(x: 100 - m*10, y: 100 - n*10, width: 10, height: 10)
        let childview = UIView(frame: rect)
        childview.backgroundColor = UIColor.red
        self.view.addSubview(childview)
        childview.tag = 10
        if let viewWithTag = self.view.viewWithTag(10) {
            viewWithTag.removeFromSuperview()
        }
    }

    ///func creatView () {
       ///let viewRect = CGRect(x:0, y: 0, width: 100, height: 100)
        ///let sampleView = UIView(frame: viewRect)
        ///sampleView.backgroundColor = UIColor.red
        ///self.view.addSubview(sampleView)
   /// }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

