package com.jang.addrbook;

import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AddrController {
	
	@RequestMapping("/addrbook_list.do")
	public ModelAndView addrbookList(AddrBook ab, AddrBean abdao, ModelAndView mav) throws Exception{
		mav.addObject("addrBookList",abdao.getDBList());
		mav.setViewName("addrbook_list");  
		return mav; 
	}
	


			@RequestMapping(value="/addrbook_join.do") 
			public String toUserEntryView() throws Exception { 	
				return "addrbook_join";
			}
			
			@RequestMapping(value="/addrbook_login.do",method = RequestMethod.GET) 
			public String addrbookLogin() throws Exception { 	
				return "addrbook_login";
			}
			
			@RequestMapping(value="/addrbook_main.do")
			public ModelAndView addrbookOne(AddrBook ab, AddrBean abdao, ModelAndView mav) throws Exception {
				mav.addObject("addrBookOne", abdao.getDB(ab.getAb_id()));
				mav.setViewName("addrbook_main");
				return mav;
			}
			
			
			
			@RequestMapping(value="/addrbook_find.do") 
			public String findId() throws Exception { 	
				return "addrbook_find";
			}
			
			@RequestMapping(value="/addrbook_history.do") 
			public String historyView() throws Exception { 	
				return "addrbook_history";
			}
			
			@RequestMapping(value = "/addrbook_insert.do", method = RequestMethod.POST) 
			public String dupCheckId(AddrBook ab, AddrBean abdao) throws Exception {						
				abdao.insertDB(ab);
				return "redirect:addrbook_list.do";
			}

			@RequestMapping(value ="/addrbook_update.do")
			public String addrbookUpdate(AddrBook ab, AddrBean abdao) throws Exception{
				abdao.updateDB(ab);
				return "redirect:addrbook_list.do";
			}
			
			@RequestMapping(value="/addrbook_edit_form.do") 
			public ModelAndView addrbookOne1(AddrBook ab, AddrBean abdao, ModelAndView mav) throws Exception {
				mav.addObject("addrBookOne", abdao.getDB(ab.getAb_id()));
				mav.setViewName("addrbook_edit_form");
				return mav;
			}
			
			@RequestMapping(value="/addrbook_delete.do")
			public String addrbookDelete(AddrBook ab, AddrBean abdao) throws Exception{
				abdao.deleteDB(ab.getAb_id());
				return "redirect:addrbook_list.do";
			}
			
			
}
