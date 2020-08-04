//
//  ViewController.swift
//  PersonalityQuiz
//
//  Created by Harry Nicholas on 03/12/2019.
//  Copyright © 2019 Harry Nicholas. All rights reserved.
//

import UIKit //App Icon was taken from clipart-library.com/clipart/8TzKXEGTp.html
import AVFoundation

class IntroductionViewController: UIViewController {

     var audioPlayer = AVAudioPlayer() //audio variable
    
    
    @IBAction func unwindToQuizIntroduction(segue: UIStoryboardSegue) {
        
    }

    override func viewDidLoad() { //Plays sound when quiz begins
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let sound = Bundle.main.path(forResource: "begin", ofType: "mp3") //file path for audio
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
        }
        catch{
            print(error)
        }
    }
    @IBAction func soundButtonPressed(_ sender: Any) { //Play sound when button is pressed
           audioPlayer.play()
       }

}

