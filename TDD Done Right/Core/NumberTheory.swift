import Foundation

class NumberTheory {

   static func gcd(_ a:Int, _ b:Int) -> Int {
        var denominatorB = b
        var denominatorA = a
        while denominatorB != 0 {
            let t = denominatorB
            denominatorB = denominatorA % t
            denominatorA = t
        }
        return abs(denominatorA)
    }
}
