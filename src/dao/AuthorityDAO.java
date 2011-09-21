package dao;

import java.util.List;
import java.util.Set;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.Query;
import org.hibernate.criterion.Example;

import pojo.Authority;

/**
 * A data access object (DAO) providing persistence and search support for
 * Authority entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 * 
 * @see pojo.Authority
 * @author MyEclipse Persistence Tools
 */

public class AuthorityDAO extends BaseHibernateDAO {
	private static final Log log = LogFactory.getLog(AuthorityDAO.class);
	// property constants
	public static final String AUTHORITY_DESC = "authorityDesc";

	public void save(Authority transientInstance) {
		log.debug("saving Authority instance");
		try {
			getSession().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Authority persistentInstance) {
		log.debug("deleting Authority instance");
		try {
			getSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Authority findById(java.lang.Integer id) {
		log.debug("getting Authority instance with id: " + id);
		try {
			Authority instance = (Authority) getSession().get("pojo.Authority",
					id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(Authority instance) {
		log.debug("finding Authority instance by example");
		try {
			List results = getSession().createCriteria("pojo.Authority").add(
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
		log.debug("finding Authority instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from Authority as model where model."
					+ propertyName + "= ?";
			Query queryObject = getSession().createQuery(queryString);
			queryObject.setParameter(0, value);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByAuthorityDesc(Object authorityDesc) {
		return findByProperty(AUTHORITY_DESC, authorityDesc);
	}

	public List findAll() {
		log.debug("finding all Authority instances");
		try {
			String queryString = "from Authority";
			Query queryObject = getSession().createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public Authority merge(Authority detachedInstance) {
		log.debug("merging Authority instance");
		try {
			Authority result = (Authority) getSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Authority instance) {
		log.debug("attaching dirty Authority instance");
		try {
			getSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Authority instance) {
		log.debug("attaching clean Authority instance");
		try {
			getSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}
}