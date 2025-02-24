import UIKit

class ViewController: UIViewController {
    
    // 6 adet UILabel için IBOutlet bağlantıları
    @IBOutlet weak var numberLabel1: UILabel!
    @IBOutlet weak var numberLabel2: UILabel!
    @IBOutlet weak var numberLabel3: UILabel!
    @IBOutlet weak var numberLabel4: UILabel!
    @IBOutlet weak var numberLabel5: UILabel!
    @IBOutlet weak var numberLabel6: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Başlangıçta label'ları boş bırak
        clearNumbers()
        
        // Sayıları ortalamak için her label'ın textAlignment'ını ayarla
        numberLabel1.textAlignment = .center
        numberLabel2.textAlignment = .center
        numberLabel3.textAlignment = .center
        numberLabel4.textAlignment = .center
        numberLabel5.textAlignment = .center
        numberLabel6.textAlignment = .center
    }
    
    // "Üret" butonuna basıldığında çalışacak IBAction
    @IBAction func generateNumbers(_ sender: UIButton) {
        let numbers = (1...100).shuffled().prefix(6) // 1-100 arasında rastgele 6 sayı seç
        let numberArray = Array(numbers) // Diziye çevir
        
        // UILabel'lara rastgele sayıları atama
        numberLabel1.text = "\(numberArray[0])"
        numberLabel2.text = "\(numberArray[1])"
        numberLabel3.text = "\(numberArray[2])"
        numberLabel4.text = "\(numberArray[3])"
        numberLabel5.text = "\(numberArray[4])"
        numberLabel6.text = "\(numberArray[5])"
    }
    
    // Label'ları temizlemek için fonksiyon
    func clearNumbers() {
        numberLabel1.text = "-"
        numberLabel2.text = "-"
        numberLabel3.text = "-"
        numberLabel4.text = "-"
        numberLabel5.text = "-"
        numberLabel6.text = "-"
    }
}
