package com.yanghua.gongxiang.services;
//新加代码

import com.yanghua.gongxiang.bean.RoleUsers;
import com.yanghua.gongxiang.bean.Roles;
import com.yanghua.gongxiang.dao.RoleUsersMapper;
import com.yanghua.gongxiang.dao.RolesMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RoleService {
    @Autowired
    private RolesMapper rolesMapper;

    @Autowired
    private RoleUsersMapper roleUsersMapper;

    public List<Roles> getAll() {
        List<Roles> roles = rolesMapper.selectByExample(null);
        return roles;
    }

    public RoleUsers findRolesFuncsByUserId(Integer userId) {
        return roleUsersMapper.findRolesFuncsByUserId(userId);
    }
}


