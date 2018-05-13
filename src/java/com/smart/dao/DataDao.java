package com.smart.dao;

import com.smart.domain.Data.Qz;
import com.smart.domain.Data.Qz_9130_DYS_60;
import org.hibernate.*;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowCallbackHandler;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Meng on 2017/3/31.
 */
@Repository
public class DataDao {
    @Autowired
    private SessionFactory sessionFactory;
    @Autowired
    private JdbcTemplate jdbcTemplate;
    //通过日期获得某一天的观测值
    public Qz_9130_DYS_60 getDataByDate(String date){
        Session session = sessionFactory.getCurrentSession();
        Criteria criteria = session.createCriteria(Qz_9130_DYS_60.class);
        Qz_9130_DYS_60 qz_9130_dys_60 =(Qz_9130_DYS_60) criteria.add(Restrictions.eq("STARTDATE", date)).uniqueResult();
        return qz_9130_dys_60;
    }
    public Qz getDataByDate(String date , String tablename , String insid){
        String sql = "select * from "+ tablename +"  where STARTDATE = ? and InstrCode = ?";
        final Qz qz=new Qz();
        jdbcTemplate.query(sql,new Object[]{date,insid},new RowCallbackHandler() {
            public void processRow(ResultSet rs) throws SQLException {
                qz.setInstrCode(rs.getString("InstrCode"));
                qz.setDate_Index(rs.getInt("Date_Index"));
                qz.setProcessingFlag(rs.getInt("ProcessingFlag"));
                qz.setItemCode(rs.getString("ItemCode"));
                qz.setObsvalue(rs.getString("Obsvalue"));
                qz.setSampleRate(rs.getString("SampleRate"));
                qz.setSTARTDATE(rs.getString("STARTDATE"));
                qz.setStationCode(rs.getString("StationCode"));
            }
        });
        return qz;
    }
}
