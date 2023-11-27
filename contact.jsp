<%--
    Document   : contact
    Created on : 05-Sept-2023, 8:20:33 pm
    Author     : venkadesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contact</title>
        
        <style>
            /* Common CSS for all contact sections */
            .contact-section {
                max-width: 450px;
                margin: 20px auto;
                background-color: lightsteelblue;
                padding: 20px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
                border-radius: 5px;
                text-align: center;
                transition: box-shadow 0.3s ease;
            }

            /* Header CSS */
            header {
                text-align: center;
            }
            
            /* Image CSS */
            .contact-image {
                 position:absolute;
                left:3%;
                top:20%;
                max-width: 480px;
               <%-- margin: 50px auto;--%>
                background-color:lightsteelblue;
                padding: 20px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
                border-radius: 5px;
                text-align: center;
            }
        </style>
    </head>
    <body>
        
        <header>
            <h1>Contact Details</h1>
        </header>

        <!-- Contact Sections -->
        <div class="contact-section">
            <h2>ALAGU NAGASH G</h2>
            <h2>&emsp;2112050@nec.edu.in</h2>
        </div>
        
        <div class="contact-section">
            <h2>RAMKUMAR S S</h2>
            <h2>&emsp;2112007@nec.edu.in</h2>
        </div>
  
        <div class="contact-section">
            <h2>VENKADESH K</h2>
            <h2>&emsp;2112095@nec.edu.in</h2>
        </div>

        <!-- Image -->
        <div class="contact-image">
            <img src="contact.jpeg" alt="Contact Image">
        </div>
    </body>
</html>
