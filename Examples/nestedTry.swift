// kenanatmaca.com

enum UserError: Error {
    case loadFailed
}

struct User {

    var id: Int

    init?(id: Int) {
        if id < 1 { return nil }
        self.id = id
    }

    func getUserDetails() throws -> String {
        guard id != 1 else { throw UserError.loadFailed }
        return "User Details \(self.id) -- \n"
    }
}

let user = User(id: 10)

if let details = try? user?.getUserDetails() {
    print(details) // User Details 10 --
} else {
    print("@Failed id")
}
