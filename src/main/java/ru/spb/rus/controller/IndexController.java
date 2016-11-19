package ru.spb.rus.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping
class IndexController {

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView index() {

        ServletRequestAttributes attr = (ServletRequestAttributes) RequestContextHolder.currentRequestAttributes();
        HttpSession session = attr.getRequest().getSession();

        ModelAndView model = new ModelAndView();
        model.setViewName("login");

        return model;

    }

    @RequestMapping(value = "/projects", method = RequestMethod.GET)
    public ModelAndView projects() {

        ModelAndView model = new ModelAndView();
        model.setViewName("projects");
        //model.addObject("msg", name);

        return model;

    }

    @RequestMapping(value = "/dashboard", method = RequestMethod.GET)
    public ModelAndView dashboard() {

        ModelAndView model = new ModelAndView();
        model.setViewName("dashboard");
        //model.addObject("msg", name);

        return model;

    }

    @RequestMapping(value = "login", method = RequestMethod.GET)
    public ModelAndView login() {

        ModelAndView model = new ModelAndView();
        model.setViewName("main");
        //model.addObject("userJSP", new User("test", "test"));
        //model.addObject("msg", name);

        return model;

    }

    @RequestMapping(value = "/checkAuth", method = RequestMethod.POST)
    public ModelAndView checkAuth(
            @RequestParam(value="login", required=false) String login,
            @RequestParam(value="password", required=false) String password) {

        ModelAndView model = new ModelAndView();

        //ServletRequestAttributes attr = (ServletRequestAttributes) RequestContextHolder.currentRequestAttributes();
        //HttpSession session = attr.getRequest().getSession();
        //Boolean isLogging = (Boolean) session.getAttribute("isLogging");
        //if (isLogging) {
        //    model.setViewName("index");
        //} else {
        //    model.setViewName("login");
        //}
        model.setViewName("dashboard");
        return model;

    }

}