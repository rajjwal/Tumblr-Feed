//
//  PhotoDetailsViewController.swift
//  Tumblr Feeds
//
//  Created by Rajjwal Rawal on 2/12/17.
//  Copyright © 2017 Rajjwal Rawal. All rights reserved.
//

import UIKit

class PhotoDetailsViewController: UIViewController {

    @IBOutlet weak var photoImageView: UIImageView!
    
    
    var photo: NSDictionary!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print (photo)
        if let photos = photo["photos"] as? [NSDictionary]{
            
            let imageURLString = photos[0].value(forKeyPath: "original_size.url") as? String
            if let imageUrl = NSURL(string: imageURLString!) {
                photoImageView.setImageWith(imageUrl as URL)
            } else {
            }
        } else {
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
