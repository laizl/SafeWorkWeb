package com.smart.service;

import com.smart.dao.InsDao;
import com.smart.domain.Item.QZ_DICT_INSTRUMENTS;
import com.smart.domain.Model_Class.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Meng on 2017/5/1.
 */
@Service
public class InsService {
    @Autowired
    InsDao insDao;
    //存储仪器
    public boolean saveIns(QZ_DICT_INSTRUMENTS instruments){
        //存储之前必须检测数据库中是否已经存在相同的数据
        if(!insDao.insExit(instruments)){
            insDao.saveIns(instruments);
            return true;
        }else {
            return false;
        }
    }
    //获取页面总记录数返回给前端
    public int InstotalPageNum(){
        Page page = new Page(insDao.TotalInsNum());
        return page.getTotalpage();
    }
    //获取分页用户对象
    public List<QZ_DICT_INSTRUMENTS> getPageIns(int currentpage){
        int totalNum = insDao.TotalInsNum();
        Page page = new Page(totalNum);
        page.setCurrentpage(currentpage);
        List<QZ_DICT_INSTRUMENTS> insList = insDao.queryPageIns(page);
        return insList;
    }
}
