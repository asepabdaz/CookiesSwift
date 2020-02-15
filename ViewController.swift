import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        cookiesTest()
    }

    func cookiesTest() {
        let url = URL(string: "https://github.com/")!
        let request = URLRequest(url: url)
        let config = URLSessionConfiguration.default
        let session = URLSession(configuration: config)
        
        session.dataTask(with: request, completionHandler: { (data, respons, error) in
            HTTPCookieStorage.shared.cookies?.forEach {
                print($0.name + $0.value)
            }
        }).resume()
    }
}
