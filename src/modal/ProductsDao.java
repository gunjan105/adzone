package modal;


import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

import pojo.Products;
import pojo.PublicityDetails;

public class ProductsDao {
	SessionFactory sf = HiberUtil.Util.getSessionfactory();
	 Session s = sf.openSession();
	 Transaction tr = s.beginTransaction();
	 
	 public void save(Products p) {
			
		 s.save(p);
		tr.commit();
	}
	 public List<Products> getAll(){
			Criteria cr = s.createCriteria(Products.class);
			
			@SuppressWarnings("unchecked")
			List<Products> productList = cr.list();
			return productList;
		}
	 public Products getById(int productId){
		 Criteria cr = s.createCriteria(Products.class);
		 cr.add(Restrictions.eq("productId", productId));
		 Products product = (Products)cr.uniqueResult();
		 return product;
	 }
	
}
