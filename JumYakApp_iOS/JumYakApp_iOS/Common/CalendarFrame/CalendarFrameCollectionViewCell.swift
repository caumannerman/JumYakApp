//
//  CalendarFrameCollectionViewCell.swift
//  JumYakApp_iOS
//
//  Created by 양준식 on 2023/03/29.
//


import UIKit
import SnapKit

final class CalendarFrameCollectionViewCell: UICollectionViewCell{
    
    private lazy var contentsView = UIView()
    
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
        
        contentsView.backgroundColor = .systemBlue
        
        layer.borderWidth = 0.6
        layer.borderColor = UIColor.lightGray.cgColor
        layer.cornerRadius = 4.0
    }
    
    private func layout() {
        [ contentsView ].forEach{ addSubview($0)}
        
      
        contentsView.snp.makeConstraints{
            $0.top.left.right.bottom.equalToSuperview()
        }
    }
    
//    func setup(title: String){
//
//    }
}
