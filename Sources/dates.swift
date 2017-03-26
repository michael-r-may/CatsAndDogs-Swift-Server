//
//  Created by Developer on 2017/03/26.
//
//

import Foundation

public extension TimeZone {
    static var PolishTimeZone = TimeZone(identifier: "Europe/Warsaw")
}

public extension Locale {
    static var PolishLocale = Locale(identifier: "pl_PL")
}

public extension Date {
    static var RFC3339DateFormat = "yyyy-MM-dd'T'HH:mm:ssZZZZZ"
    
    init?(_ rfc3339String: String,
          locale: Locale = Locale.PolishLocale,
          timezone: TimeZone = TimeZone.PolishTimeZone!) {
        let RFC3339DateFormatter = DateFormatter()
        
        RFC3339DateFormatter.locale = locale
        RFC3339DateFormatter.dateFormat = Date.RFC3339DateFormat
        RFC3339DateFormatter.timeZone = timezone
        
        guard let date = RFC3339DateFormatter.date(from: rfc3339String) else { return nil }
        
        self = date
    }
}
