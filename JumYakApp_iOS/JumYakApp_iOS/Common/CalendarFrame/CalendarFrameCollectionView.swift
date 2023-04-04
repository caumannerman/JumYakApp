//
//  CalendarFrameCollectionView.swift
//  JumYakApp_iOS
//
//  Created by 양준식 on 2023/03/29.
//

import Foundation
import UIKit


class CalendarFrameCollectionView: UIView {
    
    
    private lazy var calendarFrameCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        
        layout.minimumLineSpacing = 0
        layout.minimumInteritemSpacing = 1
        layout.scrollDirection = .horizontal
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.register( CalendarFrameCollectionViewCell.self, forCellWithReuseIdentifier: "CalendarFrameCollectionViewCell")
        
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.showsHorizontalScrollIndicator = true
        collectionView.layer.borderWidth = 0
        collectionView.layer.borderColor = UIColor.lightGray.cgColor
        collectionView.backgroundColor = .systemGreen
        return collectionView
    }()
    
    
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
        return CGSize(width: UIScreen.main.bounds.size.width , height: UIScreen.main.bounds.size.height - 80 )
    }
}
