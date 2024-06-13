

import UIKit

class ResultViewController: UIViewController {
    
    let backgroundImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "result_background")
        return image
    }()
    
    let stackView: UIStackView = {
        let stack = UIStackView()
        stack.spacing = 8
        stack.alignment = .fill
        stack.distribution = .fill
        stack.contentMode = .scaleToFill
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        return stack
    }()
    
    let topLabel: UILabel = {
        let label = UILabel()
        label.text = "YOUR RESULT"
        label.font = .boldSystemFont(ofSize: 35)
        label.textColor = .white
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let resultLabel: UILabel = {
        let label = UILabel()
        label.text = "19.5"
        label.font = .boldSystemFont(ofSize: 80)
        label.textColor = .white
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let recommendationLabel: UILabel = {
        let label = UILabel()
        label.text = "EAT SOME MORE SNACKS!"
        label.font = .systemFont(ofSize: 20)
        label.textColor = .white
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let  recalculateButton: UIButton = {
        let button = UIButton()
        button.setTitle("RECALCULATE", for: .normal)
        button.backgroundColor = .white
        button.setTitleColor(.blue, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        constraints()
    }
    
    func constraints() {
        view.backgroundColor = UIColor(red: 71/255, green: 121/255, blue: 191/266, alpha: 1.0)
        view.addSubview(backgroundImage)
        view.addSubview(stackView)
        stackView.addArrangedSubview(topLabel)
        stackView.addArrangedSubview(resultLabel)
        stackView.addArrangedSubview(recommendationLabel)
        view.addSubview(recalculateButton)
        
        
        NSLayoutConstraint.activate([
            
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
            
            backgroundImage.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            backgroundImage.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundImage.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            backgroundImage.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            recalculateButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            recalculateButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25),
            recalculateButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25)
        ])
        
        
    }
}
