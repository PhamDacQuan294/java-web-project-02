package com.javaweb.api.admin;

import com.javaweb.model.dto.BuildingDTO;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController(value = "buildingAPIOfAdmin")
@RequestMapping("/api/building")
public class BuildingAPI {

  @PostMapping
  public BuildingDTO addOrUpdateBuilding(@RequestBody BuildingDTO buildingDTO) {
    // xuong DB de update hoac them moi
    return buildingDTO;
  }

  @DeleteMapping("/{ids}")
  public void deleteBuilding(@PathVariable List<Long> ids) {
    // xuong DB de xoa building theo danh sach id gui ve
    System.out.println("ok");
  }

}
