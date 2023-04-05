//
//  CalendarFrameView.swift
//  JumYakApp_iOS
//
//  Created by 양준식 on 2023/03/29.
//

import Foundation
import UIKit


class CalendarFrameView: UIView {
    

    private let calendarFrameCollectionView = CalendarFrameCollectionView(frame: .zero, collectionViewLayout: CalendarFrameCollectionViewLayout())

    
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
    func attribute(){
        
    }
    
    func layout(){
        [calendarFrameCollectionView].forEach{ addSubview($0)}
        
        calendarFrameCollectionView.snp.makeConstraints{
            $0.edges.equalToSuperview()
        }
    }
    
}

