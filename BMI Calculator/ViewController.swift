
import UIKit

class ViewController: UIViewController {
    let calculateBackgroundImageView: UIImageView = {
       let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "calculate_background")
        return imageView
    }()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        constraints()
    }
    
    func constraints() {
        
        view.addSubview(calculateBackgroundImageView)
        
        NSLayoutConstraint.activate([
            calculateBackgroundImageView.topAnchor.constraint(equalTo: view.topAnchor),
            calculateBackgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            calculateBackgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            calculateBackgroundImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        ])
    }


}

