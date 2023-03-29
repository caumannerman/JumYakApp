//
//  CalendarCollectionViewCell.swift
//  JumYakApp_iOS
//
//  Created by 양준식 on 2023/03/29.
//

import UIKit
import SnapKit

final class CalendarCollectionViewCell: UICollectionViewCell{
    
    private lazy var dateLabel = UILabel()
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
        dateLabel.textColor = .black
        dateLabel.font = .systemFont(ofSize: 13.0, weight: .bold)
        dateLabel.backgroundColor = .yellow
        dateLabel.layer.cornerRadius = 6.0
        dateLabel.layer.borderWidth = 2.0
        dateLabel.text = "임시text"
        
        contentsView.backgroundColor = .cyan
    }
    
    private func layout() {
        [ dateLabel ,contentsView ].forEach{ addSubview($0)}
        
        dateLabel.snp.makeConstraints{
            $0.top.left.right.equalToSuperview()
            $0.height.equalTo(20)
        }
        contentsView.snp.makeConstraints{
            $0.top.equalTo(dateLabel.snp.bottom)
            $0.left.right.bottom.equalToSuperview()
        }
    }
    
    func setup(title: String){
        dateLabel.text = title
    }
}
