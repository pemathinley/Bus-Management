/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="signup")
public class Login {
    
    
    @Id
    private int uid ;
    
    private String pwd;
    
    private String acc;
    public Login() {
    }

    public Login(int uid, String pwd , String acc) {
        this.uid = uid;
        this.pwd = pwd;
        this.acc = acc;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public String getAcc() {
        return acc;
    }

    public void setAcc(String acc) {
        this.acc = acc;
    }
    
    @Override
    public boolean equals(Object obj) {
        
        SignUp s = (SignUp)obj;
        
        if (this.uid == s.getUid() && this.pwd.equals(s.getPwd()) && this.acc.equals(s.getAcc())) {
            return true;
        }
        else{
            return false;
        }
    }
    
}
