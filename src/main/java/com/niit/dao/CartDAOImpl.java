package com.niit.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.models.Cart;






@SuppressWarnings("deprecation")
@Repository("cartDAO")
public class CartDAOImpl implements CartDAO {
	
	@Autowired
	private SessionFactory sessionFactory;


	public CartDAOImpl(SessionFactory sessionFactory) 
	{
		this.sessionFactory = sessionFactory;
	}
	
	
	@SuppressWarnings("unchecked")
	@Transactional
	public List<Cart> list() {
	List<Cart> listCategory = (List<Cart>)sessionFactory.getCurrentSession()
					.createCriteria(Cart.class)
					.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();

			return listCategory;
		}


	
	@SuppressWarnings("unchecked")
	@Transactional
	public List<Cart> get(int userId) {
		String hql = "from"+" Cart"+" where userId="+userId+"and status='C'";
		@SuppressWarnings("rawtypes")
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		List<Cart> list = (List<Cart>)query.list();
		return list;
	}

    @Transactional
	public void saveOrUpdate(Cart cart) {
		sessionFactory.getCurrentSession().saveOrUpdate(cart);
		
	}


	public void delete(int userId) {
		// TODO Auto-generated method stub
		
	}


	public int CartPrice(int userid) {
		// TODO Auto-generated method stub
		return 0;
	}


	
}
