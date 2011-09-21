package dao;

import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.Query;
import org.hibernate.criterion.Example;

import pojo.RoleAuthority;

/**
 * A data access object (DAO) providing persistence and search support for
 * RoleAuthority entities. Transaction control of the save(), update() and
 * delete() operations can directly support Spring container-managed
 * transactions or they can be augmented to handle user-managed Spring
 * transactions. Each of these methods provides additional information for how
 * to configure it for the desired type of transaction control.
 * 
 * @see pojo.RoleAuthority
 * @author MyEclipse Persistence Tools
 */

public class RoleAuthorityDAO extends BaseHibernateDAO {
	private static final Log log = LogFactory.getLog(RoleAuthorityDAO.class);

	// property constants

	public void save(RoleAuthority transientInstance) {
		log.debug("saving RoleAuthority instance");
		try {
			getSession().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(RoleAuthority persistentInstance) {
		log.debug("deleting RoleAuthority instance");
		try {
			getSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public RoleAuthority findById(java.lang.Integer id) {
		log.debug("getting RoleAuthority instance with id: " + id);
		try {
			RoleAuthority instance = (RoleAuthority) getSession().get(
					"pojo.RoleAuthority", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(RoleAuthority instance) {
		log.debug("finding RoleAuthority instance by example");
		try {
			List results = getSession().createCriteria("pojo.RoleAuthority")
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
		log.debug("finding RoleAuthority instance with property: "
				+ propertyName + ", value: " + value);
		try {
			String queryString = "from RoleAuthority as model where model."
					+ propertyName + "= ?";
			Query queryObject = getSession().createQuery(queryString);
			queryObject.setParameter(0, value);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findAll() {
		log.debug("finding all RoleAuthority instances");
		try {
			String queryString = "from RoleAuthority";
			Query queryObject = getSession().createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public RoleAuthority merge(RoleAuthority detachedInstance) {
		log.debug("merging RoleAuthority instance");
		try {
			RoleAuthority result = (RoleAuthority) getSession().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(RoleAuthority instance) {
		log.debug("attaching dirty RoleAuthority instance");
		try {
			getSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(RoleAuthority instance) {
		log.debug("attaching clean RoleAuthority instance");
		try {
			getSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}
}