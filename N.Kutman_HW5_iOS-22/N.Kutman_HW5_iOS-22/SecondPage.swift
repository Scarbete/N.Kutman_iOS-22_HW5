import UIKit


class SecondPage: UIViewController {
    
    private lazy var viewProduct: UIView = {
        let view = UIView()
        view.backgroundColor = .quaternaryLabel
        view.layer.masksToBounds = true
        view.layer.cornerRadius = 40
        view.layer.borderWidth = 1
        view.layer.borderColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var imageProdView: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "")
        view.layer.cornerRadius = 10
        view.contentMode = .scaleAspectFill
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var textLabel: UILabel = {
        let view = UILabel()
        view.text = ""
        view.textColor = .black
        view.numberOfLines = 0
        view.textAlignment = .center
        view.font = .monospacedDigitSystemFont(ofSize: 42, weight: .semibold)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUi()
    }
    
    private func setupUi () {
        view.backgroundColor = .white
        view.addSubview(viewProduct)
        viewProduct.topAnchor.constraint(equalTo: view.topAnchor, constant: -50).isActive = true
        viewProduct.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        viewProduct.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -0).isActive = true
        viewProduct.heightAnchor.constraint(equalToConstant: 450).isActive = true
        
        viewProduct.addSubview(imageProdView)
        imageProdView.centerXAnchor.constraint(equalTo: viewProduct.centerXAnchor).isActive = true
        imageProdView.topAnchor.constraint(equalTo: viewProduct.topAnchor, constant: 150).isActive = true
        imageProdView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        view.addSubview(textLabel)
        textLabel.topAnchor.constraint(equalTo: viewProduct.bottomAnchor, constant: 50).isActive = true
        textLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        textLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16).isActive = true
    }
    
}
