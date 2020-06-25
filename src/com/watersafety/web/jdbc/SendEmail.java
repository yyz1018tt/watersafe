package com.watersafety.web.jdbc;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

@WebServlet(name = "SendEmail", urlPatterns = {"/email"})
public class SendEmail extends HttpServlet {
    String name, contact_person_email, type, location, language, link, contact_resource, add_info, contact_person_phone;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        response.setContentType("text/html");
        name = request.getParameter("name");
        contact_person_email = request.getParameter("contactPersonEmail");
        type = request.getParameter("type");
        location = request.getParameter("location");
        language = request.getParameter("language");
        link = request.getParameter("link");
        contact_resource = request.getParameter("contactResource");
        add_info = request.getParameter("addInfo");
        contact_person_phone = request.getParameter("contactPersonNumber");

        final String username = "watersafedirectory@gmail.com";
        final String password = "Watersafe123";
        Properties props = new Properties();
        props.put("mail.smtp.auth", true);
        props.put("mail.smtp.starttls.enable", true);
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", 587);

        Session session = Session.getInstance(props, new javax.mail.Authenticator(){
            @Override
            protected PasswordAuthentication getPasswordAuthentication(){
                return new PasswordAuthentication(username, password);
            }
        });

        try{
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(contact_person_email));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(username));
            String greet = "Hello, a new submission for the directory has been received: <br><br>";
            String title1 = "<b><h2 style='line-height: 3%'>Submitting person's details:</h2></b><br>";
            String title2 = "<br><br><b><h2 style='line-height: 3%'>About the resource:</h2></b><br>";
            String final_text = title1 + "<b>Name:</b> " + name + "    " + "<br><b>Email:</b> " + contact_person_email + "<br><b>Phone:</b> " + contact_person_phone +  "    " + title2 + "<b>Location:</b> " + location
                    + " <br><b>Type:</b> " + type + " <br><b>Language:</b> " + language + " <br><b>Link:</b> " + link + " <br><b>Contact of Resource:</b> "
                    + contact_resource + "<br><b>Additional Info:</b> " + add_info;
            String wish = "<br><br>Please note that this information has not yet been added to the website. Please go to www.watersafe.org.au/DI1bcr0CouU3VstY.jsp to manually add it.";
            String msg = greet + final_text + wish;
            message.setContent(msg, "text/html");
            message.setSubject("New submission for water safety directory");
            Transport.send(message);
            out.println("<center><h2>Email Sent</h2>");
            out.println("Thank you " + name + ", your email has been sent to us</center>");
        } catch (Exception e){
            out.println(e);
        }
    }
}


