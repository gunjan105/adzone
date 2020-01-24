package modal;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

import pojo.CustomerInfo;

public class CustomerInfoDao {

	SessionFactory sf = HiberUtil.Util.getSessionfactory();
	 Session s = sf.openSession();
	 Transaction tr = s.beginTransaction();
	 public void save(CustomerInfo cid) {
			
		 s.save(cid);
		tr.commit();
	}

	public boolean check(String username, String password) {
		Criteria cr = s.createCriteria(CustomerInfo.class);
		cr.add(Restrictions.eq("customerEmail", username)).add(Restrictions.eq("password", password));
		CustomerInfo ci =  (CustomerInfo) cr.uniqueResult();
		if(ci!=null){
			System.out.println("True");
			return true;
		}
		else{
			System.out.println("False");
			return false;
		}
	}
}
