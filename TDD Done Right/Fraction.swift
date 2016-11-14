import Foundation

class Fraction {
    fileprivate let numerator: Int
    fileprivate let denominator: Int

    convenience init(_ value: Int) {
        self.init(value, 1)
    }

    init(_ numerator: Int, _ denominator: Int) {
        self.numerator = numerator
        self.denominator = denominator
    }

    func plus(_ fraction: Fraction) -> Fraction {
        return Fraction(self.numerator + fraction.numerator, denominator)
    }

    func toString() -> String {
        return "\(numerator)/\(denominator)"
    }

}

extension Fraction: Equatable {

    public static func ==(lhs: Fraction, rhs: Fraction) -> Bool {
        return lhs.numerator == rhs.numerator &&
                lhs.denominator == rhs.denominator
    }

}

extension Fraction: Hashable {
    var hashValue: Int {
        return numerator.hashValue ^ denominator.hashValue
    }
}




