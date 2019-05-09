/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

/**
 *
 * @author user
 */
public class LoginDAO {
    
    public boolean check(Login l ){
        
        SignUp s = null;
        Configuration cf = null;
        SessionFactory sf = null;
        Session session = null;
        
        try{
            
            cf = new Configuration();
            cf.configure("cfgpackage/hibernate.cfg.xml");
            sf = cf.buildSessionFactory();
            session = sf.openSession();
            
            Transaction tx = session.beginTransaction();
            
            s = (SignUp)session.get(SignUp.class, l.getUid());
            
            tx.commit();
        }
        catch(Exception e ){
            e.printStackTrace();
        }
        finally{
            session.close();
            sf.close();
        }
        if( s == null )
            return false;
        else
            return l.equals(s);
    }
    
}
