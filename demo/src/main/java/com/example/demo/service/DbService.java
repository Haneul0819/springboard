package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dao.DbMapper;
import com.example.demo.dto.TestDTO;
 
@Service("com.example.demo.service.DbService")
public class DbService {
    
    @Autowired
    DbMapper dbmapper;
    
    public List<TestDTO> getList() throws Exception{
        
        return dbmapper.getList();
        
    }
     
    public TestDTO boardDetailService(int bno) throws Exception{
        
        return dbmapper.boardDetail(bno);
    }
    
    public int boardInsertService(TestDTO board) throws Exception{
        
        return dbmapper.boardInsert(board);
    }
    
    public int boardUpdateService(TestDTO board) throws Exception{
        
        return dbmapper.boardUpdate(board);
    }
    
    public int boardDeleteService(int bno) throws Exception{
        
        return dbmapper.boardDelete(bno);
    }
}