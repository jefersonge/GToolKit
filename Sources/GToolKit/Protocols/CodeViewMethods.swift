import UIKit

public protocol CodeViewMethods {
    func buildViewHierarchy()
    func setupConstraints()
    func setupAdditionalConfiguration()
}

public extension CodeViewMethods {
    func setupView() {
        buildViewHierarchy()
        setupConstraints()
        setupAdditionalConfiguration()
    }
} 