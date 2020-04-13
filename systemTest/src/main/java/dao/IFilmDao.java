package dao;

import model.Film;

import java.util.List;

public interface IFilmDao {
    public List<Film> selectAllFilmById(String idNum);
    public List<Film> selectAllFilmByName(String nameString);
}
