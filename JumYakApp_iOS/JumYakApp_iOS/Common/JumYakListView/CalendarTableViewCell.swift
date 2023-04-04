//
//  CalendarTableViewCell.swift
//  JumYakApp_iOS
//
//  Created by 양준식 on 2023/04/04.
//

import UIKit
import SnapKit


class CalendarTableViewCell: UITableViewCell {

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        attribute()
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func attribute(){
        
        backgroundColor = .lightGray
    }
    
    private func layout(){
        
    }
}
