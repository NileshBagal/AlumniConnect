<%@ page import="java.util.*,javax.mail.*"%>

<%@ page import="javax.mail.internet.*" %>
<%@page import="java.sql.*"%>

<%



    //Creating a result for getting status that messsage is delivered or not!

    String result;

    // Get recipient's email-ID, message & subject-line from index.html page

    String to = "";

    String subject = "from " + request.getParameter("email") + "feedback from suggestion box";

    String messg = request.getParameter("txta");

 

    // Sender's email ID and password needs to be mentioned

    final String from = "sagar57patil57@gmail.com";

    final String pass = "sagarkomal";

 

    // Defining the gmail host

    String host = "smtp.gmail.com";

 

    // Creating Properties object

    Properties props = new Properties();

 

    // Defining properties

    props.put("mail.smtp.host", host);

    props.put("mail.transport.protocol", "smtp");

    props.put("mail.smtp.auth", "true");

    props.put("mail.smtp.starttls.enable", "true");

    props.put("mail.user", from);

    props.put("mail.password", pass);

    props.put("mail.port", "465");

 

    // Authorized the Session object.

    Session mailSession = Session.getInstance(props, new javax.mail.Authenticator() {

        @Override

        protected PasswordAuthentication getPasswordAuthentication() {

            return new PasswordAuthentication(from, pass);

        }

    });

 

    try {

        // Create a default MimeMessage object.
        
		to = "sagar57patil57@gmail.com";
			
        MimeMessage message = new MimeMessage(mailSession);

        // Set From: header field of the header.

        message.setFrom(new InternetAddress(from));

        // Set To: header field of the header.

        message.addRecipient(Message.RecipientType.TO,

                new InternetAddress(to));

        // Set Subject: header field

        message.setSubject(subject);

        // Now set the actual message

        message.setText(messg);

        // Send message

       	
        Transport.send(message);
        
        result = "Your mail sent successfully....";
		response.sendRedirect("index.jsp");
    } catch (MessagingException mex) {

        mex.printStackTrace();
		out.print(mex.getMessage());
        result = "Error: unable to send mail....";

    }

%>