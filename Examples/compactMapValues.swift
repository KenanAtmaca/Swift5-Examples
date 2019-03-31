// kenanatmaca.com

let dict:[String: String] = ["A": "1","C": "2","S": "3", "WWDC": "Apple"]

let compactDict = dict.compactMapValues(Int.init) // ["A": 1, "S": 3, "C": 2]

// ------------------------

let dict:[String: String?] = ["A": "1","C": "2","S": nil, "WWDC": "Apple"]

let compactDict = dict.compactMapValues {$0} // ["WWDC": "Apple", "C": "2", "A": "1"]
