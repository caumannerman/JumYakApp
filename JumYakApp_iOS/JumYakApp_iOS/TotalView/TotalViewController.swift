//
//  TotalViewController.swift
//  JumYakApp_iOS
//
//  Created by 양준식 on 2023/03/28.
//

import UIKit
import SnapKit


class TotalViewController: UIViewController {
    
    private let totalViewHeader = TotalViewHeaderView()
    private let calendarCV = CalendarFrameCollectionView()
    private let calendarTV = CalendarTableView()
    
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
        [totalViewHeader, calendarTV].forEach{
            view.addSubview($0)
        }
        
        totalViewHeader.snp.makeConstraints{
            $0.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            $0.leading.trailing.equalToSuperview()
            $0.height.equalTo(80)
            
        }
        
//        calendarCV.snp.makeConstraints{
//            $0.top.equalTo(totalViewHeader.snp.bottom)
////            $0.top.equalTo(view.safeAreaLayoutGuide.snp.top).inset(80)
//            $0.leading.trailing.equalToSuperview()
//            $0.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom)
//        }
        
        calendarTV.snp.makeConstraints{
            $0.top.equalTo(totalViewHeader.snp.bottom)
//            $0.top.equalTo(view.safeAreaLayoutGuide.snp.top).inset(80)
            $0.leading.trailing.equalToSuperview()
            $0.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom)
        }
    }
    
    
}
