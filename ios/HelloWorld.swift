//
//  HelloWorld.swift
//  AwesomeProject
//
//  Created by Rudresh Uppin on 14/11/21.
//

import Foundation
import UIKit

@objc(HelloWorld)

class HelloWorld: NSObject, RCTBridgeModule{
  
  static func moduleName() -> String!{
    return "HelloWorld";
  }
  
  private static func requireMainQueueSetup () -> Bool {
    return true;
  }
  
  
  @objc
  func ShowMessage(_ message:NSString, duration:Double) -> Void {
    let alert = UIAlertController(title:nil, message: message as String, preferredStyle: .alert);
    let seconds:Double = duration;
    alert.view.backgroundColor = .black
    alert.view.alpha = 0.5
    alert.view.layer.cornerRadius = 14
    
    DispatchQueue.main.async {
//      (UIApplication.shared.delegate as? AppDelegate)?.window.rootViewController?.present(alert, animated: true, completion: nil);
      let storyboard = UIStoryboard(name: "ViewController", bundle: nil)

      if let vc = storyboard.instantiateViewController(withIdentifier: "ViewController") as? ViewController {
         let appDelegate = UIApplication.shared.delegate as! AppDelegate
         appDelegate.window?.rootViewController = vc
      }
      
    }
    
    DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + seconds, execute: {
     // alert.dismiss(animated: true, completion: nil);
    })
  }
}
