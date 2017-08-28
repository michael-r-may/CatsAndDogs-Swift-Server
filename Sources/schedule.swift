//
//  Created by Michael May on 2017/08/28.
//
//

import Foundation

typealias JSON = [String : Any]

protocol JSONSerializable {
    func asJSONObject(with dateFormatter: DateFormatter ) -> JSON
}

struct Talk {
    let datestamp: Date
    let duration: Int
    let title: String
    let speaker: [String]
    let track: CustomStringConvertible?
}

extension Talk : JSONSerializable {
    func asJSONObject(with dateFormatter: DateFormatter ) -> JSON {
        if let track = self.track {
            return ["datestamp" : dateFormatter.string(from: self.datestamp),
                    "title" : self.title,
                    "speaker" : self.speaker,
                    "track" : track.description]
        }
        
        return ["datestamp" : dateFormatter.string(from: self.datestamp),
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
    func asJSONObject(with dateFormatter: DateFormatter ) -> JSON {
        return ["title" : self.title,
                "schedule": self.schedule.map { $0.asJSONObject(with: dateFormatter) } ]
    }
}

extension Event {
    func toJSON() -> String {
        let jsonObjects = self.asJSONObject(with: self.dateFormatter)
        
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
