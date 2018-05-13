package com.smart.dao;

import com.smart.domain.Item.QZ_DICT_INSTRUMENTS;
import com.smart.domain.Model_Class.Page;
import com.smart.domain.User.Userinfo;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Meng on 2017/5/1.
 */
@Repository
public class InsDao {
    @Autowired
    SessionFactory sessionFactory;

    //将仪器信息存入数据库
    public void saveIns(QZ_DICT_INSTRUMENTS instruments){
        Session session = sessionFactory.openSession();
        Transaction tx = session.beginTransaction();
        session.save(instruments);
        tx.commit();
        session.close();
    }
    //通过仪器Id判断是否已经存在
    public boolean insExit(QZ_DICT_INSTRUMENTS instruments){
        Criteria criteria= sessionFactory.getCurrentSession().createCriteria(QZ_DICT_INSTRUMENTS.class);
        List<QZ_DICT_INSTRUMENTS> list =  criteria.add(Restrictions.eq("INSTRCODE",instruments.getINSTRCODE())).list();
        //如果数据库中已经存在该实体对象则返回假否则为真
        if(list.size()==0){
            return false;
        }else{
            return true;
        }
    }
    //获取所有的仪器
    public List<QZ_DICT_INSTRUMENTS> getAllIns(){
        List<QZ_DICT_INSTRUMENTS> qzDictInstrumentsList = new ArrayList<QZ_DICT_INSTRUMENTS>();
        Criteria criteria= sessionFactory.getCurrentSession().createCriteria(QZ_DICT_INSTRUMENTS.class);
        qzDictInstrumentsList = criteria.list();
        return qzDictInstrumentsList;
    }
    //获取前七个用户，用于分页
    public List<QZ_DICT_INSTRUMENTS> queryPageIns(Page page){
        Criteria criteria= sessionFactory.getCurrentSession().createCriteria(QZ_DICT_INSTRUMENTS.class);
        criteria.setFirstResult(page.getStart());
        criteria.setMaxResults(page.getEnd());
        List<QZ_DICT_INSTRUMENTS> qz_dict_instrumentses = criteria.list();
        return qz_dict_instrumentses;
    }

    //查询仪器总数
    public int TotalInsNum(){
        Criteria criteria= sessionFactory.getCurrentSession().createCriteria(QZ_DICT_INSTRUMENTS.class);
        int totalNum = ((Long)criteria.setProjection(Projections.rowCount()).uniqueResult()).intValue();
        criteria.setProjection(null);
        return totalNum;
    }
}
