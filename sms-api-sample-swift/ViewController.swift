//  Created by Robert Kadikilo on 24/09/2020.
//  Copyright © 2020 Full Stack Team Six. All rights reserved.
//
import Alamofire
import UIKit

class ViewController: UIViewController {
    
     //Defined a constant that holds the URL for our web service
     let URL_USER_REGISTER = "https://portal.fullstackteamsix.com/api/v1/send/index.php"
    
    @IBOutlet var responseText: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
 
    }
    
    
    @IBAction func startSending(_ sender: UIButton) {
        
        responseText.text = "Sending"
        let valuePhone = "255763154141"
        let apiKey = "jhdfghjkl"
        let message = "Enter Your Message Here"
          
          //creating parameters for the post request
          let parameters: Parameters=[
              "key": apiKey,
              "phone": valuePhone,
              "message": message
          ]
          
           
               
               //Sending http post request
               AF.request(URL_USER_REGISTER, method: .post, parameters: parameters)
               .responseString { response in
                print("response: \(response)")
                       switch response.result {
                       case .success(let value):
                        
                           self.responseText.text = value
                           
                       case .failure(let error):
                           print(error)
                       }
           
        }
    }

}

