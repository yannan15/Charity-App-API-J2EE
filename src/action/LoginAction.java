package action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.apache.struts2.interceptor.ServletResponseAware;




import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;



public class LoginAction extends BaseAction
{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private JSONArray result;
    

	
	@Override
	public String execute(){
		JSONObject jsonObject = new JSONObject();   
	    jsonObject.put("result","success");   	         
           
	    result = JSONArray.fromObject(jsonObject);  
		System.out.println(result.toString());	
		
		return Action.SUCCESS;
		
	}
	
	public void setResult(JSONArray result) {
		this.result = result;
	}

	public JSONArray getResult() {
		return result;
	}

	
}
