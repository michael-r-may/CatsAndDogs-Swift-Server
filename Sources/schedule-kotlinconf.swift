//
//  Created by Michael May on 2017/03/26.
//
//  Note: no non-Source bundling available with spm yet: https://bugs.swift.org/browse/SR-2751

import Foundation

struct KotlinConf : Event {
    enum Tracks : String, CustomStringConvertible {
        case room1 = "Room 1"
        case room2 = "Room 2"
        case room3 = "Room 3"
        case groundFloor = "Ground Floor Lunch / Party Area"
        
        var description: String {
            return self.rawValue
        }
    }
    
    var timezone: TimeZone { return TimeZone.California! }
    var locale: Locale { return Locale.US }
    
    var title : String { return "KotlinConf" }
    var schedule: [Talk] {
        let dateFormatter = self.dateFormatter
        
        return [
            // Day One
            
            Talk(datestamp: dateFormatter.date(from: "2017-11-02T08:00:00-08:00")!,
                 duration: 60,
                 title: "Registration",
                 speaker: [],
                 track: nil),
            
            Talk(datestamp: dateFormatter.date(from: "2017-11-02T09:00:00-08:00")!,
                 duration: 60,
                 title: "Opening Keynote",
                 speaker: ["Andrey Breslav"],
                 track: Tracks.room1),

            Talk(datestamp: dateFormatter.date(from: "2017-11-02T10:00:00-08:00")!,
                 duration: 15,
                 title: "Break ☕️",
                 speaker: [],
                 track: nil),
            
            Talk(datestamp: dateFormatter.date(from: "2017-11-02T10:15:00-08:00")!,
                 duration: 45,
                 title: "Introduction to Coroutines",
                 speaker: ["Roman Elizarov"],
                 track: Tracks.room1),

            Talk(datestamp: dateFormatter.date(from: "2017-11-02T10:15:00-08:00")!,
                 duration: 45,
                 title: "Cords and gumballs",
                 speaker: ["Mike Hearn"],
                 track: Tracks.room2),

            Talk(datestamp: dateFormatter.date(from: "2017-11-02T10:15:00-08:00")!,
                 duration: 45,
                 title: "How to build a React app in Kotlin",
                 speaker: ["Dave Ford"],
                 track: Tracks.room3),

            Talk(datestamp: dateFormatter.date(from: "2017-11-02T11:00:00-08:00")!,
                 duration: 15,
                 title: "Break ☕️",
                 speaker: [],
                 track: nil),

            Talk(datestamp: dateFormatter.date(from: "2017-11-02T11:15:00-08:00")!,
                 duration: 45,
                 title: "What's New and Cool in Kotlin Tools",
                 speaker: ["Dmitry Jemerov"],
                 track: Tracks.room1),

            Talk(datestamp: dateFormatter.date(from: "2017-11-02T11:15:00-08:00")!,
                 duration: 45,
                 title: "A View State Machine for Network Calls on Android",
                 speaker: ["Amanda Hill"],
                 track: Tracks.room2),

            Talk(datestamp: dateFormatter.date(from: "2017-11-02T11:15:00-08:00")!,
                 duration: 45,
                 title: "Understand Every Line of Your Codebase",
                 speaker: ["Victoria Gonda", "Boris Farber"],
                 track: Tracks.room3),

            Talk(datestamp: dateFormatter.date(from: "2017-11-02T12:00:00-08:00")!,
                 duration: 60,
                 title: "Lunch 🍽",
                 speaker: [],
                 track: nil),
            
            Talk(datestamp: dateFormatter.date(from: "2017-11-02T13:00:00-08:00")!,
                 duration: 45,
                 title: "Kotlin Static Analysis with Android Lint",
                 speaker: ["Tor Norbye"],
                 track: Tracks.room1),

            Talk(datestamp: dateFormatter.date(from: "2017-11-02T13:00:00-08:00")!,
                 duration: 45,
                 title: "My transition from Swift to Kotlin",
                 speaker: ["Hector Matos"],
                 track: Tracks.room2),

            Talk(datestamp: dateFormatter.date(from: "2017-11-02T13:00:00-08:00")!,
                 duration: 45,
                 title: "Building Languages using Kotlin",
                 speaker: ["Federico Tomassetti"],
                 track: Tracks.room3),

            Talk(datestamp: dateFormatter.date(from: "2017-11-02T13:45:00-08:00")!,
                 duration: 15,
                 title: "Break ☕️",
                 speaker: [],
                 track: nil),

            Talk(datestamp: dateFormatter.date(from: "2017-11-02T14:00:00-08:00")!,
                 duration: 45,
                 title: "Bootiful Kotlin",
                 speaker: ["Josh Long"],
                 track: Tracks.room1),

            Talk(datestamp: dateFormatter.date(from: "2017-11-02T14:00:00-08:00")!,
                 duration: 45,
                 title: "Lessons learned building a build tool",
                 speaker: ["Cedric Beust"],
                 track: Tracks.room2),

            Talk(datestamp: dateFormatter.date(from: "2017-11-02T14:00:00-08:00")!,
                 duration: 45,
                 title: "Frontend Kotlin from the trenches",
                 speaker: ["Gaetan Zoritchak"],
                 track: Tracks.room3),

            Talk(datestamp: dateFormatter.date(from: "2017-11-02T14:45:00-08:00")!,
                 duration: 30,
                 title: "Break ☕️☕️",
                 speaker: [],
                 track: nil),

            Talk(datestamp: dateFormatter.date(from: "2017-11-02T15:15:00-08:00")!,
                 duration: 45,
                 title: "Build and deploying Netflix, with Kotlin",
                 speaker: ["Rob Fletcher", "Danny Thomas"],
                 track: Tracks.room1),

            Talk(datestamp: dateFormatter.date(from: "2017-11-02T15:15:00-08:00")!,
                 duration: 45,
                 title: "Idiomatic Interop",
                 speaker: ["Kevin Most"],
                 track: Tracks.room2),

            Talk(datestamp: dateFormatter.date(from: "2017-11-02T15:15:00-08:00")!,
                 duration: 45,
                 title: "Kotlin for data Science",
                 speaker: ["Thomas Nield"],
                 track: Tracks.room3),
            
            Talk(datestamp: dateFormatter.date(from: "2017-11-02T16:00:00-08:00")!,
                 duration: 15,
                 title: "Break ☕️",
                 speaker: [],
                 track: nil),

            Talk(datestamp: dateFormatter.date(from: "2017-11-02T16:15:00-08:00")!,
                 duration: 45,
                 title: "The Road to Kotlintown",
                 speaker: ["Huyen Tue Dao", "Christina Lee"],
                 track: Tracks.room1),

            Talk(datestamp: dateFormatter.date(from: "2017-11-02T16:15:00-08:00")!,
                 duration: 45,
                 title: "Real World Kotlin-Powered Android",
                 speaker: ["James Williams"],
                 track: Tracks.room2),

            Talk(datestamp: dateFormatter.date(from: "2017-11-02T16:15:00-08:00")!,
                 duration: 45,
                 title: "How to Kontribute",
                 speaker: ["Yoshinori Isogai"],
                 track: Tracks.room3),

            Talk(datestamp: dateFormatter.date(from: "2017-11-02T17:00:00-08:00")!,
                 duration: 15,
                 title: "Break ☕️",
                 speaker: [],
                 track: nil),
            
            Talk(datestamp: dateFormatter.date(from: "2017-11-02T17:15:00-08:00")!,
                 duration: 45,
                 title: "Kotlin Puzzlers",
                 speaker: ["Anton Keks"],
                 track: Tracks.room1),
            
            Talk(datestamp: dateFormatter.date(from: "2017-11-02T17:15:00-08:00")!,
                 duration: 45,
                 title: "Architectures Using Functional Programming Concepts",
                 speaker: ["Jorge Castillo"],
                 track: Tracks.room2),

            Talk(datestamp: dateFormatter.date(from: "2017-11-02T17:15:00-08:00")!,
                 duration: 45,
                 title: "You can, but should you?",
                 speaker: ["Mike Gouline"],
                 track: Tracks.room3),
            
            Talk(datestamp: dateFormatter.date(from: "2017-11-02T18:05:00-08:00")!,
                 duration: 60,
                 title: "Party Keynote",
                 speaker: ["Michael Carducci"],
                 track: Tracks.room1),

            Talk(datestamp: dateFormatter.date(from: "2017-11-02T19:05:00-08:00")!,
                 duration: 180,
                 title: "Party 🎉",
                 speaker: [],
                 track: Tracks.groundFloor),

            // Day Two
            
            Talk(datestamp: dateFormatter.date(from: "2017-11-03T08:00:00-08:00")!,
                 duration: 60,
                 title: "Registration Day Two",
                 speaker: ["N/A"],
                 track: nil),
            
            Talk(datestamp: dateFormatter.date(from: "2017-11-03T09:00:00-08:00")!,
                 duration: 60,
                 title: "2nd Day Opening Keynote",
                 speaker: ["Erik Meijer"],
                 track: Tracks.room1),
            
            Talk(datestamp: dateFormatter.date(from: "2017-11-03T10:00:00-08:00")!,
                 duration: 15,
                 title: "Break ☕️",
                 speaker: [],
                 track: nil),
            
            Talk(datestamp: dateFormatter.date(from: "2017-11-03T10:15:00-08:00")!,
                 duration: 45,
                 title: "Building Kotlin Applications at Scale with Gradle",
                 speaker: ["Hans Dockter"],
                 track: Tracks.room1),

            Talk(datestamp: dateFormatter.date(from: "2017-11-03T10:15:00-08:00")!,
                 duration: 45,
                 title: "Kotlin for the pragmatic functionalist",
                 speaker: ["Paco Estévez García"],
                 track: Tracks.room2),

            Talk(datestamp: dateFormatter.date(from: "2017-11-03T10:15:00-08:00")!,
                 duration: 45,
                 title: "Cats And Dogs (lessons learned from working together as an iOS and Android team)",
                 speaker: ["Michael May", "Romain Piel"],
                 track: Tracks.room3),
            
            Talk(datestamp: dateFormatter.date(from: "2017-11-03T11:00:00-08:00")!,
                 duration: 15,
                 title: "Break ☕️",
                 speaker: [],
                 track: nil),

            Talk(datestamp: dateFormatter.date(from: "2017-11-03T11:15:00-08:00")!,
                 duration: 45,
                 title: "Sharing [Kotlin code across platforms] is caring!",
                 speaker: ["Eugenio Marletti"],
                 track: Tracks.room1),

            Talk(datestamp: dateFormatter.date(from: "2017-11-03T11:15:00-08:00")!,
                 duration: 45,
                 title: "RxJava in Baby Steps",
                 speaker: ["Annyce Davis"],
                 track: Tracks.room2),
            
            Talk(datestamp: dateFormatter.date(from: "2017-11-03T11:15:00-08:00")!,
                 duration: 45,
                 title: "kscript - Scripting enhancements for Kotlin",
                 speaker: ["Holger Brandl"],
                 track: Tracks.room3),

            Talk(datestamp: dateFormatter.date(from: "2017-11-03T12:00:00-08:00")!,
                 duration: 60,
                 title: "Lunch 🍽",
                 speaker: [],
                 track: nil),
            
            Talk(datestamp: dateFormatter.date(from: "2017-11-03T13:00:00-08:00")!,
                 duration: 45,
                 title: "TBA",
                 speaker: ["Andrey Breslav"],
                 track: Tracks.room1),

            Talk(datestamp: dateFormatter.date(from: "2017-11-03T13:00:00-08:00")!,
                 duration: 45,
                 title: "Asynchronous programming with Kotlin coroutines in Spring",
                 speaker: ["Konrad Kamiński"],
                 track: Tracks.room2),
            
            Talk(datestamp: dateFormatter.date(from: "2017-11-03T13:00:00-08:00")!,
                 duration: 45,
                 title: "Kickstarting Kotlin Culture: The Journey from Java to Kotlin",
                 speaker: ["Neil Power"],
                 track: Tracks.room3),

            Talk(datestamp: dateFormatter.date(from: "2017-11-03T13:45:00-08:00")!,
                 duration: 15,
                 title: "Break ☕️",
                 speaker: [],
                 track: nil),

            Talk(datestamp: dateFormatter.date(from: "2017-11-03T14:00:00-08:00")!,
                 duration: 45,
                 title: "Generating Kotlin Code",
                 speaker: ["Alec Strong", "Jake Wharton"],
                 track: Tracks.room1),

            Talk(datestamp: dateFormatter.date(from: "2017-11-03T14:00:00-08:00")!,
                 duration: 45,
                 title: "The cost of Kotlin language features",
                 speaker: ["Duncan McGregor"],
                 track: Tracks.room2),

            Talk(datestamp: dateFormatter.date(from: "2017-11-03T14:00:00-08:00")!,
                 duration: 45,
                 title: "Kotlin EE: Boost your Productivity",
                 speaker: ["Marcus Fihlon"],
                 track: Tracks.room3),

            Talk(datestamp: dateFormatter.date(from: "2017-11-03T14:45:00-08:00")!,
                 duration: 30,
                 title: "Break ☕️☕️",
                 speaker: [],
                 track: nil),

            Talk(datestamp: dateFormatter.date(from: "2017-11-03T15:15:00-08:00")!,
                 duration: 45,
                 title: "Deep dive into coroutines on JVM",
                 speaker: ["Roman Elizarov"],
                 track: Tracks.room1),

            Talk(datestamp: dateFormatter.date(from: "2017-11-03T15:15:00-08:00")!,
                 duration: 45,
                 title: "Going Serverless with Kotlin",
                 speaker: ["Marcos Placona"],
                 track: Tracks.room2),

            Talk(datestamp: dateFormatter.date(from: "2017-11-03T15:15:00-08:00")!,
                 duration: 45,
                 title: "Kotlinbots: Building your own personal robot army",
                 speaker: ["Adrian Catalan"],
                 track: Tracks.room3),
            
            Talk(datestamp: dateFormatter.date(from: "2017-11-03T16:00:00-08:00")!,
                 duration: 15,
                 title: "Break ☕️",
                 speaker: [],
                 track: nil),

            Talk(datestamp: dateFormatter.date(from: "2017-11-03T16:15:00-08:00")!,
                 duration: 45,
                 title: "Kotlin types: exposed",
                 speaker: ["Svetlana Isakova"],
                 track: Tracks.room1),

            Talk(datestamp: dateFormatter.date(from: "2017-11-03T16:15:00-08:00")!,
                 duration: 45,
                 title: "Why Spring Loves Kotlin",
                 speaker: ["Sebastien Deleuze"],
                 track: Tracks.room2),

            Talk(datestamp: dateFormatter.date(from: "2017-11-03T16:15:00-08:00")!,
                 duration: 45,
                 title: "Isomorphic Kotlin",
                 speaker: ["Troy Miles"],
                 track: Tracks.room3),
            
            Talk(datestamp: dateFormatter.date(from: "2017-11-03T17:00:00-08:00")!,
                 duration: 15,
                 title: "Break ☕️",
                 speaker: [],
                 track: nil),
            
            Talk(datestamp: dateFormatter.date(from: "2017-11-03T17:15:00-08:00")!,
                 duration: 45,
                 title: "Two stones, one bird: Implementation tradeoffs",
                 speaker: ["Christina Lee"],
                 track: Tracks.room1),

            Talk(datestamp: dateFormatter.date(from: "2017-11-03T17:15:00-08:00")!,
                 duration: 45,
                 title: "Inter-reactive Kotlin applications",
                 speaker: ["Julien Viet"],
                 track: Tracks.room2),

            Talk(datestamp: dateFormatter.date(from: "2017-11-03T17:15:00-08:00")!,
                 duration: 45,
                 title: "Testing Kotlin at scale: Spek",
                 speaker: ["Artem Zinnatullin"],
                 track: Tracks.room3),
            
            Talk(datestamp: dateFormatter.date(from: "2017-11-03T18:05:00-08:00")!,
                 duration: 45,
                 title: "Closing Panel",
                 speaker: ["Stephanie Cuthbertson", "Andrey Breslav", "William Cook", "Romain Guy", "Tor Norbye", "Hans Dockter", "Christina Lee", "Roman Elizarov"],
                 track: Tracks.room1)
        ] }
}


