import Kitura
let port: Int = 8080

let router = Router();

router.get("/") {
    request, response, next in
    response.send("Hello, World!")
    next()
}

Kitura.addHTTPServer(onPort: port, with: router)
Kitura.run()

