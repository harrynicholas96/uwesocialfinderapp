//
//  ResultsViewController.swift
//  PersonalityQuiz
//
//  Created by Harry Nicholas on 03/12/2019.
//  Copyright © 2019 Harry Nicholas. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var ResultsStack: UIStackView!
    @IBOutlet weak var resultAnswerLabel: UILabel!
    @IBOutlet weak var resultDefinitionLabel: UILabel!
    
    @IBOutlet weak var SocialsStack: UIStackView! //Social Stack 1
    @IBOutlet weak var resultsImage: UIImageView!
    @IBOutlet weak var resultsImage2: UIImageView!
    @IBOutlet weak var resultsImage3: UIImageView!
  
    
    @IBOutlet weak var SocialsStack2: UIStackView! //Social Stack 2
    @IBOutlet weak var resultsImage4: UIImageView!
    @IBOutlet weak var resultsImage5: UIImageView!
    @IBOutlet weak var resultsImage6: UIImageView!
    
    @IBOutlet weak var resultsLabel: UILabel! //Labels for social stacks
    @IBOutlet weak var resultsLabel2: UILabel!
    @IBOutlet weak var resultsLabel3: UILabel!
    @IBOutlet weak var resultsLabel4: UILabel!
    @IBOutlet weak var resultsLabel5: UILabel!
    @IBOutlet weak var resultsLabel6: UILabel!
    
    @IBOutlet weak var personalityImage: UIImageView!
    
    

    
   
    var responses: [Answer]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        calculatePersonalityResult()
        navigationItem.hidesBackButton = true
        
        
    }
    
    
    func calculatePersonalityResult() {
        var frequencyOfAnswers: [PersonalityType: Int] = [:]
        let responseTypes = responses.map{ $0.type} //I only want what matches to the type - learnt from iBrent - see www.youtube.com/watch?v=augrMEQeasU for full tutorial
        
        for response in responseTypes {
            frequencyOfAnswers[response] = (frequencyOfAnswers[response] ?? 0) + 1 //if response exists we increase it by 1
        }
        
        let frequentAnswersSorted = frequencyOfAnswers.sorted(by: {(pair1, pair2) -> Bool in
            return pair1.value > pair2.value //If value1 is greater than value2 equals true.
            
        })
        
        let mostCommonAnswer = frequentAnswersSorted.first!.key
        
        resultAnswerLabel.text = "You scored highest in \(mostCommonAnswer.rawValue)!" //Displays most common answer
        resultDefinitionLabel.text = mostCommonAnswer.definition
        personalityImage.image = mostCommonAnswer.PersonalityImage
        
        resultsImage.image = mostCommonAnswer.image
        resultsImage2.image = mostCommonAnswer.image2
        resultsImage3.image = mostCommonAnswer.image3
        resultsImage4.image = mostCommonAnswer.image4
        resultsImage5.image = mostCommonAnswer.image5
        resultsImage6.image = mostCommonAnswer.image6
        
        resultsLabel.text = mostCommonAnswer.label1
        resultsLabel2.text = mostCommonAnswer.label2
        resultsLabel3.text = mostCommonAnswer.label3
        resultsLabel4.text = mostCommonAnswer.label4
        resultsLabel5.text = mostCommonAnswer.label5
        resultsLabel6.text = mostCommonAnswer.label6
       
}
    
    @IBAction func RevealSocials(_ sender: Any) { //Opens social page
        ResultsStack.isHidden = true
        SocialsStack.isHidden = false
        SocialsStack2.isHidden = true
        personalityImage.isHidden = true
    }
    
    
    @IBAction func SeeMore(_ sender: Any) { //Reveals next batch of socials
        ResultsStack.isHidden = true
        SocialsStack.isHidden = true
        SocialsStack2.isHidden = false
        personalityImage.isHidden = true
    }
    
    @IBAction func SeePrevious(_ sender: Any) { //Goes back to previous socials stack
        ResultsStack.isHidden = true
        SocialsStack.isHidden = false
        SocialsStack2.isHidden = true
        personalityImage.isHidden = true
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
