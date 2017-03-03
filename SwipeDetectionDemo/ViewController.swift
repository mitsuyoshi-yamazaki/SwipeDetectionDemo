//
//  ViewController.swift
//  SwipeDetectionDemo
//
//  Created by mitsuyoshi.yamazaki on 2017/03/03.
//  Copyright © 2017年 mitsuyoshi.yamazaki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet private weak var detectionView: ForceTouchDetectionView!
  
  override func viewDidLoad() {
    super.viewDidLoad()

  }
  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    
    checkForceTouchCapability()
  }
  
  // MARK: - 
  private func checkForceTouchCapability() {
    
    guard view.traitCollection.forceTouchCapability == .available else {
      
      let alertController = UIAlertController(title: "起動できません", message: "3Dタッチをサポートしていない\nデバイスのようです", preferredStyle: .alert)
      
      present(alertController, animated: true, completion: nil)
      return
    }
  }
}

class ForceTouchDetectionView: UIView {
  
  // MARK: - 
  private func someEventHandling(touch: UITouch) {
    print(touch.force)
  }
  
  // MARK: - UIControl Events
  override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    if let touch = touches.first {
      someEventHandling(touch: touch)
    }
//    print(#function)
  }
  
  override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
    if let touch = touches.first {
      someEventHandling(touch: touch)
    }
//    print(#function)
  }
  
  override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
//    print(#function)
  }
  
  override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
//    print(#function)
  }
}
