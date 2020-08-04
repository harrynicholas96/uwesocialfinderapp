//
//  QuestionViewController.swift
//  PersonalityQuiz
//
//  Created by Harry Nicholas on 03/12/2019.
//  Copyright © 2019 Harry Nicholas. All rights reserved.
//

import UIKit
import AVFoundation

class QuestionViewController: UIViewController {

    
    
    @IBOutlet weak var questionLabel: UILabel! //Question Label
    
    @IBOutlet weak var singleStackView: UIStackView! //Single Buttons
    @IBOutlet weak var singleButton1: UIButton!
    @IBOutlet weak var singleButton2: UIButton!
    @IBOutlet weak var singleButton3: UIButton!
    @IBOutlet weak var singleButton4: UIButton!
    @IBOutlet weak var singleButton5: UIButton!
    
    @IBOutlet weak var multipleStackView: UIStackView! //Multiple Choices Buttons and Switches
    @IBOutlet weak var multiLabel1: UILabel!
    @IBOutlet weak var multiLabel2: UILabel!
    @IBOutlet weak var multiLabel3: UILabel!
    @IBOutlet weak var multiLabel4: UILabel!
    
    @IBOutlet weak var multiSwitch1: UISwitch!
    @IBOutlet weak var multiSwitch2: UISwitch!
    @IBOutlet weak var multiSwitch3: UISwitch!
    @IBOutlet weak var multiSwitch4: UISwitch!
    
    @IBOutlet weak var rangedStackView: UIStackView! //Ranged labels and slider
    @IBOutlet weak var rangedLabel1: UILabel!
    @IBOutlet weak var rangedLabel2: UILabel!
    @IBOutlet weak var rangedSlider: UISlider!
    
    
    @IBOutlet weak var questionProgressView: UIProgressView!
    
    var audioPlayer = AVAudioPlayer() //audio variable

    
    var questions: [Question] = [ //Questions in QuestionViewController
         Question(text: "I have a kind word for everybody", //Answer chosen links to the personality type.
                  type: .single,
                  answers: [
                    Answer(text: "Strongly agree", type: .camp),
                    Answer(text: "Slightly agree", type: .def),
                    Answer(text: "Neutral", type: .logis),
                    Answer(text: "Slightly disagree", type: .arch),
                    Answer(text: "Strongly disaagree", type: .logic),
    
         ]),
       
       

        Question(text: "I enjoy social events with lots of people",
                 type: .ranged,
                        answers: [
                           Answer(text: "Strongly disagree", type: .logic),
                           Answer(text: "Slightly disagree", type: .logis),
                           Answer(text: "Slightly agree", type: .cons),
                           Answer(text: "Strongly agree", type: .entre),
        
               ]),
        
        Question(text: "I am very creative",
                 type: .ranged,
                        answers: [
                           Answer(text: "Strongly disagree", type: .virt),
                           Answer(text: "Slightly disagree", type: .advoc),
                           Answer(text: "Slightly agree", type: .exec),
                           Answer(text: "Strongly agree", type: .deb),
        
               ]),
        
        Question(text: "I often wonder what others think about me",
                        type: .ranged,
                               answers: [
                                  Answer(text: "Strongly disagree", type: .enter),
                                  Answer(text: "Slightly disagree", type: .arch),
                                  Answer(text: "Slightly agree", type: .camp),
                                  Answer(text: "Strongly agree", type: .cons),
               
                      ]),
        
        Question(text: "I like discussing different views and theories on what the world could look like in the future.",
                       type: .ranged,
                              answers: [
                                 Answer(text: "Strongly disagree", type: .prota),
                                 Answer(text: "Slightly disagree", type: .advoc),
                                 Answer(text: "Slightly agree", type: .medi),
                                 Answer(text: "Strongly agree", type: .deb),
              
                     ]),
        Question(text: "Life is about making as much money as you can",
                               type: .ranged,
                                      answers: [
                                         Answer(text: "Strongly disagree", type: .def),
                                         Answer(text: "Slightly disagree", type: .adven),
                                         Answer(text: "Slightly agree", type: .comm),
                                         Answer(text: "Strongly agree", type: .enter),
                      
                             ]),
        
        Question(text: "I like to live in the moment rather than plan ahead",
                 type: .ranged,
                        answers: [
                           Answer(text: "Strongly disagree", type: .adven),
                           Answer(text: "Slightly disagree", type: .virt),
                           Answer(text: "Slightly agree", type: .exec),
                           Answer(text: "Strongly agree", type: .logic),
        
               ]),
        
        Question(text: "I can be demanding when I want to be",
                        type: .ranged,
                               answers: [
                                  Answer(text: "Strongly disagree", type: .comm),
                                  Answer(text: "Slightly disagree", type: .advoc),
                                  Answer(text: "Slightly agree", type: .prota),
                                  Answer(text: "Strongly agree", type: .medi),
               
                      ]),
        
        Question(text: "Your travel plans are more likely to look like a rough list of ideas than a detailed itinerary.",
                 type: .ranged,
                        answers: [
                           Answer(text: "Strongly disagree", type: .logis),
                           Answer(text: "Slightly disagree", type: .comm),
                           Answer(text: "Slightly agree", type: .adven),
                           Answer(text: "Strongly agree", type: .virt),
        
               ]),
        
        Question(text: "It would be a challenge for you to spend the whole weekend all by yourself without feeling bored.",
                 type: .ranged,
                        answers: [
                           Answer(text: "Strongly disagree", type: .arch),
                           Answer(text: "Slightly disagree", type: .adven),
                           Answer(text: "Slightly agree", type: .entre),
                           Answer(text: "Strongly agree", type: .cons),
        
               ]),
        
        Question(text: "Select the following that best describe you:",
                 type: .multiple,
                 answers: [
                    Answer(text: "Strategic", type: .arch),
                    Answer(text: "Insightful", type: .advoc),
                    Answer(text: "Honest", type: .logis),
                    Answer(text: "Creative", type: .virt),

        ]),
        
        Question(text: "Select the following that best describe you:",
                        type: .multiple,
                        answers: [
                           Answer(text: "Analytical", type: .logic),
                           Answer(text: "Harmonous", type: .medi),
                           Answer(text: "Supportive", type: .def),
                           Answer(text: "Imaginative", type: .adven),

               ]),
        
        Question(text: "Select the following that best describe you:",
                               type: .multiple,
                               answers: [
                                  Answer(text: "Charismatic", type: .comm),
                                  Answer(text: "Reliable", type: .prota),
                                  Answer(text: "Direct", type: .exec),
                                  Answer(text: "Original", type: .entre),

                      ]),
        
        Question(text: "Select the following that best describe you:",
                                      type: .multiple,
                                      answers: [
                                         Answer(text: "Brainstormer", type: .deb),
                                         Answer(text: "Popular", type: .camp),
                                         Answer(text: "Warm", type: .cons),
                                         Answer(text: "Showman", type: .enter),

                             ]),
        Question(text: "Select the following that best describe you:",
                 type: .multiple,
                 answers: [
                    Answer(text: "Independent", type: .arch),
                    Answer(text: "Decisive", type: .advoc),
                    Answer(text: "Passionate", type: .medi),
                    Answer(text: "Loyal", type: .def),

        ]),
        
        Question(text: "Select the following that best describe you:",
                 type: .multiple,
                 answers: [
                    Answer(text: "Tolerant", type: .prota),
                    Answer(text: "Knowledgable", type: .deb),
                    Answer(text: "Strong-willed", type: .exec),
                    Answer(text: "Loyal", type: .def),

        ]),
        Question(text: "Select the following that best describe you:",
                 type: .multiple,
                 answers: [
                    Answer(text: "Energetic", type: .camp),
                    Answer(text: "Practical", type: .enter),
                    Answer(text: "Jack-of-all-trades", type: .logis),
                    Answer(text: "Open Minded", type: .logic),

        ]),
     
    ]
    
    var questionIndex = 0
    
    var answersChosen: [Answer] = [] //Records what they've chosen
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let sound = Bundle.main.path(forResource: "press", ofType: "mp3") //file path for audio
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
        }
        catch{
            print(error)
        }
        
        // Do any additional setup after loading the view.
        updateUI()
        
    }
    
    
    @IBAction func soundButtonPressed(_ sender: Any) { //Play sound when button is pressed
        audioPlayer.play()
    }
    
    func updateUI(){
        
        singleStackView.isHidden = true
        multipleStackView.isHidden = true
        rangedStackView.isHidden = true
        
        navigationItem.title = "Question #\(questionIndex+1)" //Question Counter
        
        let currentQuestion = questions[questionIndex]
        let currentAnswers = currentQuestion.answers
        let totalProgress = Float(questionIndex) / Float(questions.count)
        
        questionLabel.text = currentQuestion.text
        questionProgressView.setProgress(totalProgress, animated: true)
        
        switch currentQuestion.type { //Stack View Controls
        case .single:
            singleStackView.isHidden = false
            updateSingleStack(using: currentAnswers)
        case .multiple:
            multipleStackView.isHidden = false
            updateMultipleStack(using: currentAnswers)
        case .ranged:
            rangedStackView.isHidden = false
            updateRangedStack(using: currentAnswers)
        }
}
    
    func updateSingleStack(using answers: [Answer]) {  //code for setting up these functions was learnt from iBrent - see www.youtube.com/watch?v=augrMEQeasU for full tutorial
        singleStackView.isHidden = false
        singleButton1.setTitle(answers[0].text, for: .normal) //Unhides Stack View
        singleButton2.setTitle(answers[1].text, for: .normal)
        singleButton3.setTitle(answers[2].text, for: .normal)
        singleButton4.setTitle(answers[3].text, for: .normal)
        singleButton5.setTitle(answers[4].text, for: .normal)
    }
    
    func updateMultipleStack(using answers: [Answer]) { //Sets all switches to off and displays labels
        multipleStackView.isHidden = false
        multiSwitch1.isOn = false
        multiSwitch2.isOn = false
        multiSwitch3.isOn = false
        multiSwitch4.isOn = false
        
        
        multiLabel1.text = answers[0].text
        multiLabel2.text = answers[1].text
        multiLabel3.text = answers[2].text
        multiLabel4.text = answers[3].text
    }
    
    func updateRangedStack(using answers: [Answer]) { //Unhides Ranged Qs and hides the others
        rangedStackView.isHidden = false
        rangedSlider.setValue(0.5, animated: false)
        rangedLabel1.text = answers.first?.text
        rangedLabel2.text = answers.last?.text
        
    }
    
    @IBAction func singleAnswerButtonPressed(_ sender: UIButton) { //Single Choice Questions
        let currentAnswers = questions[questionIndex].answers
        
        switch sender {
        case singleButton1:
            answersChosen.append(currentAnswers[0])
        case singleButton2:
            answersChosen.append(currentAnswers[1])
        case singleButton3:
            answersChosen.append(currentAnswers[2])
        case singleButton4:
            answersChosen.append(currentAnswers[3])
        default:
            break
        
    }
    
        nextQuestion()
    }
    
    @IBAction func multipleAnswersButtonPressed(_ sender: Any) { //Multiple Choice Questions
        let currentAnswers = questions[questionIndex].answers
        
        if multiSwitch1.isOn {
            answersChosen.append(currentAnswers[0])
        }
        if multiSwitch2.isOn {
            answersChosen.append(currentAnswers[1])
        }
        if multiSwitch3.isOn {
            answersChosen.append(currentAnswers[2])
        }
        if multiSwitch4.isOn {
            answersChosen.append(currentAnswers[3])
        }
        
        nextQuestion()
    }
    
    @IBAction func rangedAnswerButtonPressed() { //Ranged Questions
        
        let currentAnswers = questions[questionIndex].answers
        
        let index = Int(round(rangedSlider.value * Float(currentAnswers.count - 1)))
        
        answersChosen.append(currentAnswers[index])
        
        nextQuestion()
        
    }
   
    
    func nextQuestion() { //Code for counting the number of Questions taken so far
            questionIndex += 1
        
        if questionIndex < questions.count {
            updateUI()
        } else {
performSegue(withIdentifier: "ResultsSegue", sender: nil)
        }
    }
        
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) { //This prepares the data to be transferred and usable the ResultsViewController
        if segue.identifier == "ResultsSegue" {
            let resultsViewController = segue.destination as! ResultsViewController
            resultsViewController.responses = answersChosen
        }
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
