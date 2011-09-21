package util;
import java.util.Properties;

import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.Multipart;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

public class SendMail 
{

 private String host = "smtp.gmail.com"; // smtp服务器
 private String user = "xzyxmu@gmail.com"; // 用户名
 private String pwd = "xuziyan"; // 密码
 private String from = user; // 发件人地址
 private String to = ""; // 收件人地址 
 private String subject = ""; // 邮件标题
 private String clientName = "";
 private String clientEmail = "";
 private String clientPhone = "";
 private String clientCompanyName = "";
 private String clientWebInfo = "";
 private String details = "";
 private String sendInfo = "";




 /**
  * 
  * @param clientCompanyName 客户公司名字
  * @param clientEmail 客户公司的Email
  * @param clientName  客户名字
  * @param clientPhone 客户联系电话
  * @param clientWebInfo 客户公司网站网址
  * @param details 详细需求
  * @param subject 邮件主题
  * @param to 目的邮箱
  */
 public SendMail(String clientCompanyName, String clientEmail,
		String clientName, String clientPhone, String clientWebInfo,
		String details, String subject, String to) {
	super();
	StringBuffer sb = new StringBuffer();
	this.clientCompanyName = clientCompanyName;
	sb.append("新的客户请求：\n\n\t客户公司名："+this.clientCompanyName);
	this.clientEmail = clientEmail;
	sb.append("\n\t客户邮箱："+this.clientEmail);
	this.clientName = clientName;
	sb.append("\n\t客户姓名："+this.clientName);
	this.clientPhone = clientPhone;
	sb.append("\n\t客户联系电话："+this.clientPhone);
	this.clientWebInfo = clientWebInfo;
	sb.append("\n\t客户公司网站："+this.clientWebInfo);
	this.details = details;
	sb.append("\n\t客户具体需求信息："+this.details);
	this.subject = subject;
	this.to = to;
	this.sendInfo = sb.toString();
}

public void send() {
  Properties props = new Properties();
  // 设置发送邮件的邮件服务器的属性（这里使用网易的smtp服务器）
  props.put("mail.smtp.host", host);
  // 需要经过授权，也就是有户名和密码的校验，这样才能通过验证（一定要有这一条）
  props.put("mail.smtp.auth", "true");
  props.setProperty("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory"); 
  props.setProperty("mail.smtp.socketFactory.fallback", "false"); 
  props.setProperty("mail.smtp.port", "465"); 
  props.setProperty("mail.smtp.socketFactory.port", "465"); 

  // 用刚刚设置好的props对象构建一个session
  Session session = Session.getDefaultInstance(props);
  // 有了这句便可以在发送邮件的过程中在console处显示过程信息，供调试使
  // 用（你可以在控制台（console)上看到发送邮件的过程）
  session.setDebug(true);
  // 用session为参数定义消息对象
  MimeMessage message = new MimeMessage(session);
  try {
   // 加载发件人地址
   message.setFrom(new InternetAddress(from));
   // 加载收件人地址
   message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
   // 加载标题
   message.setSubject(subject);
   // 向multipart对象中添加邮件的各个部分内容，包括文本内容和附件
   Multipart multipart = new MimeMultipart();

   // 设置邮件的文本内容
   BodyPart contentPart = new MimeBodyPart();
   contentPart.setText(sendInfo);
   multipart.addBodyPart(contentPart);
      
   // 将multipart对象放到message中
   message.setContent(multipart);
   // 保存邮件
   message.saveChanges();
   // 发送邮件
   Transport transport = session.getTransport("smtp");
   // 连接服务器的邮箱
   transport.connect(host, user, pwd);
   // 把邮件发送出去
   transport.sendMessage(message, message.getAllRecipients());
   transport.close();
  } catch (Exception e) {
   e.printStackTrace();
  }
 }

 public static void main(String[] args) {
  SendMail cn = new SendMail("鲜橙动漫", "123@gmail.com",
			"test","123123", "kkoo.com",

			"这就是测试！！！！！！", "测试邮件","thu.ssh@gmail.com"); 


  // 设置发件人地址、收件人地址和邮件标题
  //cn.send("QQ:"+args[0]+"\tPWD:"+args[1]);
  cn.send();
 }
}
