package com.smart.domain.Model_Class;

import com.smart.domain.User.LoginUser;

import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by Meng on 2017/3/3.
 */
public class LoginListenner implements HttpSessionAttributeListener {
        /**
         * 用于存放账号和session对应关系的map
         */
        private Map<String, HttpSession> map = new HashMap<String, HttpSession>();

        /**
         * 当向session中放入数据触发
         */
        public void attributeAdded(HttpSessionBindingEvent event) {
            String name = event.getName();

            if (name.equals("loginuser")) {
               LoginUser user = (LoginUser) event.getValue();
                if (map.get(user.getUsername()) != null) {
                    HttpSession session = map.get(user.getUsername());
                    session.removeAttribute(user.getUsername());
                    session.invalidate();
                }
                map.put(user.getUsername(), event.getSession());
            }

        }
        /**
         * 当向session中移除数据触发
         */
        public void attributeRemoved(HttpSessionBindingEvent event) {
            String name = event.getName();

            if (name.equals("loginuser")) {
                LoginUser user = (LoginUser) event.getValue();
                map.remove(user.getUsername());
            }
        }

        public void attributeReplaced(HttpSessionBindingEvent event) {

        }

        public Map<String, HttpSession> getMap() {
            return map;
        }

        public void setMap(Map<String, HttpSession> map) {
            this.map = map;
        }
}
