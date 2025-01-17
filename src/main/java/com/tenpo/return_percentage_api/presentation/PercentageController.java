package com.tenpo.return_percentage_api.presentation;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/v1")
public class PercentageController {

    @GetMapping("/percentage")
    public Double getPercentage() {
        return 100.0;
    }
}
