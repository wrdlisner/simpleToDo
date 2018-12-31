import UIKit

class setTodoViewController: UIViewController {

    // label name
    @IBOutlet weak var nameTodo: UILabel!
    @IBOutlet weak var nameDisc: UILabel!
    @IBOutlet weak var nameDead: UILabel!
    @IBOutlet weak var nameNoti: UILabel!
    
    // datepicker
    @IBOutlet weak var datepicker: UIDatePicker!
    
    // textField
    @IBOutlet weak var myTextField: UITextField!
    
    // textView
    @IBOutlet weak var myTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        viewSetting()
        dateSetting()
        
    }

    func dateSetting() {
        
        let now:Date = Date()
        let format = DateFormatter()
        let dateString = format.string(from: now)
        format.dateFormat = "MM/dd HH:mm EE"
        
        datepicker.minimumDate = now
        
    }
    
    func viewSetting() {
        nameTodo.text = "Title"
        nameDisc.text = "Discription"
        nameDead.text = "Deadline"
        nameNoti.text = "Notification"
        myTextField.layer.borderColor = UIColor.black.cgColor
        myTextField.layer.borderWidth = 1.0
        myTextField.layer.cornerRadius = 10.0
        myTextField.layer.masksToBounds = true
        myTextField.layer.borderColor = UIColor.black.cgColor
        myTextView.layer.borderWidth = 1.0
        myTextView.layer.cornerRadius = 10.0
        myTextView.layer.masksToBounds = true
    }
    
    func saveTask() {
        let userDefault = UserDefaults.standard
        
    }
    
}
