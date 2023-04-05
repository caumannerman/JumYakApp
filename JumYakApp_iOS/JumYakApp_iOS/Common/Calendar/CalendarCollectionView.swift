//
//  CalendarCollectionView.swift
//  JumYakApp_iOS
//
//  Created by 양준식 on 2023/04/05.
//

import UIKit
import SnapKit


class CalendarCollectionView: UICollectionView {
     
    private var days: [Int] = [1, 2, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32, 33, 34,35]
    
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: frame, collectionViewLayout: layout)
        
        bind()
        attribute()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func bind(){
    
    }
    
    private func attribute(){
        
        self.register( CalendarCollectionViewCell.self, forCellWithReuseIdentifier: "CalendarCollectionViewCell")
        self.showsHorizontalScrollIndicator = true
        self.layer.borderWidth = 0
        self.layer.borderColor = UIColor.lightGray.cgColor
        self.backgroundColor = .magenta
        self.isPagingEnabled = true
        self.dataSource = self
        self.delegate = self
    }
    
}

extension CalendarCollectionView: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return days.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CalendarCollectionViewCell", for: indexPath) as? CalendarCollectionViewCell else { return UICollectionViewCell() }
        cell.setup(title: String(days[indexPath.row]))
//        switch indexPath.row{
//            case 0...6: cell.setup(title: String(indexPath.row))
//            default: cell.setup(title: String(days[indexPath.row - 7]))
//        }
        
        return cell
    }
}

extension CalendarCollectionView: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        switch indexPath.row{
//        case 0...6: return CGSize(width: UIScreen.main.bounds.size.width / 7, height: 40)
//        default: return CGSize(width: UIScreen.main.bounds.size.width / 7, height: (safeAreaLayoutGuide.layoutFrame.size.height ) / 5)
//        }
        return CGSize(width: (UIScreen.main.bounds.size.width - 8) / 7, height: (safeAreaLayoutGuide.layoutFrame.size.height ) / 5)
    }
}
