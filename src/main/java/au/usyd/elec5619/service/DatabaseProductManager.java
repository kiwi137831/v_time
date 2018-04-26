package au.usyd.elec5619.service;

import java.util.List;


import org.hibernate.SessionFactory;
import org.hibernate.classic.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import au.usyd.elec5619.domain.Product;
@Service(value="productManager")
@Transactional
public class DatabaseProductManager implements ProductManager {
	private SessionFactory sessionFactory;
	@Autowired
	public void setSessionFactory(SessionFactory sf){
		this.sessionFactory=sf;
	}
	
	public void increasePrice(int percentage) {
		// TODO Auto-generated method stub
		Session currentSession=this.sessionFactory.getCurrentSession();
		List<Product> products=currentSession.createQuery("FROM Product").list();
		if(products !=null){
			for(Product product : products){
				double newPrice=product.getPrice()*(100+percentage)/100;
				product.setPrice(newPrice);
				currentSession.save(product);
			}
		}
	}

	
	public List<Product> getProducts() {
		// TODO Auto-generated method stub
		
		return this.sessionFactory.getCurrentSession().createQuery("FROM Product").list();
	}

	
	public void addProduct(Product product) {
		// TODO Auto-generated method stub
		this.sessionFactory.getCurrentSession().save(product);
	}

	
	public Product getProductById(long id) {
		// TODO Auto-generated method stub
		Session currentSession=this.sessionFactory.getCurrentSession();
		Product product =(Product) currentSession.get(Product.class, id);
		return product;
	}

	
	public void updateProduct(Product product) {
		// TODO Auto-generated method stub
		Session currentSession=this.sessionFactory.getCurrentSession();
		currentSession.merge(product);
	}

	
	public void deleteProduct(long id) {
		// TODO Auto-generated method stub
		Session currentSession=this.sessionFactory.getCurrentSession();
		Product product =(Product) currentSession.get(Product.class, id);
		currentSession.delete(product);
	}
		
}
