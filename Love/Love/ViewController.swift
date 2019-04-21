import UIKit



class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var label: UILabel!
    
    let quotes = ["ムジェクシャマカリ（ヒンディー語）","ロシエント（スペイン語）","ヘッスパイトメ（オランダ語）","パサーニャコ（セブアノ語）","トキシロー（ベトナム語）","サマハニ（スワヒリ語）","オレンパイリオニ（フィンランド語）","ミアンハエヨ（韓国語）","ドゥイフーチー（中国語）","ミディスピース（イタリア語）"]
    
    @IBOutlet weak var slider: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        slider.
        label.text = ""
    }
    
    @IBAction func didClick(_ sender: Any) {
        let Num = Int.random(in: 1..<quotes.count)
        
        let girlImage = UIImage(named: "girl\(Num)")
        imageView.image = girlImage
        
        //テキストの文字が変わる
        let quote = quotes[Num-1]
        label.text = quote
    }
    
    @IBAction func didSlide(_ sender: UISlider) {
        imageView.alpha = CGFloat(sender.value)
        }
}
