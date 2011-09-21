package dao;

import java.util.List;
import java.util.Set;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.Query;
import org.hibernate.criterion.Example;

import pojo.Charity;

/**
 * A data access object (DAO) providing persistence and search support for
 * Charity entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 * 
 * @see pojo.Charity
 * @author MyEclipse Persistence Tools
 */

public class CharityDAO extends BaseHibernateDAO {
	private static final Log log = LogFactory.getLog(CharityDAO.class);
	// property constants
	public static final String NAME = "name";
	public static final String COMMENT = "comment";
	public static final String EXTENDED_URL = "extendedUrl";
	public static final String LOGO = "logo";
	public static final String LOGO_GRID = "logoGrid";
	public static final String PRIORITY = "priority";

	public void save(Charity transientInstance) {
		log.debug("saving Charity instance");
		try {
			getSession().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Charity persistentInstance) {
		log.debug("deleting Charity instance");
		try {
			getSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Charity findById(java.lang.Integer id) {
		log.debug("getting Charity instance with id: " + id);
		try {
			Charity instance = (Charity) getSession().get("pojo.Charity", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(Charity instance) {
		log.debug("finding Charity instance by example");
		try {
			List results = getSession().createCriteria("pojo.Charity").add(
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
		log.debug("finding Charity instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from Charity as model where model."
					+ propertyName + "= ?";
			Query queryObject = getSession().createQuery(queryString);
			queryObject.setParameter(0, value);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByName(Object name) {
		return findByProperty(NAME, name);
	}

	public List findByComment(Object comment) {
		return findByProperty(COMMENT, comment);
	}

	public List findByExtendedUrl(Object extendedUrl) {
		return findByProperty(EXTENDED_URL, extendedUrl);
	}

	public List findByLogo(Object logo) {
		return findByProperty(LOGO, logo);
	}

	public List findByLogoGrid(Object logoGrid) {
		return findByProperty(LOGO_GRID, logoGrid);
	}

	public List findByPriority(Object priority) {
		return findByProperty(PRIORITY, priority);
	}

	public List findAll() {
		log.debug("finding all Charity instances");
		try {
			String queryString = "from Charity";
			Query queryObject = getSession().createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public Charity merge(Charity detachedInstance) {
		log.debug("merging Charity instance");
		try {
			Charity result = (Charity) getSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Charity instance) {
		log.debug("attaching dirty Charity instance");
		try {
			getSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Charity instance) {
		log.debug("attaching clean Charity instance");
		try {
			getSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}
}