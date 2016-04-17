//
//  GifViewController.swift
//  cardgame
//
//  Created by Ethan Fan on 4/16/16.
//  Copyright © 2016 tvoshack. All rights reserved.
//

import UIKit

class GifViewController: UIViewController {
    @IBOutlet weak var gifImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        
        var imageData = NSData(contentsOfURL: NSBundle.mainBundle()
            .URLForResource("pig", withExtension: "gif")!)
        let jeremy = UIImage.animatedImageWithData(imageData!)
        var imageView = UIImageView(image: jeremy)
        imageView.frame = CGRect(x: 500, y: 200, width: 1000, height: 500)
        
        view.addSubview(imageView)
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
