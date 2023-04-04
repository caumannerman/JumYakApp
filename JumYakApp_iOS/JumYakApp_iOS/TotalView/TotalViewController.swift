//
//  TotalViewController.swift
//  JumYakApp_iOS
//
//  Created by 양준식 on 2023/03/28.
//

import UIKit
import SnapKit


class TotalViewController: UIViewController {
    
    let calendarCV = CalendarFrameCollectionView()
    
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
        view.backgroundColor = .systemPink
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    private func bind(){
        
    }
    
    private func attribute(){
        
    }
    
    private func layout(){
        [calendarCV].forEach{
            view.addSubview($0)
        }
        
        calendarCV.snp.makeConstraints{
            $0.top.equalTo(view.safeAreaLayoutGuide.snp.top).inset(80)
            $0.left.right.equalToSuperview()
            $0.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom)
            
        }
    }
    
    
}
