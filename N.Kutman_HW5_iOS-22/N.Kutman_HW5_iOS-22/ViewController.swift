import UIKit


struct Product {
    var image: String
    var title: String
}


class ViewController: UIViewController {
    
    var products: [Product] = [
        .init(image: "image1", title: "Quasar"),
        .init(image: "image2", title: "Aesthetic"),
        .init(image: "image3", title: "Exweasy"),
        .init(image: "image4", title: "MaybeYato")
    ]
    
    // UIStackView
    private lazy var verticalStackView: UIStackView = {
        let view = UIStackView()
        view.axis = .vertical
        view.distribution = .fillEqually
        view.spacing = 30
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var horizontalStackViewOne: UIStackView = {
        let view = UIStackView()
        view.axis = .horizontal
        view.distribution = .fillEqually
        view.spacing = 30
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var horizontalStackViewTwo: UIStackView = {
        let view = UIStackView()
        view.axis = .horizontal
        view.distribution = .fillEqually
        view.spacing = 30
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    // UIView
    private lazy var viewOne: UIView = {
        let view = UIView()
        view.layer.masksToBounds = true
        view.layer.cornerRadius = 10
        view.layer.borderWidth = 1
        view.layer.borderColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.viewOneTapped(_:)))
        view.addGestureRecognizer(tap)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var viewTwo: UIView = {
        let view = UIView()
        view.layer.masksToBounds = true
        view.layer.cornerRadius = 10
        view.layer.borderWidth = 1
        view.layer.borderColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.viewTwoTapped(_:)))
        view.addGestureRecognizer(tap)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var viewThird: UIView = {
        let view = UIView()
        view.layer.masksToBounds = true
        view.layer.cornerRadius = 10
        view.layer.borderWidth = 1
        view.layer.borderColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.viewThirdTapped(_:)))
        view.addGestureRecognizer(tap)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var viewFour: UIView = {
        let view = UIView()
        view.layer.masksToBounds = true
        view.layer.cornerRadius = 10
        view.layer.borderWidth = 1
        view.layer.borderColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.viewFourTapped(_:)))
        view.addGestureRecognizer(tap)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    // UIImageView
    private lazy var imageViewOne: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: products[0].image)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var imageViewTwo: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: products[1].image)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var imageViewThree: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: products[2].image)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var imageViewFour: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: products[3].image)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    // UILabel
    private lazy var labelOne: UILabel = {
        let view = UILabel()
        view.text = products[0].title
        view.textColor = .black
        view.numberOfLines = 0
        view.textAlignment = .center
        view.font = .monospacedDigitSystemFont(ofSize: 20, weight: .semibold)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var labelTwo: UILabel = {
        let view = UILabel()
        view.text = products[1].title
        view.textColor = .black
        view.numberOfLines = 0
        view.textAlignment = .center
        view.font = .monospacedDigitSystemFont(ofSize: 20, weight: .semibold)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var labelThird: UILabel = {
        let view = UILabel()
        view.text = products[2].title
        view.textColor = .black
        view.numberOfLines = 0
        view.textAlignment = .center
        view.font = .monospacedDigitSystemFont(ofSize: 20, weight: .semibold)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var labelFour: UILabel = {
        let view = UILabel()
        view.text = products[3].title
        view.textColor = .black
        view.numberOfLines = 0
        view.textAlignment = .center
        view.font = .monospacedDigitSystemFont(ofSize: 20, weight: .semibold)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUi()
    }
    
    

    private func setupUi () {
        view.addSubview(verticalStackView)
        verticalStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30).isActive = true
        verticalStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        verticalStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16).isActive = true
        verticalStackView.heightAnchor.constraint(equalToConstant: 460).isActive = true
        
        verticalStackView.addArrangedSubview(horizontalStackViewOne)
        verticalStackView.addArrangedSubview(horizontalStackViewTwo)
        
        horizontalStackViewOne.addArrangedSubview(viewOne)
        horizontalStackViewOne.addArrangedSubview(viewTwo)
        horizontalStackViewTwo.addArrangedSubview(viewThird)
        horizontalStackViewTwo.addArrangedSubview(viewFour)
        
        
        // viewOne
        viewOne.addSubview(imageViewOne)
        imageViewOne.topAnchor.constraint(equalTo: viewOne.topAnchor, constant: 20).isActive = true
        imageViewOne.centerXAnchor.constraint(equalTo: viewOne.centerXAnchor).isActive = true
        imageViewOne.heightAnchor.constraint(equalToConstant: 90).isActive = true
        
        viewOne.addSubview(labelOne)
        labelOne.topAnchor.constraint(equalTo: imageViewOne.bottomAnchor, constant: 25).isActive = true
        labelOne.leadingAnchor.constraint(equalTo: viewOne.leadingAnchor, constant: 20).isActive = true
        labelOne.trailingAnchor.constraint(equalTo: viewOne.trailingAnchor, constant: -20).isActive = true
        labelOne.heightAnchor.constraint(equalToConstant: 45).isActive = true
        
        
        // viewTwo
        viewTwo.addSubview(imageViewTwo)
        imageViewTwo.topAnchor.constraint(equalTo: viewTwo.topAnchor, constant: 20).isActive = true
        imageViewTwo.centerXAnchor.constraint(equalTo: viewTwo.centerXAnchor).isActive = true
        imageViewTwo.heightAnchor.constraint(equalToConstant: 90).isActive = true
        
        viewTwo.addSubview(labelTwo)
        labelTwo.topAnchor.constraint(equalTo: imageViewTwo.bottomAnchor, constant: 25).isActive = true
        labelTwo.leadingAnchor.constraint(equalTo: viewTwo.leadingAnchor, constant: 20).isActive = true
        labelTwo.trailingAnchor.constraint(equalTo: viewTwo.trailingAnchor, constant: -20).isActive = true
        labelTwo.heightAnchor.constraint(equalToConstant: 45).isActive = true
        
        
        // viewThird
        viewThird.addSubview(imageViewThree)
        imageViewThree.topAnchor.constraint(equalTo: viewThird.topAnchor, constant: 20).isActive = true
        imageViewThree.centerXAnchor.constraint(equalTo: viewThird.centerXAnchor).isActive = true
        imageViewThree.heightAnchor.constraint(equalToConstant: 90).isActive = true
        
        viewThird.addSubview(labelThird)
        labelThird.topAnchor.constraint(equalTo: imageViewThree.bottomAnchor, constant: 25).isActive = true
        labelThird.leadingAnchor.constraint(equalTo: viewThird.leadingAnchor, constant: 20).isActive = true
        labelThird.trailingAnchor.constraint(equalTo: viewThird.trailingAnchor, constant: -20).isActive = true
        labelThird.heightAnchor.constraint(equalToConstant: 45).isActive = true
        
        
        // viewFour
        viewFour.addSubview(imageViewFour)
        imageViewFour.topAnchor.constraint(equalTo: viewFour.topAnchor, constant: 20).isActive = true
        imageViewFour.centerXAnchor.constraint(equalTo: viewFour.centerXAnchor).isActive = true
        imageViewFour.heightAnchor.constraint(equalToConstant: 90).isActive = true
        
        viewFour.addSubview(labelFour)
        labelFour.topAnchor.constraint(equalTo: imageViewFour.bottomAnchor, constant: 25).isActive = true
        labelFour.leadingAnchor.constraint(equalTo: viewFour.leadingAnchor, constant: 20).isActive = true
        labelFour.trailingAnchor.constraint(equalTo: viewFour.trailingAnchor, constant: -20).isActive = true
        labelFour.heightAnchor.constraint(equalToConstant: 45).isActive = true
    }

    @objc func viewOneTapped (_ sender: UIView) {
        let vc = SecondPage()
        vc.textLabel.text = labelOne.text
        vc.imageProdView.image = UIImage(named: products[0].image)
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func viewTwoTapped (_ sender: UIView) {
        let vc = SecondPage()
        vc.textLabel.text = labelTwo.text
        vc.imageProdView.image = UIImage(named: products[1].image)
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func viewThirdTapped (_ sender: UIView) {
        let vc = SecondPage()
        vc.textLabel.text = labelThird.text
        vc.imageProdView.image = UIImage(named: products[2].image)
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func viewFourTapped (_ sender: UIView) {
        let vc = SecondPage()
        vc.textLabel.text = labelFour.text
        vc.imageProdView.image = UIImage(named: products[3].image)
        navigationController?.pushViewController(vc, animated: true)
    }
    
}

