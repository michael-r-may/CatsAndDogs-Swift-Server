#if os(Linux)
import Glibc
#endif

// Inquiline provides a "Collection of utilities to aid use of the Nest Web Server Gateway Interface. Provides a RequestType and ResponseType implementation."
import Inquiline

// "Curassow is a Swift Nest HTTP Server. It uses the pre-fork worker model...It exposes a Nest-compatible interface for your application, allowing you to use Curassow with any Nest compatible web frameworks of your choice."
import Curassow

serve { request in
  let scheduleJson = "{\"event\": {\"speakers\": [{\"name\":\"Michael May\",\"company\":\"wrisk\"},{\"name\":\"Romain Piel\",\"company\":\"Deliveroo\"}],\"title\": \"mce^4\"}}"

  switch request.path {
    case "/schedule":
      return Response(.ok, contentType: "application/json", content: scheduleJson)

    default:
      return Response(.ok, contentType: "text/plain", content: "Cats And Dogs - Swift - Server Says Hello\n")
  }
}
