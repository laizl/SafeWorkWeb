package com.smart.dao;

import com.smart.domain.Item.OperateLog;
import com.smart.domain.User.Userinfo;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.hibernate.criterion.RowCountProjection;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Meng on 2017/3/22.
 */
@Repository
public class LogDao {
    @Autowired
    SessionFactory sessionFactory;
    //存储操作日志
    public void saveOperate (OperateLog operateLog){
        Session session = sessionFactory.openSession();
        Transaction tx = session.beginTransaction();
        session.save(operateLog);
        tx.commit();
        session.close();
    }
    //查询日志
    public List<OperateLog> queryOperateLog(){
        Criteria criteria= sessionFactory.getCurrentSession().createCriteria(Userinfo.class);
        List<OperateLog> list =  criteria.list();
        return list;
    }
    //通过日期查询日志
    public List<OperateLog> queryOperateLogByDate(String date){
        Criteria criteria= sessionFactory.getCurrentSession().createCriteria(Userinfo.class);
        List<OperateLog> list =  criteria.add(Restrictions.eq("startDate", date)).list();
        return list;
    }
    public int LogtotalNumber(){
        Criteria criteria= sessionFactory.getCurrentSession().createCriteria(OperateLog.class);
        int totalNum = ((Long)criteria.setProjection(Projections.rowCount()).uniqueResult()).intValue();
        criteria.setProjection(null);
        return totalNum;
    }
}
