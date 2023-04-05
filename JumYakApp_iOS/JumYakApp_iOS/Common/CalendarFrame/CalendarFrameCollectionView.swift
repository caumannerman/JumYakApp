//
//  CalendarFrameCollectionView.swift
//  JumYakApp_iOS
//
//  Created by 양준식 on 2023/04/05.
//

import UIKit
import SnapKit


class CalendarFrameCollectionView: UICollectionView {
     
    
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
        
        self.register( CalendarFrameCollectionViewCell.self, forCellWithReuseIdentifier: "CalendarFrameCollectionViewCell")
        self.layer.borderWidth = 0
        self.layer.borderColor = UIColor.lightGray.cgColor
        self.backgroundColor = .systemGreen
        self.isPagingEnabled = true
        self.dataSource = self
        self.delegate = self
    }
    
}



extension CalendarFrameCollectionView: UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 12
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CalendarFrameCollectionViewCell", for: indexPath) as? CalendarFrameCollectionViewCell else { return UICollectionViewCell() }
//        cell.setup(title: String(days[indexPath.row]))
        
//        switch indexPath.row{
//            case 0...6: cell.setup(title: String(indexPath.row))
//            default: cell.setup(title: String(days[indexPath.row - 7]))
//        }

        return cell
    }
}

extension CalendarFrameCollectionView: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        switch indexPath.row{
//        case 0...6: return CGSize(width: UIScreen.main.bounds.size.width / 7, height: 40)
//        default: return CGSize(width: UIScreen.main.bounds.size.width / 7, height: (safeAreaLayoutGuide.layoutFrame.size.height ) / 5)
//        }
        return CGSize(width: UIScreen.main.bounds.size.width , height: safeAreaLayoutGuide.layoutFrame.size.height  )
    }
}
