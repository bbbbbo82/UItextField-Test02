

import UIKit

// 1. Delegate 객체상속
class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var myTextField: UITextField!
    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       // 2. delegate 객체와 ViewController 객체 연결
        myTextField.delegate = self
        myTextField.clearButtonMode = UITextField.ViewMode.always //텍스트필드 x표시(초기화)
        myTextField.placeholder = "숫자를 입력하세용!"  //미리 입력되어있는 글자
    }

    @IBAction func buttonPressed(_ sender: Any) {
        print(myTextField.text!)
        let inString = myTextField.text
        let outString = inString! + "Coding"
        myLabel.text = outString
        myTextField.text = ""   //다음을 위하여 공백
        
        // delegate method
        // called when 'return' key pressed. return NO to ignore.
        // 3. 키보드를 강제적으로 내림
        myTextField.resignFirstResponder()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)       //background에서 tab을하면 내려감
        myTextField.backgroundColor = UIColor.yellow
        view.backgroundColor = UIColor.green
    }
    
    // called when clear button pressed. return NO to ignore.(no notifications)
    public func textFieldShouldClear(_ textField: UITextField) -> Bool {
        myTextField.backgroundColor = UIColor.lightGray
        return true
    }
}

