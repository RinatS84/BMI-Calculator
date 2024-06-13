
import UIKit

class ViewController: UIViewController {
    let calculateBackgroundImageView: UIImageView = {
       let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "calculate_background")
        return imageView
    }()
    
    let verticalStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.alignment = .fill
        stack.distribution = .fillProportionally
        stack.spacing = 10
        stack.contentMode = .scaleToFill
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    let calculateLabel: UILabel = {
        let label = UILabel()
        label.text = "CALCULATE YOUR BMI"
        label.textColor = .gray
        label.font = .boldSystemFont(ofSize: 40)
        label.numberOfLines = 0
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let heighStackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.alignment = .fill
        stack.distribution = .equalSpacing
        stack.spacing = 0
        stack.contentMode = .scaleToFill
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    let heighLabel: UILabel = {
        let label = UILabel()
        label.text = "Height"
        label.textColor = .darkGray
        label.font = .systemFont(ofSize: 17)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let metresLabel: UILabel = {
        let label = UILabel()
        label.text = "1.5m"
        label.textColor = .darkGray
        label.font = .systemFont(ofSize: 17)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let heighSlider: UISlider = {
        let slider = UISlider()
        slider.translatesAutoresizingMaskIntoConstraints = false
        return slider
    }()
    
    let weightStackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.alignment = .fill
        stack.distribution = .equalSpacing
        stack.spacing = 0
        stack.contentMode = .scaleToFill
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    let weightLabel: UILabel = {
        let label = UILabel()
        label.text = "Weight"
        label.textColor = .darkGray
        label.font = .systemFont(ofSize: 17)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let kilogramsLabel: UILabel = {
        let label = UILabel()
        label.text = "100kg"
        label.textColor = .darkGray
        label.font = .systemFont(ofSize: 17)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let weightSlider: UISlider = {
        let slider = UISlider()
        slider.translatesAutoresizingMaskIntoConstraints = false
        return slider
    }()
    
    let calculateButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = UIColor(red: 98/255, green: 96/255, blue: 153/255, alpha: 1.0)
        button.setTitleColor(.white, for: .normal)
        button.setTitle("CALCULATE", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        constraints()
    }
    
    func constraints() {
        
        view.addSubview(calculateBackgroundImageView)
        view.addSubview(verticalStack)
        verticalStack.addArrangedSubview(calculateLabel)
        verticalStack.addArrangedSubview(heighStackView)
        verticalStack.addArrangedSubview(heighSlider)
        verticalStack.addArrangedSubview(weightStackView)
        verticalStack.addArrangedSubview(weightSlider)
        verticalStack.addArrangedSubview(calculateButton)
        
        heighStackView.addArrangedSubview(heighLabel)
        heighStackView.addArrangedSubview(metresLabel)
        weightStackView.addArrangedSubview(weightLabel)
        weightStackView.addArrangedSubview(kilogramsLabel)
        
        
        NSLayoutConstraint.activate([
            calculateBackgroundImageView.topAnchor.constraint(equalTo: view.topAnchor),
            calculateBackgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            calculateBackgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            calculateBackgroundImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            verticalStack.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            verticalStack.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            verticalStack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            verticalStack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            calculateButton.heightAnchor.constraint(equalToConstant: 51),
            heighSlider.heightAnchor.constraint(equalToConstant: 60),
            weightSlider.heightAnchor.constraint(equalToConstant: 60),
            heighStackView.heightAnchor.constraint(equalToConstant: 21),
            weightStackView.heightAnchor.constraint(equalToConstant: 21)
            
        
        ])
    }


}

