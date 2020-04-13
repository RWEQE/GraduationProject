package model;

public class Film {
    private String id,name,address,email;
    private int tel;

    public Film(String id, String name, String address,int tel, String email) {
        this.id = id;
        this.name = name;
        this.address = address;
        this.email = email;
        this.tel = tel;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getTel() {
        return tel;
    }

    public void setTel(int tel) {
        this.tel = tel;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Film)) return false;
        Film film = (Film) o;
        return getTel() == film.getTel() &&
                getId().equals(film.getId()) &&
                getName().equals(film.getName()) &&
                getAddress().equals(film.getAddress()) &&
                getEmail().equals(film.getEmail());
    }

//    @Override
//    public int hashCode() {
//        return Objects.hash(getId(), getName(), getAddress(), getEmail(), getTel());
//    }


    @Override
    public String toString() {
        return  "<tr><td>" + id +
                "</td><td>" + name +
                "</td><td>" + address +
                "</td><td>" + tel +
                "</td><td>" + email +
                "</td><td>" + "<a href=\"https://www.baidu.com/\">点击详情</a>" +
                "</td></tr>";
    }
}
