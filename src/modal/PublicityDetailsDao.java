package modal;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;


import pojo.PublicityDetails;

public class PublicityDetailsDao {
	SessionFactory sf = HiberUtil.Util.getSessionfactory();
	 Session s = sf.openSession();
	 Transaction tr = s.beginTransaction();
	 
	 public void save(PublicityDetails pd) {
			
		 s.save(pd);
		tr.commit();
	}

	public boolean check(String username, String password) {
		Criteria cr = s.createCriteria(PublicityDetails.class);
		cr.add(Restrictions.eq("publicityEmail", username)).add(Restrictions.eq("password", password));
		PublicityDetails pd =  (PublicityDetails) cr.uniqueResult();
		if(pd!=null){
			System.out.println("True");
			return true;
		}
		else{
			System.out.println("False");
			return false;
		}
	}
	public PublicityDetails getById(int id){
		Criteria cr = s.createCriteria(PublicityDetails.class);
		cr.add(Restrictions.eq("publicityId", id));
		PublicityDetails pd = (PublicityDetails) cr.uniqueResult();
		return pd;
	}
}
