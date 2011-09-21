package util;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;


public class BaseService {
	
	private static SessionFactory sessionFactory;
	
	static {

		try {

			Configuration configuration = new Configuration();

			sessionFactory = configuration.configure().buildSessionFactory();
		
//	        SchemaExport schemaExport = new SchemaExport(configuration);    
//	        
//	        schemaExport.create(true, true); 
		}

		catch (Exception e) {

			e.printStackTrace();

		}

		finally {

		}

	}

	public static SessionFactory getSessionFactory() 
	{
		return sessionFactory;
	}
}
