//
//  ViewController.swift
//  SwipeDetectionDemo
//
//  Created by mitsuyoshi.yamazaki on 2017/03/03.
//  Copyright © 2017年 mitsuyoshi.yamazaki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet fileprivate weak var detectionView: ForceTouchDetectionView!
  
  override func viewDidLoad() {
    super.viewDidLoad()

  }
}

class ForceTouchDetectionView: UIView {
  
  // MARK: - UIControl Events
  override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    print(#function)
  }
  
  override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
    print(#function)
  }
  
  override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
    print(#function)
  }
  
  override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
    print(#function)
  }
}
