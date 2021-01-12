package com.example.demo.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
 
import com.example.demo.dto.TestDTO;
import com.example.demo.service.DbService;
 
@Controller
public class TestController {
 
    @Autowired
    DbService dbService;
  
    //게시글 목록
    @RequestMapping("/dbTest")
    public ModelAndView dbTest() throws Exception {
        
        List<TestDTO> list = new ArrayList<TestDTO>();
        list = dbService.getList();
        
        
        
        return new ModelAndView("dbTest", "tbl_board", list);
    }
    
    //세부사항
    @RequestMapping("/detail/{bno}") 
    private String boardDetail(@PathVariable int bno, Model model) throws Exception{
        
        model.addAttribute("detail", dbService.boardDetailService(bno));
        
        return "detail";
    }
    
    @RequestMapping("/insert") //게시글 작성폼 호출  
    private String boardInsertForm(){
        
        return "insert";
    }
    
    @RequestMapping("/insertProc")
    private String boardInsertProc(HttpServletRequest request) throws Exception{
        
        TestDTO board = new TestDTO();
        
        board.setTitle(request.getParameter("title"));
        System.out.println("title:"+request.getParameter("title"));
        board.setContent(request.getParameter("content"));
        board.setWriter(request.getParameter("writer"));
        
        dbService.boardInsertService(board);
        
        return "redirect:dbTest";
    }
    
    @RequestMapping("/update/{bno}") 
    private String boardUpdateForm(@PathVariable int bno, Model model) throws Exception{
        
        model.addAttribute("detail", dbService.boardDetailService(bno));
        
        return "update";
    }
    
    @RequestMapping("/updateProc")
    private String boardUpdateProc(HttpServletRequest request) throws Exception{
        
    	TestDTO board = new TestDTO();
        board.setTitle(request.getParameter("title"));
        board.setContent(request.getParameter("content"));
        board.setBno(Integer.parseInt(request.getParameter("bno")));
        
        dbService.boardUpdateService(board);
        
        return "redirect:/detail/"+request.getParameter("bno"); 
    }
    
    @RequestMapping("/delete/{bno}")
    private String boardDelete(@PathVariable int bno) throws Exception{
        
    	dbService.boardDeleteService(bno);
        
        return "redirect:/dbTest";
    }
}
 
