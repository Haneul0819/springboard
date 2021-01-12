package com.example.demo.service;

import java.util.List;

import javax.annotation.Resource;
 
import org.springframework.stereotype.Service;
 
import com.example.demo.dto.CommentDTO;
import com.example.demo.dao.CommentMapper;
 
@Service("com.example.demo.service.CommentService")
public class CommentService {
 
    @Resource(name="com.example.demo.dao.CommentMapper")
    CommentMapper mCommentMapper;
    
    public List<CommentDTO> commentListService() throws Exception{
        
        return mCommentMapper.commentList();
    }
    
    public int commentInsertService(CommentDTO comment) throws Exception{
        
        return mCommentMapper.commentInsert(comment);
    }
    
    public int commentUpdateService(CommentDTO comment) throws Exception{
        
        return mCommentMapper.commentUpdate(comment);
    }
    
    public int commentDeleteService(int cno) throws Exception{
        
        return mCommentMapper.commentDelete(cno);
    }
}