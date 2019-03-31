// kenanatmaca.com

@dynamicCallable
class User {
    func getUserWithId(_ id:Int) -> Int {
        return id + 999
    }
 
    func dynamicallyCall(withArguments id: [Int]) -> Int {
        return getUserWithId(id[0])
    }
}
 
let user = User()
let result = user(1) // 1000

// ------------------------------

@dynamicCallable
struct Products {
    func dynamicallyCall(withKeywordArguments prods: KeyValuePairs<String, Int>) {
        prods.map { (key,value) in
            print(key, value)
        }
    }
}
 
let prod = Products()
prod(a:1,b:2,c:3)
