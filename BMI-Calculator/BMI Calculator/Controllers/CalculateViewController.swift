

import UIKit

class CalculateViewController: UIViewController {
    
    var calculatorBrain = CalculatorBrain()
    
    
    @IBOutlet weak var heightLabel: UILabel!
    
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func heightSliderchanged(_ sender: UISlider) {
        
        let height = String (format: "%.2f", sender.value)
        heightLabel.text = "\(height)m"
        
    }

    @IBAction func weightSliderChanged(_ sender: UISlider) {
        
       let weight = String (format: "%.0f", sender.value)
        weightLabel.text = "\(weight)kg"
        
        
    }
    
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        let weight = weightSlider.value
        let height = heightSlider.value
            
        
        calculatorBrain.calculateBMI(height: height, weight: weight)
        
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
        
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            
            if segue.identifier == "goToResult" {
                
                let destinationVC = segue.destination as! ResultViewController
                destinationVC.bmiValue = calculatorBrain.getBMIValue()
                destinationVC.advice = calculatorBrain.getAdvice()
                destinationVC.color = calculatorBrain.getColor()
                
                
            }
        }
        

 }
// manual transfer of data to sevcon vc
//        let secondVC = SecondViewController()
//        secondVC.bmiValue = String(format: "%.1f", bmi)
        
//        self.present(secondVC, animated: true, completion: nil)
        

    
    
    


