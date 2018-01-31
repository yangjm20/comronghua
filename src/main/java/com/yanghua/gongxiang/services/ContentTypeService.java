package com.yanghua.gongxiang.services;

import com.yanghua.gongxiang.dao.ContentTypeMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ContentTypeService {
    @Autowired
    private ContentTypeMapper contentTypeMapper;

    public String getFuncName(Integer funcId) {
        return contentTypeMapper.selectByPrimaryKey(funcId).getTpName();
    }
}
