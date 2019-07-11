//
//  ViewController.swift
//  TapGestures
//
//  Created by Nova Arisma on 11/07/19.
//  Copyright © 2019 Nova Arisma. All rights reserved.
//

//Gestures
//masukkin ui view

import UIKit

class ViewController: UIViewController {
//connectkan kotaknya tipe uiview
    @IBOutlet weak var rectangleView: UIView! //tap gesture
    //@IBOutlet weak var rectangleView: UIView!
    @IBOutlet weak var rectanglePanView: UIView! //pan gesture
    
    var initialCenter = CGPoint () //pan gesture
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
//tapped gesture
    @IBAction func tapped(_ sender: UITapGestureRecognizer) {
    rectangleView.backgroundColor = .green}
   
    //pan gesture
    @IBAction func pan(_ sender1: UIPanGestureRecognizer) {
        guard sender1.view != nil  else {return}
        let rectanglePanView = sender1.view!
        
        let translation = sender1.translation(in: rectanglePanView.superview)
        if sender1.state == .began {
        self.initialCenter = rectanglePanView.center
        }
        if sender1.state != .cancelled{
            let newCenter = CGPoint(x: initialCenter.x + translation.x , y: initialCenter.y + translation.y)
            rectanglePanView.center = newCenter
        }
        else{
            rectanglePanView.center = initialCenter
        }
    }
    
    
    }
    //masukkan tapgesture tipenya di ganti jadi uitaprecognizer
    //@IBAction func tapped(_ sender: UITapGestureRecognizer) {
      //  rectangleView.backgroundColor = .blue
    



