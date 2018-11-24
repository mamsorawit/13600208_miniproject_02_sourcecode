//
//  ViewController.swift
//  progessHUD_13600208
//
//  Created by ICT on 16/11/2561 BE.
//  Copyright © 2561 Pajongpong Luangkumdang. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate  {
    var audioPlayer : AVAudioPlayer!
    @IBOutlet weak var questionCounter: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var progressView: UIView!
    @IBOutlet weak var flagView: UIImageView!
    @IBOutlet weak var questionLabel: UILabel!
    
    
    @IBOutlet weak var showTime: UILabel!
    
    @IBOutlet weak var optionA: UIButton!
    @IBOutlet weak var optionB: UIButton!
    @IBOutlet weak var optionC: UIButton!
    @IBOutlet weak var optionD: UIButton!

    let allQuestions = QuestionBank()
    var questionNumber: Int = 0
    var score: Int = 0
    var selectedAnswer: Int = 0
    let soundFilesName = ["1","2"]
    
    var timer = Timer()
    var timeCount = 10
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateQuestion()
        updateUI()
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.procesTimer),userInfo: nil, repeats: true)
    }
    @objc func procesTimer(){
        if timeCount > 0 {
            timeCount -= 1
            showTime.text = String(timeCount)
        }else{
            timer.invalidate()
        }
        if timeCount <= 0{
            timeCount=0
            showTime.text = String(timeCount)
        }
    }
    
    @IBAction func answerPressed(_ sender: UIButton) {
        if sender.tag == selectedAnswer{
            print("correct")
            score += 1
            
          ProgressHUD.showSuccess("correct")
            playSound("2")

        }else{
            print("wrong")
            
            ProgressHUD.showError("wrong")
            playSound("1")
        }
        
        questionNumber += 1
        updateQuestion()
        timeCount = 11
    }
    
    func updateQuestion(){
        
        if questionNumber < allQuestions.list.count{
            flagView.image = UIImage(named:(allQuestions.list[questionNumber].questionImage))
            questionLabel.text = allQuestions.list[questionNumber].question
            optionA.setTitle(allQuestions.list[questionNumber].optionA, for: UIControl.State.normal)
            optionB.setTitle(allQuestions.list[questionNumber].optionB, for: UIControl.State.normal)
            optionC.setTitle(allQuestions.list[questionNumber].optionC, for: UIControl.State.normal)
            optionD.setTitle(allQuestions.list[questionNumber].optionD, for: UIControl.State.normal)
            selectedAnswer = allQuestions.list[questionNumber].correctAnswer
        }else{
            let alert = UIAlertController(title: "จบแล้วจ้า", message: "คำถามจบแล้ว. คุณต้องการเล่นใหม่ไหม?", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "Restart", style: .default, handler: {action in self.restartQuiz()})
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
        }
        updateUI()
    }
    
    func updateUI(){
        scoreLabel.text = "Score: \(score)"
        questionCounter.text = "\(questionNumber + 1)/\(allQuestions.list.count)"
        progressView.frame.size.width = (view.frame.size.width / CGFloat(allQuestions.list.count)) * CGFloat(questionNumber + 1)
    }

    func restartQuiz(){
        score = 0
        questionNumber = 0
        updateQuestion()
        timeCount = 11
    }
    func playSound(_ playThis: String){
        let soundURL = Bundle.main.url(forResource: playThis, withExtension: "WAV")
        audioPlayer = try! AVAudioPlayer(contentsOf: soundURL!)
        audioPlayer.play()
    }



}

