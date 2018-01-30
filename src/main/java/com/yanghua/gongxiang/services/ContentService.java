package com.yanghua.gongxiang.services;

import com.yanghua.gongxiang.bean.ContentType;
import com.yanghua.gongxiang.dao.ContentTypeMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ContentService {
    @Autowired
    ContentTypeMapper contentTypeMapper;

    public List<ContentType> getAll(){
        List<ContentType> contentTypes = contentTypeMapper.selectByExample(null);
        return contentTypes;
    }
}
