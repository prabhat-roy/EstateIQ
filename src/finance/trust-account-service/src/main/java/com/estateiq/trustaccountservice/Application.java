package com.estateiq.trustaccountservice;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Map;

/**
 * trust-account-service.
 *
 * <p>CLAUDE.md rule #6 — trust account ledger entries are append-only. Never UPDATE/DELETE.
 * Tenant deposits and client funds are managed in segregated accounts with a full audit
 * trail (RICS, REIA, UAE). Deploy strategy: blue-green only (no canary).
 */
@SpringBootApplication
@RestController
public class Application {
    public static void main(String[] args) { SpringApplication.run(Application.class, args); }

    @GetMapping("/healthz")
    public Map<String, String> health() {
        return Map.of("status", "ok", "service", "trust-account-service");
    }
}
