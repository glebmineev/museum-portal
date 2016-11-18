package ru.spb.rus.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
class IndexController {

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView index() {

        ModelAndView model = new ModelAndView();
        model.setViewName("index");

        return model;

    }

    @RequestMapping(value = "/hello", method = RequestMethod.GET)
    public ModelAndView hello() {

        ModelAndView model = new ModelAndView();
        model.setViewName("hello");
        //model.addObject("msg", name);

        return model;

    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public ModelAndView login() {

        ModelAndView model = new ModelAndView();
        model.setViewName("login");
        //model.addObject("userJSP", new User("test", "test"));
        //model.addObject("msg", name);

        return model;

    }

}