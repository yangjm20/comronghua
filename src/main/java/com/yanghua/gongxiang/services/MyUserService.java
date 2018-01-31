package com.yanghua.gongxiang.services;

//import org.springframework.security.core.userdetails.UserDetails;

import com.yanghua.gongxiang.bean.RoleUsers;
import com.yanghua.gongxiang.bean.Users;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import java.util.Collection;
import java.util.HashSet;
import java.util.Set;

public class MyUserService implements UserDetailsService {
    @Autowired
    private UsersService usersService;
    @Autowired
    private RoleService roleService;
    @Override
    public UserDetails loadUserByUsername(String username)
        throws UsernameNotFoundException {
        Users dbUser=null;
        try{
            dbUser=usersService.findUserByUsername(username);
        }catch(Exception e){
            e.printStackTrace();
        }
        if (dbUser==null){
            throw new UsernameNotFoundException("用户名不存在");

        }
        Collection<GrantedAuthority> grantedAuth = getGrantedAuth(dbUser);
        UserDetails user = new User(dbUser.getUsername(),dbUser.getPasswd(),true,true,true,true,grantedAuth);
        return user;
    }
    private Set<GrantedAuthority> getGrantedAuth(Users users){
        Set<GrantedAuthority> authSet = new HashSet<GrantedAuthority>();
        try{
            RoleUsers roleUsers=roleService.findRolesFuncsByUserId(users.getId());
            authSet.add(new SimpleGrantedAuthority(roleUsers.getFuncs()));
        }catch(Exception e){
            e.printStackTrace();
        }
        return authSet;
}

}
