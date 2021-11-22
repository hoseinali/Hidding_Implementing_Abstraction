import UIKit

// Clean Code


struct VisaCard {
    var amount: Double
    var name: String
    func calculateTransferFee() -> Double {
        return amount * 0.02
    }
}

struct MasterCard {
    var amount: Double
    var holderName: String
    var tax:Double
    
    func calculateTransferFee() -> Double {
        return amount * 0.07 * tax
    }
}

func displayFee(visaCard: VisaCard) {
    let fee = visaCard.calculateTransferFee()
    print(fee)
}
displayFee(visaCard: VisaCard.init(amount: 3.0, name: "hosein"))

// Hiding implementation details through abstraction

protocol Account {
    func calculateTransferFee() -> Double
}

struct VisaCardNew: Account {
    var amount: Double
    var name: String
    func calculateTransferFee() -> Double {
        return amount * 0.02
    }
}

struct MasterCardNew: Account {
    var amount: Double
    var holderName: String
    var tax:Double
    
    func calculateTransferFee() -> Double {
        return amount * 0.07 * tax
    }
}

func displayFeeNew(account: Account) {
    let fee = account.calculateTransferFee()
    print(fee)
}

displayFeeNew(account: MasterCardNew.init(amount: 5.0, holderName: "hosein", tax: 0.03))
displayFeeNew(account: VisaCardNew.init(amount: 12.0, name: "hosein"))
