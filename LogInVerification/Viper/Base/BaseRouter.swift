//
// Created by mr.Blue on 26.03.2022.
//

import Foundation
import UIKit

//MARK: - BaseRouterProtocol
protocol BaseRouterProtocol: AnyObject {

}

//MARK: - BaseRouter
class BaseRouter<T>: BaseRouterProtocol where T: UIViewController {

    //MARK: Variables
    weak var viewController: T?

    //MARK: Init
    init(with viewController: T? = nil) {
        self.viewController = viewController
    }
}
