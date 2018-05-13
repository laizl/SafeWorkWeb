package com.smart.domain.Model_Class;

/**
 * Created by Meng on 2017/3/4.
 */
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.HashMap;
import java.util.Map;

import freemarker.template.Configuration;
import freemarker.template.Template;

public class Resume_Word {

    private static Configuration configuration = null;
    private static Map<String,Template> allTemplate = null;

    static{
        configuration = new Configuration(Configuration.VERSION_2_3_0);
        configuration.setDefaultEncoding("UTF-8");
        configuration.setClassForTemplateLoading(Resume_Word.class, "/com/smart/domain/Model");
        allTemplate = new HashMap<String,Template>();
        try{
            allTemplate.put("resume", configuration.getTemplate("resume.ftl"));
        }catch(IOException e){
            e.printStackTrace();
            throw new RuntimeException(e);
        }
    }

    private Resume_Word(){
    }

    public static File createDoc(Map<?,?> dataMap,String type){
        String name = "temp"+(int)(Math.random()*100000)+".doc";
        File f = new File(name);
        Template t = allTemplate.get(type);
        try{
            //这个地方不能使用FileWriter因为需要指定编码类型否则声场的word文档会因为有无法识别的编码而无法打开
            Writer w = new OutputStreamWriter(new FileOutputStream(f),"utf-8");
            t.process(dataMap,w);
            w.close();
        }catch(Exception e){
            e.printStackTrace();
            throw new RuntimeException(e);
        }
        return f;
    }
}