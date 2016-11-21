import Foundation

class Fraction {
    fileprivate let numerator: Int
    fileprivate let denominator: Int

    convenience init(_ value: Int) {
        self.init(value, 1)
    }

    init(_ numerator: Int, _ denominator: Int) {
        let gcd = NumberTheory.gcd(numerator, denominator)
        self.numerator = numerator / gcd
        self.denominator = denominator / gcd
    }

    func plus(_ fraction: Fraction) -> Fraction {
        if self.denominator != fraction.denominator {
            return Fraction(self.numerator * fraction.denominator + fraction.numerator * self.denominator, self.denominator * fraction.denominator)
        } else {
            return Fraction(self.numerator + fraction.numerator, denominator)
        }
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




