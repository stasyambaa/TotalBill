//
//  TotalPersonsView.swift
//  TotalBill
//
//  Created by Станислав Шапетько on 05.10.2022.
//

import UIKit

class TotalPersonsView: UIView {
    
    let totalPersonsLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.text = "Количество персон"
        label.font = UIFont(name: "Avenir Next", size: 10)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let totalPersonView: UIView = {
        let personView = UIView()
        personView.backgroundColor = #colorLiteral(red: 0.9321868846, green: 0.9190936685, blue: 0.9183219075, alpha: 1)
        personView.layer.cornerRadius = 7
        personView.translatesAutoresizingMaskIntoConstraints = false
        return personView
    }()
    
    lazy var minusButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("−", for: .normal)
        button.tintColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        button.titleLabel?.font = UIFont(name: "Avenir Next", size: 80)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var plusButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("+", for: .normal)
        button.tintColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        button.titleLabel?.font = UIFont(name: "Avenir Next", size: 80)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let personLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.text = "1"
        label.font = UIFont(name: "Avenir Next Bold", size: 50)
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
        translatesAutoresizingMaskIntoConstraints = false
//        backgroundColor = .red
        addSubview(totalPersonsLabel)
        addSubview(totalPersonView)
        totalPersonView.addSubview(minusButton)
        totalPersonView.addSubview(plusButton)
        totalPersonView.addSubview(personLabel)
    }
    
    func setConstraints() {
        NSLayoutConstraint.activate([
            totalPersonsLabel.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            totalPersonsLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            
            totalPersonView.topAnchor.constraint(equalTo: totalPersonsLabel.bottomAnchor, constant: 5),
            totalPersonView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            totalPersonView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            totalPersonView.heightAnchor.constraint(equalToConstant: 100),
            
            minusButton.topAnchor.constraint(equalTo: totalPersonView.topAnchor),
            minusButton.leadingAnchor.constraint(equalTo: totalPersonView.leadingAnchor),
            minusButton.heightAnchor.constraint(equalToConstant: 100),
            minusButton.widthAnchor.constraint(equalToConstant: 100),
            
            plusButton.topAnchor.constraint(equalTo: totalPersonView.topAnchor),
            plusButton.trailingAnchor.constraint(equalTo: totalPersonView.trailingAnchor),
            plusButton.heightAnchor.constraint(equalToConstant: 100),
            plusButton.widthAnchor.constraint(equalToConstant: 100),
            
            personLabel.centerXAnchor.constraint(equalTo: totalPersonView.centerXAnchor),
            personLabel.centerYAnchor.constraint(equalTo: totalPersonView.centerYAnchor)
            

        ])
    }
    
    
    
    
}
