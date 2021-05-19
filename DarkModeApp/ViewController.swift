import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var changeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Uygulamanın tamamının modunu değiştirmek için aşağıdaki satırı info.plist e ekliyoruz
        // User Interface Style -> (String) -> Light
        //Üstteki seçenek çalışmadı
        
        
        //eğer interface stilini sabitlemek istiyorsak aşağıdaki kodu kullanıyoruz
        overrideUserInterfaceStyle = .light
        
        
        //Eğer kullanıcının seçtiği mode a göre işlem yapacaksak aşağıdaki kodu kullanıyoruz
        let userInterfaceStyle = traitCollection.userInterfaceStyle
        if userInterfaceStyle == .dark {
            changeButton.tintColor = UIColor.green
        }
        else {
            changeButton.tintColor = UIColor.red
        }
    }
    
    //bu event traitlerden biri değişince çalışıyor
    //örneğin dark mode ile light mode geçişlerinde çalışıyor
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        //kullanıcı arayüzü hangi stilde kullanıyor
        let userInterfaceStyle = traitCollection.userInterfaceStyle
        if userInterfaceStyle == .dark {
            changeButton.tintColor = UIColor.green
        }
        else {
            changeButton.tintColor = UIColor.red
        }
    }
}

