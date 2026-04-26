package com.estateiq.avmservice

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RestController

@SpringBootApplication
@RestController
class Application {
    @GetMapping("/healthz")
    fun health(): Map<String, String> = mapOf("status" to "ok", "service" to "avm-service")
}

fun main(args: Array<String>) {
    runApplication<Application>(*args)
}
