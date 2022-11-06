//
//  PickerViewController.swift
//  Bunty Social
//
//  Created by Manav Chordia on 11/5/22.
//

import UIKit

class PickerViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    
   
    

    @IBOutlet weak var picker: UIPickerView!
    let colors = ["Coffee Chat","Creamery Ice Cream","Go for Drinks","Grab Food","Football Game","Photo Session", "Study Session","Play Sports", "Hiking","Other"]
       override func viewDidLoad() {
           super.viewDidLoad()
           // Do any additional setup after loading the view, typically from a nib.
           
           // Connect data:
           self.picker.delegate = self
           self.picker.dataSource = self
           
           // Input the data into the array
   
       }
    override func didReceiveMemoryWarning() {
         super.didReceiveMemoryWarning()
         // Dispose of any resources that can be recreated.
     }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
        
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colors.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colors[row]
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
