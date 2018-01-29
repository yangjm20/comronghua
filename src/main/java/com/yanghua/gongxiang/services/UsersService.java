package com.yanghua.gongxiang.services;

import com.yanghua.gongxiang.bean.Users;
import com.yanghua.gongxiang.bean.UsersExample;
import com.yanghua.gongxiang.dao.UsersMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UsersService {
    @Autowired
    UsersMapper usersMapper;

    public List<Users> getUsers(String userName,String password){
        UsersExample usersExample=new UsersExample();
        UsersExample.Criteria criteria=usersExample.createCriteria();
        criteria.andUsernameEqualTo(userName);
        criteria.andPasswdEqualTo(password);
        List<Users> users = usersMapper.selectByExample(usersExample);
        return users;
    }

    public List<Users> getAll(){
        List<Users> users = usersMapper.selectByExample(null);
        return users;
    }

    public void saveUser(Users user) {
        usersMapper.insertSelective(user);
    }

    public boolean checkUser(String username) {
        UsersExample usersExample=new UsersExample();
        UsersExample.Criteria criteria=usersExample.createCriteria();
        criteria.andUsernameEqualTo(username);
        long count = usersMapper.countByExample(usersExample);
        return count==0;
    }

    public Users getUserByKey(Integer id) {
        return usersMapper.selectByPrimaryKey(id);
    }

    public void updateUser(Users user) {
        usersMapper.updateByPrimaryKeySelective(user);
    }

    public void deleteUser(Integer id) {
        usersMapper.deleteByPrimaryKey(id);
    }

    public void deleteBatch(List<Integer> ids) {
        UsersExample usersExample=new UsersExample();
        UsersExample.Criteria criteria=usersExample.createCriteria();
        criteria.andIdIn(ids);
        usersMapper.deleteByExample(usersExample);
    }

}

