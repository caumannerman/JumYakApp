//
//  CalendarCollectionViewLayout.swift
//  JumYakApp_iOS
//
//  Created by 양준식 on 2023/04/05.
//

import UIKit

class CalendarCollectionViewLayout: UICollectionViewFlowLayout {

    override init() {
        super.init()
        attribute()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func attribute(){
        self.minimumLineSpacing = 0
        self.minimumInteritemSpacing = 1
        self.scrollDirection = .vertical
        self.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
}
