package com.niit.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.models.UserDetails;

@SuppressWarnings("deprecation")
@Repository("userDetailsDAO")
public class UserDetailsDAOImpl implements UserDetailsDAO {
	

	@Autowired
	private SessionFactory sessionFactory;


	public UserDetailsDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Transactional
	public List<UserDetails> list() {
		@SuppressWarnings("unchecked")
		List<UserDetails> listUser = (List<UserDetails>) sessionFactory.getCurrentSession()
				.createCriteria(UserDetails.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();

		return listUser;
	}

	@Transactional
	public void saveOrUpdate(UserDetails user) {
		sessionFactory.getCurrentSession().saveOrUpdate(user);
	
	}
	@Transactional
	public void delete(int id) {
		UserDetails UserToDelete = new UserDetails();
		UserToDelete.setId(id);
		sessionFactory.getCurrentSession().delete(UserToDelete);
	}

	@Transactional
	public UserDetails get(int id) {
		String hql = "from"+" User"+" where id=" + "'"+id+"'";
		@SuppressWarnings("rawtypes")
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<UserDetails> listUser = (List<UserDetails>) query.list();
		
		if (listUser != null && !listUser.isEmpty()) {
			return listUser.get(0);
		}
		return null;
		
		
	}

	@Transactional
	public boolean isValidUser(String userName, String password) {
		Criteria c=sessionFactory.getCurrentSession().createCriteria(UserDetails.class);
		c.add(Restrictions.eq("userName",userName));
		c.add(Restrictions.eq("password",password));
		
		List list = c.list();
		if(list==null || list.isEmpty())
		{
			return false;
		}
		else
		{
			return true;
		}
	}


	public void delete(String id) {
		// TODO Auto-generated method stub
		
	}


	

	
}


	

