package com.italent.main;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.italent.entities.Technology;
import com.italent.utils.DataBaseUtils;

public class DeleteTechnology {

	private static DataBaseUtils dbUtils = null;

	public static void main(String[] args) {
		dbUtils = new DataBaseUtils();

		SessionFactory factory = dbUtils.getSessionFactory();

		try {
			Session session = factory.getCurrentSession();
			session.beginTransaction();
			System.out.println("deleting the Tech");
			Technology technology = session.get(Technology.class, 1);
			session.delete(technology);
			System.out.println("technology deleted successfully");
			session.getTransaction().commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			factory.close();
		}
	}

}
