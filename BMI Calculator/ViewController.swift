
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
    
    lazy var heighSlider: UISlider = {
        let slider = UISlider()
        slider.maximumValue = 3.0
        
        slider.addTarget(self, action: #selector(heightValue), for: .valueChanged)
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
    
    lazy var weightSlider: UISlider = {
        let slider = UISlider()
        slider.addTarget(self, action: #selector(weightValue), for: .valueChanged)
        slider.maximumValue = 200
        slider.translatesAutoresizingMaskIntoConstraints = false
        return slider
    }()
    
    lazy var calculateButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = UIColor(red: 98/255, green: 96/255, blue: 153/255, alpha: 1.0)
        button.setTitleColor(.white, for: .normal)
        button.setTitle("CALCULATE", for: .normal)
        button.addTarget(self, action: #selector(calculatePressed), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    
    let controller = ResultViewController()
    
//MARK: =ViewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        constraints()
    }
    
    @objc func heightValue(_sender: UISlider) {
        let height = String(format: "%.2f", _sender.value)
        metresLabel.text = "\(height) m"
        

    }
    
    @objc func weightValue(_sender: UISlider) {
        let weight = (Int(_sender.value))
        kilogramsLabel.text = "\(weight) kg"

    }
    
    @objc func calculatePressed(_sender: UIButton) {
        
        let height = heighSlider.value
        let weight = weightSlider.value
        let bmi = weight / (height * height)
        if bmi < 18.5 {
            controller.resultLabel.text = String(format: "%.1f", bmi)
            controller.recommendationLabel.text = "Eat more"
            controller.view.backgroundColor = UIColor(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
        } else if bmi  < 27.9 {
            controller.resultLabel.text = String(format: "%.1f", bmi)
            controller.recommendationLabel.text = "Fit as a fiddle!"
            controller.view.backgroundColor = UIColor(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
        } else {
            controller.resultLabel.text = String(format: "%.1f", bmi)
            controller.recommendationLabel.text = "Eat less pies!"
            controller.view.backgroundColor = UIColor(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
        }
//        controller.resultLabel.text = String(format: "%.1f", bmi)
        
        
        present(controller, animated: true, completion: nil)
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

