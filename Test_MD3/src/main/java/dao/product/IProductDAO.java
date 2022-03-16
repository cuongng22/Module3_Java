package dao.product;

import dao.IGeneralDAO;
import model.Product;

import java.util.List;

public interface IProductDAO extends IGeneralDAO<Product> {
    List<Product> findByName();
}
