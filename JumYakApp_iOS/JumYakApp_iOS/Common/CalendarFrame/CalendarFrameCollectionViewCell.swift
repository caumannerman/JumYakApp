//
//  CalendarFrameCollectionViewCell.swift
//  JumYakApp_iOS
//
//  Created by 양준식 on 2023/03/29.
//


import UIKit
import SnapKit

final class CalendarFrameCollectionViewCell: UICollectionViewCell{
    
//    private lazy var ccView = CalendarView()
    private lazy var ccView = CalendarCollectionView(frame: .zero, collectionViewLayout: CalendarCollectionViewLayout())
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        attribute()
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func attribute(){
//
        contentView.backgroundColor = .cyan
        ccView.backgroundColor = .yellow
        
        layer.borderWidth = 0.6
        layer.borderColor = UIColor.lightGray.cgColor
        layer.cornerRadius = 4.0
    }
    
    private func layout() {
        [ ccView ].forEach{ addSubview($0)}
        
      
        ccView.snp.makeConstraints{
            $0.edges.equalToSuperview()
        }
    }
    
//    func setup(title: String){
//
//    }
}
