package com.example.demo.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.example.demo.dto.TestDTO;

@Repository("com.example.demo.dao.DbMapper")
public interface DbMapper {
    public List<TestDTO> getList() throws Exception;

  //게시글 개수  
    public int boardCount() throws Exception;
    
    //게시글 상세
    public TestDTO boardDetail(int bno) throws Exception;
    
    //게시글 작성  
    public int boardInsert(TestDTO board) throws Exception;
    
    //게시글 수정  
    public int boardUpdate(TestDTO board) throws Exception;
    
    //게시글 삭제  
    public int boardDelete(int bno) throws Exception;
}
 
