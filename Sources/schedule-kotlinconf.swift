//
//  Created by Michael May on 2017/03/26.
//
//  Note: no non-Source bundling available with spm yet: https://bugs.swift.org/browse/SR-2751

import Foundation

struct KotlinConf : Event {
    var timezone: TimeZone { return TimeZone.California! }
    var locale: Locale { return Locale.US }
    
    var title : String { return "MCE^4" }
    var schedule: [Talk] {
        let dateFormatter = self.dateFormatter
        
        return [
            Talk(datestamp: dateFormatter.date(from: "2017-05-08T10:00:00+02:00")!,
             duration: 45,
             title: "We are counting on you",
             speaker: ["Jeff Watkins"],
             track: nil),
        ] }
}
