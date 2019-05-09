
package model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="routesinfo")
public class Routes {
    @Id
    private int uid;
    private String name;
    private String spoint;
    private String epoint;
    private String busno;
    
    public Routes() {}
    
    public Routes(String name, String spoint, String epoint, int uid, String busno) {
        
        this.name = name;
        this.spoint = spoint;
        this.epoint= epoint;
        this.uid = uid;
        this.busno=busno;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSpoint() {
        return spoint;
    }

    public void setSpoint(String spoint) {
        this.spoint = spoint;
    }

    public String getEpoint() {
        return epoint;
    }

    public void setEpoint(String epoint) {
        this.epoint = epoint;
    }

    public String getBusno() {
        return busno;
    }

    public void setBusno(String busno) {
        this.busno = busno;
    }
    
    
    
}
