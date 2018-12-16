package com.company.AutoServiceDemo.Controllers.Rest;

import com.company.AutoServiceDemo.Domain.Part;
import com.company.AutoServiceDemo.Services.PartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping(value = "/admin/api")
public class PartsRestController {

    @Autowired
    PartService partService;

    @GetMapping(value = "/parts")
    public List<Part> findAllParts(){
        return partService.getAllParts();
    }
}