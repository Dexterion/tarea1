//
//  ViewController.swift
//  TodoApp
//
//  Created by Alumno on 02/05/16.
//  Copyright © 2016 ITESM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Galleta: UISlider!
    var targetValue: Int = 0
    var count: Int = 1
    var points: Int = 0
    var dif: Int = 0
    var score: Int = 0
    @IBOutlet weak var RandomNumber: UILabel!
    @IBOutlet weak var Round: UILabel!
    @IBOutlet weak var ScoreT: UILabel!
    @IBOutlet weak var NAme: UILabel!
    var name = String()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        generateRandomNumber()
        Startnew()
        NAme.text = name        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func HitmePress(sender: AnyObject) {
        count++
        calScore()
        generateRandomNumber()
    }
    func generateRandomNumber() -> Void{
        targetValue = 1+Int(arc4random_uniform(100))
    }
    func Startnew () -> Void{
        Round.text = "1"
        ScoreT.text = "0"
        Galleta.setValue(50, animated: true)
        score=0;
        RandomNumber.text = "\(targetValue)"
    }
    
    func calScore() -> Void{
        dif = targetValue - Int(Galleta.value)
        points = 100 - abs(dif)
        score += points
        
        
        let title : String
        
        if dif == 0{
            title = "Perfect"
        } else if dif < 5{
            title = "You Almost Had it"
        } else if dif < 10{
            title = "Pretty Good"
        } else {
            title = "Not even close"
        }
        
        let message = "You scored \(points) Points"
        let alert = UIAlertController(title: title, message:message, preferredStyle: UIAlertControllerStyle.Alert)
        let action = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: { action in
            self.ScoreT.text = "\(self.score)"
            self.RandomNumber.text = "\(self.targetValue)"
            self.Round.text = "\(self.count)"
            self.Galleta.setValue(50, animated: true)
            
        })
        alert.addAction(action)
        
        presentViewController(alert, animated: true, completion: nil)
    }
    @IBAction func Restart(sender: AnyObject) {
        Startnew()
        generateRandomNumber()
    }
    @IBAction func Scores(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
}

