//
//  TipsView.swift
//  TotalBill
//
//  Created by Станислав Шапетько on 06.10.2022.
//

import UIKit

class TipsView: UIView {
    
    
    let tipsLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.text = "Чаевые"
        label.font = UIFont(name: "Avenir Next", size: 10)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let collectionView: UICollectionView = {
        let collectionViewLayout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: collectionViewLayout )
        
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.backgroundColor = .white
        return collectionView
    }()
    
    
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        setConstrains()
        setDelegates()   
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
     
    func setupView() {
        translatesAutoresizingMaskIntoConstraints = false
        addSubview(tipsLabel)
        addSubview(collectionView)
        collectionView.register(TipsCollectionViewCell.self, forCellWithReuseIdentifier: "cell")
    }
    func setDelegates() {
        collectionView.delegate = self
        collectionView.dataSource = self
    }
     
}
extension TipsView: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? TipsCollectionViewCell else { return UICollectionViewCell() }
        return cell
    }
    
    
}


extension TipsView: UICollectionViewDelegate {
    
}

extension TipsView: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: collectionView.frame.width / 4.5, height: collectionView.frame.width / 4.5)
    }
    
}


extension TipsView {
    func setConstrains() {
        NSLayoutConstraint.activate([
            tipsLabel.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            tipsLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            
            collectionView.topAnchor.constraint(equalTo: tipsLabel.bottomAnchor, constant: 2),
            collectionView.leadingAnchor.constraint(equalTo: leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: trailingAnchor),
            collectionView.heightAnchor.constraint(equalToConstant: 100)
        
        
        ])
    }
}
