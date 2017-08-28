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
            Talk(datestamp: dateFormatter.date(from: "2017-11-02T10:00:00-08:00")!,
             duration: 45,
             title: "A View State Machine for Network Calls on Android",
             speaker: ["Amanda Hill"],
             track: nil),
            
            Talk(datestamp: dateFormatter.date(from: "2017-11-02T10:00:00-08:00")!,
                 duration: 45,
                 title: "Asynchronous programming with Kotlin coroutines in Spring",
                 speaker: ["Jorge Castillo"],
                 track: nil),
            
            Talk(datestamp: dateFormatter.date(from: "2017-11-02T10:00:00-08:00")!,
                 duration: 45,
                 title: "Bootiful Kotlin",
                 speaker: ["Josh Long"],
                 track: nil),
            
            Talk(datestamp: dateFormatter.date(from: "2017-11-02T10:00:00-08:00")!,
                 duration: 45,
                 title: "Build and deploying Netflix, with Kotlin",
                 speaker: ["Rob Fletcher", "Danny Thomas"],
                 track: nil),
            
            Talk(datestamp: dateFormatter.date(from: "2017-11-02T10:00:00-08:00")!,
                 duration: 45,
                 title: "Building Kotlin Applications at Scale with Gradle",
                 speaker: ["Hans Dockter"],
                 track: nil),
            
            Talk(datestamp: dateFormatter.date(from: "2017-11-02T10:00:00-08:00")!,
                 duration: 45,
                 title: "Building Languages using Kotlin",
                 speaker: ["Federico Tomassetti"],
                 track: nil),
            
            Talk(datestamp: dateFormatter.date(from: "2017-11-02T10:00:00-08:00")!,
                 duration: 45,
                 title: "Cats And Dogs (lessons learned from working together as an iOS and Android team)",
                 speaker: ["Michael May", "Romain Piel"],
                 track: nil),
            
            Talk(datestamp: dateFormatter.date(from: "2017-11-02T10:00:00-08:00")!,
                 duration: 45,
                 title: "Cords and gumballs",
                 speaker: ["Mike Hearn"],
                 track: nil),
            
            Talk(datestamp: dateFormatter.date(from: "2017-11-02T10:00:00-08:00")!,
                 duration: 45,
                 title: "Deep dive into coroutines on JVM",
                 speaker: ["Roman Elizarov"],
                 track: nil),
            
            Talk(datestamp: dateFormatter.date(from: "2017-11-02T10:00:00-08:00")!,
                 duration: 45,
                 title: "Frontend Kotlin from the trenches",
                 speaker: ["Gaetan Zoritchak"],
                 track: nil),

            Talk(datestamp: dateFormatter.date(from: "2017-11-02T10:00:00-08:00")!,
                 duration: 45,
                 title: "Generating Kotlin Code",
                 speaker: ["Alec Strong", "Jake Wharton"],
                 track: nil),
            
            Talk(datestamp: dateFormatter.date(from: "2017-11-02T10:00:00-08:00")!,
                 duration: 45,
                 title: "Going Serverless with Kotlin",
                 speaker: ["Marcos Placona"],
                 track: nil),
            
            Talk(datestamp: dateFormatter.date(from: "2017-11-02T10:00:00-08:00")!,
                 duration: 45,
                 title: "How to Kontribute",
                 speaker: ["Yoshinori Isogai"],
                 track: nil),

            Talk(datestamp: dateFormatter.date(from: "2017-11-02T10:00:00-08:00")!,
                 duration: 45,
                 title: "How to build a React app in Kotlin",
                 speaker: ["Dave Ford"],
                 track: nil),
        
            Talk(datestamp: dateFormatter.date(from: "2017-11-02T10:00:00-08:00")!,
                 duration: 45,
                 title: "Idiomatic Interop",
                 speaker: ["Kevin Most"],
                 track: nil),
        
            Talk(datestamp: dateFormatter.date(from: "2017-11-02T10:00:00-08:00")!,
                 duration: 45,
                 title: "Inter-reactive Kotlin applications",
                 speaker: ["Julien Viet"],
                 track: nil),
            
            Talk(datestamp: dateFormatter.date(from: "2017-11-02T10:00:00-08:00")!,
                 duration: 45,
                 title: "Introduction to coroutines",
                 speaker: ["Roman Elizarov"],
                 track: nil),
            
            Talk(datestamp: dateFormatter.date(from: "2017-11-02T10:00:00-08:00")!,
                 duration: 45,
                 title: "Isomorphic Kotlin",
                 speaker: ["Troy Miles"],
                 track: nil),
            
            Talk(datestamp: dateFormatter.date(from: "2017-11-02T10:00:00-08:00")!,
                 duration: 45,
                 title: "Kickstarting Kotlin Culture: The Journey from Java to Kotlin",
                 speaker: ["Neil Power"],
                 track: nil),
            
            Talk(datestamp: dateFormatter.date(from: "2017-11-02T10:00:00-08:00")!,
                 duration: 45,
                 title: "Kobalt: The gentle build system",
                 speaker: ["Cedric Beust"],
                 track: nil),
            
            Talk(datestamp: dateFormatter.date(from: "2017-11-02T10:00:00-08:00")!,
                 duration: 45,
                 title: "Kotlin EE: Boost your Productivity",
                 speaker: ["Marcus Fihlon"],
                 track: nil),
            
            Talk(datestamp: dateFormatter.date(from: "2017-11-02T10:00:00-08:00")!,
                 duration: 45,
                 title: "Kotlin Puzzlers",
                 speaker: ["Anton Keks"],
                 track: nil),
            
            Talk(datestamp: dateFormatter.date(from: "2017-11-02T10:00:00-08:00")!,
                 duration: 45,
                 title: "Kotlin Static Analysis with Android Lint",
                 speaker: ["Tor Norbye"],
                 track: nil),
            
            Talk(datestamp: dateFormatter.date(from: "2017-11-02T10:00:00-08:00")!,
                 duration: 45,
                 title: "Kotlin for Data Science",
                 speaker: ["Thomas Nield"],
                 track: nil),
            
            Talk(datestamp: dateFormatter.date(from: "2017-11-02T10:00:00-08:00")!,
                 duration: 45,
                 title: "Kotlin for the pragmatic functionalist",
                 speaker: ["Paco Estévez García"],
                 track: nil),
            
            Talk(datestamp: dateFormatter.date(from: "2017-11-02T10:00:00-08:00")!,
                 duration: 45,
                 title: "Kotlintbots: Building your own personal robot army",
                 speaker: ["Adrian Catalan"],
                 track: nil),

            Talk(datestamp: dateFormatter.date(from: "2017-11-02T10:00:00-08:00")!,
                 duration: 45,
                 title: "My transition from Swift to Kotlin",
                 speaker: ["Hector Matos"],
                 track: nil),
            
            Talk(datestamp: dateFormatter.date(from: "2017-11-02T10:00:00-08:00")!,
                 duration: 45,
                 title: "Real World Kotlin-Powered Android",
                 speaker: ["James Williams"],
                 track: nil),
            
            Talk(datestamp: dateFormatter.date(from: "2017-11-02T10:00:00-08:00")!,
                 duration: 45,
                 title: "RxJava in Baby Steps",
                 speaker: ["Annyce Davis"],
                 track: nil),
            
            Talk(datestamp: dateFormatter.date(from: "2017-11-02T10:00:00-08:00")!,
                 duration: 45,
                 title: "Sharing [Kotlin code across platforms] is caring!",
                 speaker: ["Eugenio Marletti"],
                 track: nil),
            
            Talk(datestamp: dateFormatter.date(from: "2017-11-02T10:00:00-08:00")!,
                 duration: 45,
                 title: "Testing Kotlin at scale: Spek",
                 speaker: ["Artem Zinnatullin"],
                 track: nil),
            
            Talk(datestamp: dateFormatter.date(from: "2017-11-02T10:00:00-08:00")!,
                 duration: 45,
                 title: "The Cost of Kotlin Language Features",
                 speaker: ["Duncan McGregor"],
                 track: nil),
            
            Talk(datestamp: dateFormatter.date(from: "2017-11-02T10:00:00-08:00")!,
                 duration: 45,
                 title: "The Road to Kotlintown",
                 speaker: ["Huyen Tue Dao","Christina Lee"],
                 track: nil),
            
            Talk(datestamp: dateFormatter.date(from: "2017-11-02T10:00:00-08:00")!,
                 duration: 45,
                 title: "Two stones, one bird: Implementation tradeoffs",
                 speaker: ["Christina Lee"],
                 track: nil),
            
            Talk(datestamp: dateFormatter.date(from: "2017-11-02T10:00:00-08:00")!,
                 duration: 45,
                 title: "Under the Surface of Kotlin",
                 speaker: ["Victoria Gonda","Boris Farber"],
                 track: nil),
            
            Talk(datestamp: dateFormatter.date(from: "2017-11-02T10:00:00-08:00")!,
                 duration: 45,
                 title: "What's New and Cool in Kotlin Tools",
                 speaker: ["Dmitry Jemerov"],
                 track: nil),
            
            Talk(datestamp: dateFormatter.date(from: "2017-11-02T10:00:00-08:00")!,
                 duration: 45,
                 title: "Why Spring Loves Kotlin",
                 speaker: ["Sebastien Deleuze"],
                 track: nil),

            Talk(datestamp: dateFormatter.date(from: "2017-11-02T10:00:00-08:00")!,
                 duration: 45,
                 title: "You can, but should you?",
                 speaker: ["Mike Gouline"],
                 track: nil),
            
            Talk(datestamp: dateFormatter.date(from: "2017-11-02T10:00:00-08:00")!,
                 duration: 45,
                 title: "kscript - Scripting enhancements for Kotlin",
                 speaker: ["Holger Brandl"],
                 track: nil)
        ] }
    
    
    
}
