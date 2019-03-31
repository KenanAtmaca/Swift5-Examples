// kenanatmaca.com

enum URLError: Error {
    case failedURL
}

class ApiService {
    func request(url:String, completion: @escaping (Result<Int,Error>) -> Void) {
        guard let url = URL(string: url) else {
            completion(.failure(URLError.failedURL))
            return
        }
        completion(.success(200))
    }
}

let service = ApiService()

service.request(url: "https://kenanatmaca.com") { (result) in
    switch result {
    case .success(let status): print(status) // 200
    case .failure(let error): print(error.localizedDescription)
    }
}
