//
//  TotalBillView.swift
//  TotalBill
//
//  Created by Станислав Шапетько on 05.10.2022.
//

import UIKit

class TotalBillView: UIView {
    
    let totalBillLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.text = "Общий счет"
        label.font = UIFont(name: "Avenir Next", size: 10)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let billTextField: UITextField = {
        let textField = UITextField()
        textField.textAlignment = .center
        textField.font = UIFont(name: "Avenir Next Bold", size: 50)
        textField.textColor = .black
        textField.keyboardType = .numberPad
        textField.backgroundColor = #colorLiteral(red: 0.9321868846, green: 0.9190936685, blue: 0.9183219075, alpha: 1)
        textField.layer.cornerRadius = 7
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
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
        addSubview(totalBillLabel)
        addSubview(billTextField)
    }
    
    func setConstraints() {
        NSLayoutConstraint.activate([
            totalBillLabel.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            totalBillLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            
            billTextField.topAnchor.constraint(equalTo: totalBillLabel.bottomAnchor, constant: 5),
            billTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            billTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            billTextField.heightAnchor.constraint(equalToConstant: 100)

        ])
    }
    
    
    
    
}
