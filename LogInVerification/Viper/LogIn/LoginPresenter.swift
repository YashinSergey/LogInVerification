//
// Created by mr.Blue on 26.03.2022.
//

import Foundation

//MARK: - LoginPresenterProtocol
protocol LoginPresenterProtocol: AnyObject {

}

//MARK: - LoginPresenter
final class LoginPresenter: LoginPresenterProtocol {

    //MARK: Properties
    private let interactor: LoginInteractorProtocol
    private let router: LoginRouterProtocol
    weak var view: LoginViewProtocol?

    //MARK: Init
    init(interactor: LoginInteractorProtocol, router: LoginRouterProtocol) {
        self.interactor = interactor
        self.router = router
    }
}
