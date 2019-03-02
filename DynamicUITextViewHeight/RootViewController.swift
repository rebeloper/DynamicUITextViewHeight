//
//  RootViewController.swift
//  DynamicUITextViewHeight
//
//  Created by Alex Nagy on 02/03/2019.
//  Copyright © 2019 Alex Nagy. All rights reserved.
//

import TinyConstraints

class RootViewController: UIViewController {
    
    let textViewFont = UIFont.systemFont(ofSize: 16)
    let textViewText = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
    
    let containerViewHeight: CGFloat = 100
    
    lazy var containerView: UIView = {
        let view = UIView()
        return view
    }()
    
    lazy var textView: UITextView = {
        let tv = UITextView()
        tv.font = textViewFont
        tv.text = textViewText
        tv.isScrollEnabled = false
        tv.backgroundColor = .lightGray
        return tv
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = .white
        
        view.addSubview(containerView)
        view.addSubview(textView)
        
        containerView.edgesToSuperview(excluding: .bottom, insets: .top(36), usingSafeArea: true)
        containerView.height(containerViewHeight)
        
        textView.edges(to: containerView)
    }


}

