package dao;

import java.util.List;
import java.util.Set;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.Query;
import org.hibernate.criterion.Example;

import pojo.Effect;

/**
 * A data access object (DAO) providing persistence and search support for
 * Effect entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 * 
 * @see pojo.Effect
 * @author MyEclipse Persistence Tools
 */

public class EffectDAO extends BaseHibernateDAO {
	private static final Log log = LogFactory.getLog(EffectDAO.class);
	// property constants
	public static final String POINTS = "points";
	public static final String ICON = "icon";
	public static final String TITLE = "title";
	public static final String MESSAGE = "message";

	public void save(Effect transientInstance) {
		log.debug("saving Effect instance");
		try {
			getSession().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Effect persistentInstance) {
		log.debug("deleting Effect instance");
		try {
			getSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Effect findById(java.lang.Integer id) {
		log.debug("getting Effect instance with id: " + id);
		try {
			Effect instance = (Effect) getSession().get("pojo.Effect", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(Effect instance) {
		log.debug("finding Effect instance by example");
		try {
			List results = getSession().createCriteria("pojo.Effect").add(
					Example.create(instance)).list();
			log.debug("find by example successful, result size: "
					+ results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}

	public List findByProperty(String propertyName, Object value) {
		log.debug("finding Effect instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from Effect as model where model."
					+ propertyName + "= ?";
			Query queryObject = getSession().createQuery(queryString);
			queryObject.setParameter(0, value);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByPoints(Object points) {
		return findByProperty(POINTS, points);
	}

	public List findByIcon(Object icon) {
		return findByProperty(ICON, icon);
	}

	public List findByTitle(Object title) {
		return findByProperty(TITLE, title);
	}

	public List findByMessage(Object message) {
		return findByProperty(MESSAGE, message);
	}

	public List findAll() {
		log.debug("finding all Effect instances");
		try {
			String queryString = "from Effect";
			Query queryObject = getSession().createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public Effect merge(Effect detachedInstance) {
		log.debug("merging Effect instance");
		try {
			Effect result = (Effect) getSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Effect instance) {
		log.debug("attaching dirty Effect instance");
		try {
			getSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Effect instance) {
		log.debug("attaching clean Effect instance");
		try {
			getSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}
}