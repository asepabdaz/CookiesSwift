# CookiesSwift
Get Data Cookies in swift
### Requirements
- XCode 11.3.1 ([11C504](https://apps.apple.com/id/app/xcode/id497799835?mt=12))
- Swift 5
# Indonesia
untuk mendapatkan cookies menggunakan URLSession anda harus memiliki url yang memiliki coockies dalam kasus ini kamu akan menggunakan URLRequest dan URLSession
```swift
// using url github to get cookies
let url = URL(string: "https://github.com/")!
let request = URLRequest(url: url)
let config = URLSessionConfiguration.default
//in this case you must be use URLSessionDelegate to configuration cookies
let session = URLSession(configuration: config)
```

lalu gunakan dataTask() untuk memproses URLSession
```swift
session.dataTask(with: request, completionHandler: { (data, respons, error) in
            HTTPCookieStorage.shared.cookies?.forEach {
                print($0.name + $0.value + "\n")
            }
}).resume()
```

# English
to get cookies using URLSession you must have url that has coockies in this case you will use URLRequest and URLSession
```swift
// using url github to get cookies
let url = URL(string: "https://github.com/")!
let request = URLRequest(url: url)
let config = URLSessionConfiguration.default
//in this case you must be use URLSessionDelegate to configuration cookies
let session = URLSession(configuration: config)
```

then use dataTask () to process URLSession
```swift
session.dataTask(with: request, completionHandler: { (data, respons, error) in
            HTTPCookieStorage.shared.cookies?.forEach {
                print($0.name + $0.value + "\n")
            }
}).resume()
```
#### referensi/reference
Github [WKCookieWebView](https://github.com/Kofktu/WKCookieWebView)

### ask me
by E-Mail : <a href="mailto:asepabdaz@gmail.com?subject=Q%26A Code&body=some question :">AsepAbdaz</a>
