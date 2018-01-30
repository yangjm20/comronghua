package com.yanghua.gongxiang.services;
//新加代码

import com.yanghua.gongxiang.bean.RoleUsers;
import com.yanghua.gongxiang.dao.RoleUsersMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RoleService {

    @Autowired
//    private RolesMapper rolesMapper;
    private RoleUsersMapper roleUsersMapper;
//    public Users findUserByUsername(String username){
//        return usersMapper.FindUserByUsername(username);
//    }

    public RoleUsers findRolesFuncsByUserId(Integer userId){
        return roleUsersMapper.findRolesFuncsByUserId(userId);
        }
//public String findRolesFuncsByUserId(Integer userId){
//    return roleUsersMapper.findRolesFuncsByUserId(userId);
//}
    }


