//
//  ViewController.swift
//  LogInVerification
//
//  Created by mr.Blue on 26.03.2022.
//

import UIKit

//MARK: - LoginViewProtocol
protocol LoginViewProtocol where Self: UIViewController {

}

//MARK: - LoginViewController
final class LoginViewController: UIViewController, LoginViewProtocol {

    //MARK: Properties
    private let presenter: LoginPresenterProtocol

    //MARK: Init
    init(presenter: LoginPresenterProtocol) {
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("don't use storyboards!")
    }

    //MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .darkGray
    }
}

