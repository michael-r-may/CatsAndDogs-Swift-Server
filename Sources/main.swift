import Kitura
import Foundation

let router = Router()

router.get("/") { _, response, next in
    response.send("Cats And Dogs - Swift - Server Says Hello\n")
    next()
}

router.get("/schedule") { _, response, next in
    response.send(MCE4().toJSON())
    next()
}

let port = Int(ProcessInfo.processInfo.environment["PORT"] ?? "8090") ?? 8090
Kitura.addHTTPServer(onPort: port, with: router)

Kitura.run()
