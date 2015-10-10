//
//  MusicViewController.swift
//  goodtimes
//
//  Created by Michael Liou on 10/10/15.
//  Copyright © 2015 Michael Liou. All rights reserved.
//

import UIKit
import AVFoundation

class MusicViewController: UIViewController {

    
    var ButtonAudioURL = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("Kygo", ofType: "mp3")!)
    
    var ButtonAudioPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        do {
        ButtonAudioPlayer = try AVAudioPlayer(contentsOfURL: ButtonAudioURL)
        } catch {
        }
        
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
    
    // MARK: Actions
    
    @IBAction func playMusic(sender: UIButton) {
        ButtonAudioPlayer.play()
    }
    
    @IBAction func congrats(sender: UIButton) {
        let alertController = UIAlertController(title: "Great Job!", message: "You get 5 pats on the back", preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "Return", style: UIAlertActionStyle.Default,handler: nil))
        self.presentViewController(alertController, animated: true, completion: nil)
    }
    
    
    

}
