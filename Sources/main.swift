#if os(Linux)
import Glibc
#endif

import Foundation

import Inquiline

import Curassow

serve { request in
  switch request.path {
    case "/schedule":
      return Response(.ok, contentType: "application/json", content: MCE4().toJSON())

    default:
      return Response(.ok, contentType: "text/plain", content: "Cats And Dogs - Swift - Server Says Hello\n")
  }
}
