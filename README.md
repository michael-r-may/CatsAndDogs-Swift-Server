# Cats And Dogs Talk: Swift Server

A bare bones Swift Web Service using Currasow for the Cats And Dogs Talk. Note that this component is not intended to be used directly, but instead, you connect to the [Backend For Frontend](https://github.com/RomainPiel/CatsAndDogs-kotlin-bff) instead.

# Deploy Locally for Testing
```swift build && .build/debug/CatsAndDogs-Swift-Server```
Access at 
* http://localhost:8090/schedule (deprecated)
* http://localhost:8090/mce4/schedule
* http://localhost:8090/kotlinconf/schedule

# Deploy Remotely on Heroku for Testing
```git push heroku master```
Access at url displayed after push, which will look like
* https://catsanddogs-swift-server.herokuapp.com/ 

## Other Components
* https://github.com/RomainPiel/CatsAndDogs-kotlin-bff
* https://github.com/michael-r-may/CatsAndDogs-Swift-Server
* https://github.com/RomainPiel/CatsAndDogs-kotlin-server
* https://github.com/michael-r-may/CatsAndDogsiOS
* https://github.com/RomainPiel/CatsAndDogs-Android

## Useful Links
* http://kotlinlang.org
* http://swift.org
* http://samnewman.io/patterns/architectural/bff/
