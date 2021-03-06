// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.yutax77.controller;

import com.yutax77.controller.BookController;
import com.yutax77.model.Book;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

privileged aspect BookController_Roo_Controller_Finder {
    
    @RequestMapping(params = { "find=ByNameEquals", "form" }, method = RequestMethod.GET)
    public String BookController.findBooksByNameEqualsForm(Model uiModel) {
        return "books/findBooksByNameEquals";
    }
    
    @RequestMapping(params = "find=ByNameEquals", method = RequestMethod.GET)
    public String BookController.findBooksByNameEquals(@RequestParam("name") String name, Model uiModel) {
        uiModel.addAttribute("books", Book.findBooksByNameEquals(name).getResultList());
        return "books/list";
    }
    
}
