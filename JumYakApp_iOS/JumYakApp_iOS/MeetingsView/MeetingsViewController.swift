//
//  MeetingsViewController.swift
//  JumYakApp_iOS
//
//  Created by 양준식 on 2023/03/28.
//

import UIKit
import SnapKit


class MeetingsViewController: UIViewController {
    
    
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        bind()
        attribute()
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
    }
    
    private func bind(){
        
    }
    
    private func attribute(){
        
    }
    
    private func layout(){
        
    }
    
    
}
