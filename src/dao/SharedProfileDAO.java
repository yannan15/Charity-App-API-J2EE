package dao;

import java.util.List;
import java.util.Set;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.Query;
import org.hibernate.criterion.Example;

import pojo.SharedProfile;

/**
 * A data access object (DAO) providing persistence and search support for
 * SharedProfile entities. Transaction control of the save(), update() and
 * delete() operations can directly support Spring container-managed
 * transactions or they can be augmented to handle user-managed Spring
 * transactions. Each of these methods provides additional information for how
 * to configure it for the desired type of transaction control.
 * 
 * @see pojo.SharedProfile
 * @author MyEclipse Persistence Tools
 */

public class SharedProfileDAO extends BaseHibernateDAO {
	private static final Log log = LogFactory.getLog(SharedProfileDAO.class);
	// property constants
	public static final String NICKNAME = "nickname";
	public static final String POINTS = "points";
	public static final String LAST_SEEN = "lastSeen";

	public void save(SharedProfile transientInstance) {
		log.debug("saving SharedProfile instance");
		try {
			getSession().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(SharedProfile persistentInstance) {
		log.debug("deleting SharedProfile instance");
		try {
			getSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public SharedProfile findById(java.lang.Integer id) {
		log.debug("getting SharedProfile instance with id: " + id);
		try {
			SharedProfile instance = (SharedProfile) getSession().get(
					"pojo.SharedProfile", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(SharedProfile instance) {
		log.debug("finding SharedProfile instance by example");
		try {
			List results = getSession().createCriteria("pojo.SharedProfile")
					.add(Example.create(instance)).list();
			log.debug("find by example successful, result size: "
					+ results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}

	public List findByProperty(String propertyName, Object value) {
		log.debug("finding SharedProfile instance with property: "
				+ propertyName + ", value: " + value);
		try {
			String queryString = "from SharedProfile as model where model."
					+ propertyName + "= ?";
			Query queryObject = getSession().createQuery(queryString);
			queryObject.setParameter(0, value);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByNickname(Object nickname) {
		return findByProperty(NICKNAME, nickname);
	}

	public List findByPoints(Object points) {
		return findByProperty(POINTS, points);
	}

	public List findByLastSeen(Object lastSeen) {
		return findByProperty(LAST_SEEN, lastSeen);
	}

	public List findAll() {
		log.debug("finding all SharedProfile instances");
		try {
			String queryString = "from SharedProfile";
			Query queryObject = getSession().createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public SharedProfile merge(SharedProfile detachedInstance) {
		log.debug("merging SharedProfile instance");
		try {
			SharedProfile result = (SharedProfile) getSession().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(SharedProfile instance) {
		log.debug("attaching dirty SharedProfile instance");
		try {
			getSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(SharedProfile instance) {
		log.debug("attaching clean SharedProfile instance");
		try {
			getSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}
}