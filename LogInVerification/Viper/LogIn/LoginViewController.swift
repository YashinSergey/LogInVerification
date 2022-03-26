//
//  ViewController.swift
//  LogInVerification
//
//  Created by mr.Blue on 26.03.2022.
//

import UIKit
import SnapKit

//MARK: - LoginViewProtocol
protocol LoginViewProtocol where Self: UIViewController {

}

//MARK: - LoginViewController
final class LoginViewController: UIViewController, LoginViewProtocol {

    private struct UIConstants {
        static let loginTextViewHorizontalInset: CGFloat = 16
        static let buttonWidth: CGFloat = 200
    }

    //MARK: Properties
    private let presenter: LoginPresenterProtocol

    //MARK: UIProperties
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = .systemFont(ofSize: 26, weight: .semibold)
        //TODO need to change title and font
        label.text = "There should be some title here"
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    private let loginTextView: UITextView = {
        let textView = UITextView()
        textView.textContainer.maximumNumberOfLines = 1
        textView.backgroundColor = .Login.loginFieldBackground
        textView.font = .systemFont(ofSize: 16, weight: .semibold)
        textView.layer.cornerRadius = 10
        textView.contentInset = .init(top: 0, left: 4, bottom: 0, right: 4)
        textView.tintColor = .Login.loginPageBackground
        return textView
    }()

    private let signInButton: UIButton = {
        let button = UIButton()
        button.layer.cornerRadius = 15
        button.backgroundColor = .Login.singnInButtonColor
        //TODO need to make localizable strings
        button.setTitle("Sign in", for: .normal)
        return button
    }()

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
        initialize()
    }

    private func initialize() {
        view.backgroundColor = .Login.loginPageBackground

        view.addSubview(loginTextView)
        view.addSubview(signInButton)
        view.addSubview(titleLabel)

        let verticalOffset = view.bounds.height * 0.1

        loginTextView.snp.makeConstraints { maker in
            maker.leading.trailing.equalToSuperview().inset(UIConstants.loginTextViewHorizontalInset)
            maker.centerY.equalToSuperview().inset(-verticalOffset)
            maker.height.greaterThanOrEqualTo(40)
        }

        signInButton.snp.makeConstraints { maker in
            maker.width.equalTo(UIConstants.buttonWidth)
            maker.centerX.equalToSuperview()
            maker.top.equalTo(loginTextView.snp.bottom).offset(30)
        }

        titleLabel.snp.makeConstraints { maker in
            maker.leading.trailing.equalToSuperview().inset(20)
            maker.bottom.equalTo(loginTextView.snp.top).offset(-80)
        }

    }
}

