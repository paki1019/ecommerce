package toy.project.ecommerce.catalogservice.adapter.in.web;


import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/catalog-service")
class HealthCheckController {

    @GetMapping("/health-check")
    ResponseEntity<String> healthCheck() {
        return ResponseEntity.ok("OK");
    }
}
