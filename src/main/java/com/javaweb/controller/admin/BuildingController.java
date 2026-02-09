package com.javaweb.controller.admin;

import com.javaweb.model.dto.BuildingDTO;
import com.javaweb.model.response.BuildingSearchResponse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@Controller(value="buildingControllerOfAdmin")
public class BuildingController {

    @RequestMapping(value = "/admin/building-list", method = RequestMethod.GET)
    public ModelAndView buildingList(
            @ModelAttribute BuildingSearchResponse buildingSearchResponse,
            HttpServletRequest request) {

        ModelAndView mav = new ModelAndView("admin/building/list");
        mav.addObject("modelSearch",  buildingSearchResponse);

        // Xuống DB - Lấy data OK rồi (mock data)
        List<BuildingSearchResponse> responseList = new ArrayList<>();

        BuildingSearchResponse item1 = new BuildingSearchResponse();
        item1.setId(3L);
        item1.setName("ACM Building");
        item1.setAddress("130 Quang Trung, Phạm Ngũ Lão, Quận 1");
        item1.setNumberOfBasement(2L);
        item1.setManagerName("Anh Long");
        item1.setManagerPhone("0900000001");

        BuildingSearchResponse item2 = new BuildingSearchResponse();
        item2.setId(3L);
        item2.setName("Building MA");
        item2.setAddress("Nguyễn Huệ, Tân Mai, Quận 3");
        item2.setNumberOfBasement(3L);
        item2.setManagerName("Anh Hải");
        item2.setManagerPhone("0900000002");

        responseList.add(item1);
        responseList.add(item2);

        mav.addObject("buildingList", responseList);

        return mav;
    }


    @RequestMapping(value = "/admin/building-edit", method = RequestMethod.GET)
    public ModelAndView buildingEdit(
            @ModelAttribute("buildingEdit") BuildingDTO buildingDTO,
            HttpServletRequest request) {

        ModelAndView mav = new ModelAndView("admin/building/edit");
        return mav;
    }

    @RequestMapping(value = "/admin/building-edit-{id}", method = RequestMethod.GET)
    public ModelAndView buildingEdit(@PathVariable("id") Long id, HttpServletRequest request) {
        ModelAndView mav = new ModelAndView("admin/building/edit");
        // Xuong DB tim Building theo Id
        BuildingDTO buildingDTO = new BuildingDTO();
        mav.addObject("buildingEdit", buildingDTO);
        return mav;
    }
}
