//
// Created by mr.Blue on 26.03.2022.
//

import Foundation

//MARK: - LoginInteractorProtocol
protocol LoginInteractorProtocol: AnyObject {

}

//MARK: - LoginInteractor
final class LoginInteractor: LoginInteractorProtocol {

    weak var presenter: LoginPresenterProtocol?

}