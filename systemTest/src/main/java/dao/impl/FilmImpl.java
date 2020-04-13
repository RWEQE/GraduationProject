package dao.impl;

import dao.DataBaseDao;
import dao.IFilmDao;
import model.Film;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class FilmImpl extends DataBaseDao implements IFilmDao {

    public List<Film> selectAllFilmById(String idNum){
        String sql_id = "select * " +
                "from Testt " +
                "where `id` = " + idNum +
                " order by `id` ASC";
        ArrayList<Film> arrayListById = new ArrayList<Film>();
        Film f = null;

        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet rs = null;

        try {
            connection = getConnect();
            preparedStatement = connection.prepareStatement(sql_id);
            rs  = preparedStatement.executeQuery();

            while (rs.next()){
                f = new Film(rs.getString(1),rs.getString(2),
                        rs.getString(3),rs.getInt(4),rs.getString(5));
                arrayListById.add(f);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return arrayListById;
    }

    public List<Film> selectAllFilmByName(String nameString){
        String sql_name = "select * " +
                "from Testt " +
                "where `name` REGEXP \'" + nameString +"\' " +
                "order by `id` ASC";
        ArrayList<Film> arrayListByName = new ArrayList<Film>();
        Film f = null;

        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet rs = null;

        try {
            connection = getConnect();
            preparedStatement = connection.prepareStatement(sql_name);
            rs  = preparedStatement.executeQuery();

            while (rs.next()){
                f = new Film(rs.getString(1),rs.getString(2),
                        rs.getString(3),rs.getInt(4),rs.getString(5));
                arrayListByName.add(f);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return arrayListByName;
    }

}
