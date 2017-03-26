//: Playground - noun: a place where people can play

import Foundation

extension TimeZone {
    static var PolishTimeZone = TimeZone(identifier: "Europe/Warsaw")
}

extension Date {
    static var PolishLocale = Locale(identifier: "pl_PL")
}

extension Date {
    static var RFC3339DateFormat = "yyyy-MM-dd'T'HH:mm:ssZZZZZ"
    
    init?(rfc3339String: String) {
        let RFC3339DateFormatter = DateFormatter()
        
        RFC3339DateFormatter.locale = Date.PolishLocale
        RFC3339DateFormatter.dateFormat = Date.RFC3339DateFormat
        RFC3339DateFormatter.timeZone = TimeZone.PolishTimeZone
        
        //        let string = "1996-12-19T16:39:57-08:00"
        guard let date = RFC3339DateFormatter.date(from: rfc3339String) else { return nil }
        
        self = date
    }
}


let date = Date(rfc3339String: "2017-05-08T11:00:00-02:00")
