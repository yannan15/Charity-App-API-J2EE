package dao;

import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.Query;
import org.hibernate.criterion.Example;

import pojo.Voucher;

/**
 * A data access object (DAO) providing persistence and search support for
 * Voucher entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 * 
 * @see pojo.Voucher
 * @author MyEclipse Persistence Tools
 */

public class VoucherDAO extends BaseHibernateDAO {
	private static final Log log = LogFactory.getLog(VoucherDAO.class);
	// property constants
	public static final String VOUCHER_URL = "voucherUrl";

	public void save(Voucher transientInstance) {
		log.debug("saving Voucher instance");
		try {
			getSession().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Voucher persistentInstance) {
		log.debug("deleting Voucher instance");
		try {
			getSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Voucher findById(java.lang.Integer id) {
		log.debug("getting Voucher instance with id: " + id);
		try {
			Voucher instance = (Voucher) getSession().get("pojo.Voucher", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(Voucher instance) {
		log.debug("finding Voucher instance by example");
		try {
			List results = getSession().createCriteria("pojo.Voucher").add(
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
		log.debug("finding Voucher instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from Voucher as model where model."
					+ propertyName + "= ?";
			Query queryObject = getSession().createQuery(queryString);
			queryObject.setParameter(0, value);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByVoucherUrl(Object voucherUrl) {
		return findByProperty(VOUCHER_URL, voucherUrl);
	}

	public List findAll() {
		log.debug("finding all Voucher instances");
		try {
			String queryString = "from Voucher";
			Query queryObject = getSession().createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public Voucher merge(Voucher detachedInstance) {
		log.debug("merging Voucher instance");
		try {
			Voucher result = (Voucher) getSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Voucher instance) {
		log.debug("attaching dirty Voucher instance");
		try {
			getSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Voucher instance) {
		log.debug("attaching clean Voucher instance");
		try {
			getSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}
}