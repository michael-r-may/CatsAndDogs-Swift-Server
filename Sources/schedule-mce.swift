//
//  Created by Michael May on 2017/03/26.
//
//  Note: no non-Source bundling available with spm yet: https://bugs.swift.org/browse/SR-2751

import Foundation

// "1996-12-19T16:39:57-08:00"

struct MCE4 : Event {
    enum Tracks : String, CustomStringConvertible {
        case none = "None"
        case engineering = "Engineering"
        case design = "Design"
        
        var description: String {
            return self.rawValue
        }
    }
    
    var timezone: TimeZone { return TimeZone.Polish! }
    var locale: Locale { return Locale.Polish }
    
    var title : String { return "MCE^4" }
    
    var schedule: [Talk] {
        let dateFormatter = self.dateFormatter
        
        return [
            Talk(datestamp: dateFormatter.date(from: "2017-05-08T10:00:00+02:00")!,
                 duration: 45,
                 title: "We are counting on you",
                 speaker: ["Jeff Watkins"],
                 track: Tracks.engineering),
            Talk(datestamp: dateFormatter.date(from: "2017-05-08T10:00:00+02:00")!,
                 duration: 45,
                 title: "Positive Design. Look out got the gorilla!",
                 speaker: ["Anna Pohlmeyer"],
                 track: Tracks.design),
            Talk(datestamp: dateFormatter.date(from: "2017-05-08T10:00:00+02:00")!,
                 duration: 45,
                 title: "Apps for Africa - creating real impact!",
                 speaker: ["Stefan Zelazny"],
                 track: Tracks.engineering),
            
            Talk(datestamp: dateFormatter.date(from: "2017-05-08T11:00:00+02:00")!,
                 duration: 45,
                 title: "#SUX: Some Users' Experience",
                 speaker: ["Bill Gregory"],
                 track: Tracks.design),
            Talk(datestamp: dateFormatter.date(from: "2017-05-08T11:00:00+02:00")!,
                 duration: 45,
                 title: "Hidden mysteries behind big code cases (lessons learned)",
                 speaker: ["Fernando Cejas"],
                 track: Tracks.engineering),
            Talk(datestamp: dateFormatter.date(from: "2017-05-08T11:00:00+02:00")!,
                 duration: 45,
                 title: "10 Years of iPhone",
                 speaker: ["Adrian Kosmaczewski"],
                 track: Tracks.engineering),
            
            Talk(datestamp: dateFormatter.date(from: "2017-05-08T12:00:00+02:00")!,
                 duration: 45,
                 title: "The Power of Making Your App Accessible",
                 speaker: ["Matthias Tretter"],
                 track: Tracks.engineering),
            Talk(datestamp: dateFormatter.date(from: "2017-05-08T12:00:00+02:00")!,
                 duration: 90,
                 title: "Object-Orientated UX: Designing your Users's Real World Mental Models",
                 speaker: ["Sophia Voychehovski"],
                 track: Tracks.design),
            Talk(datestamp: dateFormatter.date(from: "2017-05-08T12:00:00+02:00")!,
                 duration: 45,
                 title: "Making Debug Builds Testable and Fun",
                 speaker: ["Eric Cochran"],
                 track: Tracks.engineering),
            
            Talk(datestamp: dateFormatter.date(from: "2017-05-08T15:00:00+02:00")!,
                 duration: 45,
                 title: "Experience Design: What is it, Why it's important for Design and Business. Plus, Some Examples.",
                 speaker: ["David Lipkin"],
                 track: Tracks.design),
            Talk(datestamp: dateFormatter.date(from: "2017-05-08T15:00:00+02:00")!,
                 duration: 45,
                 title: "Seamless Linking To Your App",
                 speaker: ["Cyril Mottier"],
                 track: Tracks.engineering),
            Talk(datestamp: dateFormatter.date(from: "2017-05-08T15:00:00+02:00")!,
                 duration: 45,
                 title: "Swift Scripting in practice",
                 speaker: ["John Sundell"],
                 track: Tracks.engineering),
            
            Talk(datestamp: dateFormatter.date(from: "2017-05-08T16:00:00+02:00")!,
                 duration: 45,
                 title: "Cats and Dogs (lessons learned from working together as an iOS and Android team)",
                 speaker: ["Michaek May", "Romain Piel"],
                 track: Tracks.engineering),
            Talk(datestamp: dateFormatter.date(from: "2017-05-08T16:00:00+02:00")!,
                 duration: 45,
                 title: "Designing the Future Reading Experience (TX)",
                 speaker: ["Hilary Kenna"],
                 track: Tracks.design),
            Talk(datestamp: dateFormatter.date(from: "2017-05-08T16:00:00+02:00")!,
                 duration: 45,
                 title: "Humans at the heart of digital",
                 speaker: ["Ashley Benigno"],
                 track: Tracks.design),
            
            Talk(datestamp: dateFormatter.date(from: "2017-05-08T17:00:00+02:00")!,
                 duration: 45,
                 title: "Design and Innovation in Healthcare",
                 speaker: ["Siri Betts-Sonstegard"],
                 track: Tracks.design),
            Talk(datestamp: dateFormatter.date(from: "2017-05-08T17:00:00+02:00")!,
                 duration: 45,
                 title: "Designing products, designing platforms",
                 speaker: ["Edward O'Riordan"],
                 track: Tracks.design),
            Talk(datestamp: dateFormatter.date(from: "2017-05-08T17:00:00+02:00")!,
                 duration: 45,
                 title: "Getting Clean, Keeping Lean",
                 speaker: ["Joe Birch"],
                 track: Tracks.engineering),
            
            
            /////////////
            
            Talk(datestamp: dateFormatter.date(from: "2017-05-09T10:00:00+02:00")!,
                 duration: 45,
                 title: "Coroutines in Kotlin",
                 speaker: ["Svetlana Isakova"],
                 track: Tracks.engineering),
            Talk(datestamp: dateFormatter.date(from: "2017-05-09T10:00:00+02:00")!,
                 duration: 45,
                 title: "Humansing technology to improve customer experience",
                 speaker: ["Eric Roscam Abbing", "Flaminia Del Conte"],
                 track: Tracks.design),
            Talk(datestamp: dateFormatter.date(from: "2017-05-09T10:00:00+02:00")!,
                 duration: 45,
                 title: "Elm Architecture in Swift",
                 speaker: ["Yasuhiro Inami"],
                 track: Tracks.engineering),
            
            Talk(datestamp: dateFormatter.date(from: "2017-05-09T11:00:00+02:00")!,
                 duration: 45,
                 title: "The Greatest Invention since the Braille",
                 speaker: ["Jacek Zadrożny"],
                 track: Tracks.design),
            Talk(datestamp: dateFormatter.date(from: "2017-05-09T11:00:00+02:00")!,
                 duration: 45,
                 title: "Introduction to Virtual Reality Development with Unity",
                 speaker: ["Dale Knauss"],
                 track: Tracks.engineering),
            Talk(datestamp: dateFormatter.date(from: "2017-05-09T11:00:00+02:00")!,
                 duration: 45,
                 title: "TDB",
                 speaker: ["Alexander Steinhard"],
                 track: Tracks.design),
            
            Talk(datestamp: dateFormatter.date(from: "2017-05-09T12:00:00+02:00")!,
                 duration: 45,
                 title: "Deep Android Integrations",
                 speaker: ["Ty Smith"],
                 track: Tracks.engineering),
            Talk(datestamp: dateFormatter.date(from: "2017-05-09T12:00:00+02:00")!,
                 duration: 90,
                 title: "Designing AI Personality",
                 speaker: ["Magdalena Paluch"],
                 track: Tracks.design),
            Talk(datestamp: dateFormatter.date(from: "2017-05-09T12:00:00+02:00")!,
                 duration: 45,
                 title: "The Art Of Stealing",
                 speaker: ["Benjamin Enca"],
                 track: Tracks.engineering),
            
            Talk(datestamp: dateFormatter.date(from: "2017-05-09T15:00:00+02:00")!,
                 duration: 45,
                 title: "Mixed Reality for Social Good",
                 speaker: ["Etienne Caron"],
                 track: Tracks.engineering),
            Talk(datestamp: dateFormatter.date(from: "2017-05-09T15:00:00+02:00")!,
                 duration: 45,
                 title: "Mobile Apps and Nonprofits: Keys to successful Partnerships",
                 speaker: ["Bill Maurer"],
                 track: Tracks.design),
            Talk(datestamp: dateFormatter.date(from: "2017-05-09T15:00:00+02:00")!,
                 duration: 45,
                 title: "Designing our civic life: Can paying taxes be engaging or even delightful?",
                 speaker: ["Whitney Quesenbery"],
                 track: Tracks.engineering),
            
            Talk(datestamp: dateFormatter.date(from: "2017-05-09T16:00:00+02:00")!,
                 duration: 45,
                 title: "TBC",
                 speaker: ["TBC"],
                 track: Tracks.none),
            Talk(datestamp: dateFormatter.date(from: "2017-05-09T16:00:00+02:00")!,
                 duration: 45,
                 title: "Beyond Design: Inclusion",
                 speaker: ["Joël Schillo", "Oliver Jeannel"],
                 track: Tracks.design),
            Talk(datestamp: dateFormatter.date(from: "2017-05-09T16:00:00+02:00")!,
                 duration: 45,
                 title: "GlueKit: Reactive Collections in Swift",
                 speaker: ["Károly Lőrentey"],
                 track: Tracks.engineering),
            
            Talk(datestamp: dateFormatter.date(from: "2017-05-09T17:00:00+02:00")!,
                 duration: 45,
                 title: "VR Design and Prototyping",
                 speaker: ["Manuel Clément"],
                 track: Tracks.design),
            Talk(datestamp: dateFormatter.date(from: "2017-05-09T17:00:00+02:00")!,
                 duration: 45,
                 title: "Helping users create good habits",
                 speaker: ["Sally Shepherd"],
                 track: Tracks.engineering),
            Talk(datestamp: dateFormatter.date(from: "2017-05-09T17:00:00+02:00")!,
                 duration: 45,
                 title: "Technology is about humans. Involve them! But don’t spend too much effort on it…",
                 speaker: ["Lena Egede"],
                 track: Tracks.engineering)
        ] }
}
