import UIKit
import Foundation
//@propertyWrapper struct AllLowerCased {
//    var wrappedValue:String?{
//        didSet {
//            wrappedValue = wrappedValue?.lowercased()
//        }
//    }
//    init(WrappedValue:String) {
//        self.wrappedValue = WrappedValue.lowercased()
//    }
//}
//struct User{
//    @AllLowerCased var username:String?
//}

@propertyWrapper struct LowerCased {
    var wrappedValue: String {
        didSet { wrappedValue = wrappedValue.lowercased() }
    }

    init(wrappedValue: String) {
        self.wrappedValue = wrappedValue.lowercased()
    }
}

struct User {
    @LowerCased var userName: String
    @LowerCased var email: String
}
var user = User(userName: "Abdul", email: "abdul@gmail.com")
print(user.userName)
