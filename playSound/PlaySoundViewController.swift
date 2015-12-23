//
//  PlaySoundViewController.swift
//  playSound
//
//  Created by SwagSoft Vn on 12/22/15.
//  Copyright © 2015 SwagSoft Vn. All rights reserved.
//

import UIKit
import AVFoundation
class PlaySoundViewController: UIViewController {

    
    var soundPlayer: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let path = NSBundle.mainBundle().pathForResource("movie_quote", ofType: "mp3")!
        let url = NSURL(fileURLWithPath: path)
        
        do {
            soundPlayer = try AVAudioPlayer(contentsOfURL: url)
            
            soundPlayer.enableRate = true;
            
            
        } catch {
            print("fail to load file")
        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func playSlowAction(sender: UIButton) {
        //TODO : Play slow sound
        print("play a sound")
        soundPlayer.stop()
        soundPlayer.currentTime = 0.0
        soundPlayer.rate = 0.5
        soundPlayer.prepareToPlay()
        soundPlayer.play()
    }

    @IBAction func playFastAction(sender: UIButton) {
        soundPlayer.stop()
        soundPlayer.currentTime = 0.0
        soundPlayer.rate = 2.0
        soundPlayer.prepareToPlay()
        soundPlayer.play()
    }
    @IBAction func stopPlaySound(sender: UIButton) {
        soundPlayer.stop()
        
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
