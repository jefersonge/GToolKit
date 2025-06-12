import UIKit

public class BaseViewController<View: BaseView>: UIViewController {
    
    //MARK: - Properties
    public var screen: View?
    
    //MARK: - LoadView
    public override func loadView() {
        self.screen = View()
        self.view = screen
    }
    
    //MARK: - LifeCycle
    public override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }
    
    public override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    public override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
} 