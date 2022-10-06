//
//  TipsCollectionViewCell.swift
//  TotalBill
//
//  Created by Станислав Шапетько on 06.10.2022.
//

import UIKit

class TipsCollectionViewCell: UICollectionViewCell {
    
    let presentLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.text = "10%"
        label.textAlignment = .center
        label.font = UIFont(name: "Avenir Next Bold", size: 24)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        backgroundColor = #colorLiteral(red: 0.9321868846, green: 0.9190936685, blue: 0.9183219075, alpha: 1)
        layer.cornerRadius = 8
        addSubview(presentLabel)
    }
    func setConstraints() {
        NSLayoutConstraint.activate([
            presentLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            presentLabel.centerYAnchor.constraint(equalTo: centerYAnchor)])
    }
}
