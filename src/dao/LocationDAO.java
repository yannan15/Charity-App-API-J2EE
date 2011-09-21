package dao;

import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.Query;
import org.hibernate.criterion.Example;

import pojo.Location;

/**
 * A data access object (DAO) providing persistence and search support for
 * Location entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 * 
 * @see pojo.Location
 * @author MyEclipse Persistence Tools
 */

public class LocationDAO extends BaseHibernateDAO {
	private static final Log log = LogFactory.getLog(LocationDAO.class);
	// property constants
	public static final String TYPE = "type";
	public static final String NAME = "name";
	public static final String COMMENT = "comment";
	public static final String ADDRESS = "address";
	public static final String LATITUDE = "latitude";
	public static final String LONGITUDE = "longitude";
	public static final String RADIUS = "radius";
	public static final String POINTS = "points";
	public static final String COUNT = "count";
	public static final String LOGO = "logo";
	public static final String EXTENDED_URL = "extendedUrl";

	public void save(Location transientInstance) {
		log.debug("saving Location instance");
		try {
			getSession().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Location persistentInstance) {
		log.debug("deleting Location instance");
		try {
			getSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Location findById(java.lang.Integer id) {
		log.debug("getting Location instance with id: " + id);
		try {
			Location instance = (Location) getSession()
					.get("pojo.Location", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(Location instance) {
		log.debug("finding Location instance by example");
		try {
			List results = getSession().createCriteria("pojo.Location").add(
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
		log.debug("finding Location instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from Location as model where model."
					+ propertyName + "= ?";
			Query queryObject = getSession().createQuery(queryString);
			queryObject.setParameter(0, value);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByType(Object type) {
		return findByProperty(TYPE, type);
	}

	public List findByName(Object name) {
		return findByProperty(NAME, name);
	}

	public List findByComment(Object comment) {
		return findByProperty(COMMENT, comment);
	}

	public List findByAddress(Object address) {
		return findByProperty(ADDRESS, address);
	}

	public List findByLatitude(Object latitude) {
		return findByProperty(LATITUDE, latitude);
	}

	public List findByLongitude(Object longitude) {
		return findByProperty(LONGITUDE, longitude);
	}

	public List findByRadius(Object radius) {
		return findByProperty(RADIUS, radius);
	}

	public List findByPoints(Object points) {
		return findByProperty(POINTS, points);
	}

	public List findByCount(Object count) {
		return findByProperty(COUNT, count);
	}

	public List findByLogo(Object logo) {
		return findByProperty(LOGO, logo);
	}

	public List findByExtendedUrl(Object extendedUrl) {
		return findByProperty(EXTENDED_URL, extendedUrl);
	}

	public List findAll() {
		log.debug("finding all Location instances");
		try {
			String queryString = "from Location";
			Query queryObject = getSession().createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public Location merge(Location detachedInstance) {
		log.debug("merging Location instance");
		try {
			Location result = (Location) getSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Location instance) {
		log.debug("attaching dirty Location instance");
		try {
			getSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Location instance) {
		log.debug("attaching clean Location instance");
		try {
			getSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}
}