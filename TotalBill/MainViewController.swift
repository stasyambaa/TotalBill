//
//  MainViewController.swift
//  TotalBill
//
//  Created by Станислав Шапетько on 05.10.2022.
//

import UIKit

class MainViewController: UIViewController {
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.text = "Общий Счет"
        label.font = UIFont(name: "Avenir Next Bold", size: 40)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    let bowImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "bow")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let descriptionLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.text = "Введите сумму счета и нажмите \"Посчитать\""
        label.font = UIFont(name: "Avenir Next Bold", size: 15)
        label.textAlignment = .center
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var calculateButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Посчитать", for: .normal)
        button.tintColor = .white
        button.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        button.layer.cornerRadius = 8
        button.titleLabel?.font = UIFont(name: "Avenir Next Bold", size: 30)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
 
    
    let totalBillView = TotalBillView()
    
    let totalPersonsView = TotalPersonsView()
    
    let tipsView = TipsView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        setConstraints()
    }
 
    func setupViews() {
        view.backgroundColor = .white
        
        view.addSubview(titleLabel)
        view.addSubview(bowImageView)
        view.addSubview(descriptionLabel)
        view.addSubview(totalBillView)
        view.addSubview(totalPersonsView)
        view.addSubview(calculateButton)
        view.addSubview(tipsView)
        
    }
}

extension MainViewController {
    
    func setConstraints() {
        
        NSLayoutConstraint.activate([titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
                                     titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                                    
                                     bowImageView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 5),
                                     bowImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                                     bowImageView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.6),
                                     bowImageView.heightAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.35),
                                     
                                     descriptionLabel.topAnchor.constraint(equalTo: bowImageView.bottomAnchor, constant: 10),
                                     descriptionLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//                                     descriptionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
//                                     descriptionLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
                                    
                                     totalBillView.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 10),
                                     totalBillView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
                                     totalBillView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
                                     totalBillView.heightAnchor.constraint(equalToConstant: 125),
                                     
                                     totalPersonsView.topAnchor.constraint(equalTo: totalBillView.bottomAnchor, constant: 10),
                                     totalPersonsView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
                                     totalPersonsView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
                                     totalPersonsView.heightAnchor.constraint(equalToConstant: 120),
                                     
                                     tipsView.topAnchor.constraint(equalTo: totalPersonsView.bottomAnchor, constant: 10),
                                     tipsView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
                                     tipsView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
                                     tipsView.heightAnchor.constraint(equalToConstant: 120),
                                     
                                     calculateButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
                                     calculateButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
                                     calculateButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
                                     calculateButton.heightAnchor.constraint(equalToConstant: 80)
                                     
                                     
                                     
                                    
                                    
                                    ])
    }
}
