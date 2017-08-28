#if os(Linux)
    import Glibc
#endif

import Foundation

import Inquiline

import Curassow

serve { request in
    switch request.path {
    case "/schedule":   // for backwards compatibility
        return Response(.ok, contentType: "application/json", content: MCE4().toJSON())

    case "/mce4/schedule":
        return Response(.ok, contentType: "application/json", content: MCE4().toJSON())
        
    case "/kotlinconf/schedule":
        return Response(.ok, contentType: "application/json", content: KotlinConf().toJSON())
        
    default:
        return Response(.ok, contentType: "text/plain", content: "Cats And Dogs - Swift - Server Says Hello\n")
    }
}
