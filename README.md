# SCDatePicker

SCDatePicker is a simple UIDatePicker with a UIToolbar and 'Done' button. Three lines of code.

## Install

Simply drag the SCDatePicker.swift file to your project.

## Usage

1. Subclass your UITextfield as DateFieldTextField.
2. Create a IBOutlet weak var datePickerTextField: UITextField! and connect it to your StoryBoards UI
3. Add SCDateFieldDelegate to your ViewController
        
        datePickerTextField.dateDelegate = self
        datePickerTextField.datetype = .date

##Options

There are the basic three UIDatePicker options to choose from:
1. Date
2. DateAndTime
3. CountDownTimer

Use .datetype to select choice using:
1. .date
2. .time
3. .countdown

##Delegate
When SCDatePicker has finished selecting date, you can receive the date as a string or Date()
```Swift
func dateTextHasChanged(dateString:String, date:NSDate)
```

Sample Usage:
```Swift

class ViewController: UIViewController, SCDateFieldDelegate {

    @IBOutlet weak var datePickerTextField: DateFieldTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        datePickerTextField.dateDelegate = self
        datePickerTextField.datetype = .date
    }

    
    func dateTextHasChanged(dateString: String, date: NSDate) {
    
        datePickerTextField.text = dateString
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


```

