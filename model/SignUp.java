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
public class SignUp {
    
    @Id
    private int uid;
    private String fname;
    private String lname;
    private String pwd;
    private String DOB;
    private String ph;
    private String acc;
//    private String add;

    public SignUp() {
    }

    public SignUp(String fname, String lname, String pwd, String DOB, String ph, int uid, String acc) {
        
        this.fname = fname;
        this.lname = lname;
        this.pwd = pwd;
        this.DOB= DOB;
        this.ph = ph;
        this.uid = uid;
        this.acc = acc;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public String getLname() {
        return lname;
    }

    public void setLname(String lname) {
        this.lname = lname;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public String getDOB() {
        return DOB;
    }

    public void setDOB(String DOB) {
        this.DOB = DOB;
    }

    public String getPh() {
        return ph;
    }

    public void setPh(String ph) {
        this.ph = ph;
    }

    public String getAcc() {
        return acc;
    }

    public void setAcc(String acc) {
        this.acc = acc;
    }

  

   
    
}
