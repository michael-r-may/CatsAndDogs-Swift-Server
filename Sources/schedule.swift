//
//  Created by Michael May on 2017/03/26.
//
//  Note: no non-Source bundling available with spm yet: https://bugs.swift.org/browse/SR-2751

import Foundation

typealias JSON = [String : Any]

protocol JSONSerializable {
    var asJSONObject: JSON { get }
}

enum Track : String {
    case none = "None"
    case engineering = "Engineering"
    case design = "Design"
}

struct Talk {
    let datestamp: Date
    let title: String
    let speaker: String
    let track: Track
}

extension Talk : JSONSerializable {
    var asJSONObject : JSON {
        return ["datestamp" : self.datestamp.description(with: Locale.PolishLocale),
                "title" : self.title,
                "speaker" : self.speaker,
                "track" : self.track.rawValue]
    }
}

protocol Event : JSONSerializable {
    var title: String { get }
    var schedule: [Talk] { get }
}

extension Event  {
    var asJSONObject : JSON {
        return ["title" : self.title,
                "schedule": self.schedule.map { $0.asJSONObject } ]
    }
}

extension Event {
    func toJSON() -> String {
        let jsonObjects = self.asJSONObject
        
        if let data = try? JSONSerialization.data(withJSONObject: jsonObjects, options: []) {
            return String(data: data, encoding: .utf8) ?? ""
        }
        
        return ""
        
        //"{\"event\": {\"speakers\": [{\"name\":\"Michael May\",\"company\":\"wrisk\"},{\"name\":\"Romain Piel\",\"company\":\"Deliveroo\"}],\"title\": \"mce^4\"}}"
        
        /*
         {
         "event": {
         "title": "MCE^4",
         "schedule": [
         {
         "datestamp": "2017-05-08 09:45:00",
         "title": "We are counting on you",
         "speaker": "Jeff Watkins",
         track: "Engineering"
         },
         {
         "datestamp": "2017-05-08 09:45:00",
         "title": "TBD",
         "speaker": "Anna Pohlmeyer",
         track: "Design"
         },
         {
         "datestamp": "2017-05-08 09:45:00",
         "title": "Apps for Africa - creating real impact!",
         "speaker": "Srefan Zelazny",
         track: "Engineering"
         },
         {
         "datestamp": "2017-05-08 11:00:00",
         "title": "TBD",
         "speaker": "TBD",
         track: "TBD"
         },
         {
         "datestamp": "2017-05-08 11:00:00",
         "title": "Hidden mysteries behind big mobile codebases (lessons learned).",
         "speaker": "Fernando Cejas",
         track: "Engineering"
         },
         {
         "datestamp": "2017-05-08 11:00:00",
         "title": "10 Years of iPhone",
         "speaker": "Adrian Kosmaczewski",
         track: "Engineering"
         },
         {
         "datestamp": "2017-05-08 09:45:00",
         "title": "Cats And Dogs",
         "speaker": "Romain Piel and Michael May"
         }
         ]
         }
         }
         */
    }
}

// "1996-12-19T16:39:57-08:00"

struct MCE4 : Event {
    var title : String { return "MCE^4" }
    var schedule: [Talk] { return [
        Talk(datestamp: Date("2017-05-08T11:00:00-02:00")!,
             title: "We are counting on you",
             speaker: "Jeff Watkins",
             track: .engineering),
        Talk(datestamp: Date("2017-05-08T11:00:00-02:00")!,
             title: "TBD",
             speaker: "Anna Pohlmeyer",
             track: .design),
        ] }
}
