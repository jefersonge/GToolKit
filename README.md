# GToolKit

GToolKit é um kit de desenvolvimento para iOS que fornece componentes e utilitários para acelerar o desenvolvimento de aplicativos.

## Requisitos

- iOS 13.0+
- Swift 6.1+

## Instalação

### Swift Package Manager

Adicione o GToolKit ao seu projeto usando o Swift Package Manager:

```swift
dependencies: [
    .package(url: "https://github.com/jefersonge/GToolKit.git", from: "1.0.0")
]
```

## Uso

### Criando uma View Customizada

```swift
import GToolKit

class MinhaView: BaseView {
    //MARK: - Views
    private let label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //MARK: - HierarchyBuilder
    override func buildViewHierarchy() {
        addSubview(label)
    }
    
    override func setupConstraints() {
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: centerXAnchor),
            label.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
}
```

### Criando um ViewController

```swift
import GToolKit

class MeuViewController: BaseViewController<MinhaView> {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Configurações adicionais
    }
}
```

## Licença

Este projeto está sob a licença MIT. Veja o arquivo [LICENSE](LICENSE) para mais detalhes. 