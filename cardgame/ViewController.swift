//
//  ViewController.swift
//  cardgame
//
//  Created by Ethan Fan on 4/16/16.
//  Copyright © 2016 tvoshack. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
    
    @IBOutlet weak var firstBtn: UIButton!
    @IBOutlet weak var secondBtn: UIButton!
    @IBOutlet weak var thirdBtn: UIButton!
    @IBOutlet weak var fourthBtn: UIButton!

    var firstClick = false
    var secondClick = false
    var thirdlick = false
    var fourthClick = false
    
    @IBOutlet weak var winnertext: UILabel!
    @IBOutlet weak var profileimage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(animated: Bool) {

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func firstClicked(sender: AnyObject) {
        if firstClick == false{
        UIView.animateWithDuration(1.0, animations: {
            self.firstBtn.center.y -= 350
        })
            firstClick = true
        }
    }
    
    @IBAction func secondClicked(sender: AnyObject) {
//        let confettiView = SAConfettiView(frame: self.view.bounds)
//        self.view.addSubview(confettiView)
//        confettiView.type = .Confetti
//        confettiView.startConfetti()
        if secondClick == false{
            UIView.animateWithDuration(1.0, animations: {
                self.secondBtn.center.y -= 350
            })
            secondClick = true
        }else{
            
            profileimage.alpha = 0
            profileimage.hidden = false
            winnertext.hidden = false
            
            UIView.animateWithDuration(1.0, animations: {
                self.profileimage.alpha = 1
            })

        }


    }

    @IBAction func thirdClicked(sender: AnyObject) {
        if thirdlick == false{
        UIView.animateWithDuration(1.0, animations: {
            self.thirdBtn.center.y -= 350
        })
            thirdlick = true
        }

    }

    @IBAction func fourthClicked(sender: AnyObject) {
        if fourthClick == false{
            UIView.animateWithDuration(1.0, animations: {
                self.fourthBtn.center.y -= 350
            })
            fourthClick = true
        }


    }

}

