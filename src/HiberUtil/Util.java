package HiberUtil;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class Util {
	
	public static final SessionFactory SESSION_FACTORY;
	static
	{
		try
		{
			SESSION_FACTORY=new Configuration().configure().buildSessionFactory();
		}
		catch (Throwable ex) {
			System.err.println("sesstion fectory creatial faild.." +ex);           
			throw new ExceptionInInitializerError();                                    
		}
	}
	public static SessionFactory getSessionfactory()
	{
		return SESSION_FACTORY;
	}

}
