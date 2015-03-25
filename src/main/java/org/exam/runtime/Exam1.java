package org.exam.runtime;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import java.io.IOException;
import java.util.Map;

/**
 * Created by Eiusan on 2015/3/25 0024.
 */
@Controller
public class Exam1 {
    @RequestMapping("/test1")
    public String test1(@RequestParam(value="name", defaultValue="World") String name) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("index");
        return "index";
    }
    @RequestMapping("/drawContent")
    public String drawContent(Map<String, Object> model,@RequestParam String searchMe) {
        boolean hasSerachParam = false;
        if (searchMe.equals("search?q=")){
            searchMe = "";
        }else if (searchMe.indexOf("search?") == 0){
            hasSerachParam = true;
        }
        try {
            Document doc = Jsoup.connect("http://www.reddit.com/" + searchMe).timeout(0).get();
            Element contentEle = doc.getElementById("siteTable");
//            Elements pageEle = doc.select("#mp-itn b a");
            Elements aEles = contentEle.select("span.nextprev a");
//            for(Element spanEle : spanEles) {
//                Elements aEles = spanEle.children();

                for(Element aEle : aEles) {
                    StringBuilder hrefStr = new StringBuilder(aEle.attr("href"));
                    hrefStr.delete(0, hrefStr.indexOf("?"));
                    String hrefStrPrev="javascript:drawContent('";
                    hrefStrPrev += hasSerachParam ? "search":"";
                    hrefStr.insert(0,hrefStrPrev).append("')");
                    aEle.attr("href",hrefStr.toString());
                }
//            }
            model.put("content",contentEle.html());

            return "content";
        } catch (IOException e) {
            e.printStackTrace();
            return "500";
        }


    }
}
