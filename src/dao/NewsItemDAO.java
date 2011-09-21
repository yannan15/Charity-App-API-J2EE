package dao;

import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.Query;
import org.hibernate.criterion.Example;

import pojo.NewsItem;

/**
 * A data access object (DAO) providing persistence and search support for
 * NewsItem entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 * 
 * @see pojo.NewsItem
 * @author MyEclipse Persistence Tools
 */

public class NewsItemDAO extends BaseHibernateDAO {
	private static final Log log = LogFactory.getLog(NewsItemDAO.class);
	// property constants
	public static final String CAPTION = "caption";
	public static final String EXTENDED_URL = "extendedUrl";
	public static final String TIMESTAMP = "timestamp";

	public void save(NewsItem transientInstance) {
		log.debug("saving NewsItem instance");
		try {
			getSession().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(NewsItem persistentInstance) {
		log.debug("deleting NewsItem instance");
		try {
			getSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public NewsItem findById(java.lang.Integer id) {
		log.debug("getting NewsItem instance with id: " + id);
		try {
			NewsItem instance = (NewsItem) getSession()
					.get("pojo.NewsItem", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(NewsItem instance) {
		log.debug("finding NewsItem instance by example");
		try {
			List results = getSession().createCriteria("pojo.NewsItem").add(
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
		log.debug("finding NewsItem instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from NewsItem as model where model."
					+ propertyName + "= ?";
			Query queryObject = getSession().createQuery(queryString);
			queryObject.setParameter(0, value);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByCaption(Object caption) {
		return findByProperty(CAPTION, caption);
	}

	public List findByExtendedUrl(Object extendedUrl) {
		return findByProperty(EXTENDED_URL, extendedUrl);
	}

	public List findByTimestamp(Object timestamp) {
		return findByProperty(TIMESTAMP, timestamp);
	}

	public List findAll() {
		log.debug("finding all NewsItem instances");
		try {
			String queryString = "from NewsItem";
			Query queryObject = getSession().createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public NewsItem merge(NewsItem detachedInstance) {
		log.debug("merging NewsItem instance");
		try {
			NewsItem result = (NewsItem) getSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(NewsItem instance) {
		log.debug("attaching dirty NewsItem instance");
		try {
			getSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(NewsItem instance) {
		log.debug("attaching clean NewsItem instance");
		try {
			getSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}
}