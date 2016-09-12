import UIKit

class SignUpVC: UIViewController {
    @IBOutlet var user: UITextField!
    @IBOutlet var pass: UITextField!
    @IBOutlet var confirm: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func SingUP(sender: UIButton) {
        let userNmae = user.text
        let password = pass.text
        let confirmPassword = confirm.text
        
        
        if(userNmae.isEmpty || password.isEmpty || confirmPassword.isEmpty){
            
            alert("empty")
            
            return
        }
        
        
        if (password != confirmPassword){
            alert("no match")
            return
        }
        
        NSUserDefaults.standardUserDefaults().setObject(userNmae, forKey: "userName")
        NSUserDefaults.standardUserDefaults().setObject(password, forKey: "password")
        NSUserDefaults.standardUserDefaults().synchronize()
        
         var my = UIAlertController(title: "Alert", message: "Great", preferredStyle: UIAlertControllerStyle.Alert)
        
        let ok = UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil)

    }

    @IBAction func gotoLogin(sender: UIButton) {
        self.dismissViewControllerAnimated(true, completion: nil)
        
        
    }
    
    func alert(usermessage: String){
        var my = UIAlertController(title: "Alert", message: usermessage, preferredStyle: UIAlertControllerStyle.Alert)
        
        let ok = UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil)
        
        my.addAction(ok)
        self.presentViewController(my, animated: true, completion: nil)
    }
