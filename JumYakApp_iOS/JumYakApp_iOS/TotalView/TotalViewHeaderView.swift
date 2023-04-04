//
//  TotalViewHeaderView.swift
//  JumYakApp_iOS
//
//  Created by 양준식 on 2023/04/04.
//

import UIKit
import SnapKit

class TotalViewHeaderView: UIView {
    
    private lazy var profileImageView: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(systemName: "pencil")
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        iv.layer.cornerRadius = 25
        iv.backgroundColor = .white
        
        
        return iv
    }()
    
    private lazy var nicknameLabel: UILabel = {
        let label = UILabel()
        label.text = "nickname"
        return label
    }()
    
    private lazy var formatChangeButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "pencil.and.outline"), for: .normal)
    
        button.translatesAutoresizingMaskIntoConstraints = false
        button.contentMode = .scaleAspectFill
        button.clipsToBounds = true
        button.layer.cornerRadius = 10
        button.backgroundColor = .white
        button.addTarget(self, action: #selector(changeButtonClicked), for: .touchUpInside)
        
        return button
    }()
    
    @objc func changeButtonClicked(){
        print("button clicked")
    }
    
    
    
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
        backgroundColor = .brown
        
    }
    
    
    func layout(){
        [profileImageView, nicknameLabel, formatChangeButton].forEach{ addSubview($0)}
        
        profileImageView.snp.makeConstraints{
            $0.leading.equalToSuperview().inset(20)
            $0.width.equalTo(50)
            $0.height.equalTo(50)
        }
        
        nicknameLabel.snp.makeConstraints{
            $0.top.equalToSuperview()
            $0.leading.equalTo(profileImageView.snp.trailing).offset(20)
        }
        
        formatChangeButton.snp.makeConstraints{
            $0.top.equalToSuperview()
            $0.trailing.equalToSuperview()
            $0.height.width.equalTo(30)
        }
    }
    
    
    
    
}
