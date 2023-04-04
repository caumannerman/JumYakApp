//
//  CalendarTableView.swift
//  JumYakApp_iOS
//
//  Created by 양준식 on 2023/04/04.
//

import UIKit
import SnapKit

class CalendarTableView: UIView {

    
    private lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.dataSource = self
        tableView.register(CalendarTableViewCell.self, forCellReuseIdentifier: "CalendarTableViewCell")
        tableView.rowHeight = 100
        
        return tableView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        attribute()
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func attribute(){
        
    }
    
    private func layout(){
        [tableView].forEach{
            addSubview($0)
        }
        
        tableView.snp.makeConstraints{
            $0.edges.equalToSuperview()
        }
    }
}

extension CalendarTableView: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 12
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CalendarTableViewCell", for: indexPath) as? CalendarTableViewCell else { return UITableViewCell() }
        return cell
    }
}
