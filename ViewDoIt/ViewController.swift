//
//  ViewController.swift
//  ViewDoIt
//
//  Created by macbook on 2022/04/09.
//

import UIKit

class ViewController: UIViewController {
    var isZoom = false
    var imgOn: UIImage?
    var imgOff: UIImage?
    
    @IBOutlet var imgView: UIImageView!
    @IBOutlet var btnResize: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imgOn = UIImage(named: "lamp_on.png")
        imgOff = UIImage(named: "lamp_off.png")
        
        imgView.image = imgOff //초기 상태켜짐
        
        
    }


    @IBAction func btnResizeImage(_ sender: UIButton) {
        let scale : CGFloat = 2.0
        var newWidth: CGFloat, newHeight: CGFloat
        
        if(isZoom){ // get smaller
            newHeight = imgView.frame.height/scale //divide current image with scale
            newWidth = imgView.frame.width/scale
            btnResize.setTitle("축소", for: .normal)
        }
        else{ // get bigger
            newHeight = imgView.frame.height*scale //multiple current image with scale
            newWidth = imgView.frame.width*scale
            btnResize.setTitle("확대", for: .normal)
        }
        imgView.frame.size = CGSize(width: newWidth, height: newHeight)
        isZoom = !isZoom
    }
    @IBAction func switchImageOnOff(_ sender: UISwitch) {
        if sender.isOn{
            imgView.image = imgOff
        }
        else {
            imgView.image = imgOn
        }
    }
}

