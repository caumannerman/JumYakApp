//
//  CalendarCollectionView.swift
//  JumYakApp_iOS
//
//  Created by 양준식 on 2023/03/28.
//

import UIKit


class CalendarCollectionView: UIView, UICollectionViewDataSource {
    
    
    private lazy var calendarCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 10
        layout.minimumInteritemSpacing = 10
        layout.scrollDirection = .horizontal
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
//        collectionView.register(, forCellWithReuseIdentifier: "")
        
        collectionView.dataSource = self
//        collectionView.delegate = self
        collectionView.showsHorizontalScrollIndicator = true
        
        collectionView.backgroundColor = .lightGray
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
    
    func layout(){
        
    }
    
    func attribute(){
        
    }
    
    
    
}


extension CalendarCollectionView {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 31
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ButtonListViewCellCell", for: indexPath) as? ButtonListViewCellCell else { return UICollectionViewCell() }
        
        cell.setup(title: buttonElementsArr[indexPath.row])
        
        return cell
    }
}
