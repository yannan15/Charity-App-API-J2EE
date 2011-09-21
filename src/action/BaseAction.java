package action;

import java.util.Map;


import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("unchecked")
public class BaseAction extends ActionSupport{
	/**
	 * 
	 */
	
	
	private static final long serialVersionUID = 1L;
	public String USERNAME = "username";
	public String ADMIN = "admin";
	private ActionContext ctx;	
	Map session;
	
	
	public BaseAction() {

	}

	
	public Map getSession() {
		ctx = ActionContext.getContext();
		session = ctx.getSession();
		return session;
	}
	
	
	/**
	 * ÓÃ»§×¢Ïú
	 * @return
	 */
	public String logout() {
		try {
			this.getSession().clear();
			return SUCCESS;
		} catch (Exception e) {
			return ERROR;
		}
	}
	
	public ActionContext getCtx() {
		return ctx;
	}

	public void setCtx(ActionContext ctx) {
		this.ctx = ctx;
	}

	public void setSession(Map session) {
		this.session = session;
	}

}
