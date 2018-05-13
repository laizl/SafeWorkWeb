package com.smart.domain.Model_Class;

import javax.persistence.Entity;

/**
 * Created by Meng on 2017/3/18.
 */
//用于分页的实体类
public class Page {
    private int totalNum;     //总记录数
    private int totalpage;    //总页数
    private int start;       //起始查询位置
    private int end;         //最终查询位置
    private int pagenum = 6;     //单页面数据个数
    private int currentpage; //当前页面

    public Page(int TotalNum) {      //构造函数
        totalNum = TotalNum;
        if(totalNum <= pagenum){   //总数小于单页面数
            totalpage = 1;
        }else if(totalNum % pagenum == 0){
            totalpage = totalNum / pagenum;
        }else{
            totalpage = totalNum / pagenum + 1;
        }
    }
    public void setCurrentpage(int currentpage) {
        this.currentpage = currentpage;
    }

    public int getTotalpage() {
        return totalpage;
    }

    public int getStart() {
        this.start = (currentpage-1) * pagenum;
        return this.start;
    }

    public int getEnd() {
        if(currentpage < totalpage){   //当前页码小于等于总页码
            end =  pagenum;
        }else{
            end =  totalNum - start;
        }
        return end;
    }
}
