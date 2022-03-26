//
// Created by mr.Blue on 26.03.2022.
//

import UIKit

final class LoginModuleBuilder {

    static func build() -> UIViewController {
        let interactor = LoginInteractor()
        let router = LoginRouter()
        let presenter = LoginPresenter(interactor: interactor, router: router)
        let viewController = LoginViewController(presenter: presenter)

        interactor.presenter = presenter
        router.viewController = viewController
        presenter.view = viewController

        return viewController
    }
}
