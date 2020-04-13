package test;
import dao.impl.FilmImpl;

import dao.DataBaseDao;
import model.Film;

import java.sql.Array;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

public class Test {
    public static void main(String[] args) {
        FilmImpl test = new FilmImpl();
//        System.out.println(test.selectAllFilm());
        for (Film film : test.selectAllFilmByName("李")){
            System.out.println(film.toString());
        }
    }
}