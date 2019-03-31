// kenanatmaca.com

struct Product {
    var name:String
    var barcode:String
    var id:Int
}

extension String.StringInterpolation {
    mutating func appendInterpolation(_ value: Product) {
        appendInterpolation("Product name -> \(value.name) & id -> \(value.id)")
    }

    mutating func appendInterpolation(_ number: Int, val: Int) {
        let result = String(number + val)
        appendLiteral(result)
    }
}

let productObject = Product(name: "Cap", barcode: "810573746552", id: 93023)
print("Product Details: \(productObject)") // Product Details: Product name -> Cap & id -> 999

let num = 60
print("\(num, val: 2)") // 62
