package toy.project.ecommerce.catalogservice.adapter.in.web;

import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/catalog-service")
@RequiredArgsConstructor
class CreateCatalogsController {

    @PostMapping("/catalogs/")
    ResponseEntity<String> createCatalogs() {
        return ResponseEntity.ok("createCatalogs");
    }
}
