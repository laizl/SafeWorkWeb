package com.smart.dao;

import com.smart.domain.Item.OperateLog;
import com.smart.domain.Model_Class.Page;
import com.smart.domain.User.LoginUser;
import com.smart.domain.User.Userinfo;
import org.hibernate.*;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Meng on 2017/1/7.
 */
@Repository
public class UserDao {
    @Autowired
    SessionFactory sessionFactory;
    //获取所有的用户
    public List<Userinfo> getAllUser(){
        List<Userinfo> userinfoList = new ArrayList<Userinfo>();
        Criteria criteria= sessionFactory.getCurrentSession().createCriteria(Userinfo.class);
        userinfoList = criteria.list();
        return userinfoList;
    }
    //获取前七个用户，用于分页
    public List<Userinfo> queryPageUser(Page page){
        Criteria criteria= sessionFactory.getCurrentSession().createCriteria(Userinfo.class);
        criteria.setFirstResult(page.getStart());
        criteria.setMaxResults(page.getEnd());
        List<Userinfo> userinfoList = criteria.list();
        return userinfoList;
    }

    //查询用户总数
    public int TotalUserNum(){
        Criteria criteria= sessionFactory.getCurrentSession().createCriteria(Userinfo.class);
        int totalNum = ((Long)criteria.setProjection(Projections.rowCount()).uniqueResult()).intValue();
        criteria.setProjection(null);
        return totalNum;
    }
    //删除用户
    public void deleteUser(Userinfo userinfo){
        Session session = sessionFactory.openSession();
        Transaction tx = session.beginTransaction();
        session.delete(userinfo);
        //提交事务
        tx.commit();
        //关闭Session
        session.close();
    }

    //保存用户
    public void save(Userinfo userinfo){
        Session session = sessionFactory.openSession();
        Transaction tx = session.beginTransaction();
        session.save(userinfo);
        //提交事务
        tx.commit();
       //关闭Session
        session.close();
    }

    //通过用户名用户信息
    public Userinfo queryUserByName(String name){
        Criteria criteria= sessionFactory.getCurrentSession().createCriteria(Userinfo.class);
        Userinfo userinfo =(Userinfo)criteria.add(Restrictions.eq("USERNAME", name) ).uniqueResult();
        return userinfo;
    }
    //通过用户名用户信息
    public Userinfo queryUserByName(LoginUser loginUser){
        Criteria criteria= sessionFactory.getCurrentSession().createCriteria(Userinfo.class);
        Userinfo userinfo =(Userinfo)criteria.add(Restrictions.eq("USERNAME", loginUser.getUsername())).add(Restrictions.eq("PASSWORD",loginUser.getPassword())).uniqueResult();
        return userinfo;
    }
    //获取前七个日志，用于分页
    public List<OperateLog> queryPageOperateLog(Page page){
        Criteria criteria= sessionFactory.getCurrentSession().createCriteria(OperateLog.class);
        criteria.setFirstResult(page.getStart());
        criteria.setMaxResults(page.getEnd());
        List<OperateLog> operateLogs = criteria.list();
        return operateLogs;
    }
}
