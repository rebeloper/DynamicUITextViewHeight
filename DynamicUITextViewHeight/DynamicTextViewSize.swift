//
//  DynamicTextViewSize.swift
//  DynamicUITextViewHeight
//
//  Created by Alex Nagy on 02/03/2019.
//  Copyright © 2019 Alex Nagy. All rights reserved.
//

import UIKit

class DynamicTextViewSize {
    
    static func height(text: String?, font: UIFont, width: CGFloat) -> CGFloat {
        
        var currentHeight: CGFloat!
        
        let textView: UITextView = UITextView(frame: CGRect(x: 0, y: 0, width: width, height: CGFloat.greatestFiniteMagnitude))
        textView.font = font
        textView.text = text
        textView.sizeToFit()
        
        currentHeight = textView.frame.height
        textView.removeFromSuperview()
        
        return currentHeight
    }
    
}
