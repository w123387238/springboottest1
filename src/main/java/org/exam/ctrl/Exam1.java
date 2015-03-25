package org.exam.ctrl;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by Eiusan on 2015/3/24 0024.
 */
@Controller
public class Exam1 {
    @RequestMapping("/test1")
    public ModelAndView test1(@RequestParam(value="name", defaultValue="World") String name) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("index");
        return mav;
    }

}
