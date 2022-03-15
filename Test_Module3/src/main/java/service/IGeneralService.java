package service;

import java.util.List;

public interface IGeneralService<T> {
    List<T> findAll();

    T findById(int id);

    boolean create(T t);

    boolean updateById(int id, T t );

}
