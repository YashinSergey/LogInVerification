//
//  ViewController.swift
//  LogInVerification
//
//  Created by mr.Blue on 26.03.2022.
//

import UIKit

//MARK: - LoginViewProtocol
protocol LoginViewProtocol: AnyObject {

}

//MARK: - LoginViewController
final class LoginViewController: UIViewController {

    //MARK: Properties
    private let presenter: LoginPresenterProtocol

    //MARK: Init
    init(presenter: LoginPresenterProtocol) {
        self.presenter = presenter
    }

    //MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .darkGray
    }
}

