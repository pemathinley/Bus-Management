package model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="driverinfo")
public class Driverinfo {
    
    @Id
    private int uid;
    private String fname;
    private String lname;
    private String DOB;
    private String ph;
    private String busno;
    
    public Driverinfo() {}
    
    public Driverinfo(String fname, String lname, String DOB, String ph, int uid, String busno) {
        
        this.fname = fname;
        this.lname = lname;
        this.DOB= DOB;
        this.ph = ph;
        this.uid = uid;
        this.busno=busno;
    }

    public Driverinfo(String fname, String lname, String DOB, String ph, String uid, String busno) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
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

    public String getBusno() {
        return busno;
    }

    public void setBusno(String busno) {
        this.busno = busno;
    }
    
}


