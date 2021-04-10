//
//  ViewController.swift
//  Task2
//
//  Created by Jomms on 28/01/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblname: UILabel!
    @IBOutlet weak var imageviw1: UIImageView!
    @IBOutlet var imgviw2: UIImageView!
    
    @IBOutlet var imgviw3: UIImageView!
   
    
    @IBOutlet var imgviw4: UIImageView!
    
    @IBOutlet var imgviw5: UIImageView!
    
    @IBOutlet var imgviw6: UIImageView!
    
    @IBOutlet var imgviw7: UIImageView!
    
    @IBOutlet var imgviw8: UIImageView!
    
    @IBOutlet var imgviw9: UIImageView!
    
    @IBOutlet var textfld: UITextField!
    
    @IBOutlet var txtfldcomment: UITextField!
    
    let str:String = "Brand Norman"
    private let imageviw:UIImageView = {
        var imgview = UIImageView(image:#imageLiteral(resourceName: "icon"))
        imgview = UIImageView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
       
        return imgview
    }()
    private let imageviw2:UIImageView = {
        var imgview = UIImageView(image:#imageLiteral(resourceName: "download (2)"))
        imgview = UIImageView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
       
        return imgview
    }()
    
    private let imageviw3:UIImageView = {
        var imgview = UIImageView(image:#imageLiteral(resourceName: "comment icon"))
        imgview = UIImageView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
       
        return imgview
    }()
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
   pageview()
        
        guard let txtimage = UIImage(named:"images2") else { print("error"); return }
        addRightimageTo(textField:txtfldcomment, andImage:txtimage)
        
        guard let txtimg = UIImage(named:"images1") else {print("error"); return}
        addleftimageTo(textField:txtfldcomment, andImage: txtimg)
        
        guard let textimages = UIImage(named:"images6") else { print("error");return}
        leftimageTo(textField:textfld, andImage:textimages)
        
      
        let myMutableString = NSMutableAttributedString(string: str, attributes: [NSAttributedString.Key.font:UIFont(name: "Georgia", size: 25.0)!])
        
        myMutableString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:0,length:1))
        
        myMutableString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.green, range: NSRange(location:3,length:5))
           lblname.attributedText = myMutableString
            super.viewDidLoad()
        
        
    }
   
    func pageview(){
        imageviw1.image = #imageLiteral(resourceName: "imagviw1")
        imageviw1.layer.cornerRadius = imageviw1.frame.size.width/2
     
        
        imgviw2.image = #imageLiteral(resourceName: "download (2)")
        imgviw2.layer.cornerRadius = imgviw2.frame.size.width/2
        
        imgviw3.image = #imageLiteral(resourceName: "imgviw3")
        imgviw3.layer.cornerRadius = imgviw3.frame.size.width/2
      
        imgviw4.image = #imageLiteral(resourceName: "2908")
        imgviw4.layer.cornerRadius = imgviw3.frame.size.width/2
   
        imgviw5.image = #imageLiteral(resourceName: "download (1)")
        imgviw5.layer.cornerRadius = imgviw3.frame.size.width/2
        
        imgviw6.image = #imageLiteral(resourceName: "download (2)")
        imgviw6.layer.cornerRadius = imgviw3.frame.size.width/2
        
        imgviw7.image = #imageLiteral(resourceName: "download (4)")
        imgviw7.layer.cornerRadius = imgviw3.frame.size.width/2
        
        imgviw8.image = #imageLiteral(resourceName: "download (3)")
        imgviw8.layer.cornerRadius = imgviw3.frame.size.width/2
        
        imgviw9.image = #imageLiteral(resourceName: "imagviw1")
        imgviw9.layer.cornerRadius = imgviw3.frame.size.width/2
        
        textfld.layer.borderColor = #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)
        textfld.leftViewMode = UITextField.ViewMode.always
        textfld.leftView = imageviw
        textfld.rightViewMode = UITextField.ViewMode.always
        textfld.rightView = imageviw2
        
   //    txtfldcomment.rightViewMode = UITextField.ViewMode.always
       // txtfldcomment.rightView = imageviw3
        
        
        //txtfldcomment.rightViewMode = .always
   //     var imageView1 = UIImageView(image: UIImage(imageLiteralResourceName:"images"))
   //     imageView1 = UIImageView(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
   //     let paddingView1: UIView = UIView.init(frame: CGRect(x:0, y: 0, width:50, height: 50))
     //   imageView1.image = imageView1
     //   paddingView1.addSubview(imageView1)
    //    txtfldcomment.rightView = paddingView1
          
      // paddingView.addSubview(imageView)
      //    txtfld.leftViewMode = .always
       //   txtfld.leftView = paddingView
        
        
}
    
  
   func addRightimageTo(textField:UITextField,andImage img:UIImage) {
        let rightImageView = UIImageView(frame: CGRect(x:3, y: 0.0, width: img.size.width, height: img.size.height ))
        rightImageView.image = img
        txtfldcomment.rightView = rightImageView
        txtfldcomment.rightViewMode = .always
        
    }
    func addleftimageTo(textField:UITextField,andImage imgg:UIImage) {
        let leftImageView = UIImageView(frame: CGRect(x: 3, y:0, width: imgg.size.width, height: imgg.size.height ))
        leftImageView.image = imgg
        txtfldcomment.leftView = leftImageView
        txtfldcomment.leftViewMode = .always
        
    }
func leftimageTo(textField:UITextField,andImage img1:UIImage) {
        let leftImageView = UIImageView(frame: CGRect(x:5, y:0, width: img1.size.width, height: img1.size.height ))
        leftImageView.image = img1
       textfld.leftView = leftImageView
       textfld.leftViewMode = .always
    
  }
}
