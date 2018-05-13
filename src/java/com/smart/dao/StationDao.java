package com.smart.dao;

import com.smart.domain.Item.QZ_dict_stationitems;
import com.smart.domain.Station.QZ_dict_stations;
import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 * Created by Meng on 2017/3/23.
 */
@Repository
public class StationDao {
    @Autowired
    private SessionFactory sessionFactory;
    //从数据库中查询出来
    public QZ_dict_stations queryStation(){
        Criteria criteria = sessionFactory.getCurrentSession().createCriteria(QZ_dict_stations.class);
        QZ_dict_stations qz_dict_stations =(QZ_dict_stations)criteria.uniqueResult();
        return  qz_dict_stations;
    }
}
