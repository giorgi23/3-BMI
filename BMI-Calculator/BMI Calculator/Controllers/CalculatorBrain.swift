
import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIValue () -> String {
        
            
        let bmiTo1Decimal = String(format: "%.1f", bmi?.value ?? 0.0)
            
        
        return bmiTo1Decimal
        
    }
    
    func getAdvice () -> String {
        
        
        return bmi?.advice ?? "No advice"
    }
    
    func getColor () -> UIColor {
        
        
        return bmi?.color ?? #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        
        let bmiValue  = (weight / pow(height, 2))
        
        if bmiValue < 18.5 {
            
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
        } else if bmiValue < 24.9 {
            
            bmi = BMI(value: bmiValue, advice: "Fit as fuck", color: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies", color: #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))
        }
        
    }
    

    
}
