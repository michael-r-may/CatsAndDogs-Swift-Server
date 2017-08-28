//
//  Created by Michael May on 2017/08/28.
//
//

import Foundation

typealias JSON = [String : Any]

protocol JSONSerializable {
    func asJSONObject(with locale: Locale) -> JSON
}

struct Talk {
    let datestamp: Date
    let duration: Int
    let title: String
    let speaker: [String]
    let track: CustomStringConvertible?
}

extension Talk : JSONSerializable {
    func asJSONObject(with locale: Locale) -> JSON {
        if let track = self.track {
            return ["datestamp" : self.datestamp.description(with: locale),
                    "title" : self.title,
                    "speaker" : self.speaker,
                    "track" : track.description]
        }
        
        return ["datestamp" : self.datestamp.description(with: locale),
                "title" : self.title,
                "speaker" : self.speaker]
    }
}

protocol Event : JSONSerializable {
    var timezone: TimeZone { get }
    var locale: Locale { get }
    
    var title: String { get }
    var schedule: [Talk] { get }
}

extension Event  {
    func asJSONObject(with locale: Locale) -> JSON {
        return ["title" : self.title,
                "schedule": self.schedule.map { $0.asJSONObject(with: locale) } ]
    }
}

extension Event {
    func toJSON() -> String {
        let jsonObjects = self.asJSONObject(with: self.locale)
        
        if let data = try? JSONSerialization.data(withJSONObject: jsonObjects, options: []) {
            return String(data: data, encoding: .utf8) ?? ""
        }
        
        return ""
    }
}

extension Event {
    var dateFormatter: DateFormatter {
        return RFC3339DateFormatter(locale: self.locale, timezone: self.timezone)
    }
}
