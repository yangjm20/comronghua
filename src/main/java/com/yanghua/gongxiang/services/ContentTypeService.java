package com.yanghua.gongxiang.services;

import com.yanghua.gongxiang.bean.ContentType;
import com.yanghua.gongxiang.dao.ContentTypeMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ContentTypeService {
    @Autowired
    private ContentTypeMapper contentTypeMapper;

    public String getFuncName(Integer funcId) {
        return contentTypeMapper.selectByPrimaryKey(funcId).getTpName();
    }

    public List<ContentType> getAll() {
        List<ContentType> contentTypes = contentTypeMapper.selectByExample(null);
        return contentTypes;
    }
}
