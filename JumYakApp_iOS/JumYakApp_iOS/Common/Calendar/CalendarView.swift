//
//  CalendarView.swift
//  JumYakApp_iOS
//
//  Created by 양준식 on 2023/03/28.
//

import UIKit


class CalendarView: UIView {
    

    
    private let calendarCollectionView = CalendarCollectionView(frame: .zero, collectionViewLayout: CalendarCollectionViewLayout())
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        bind()
        attribute()
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    func bind(){
        
    }
    
    func layout(){
        [calendarCollectionView].forEach{ addSubview($0)}
        
        calendarCollectionView.snp.makeConstraints{
            $0.edges.equalToSuperview()
        }
    }
    
    func attribute(){
        
    }
    
    
    
}


