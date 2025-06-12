import UIKit

public class BaseView: UIView {
    
    //MARK: - Views
    
    
    //MARK: - Initializers
    public override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

//MARK: - HierarchyBuilder
extension BaseView: CodeViewMethods {
    public func buildViewHierarchy() {
        // Implementação específica em cada view
    }
    
    public func setupConstraints() {
        NSLayoutConstraint.activate([
            // Constraints específicas em cada view
        ])
    }
    
    public func setupAdditionalConfiguration() { }
} 