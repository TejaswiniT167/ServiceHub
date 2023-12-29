# ServiceHub: Adaptive Service Management Solution 🌐

## Overview 📋
ServiceHub is a dynamic web application engineered to facilitate efficient service management across diverse industries, specifically for local service providers. While it's inherently adaptable to suit various service types, our current focus is CleanCo, a specialized implementation for the cleaning service sector. This platform is designed to optimize the interaction between customers, service staff, and administrators, leveraging technology to enhance user experience and operational efficiency.

## Detailed Features 🛠️

### For Customers 👥
- **Comprehensive Service Browsing**: Customers can explore a wide array of services, with CleanCo currently showcasing cleaning services. The platform's design ensures ease of navigation and information accessibility.
- **Streamlined Service Request Process**: An intuitive and user-friendly interface allows customers to effortlessly request services. This includes a detailed form that captures specific requirements, ensuring precise service delivery.
- **Robust Account Management**: Secure account creation and management enable customers to track their service requests, view history, and manage personal information with ease.

### For Service Staff 👷
- **Efficient Request Handling**: Service staff have access to a dashboard that displays customer requests in an organized manner, allowing for effective prioritization and management. This feature is crucial in ensuring timely and quality service delivery.
- **Workflow Optimization Tools**: The platform includes tools for tracking service progress, managing schedules, and communicating with customers, all aimed at enhancing the efficiency and effectiveness of service staff.

### For Administrators 🧑‍💼
- **Advanced User Role Management**: Administrators can manage user roles and permissions with precision, ensuring the right staff have the appropriate access levels to various system functionalities.
- **Comprehensive Operational Control**: The platform provides administrators with the tools to oversee service offerings, manage operational aspects, and maintain quality control. This includes features for adding or removing services, monitoring service delivery, and generating reports.

## Technology Stack 💻
- **Front End**: HTML, CSS, Embedded JSP - crafted to create a visually appealing and responsive user interface, ensuring a seamless user experience. JSP is used to dynamically generate HTML content on the server before it's sent to the client's browser.
- **Back End**: Oracle Database, Java, JavaServerPages(JSP), Apache Tomcat - a combination chosen for its reliability and scalability, capable of supporting a wide range of service management tasks.

## Getting Started 🚀
As you embark on your journey with the ServiceHub project, consider this "Getting Started" guide as a stepping stone, especially if you're at the beginning of your web development journey. The code is written when i was at that stage...so it should be beginner friendly when you are scratching your head around the overwhelming amount of concepts to learn. It's crafted with the intention to gently lead you through the nuances of setting up and customizing a web application with above technologies. Remember, every expert was once a beginner, and this project could be a significant milestone in your learning journey :)

Follow these steps to set up and run the ServiceHub(cleanco) application:

1. **Download the Repository**
   - Clone or download the ServiceHub repository to your local machine.

2. **Install Apache Tomcat Server**
   - Install Apache Tomcat, the folder is by default placed in C: drive of your pc and set up environment variables like JAVA_HOME and CATALINA_HOME accordingly.(several installation guides are available for this step on youtube.)
   - Place the downloaded ServiceHub folder in the `webapps/ROOT` directory of your apache-tomcat folder.

3. **Configure Oracle JDBC Driver**
   - Ensure the `ojdbc14.jar` file is present in the `lib` directory of your Tomcat folder. If it's not available, download and place it there.

4. **Set Up Oracle Database Application Express**
   - Create an account in Oracle Database Application Express.
   - Create a new workspace within Oracle Application Express.
   - Within this workspace, create the necessary tables for users and service requests.

5. **Customize Application Content**
   - Open the ServiceHub project in a code editor like Visual Studio Code.
   - Customize the content, such as images and descriptions, to align with your specific service offerings. In my case I tailored it as a Sanitation service provider. Use simple find and replace operations in the code editor to update these elements.

6. **Configure Application Settings**
   - Edit the database connection settings in the code, replacing `'username'` and `'password'` with the credentials of your Oracle Application Express workspace account. Here, `username` refers to the workspace name, and `password` is the workspace account password.

7. **Start the Tomcat Server**
   - Navigate to the `bin` directory of your Tomcat installation.
   - Run the `startup.bat` command to start the server. To stop the server, use the `shutdown.bat` command.

8. **Verify Tomcat Server Installation**
   - Open a web browser and go to `http://localhost:8080/` to ensure the Tomcat server is running properly.

9. **Deploy and Access the Web Application**
   - Access the ServiceHub application by navigating to `http://localhost:8080/login.html` in your web browser. From there, you can explore other pages of the application.

10. **Initial User Setup**
    - Initially, create customer, staff, and admin users in the users table to fully explore the website's functionality.
  
Note: 
For some localhost page may not work initially due to various reasons and show popup asking for username and password, if that's the case for you...follow below steps:
1. Navigate to apache-tomcat/conf dir.
2. Open server.xml as text document and edit it.
3. Under `<Service name="Catalina">` edit the connector port which is initially set to 8080 to some other port number like... `<Connector port="8088" protocol="HTTP/1.1".../>`
4. Now shutdown and start the server as in step 7. Now check again with `http://localhost:8088/` (the edited port number). This edited port has to be used further.


## Contributing 🤝

As the sole developer of ServiceHub, I've designed this platform to be a helpful starting point for those who are new to web development, as well as for small local businesses looking to establish an online presence. Here's how you can use and contribute to ServiceHub:

### For Local Business Startups:
- **Customize for Your Needs**: Feel free to use ServiceHub as a template for your business website. Whether you're offering home services, local retail, repair services or any other community-focused services, you can tailor it to fit your unique requirements.
- **Share Your Adaptations**: If you've used ServiceHub to create your website, I'd love to hear about it. Your experiences can inspire and assist others who are just starting out.

### For New Web Developers:
- **Practice and Learn**: ServiceHub is a great project to practice your coding skills. You can try adding new features, fixing bugs, or improving the design and architecture.
- **Contribute with Documentation**: If you're good at explaining things, consider writing tutorials or documentation to help others understand how to use this as a learning resource.

### General Contribution:
- **Feedback and Ideas**: Your suggestions for improvements are always welcome. If you have ideas on how to make ServiceHub better, please don't hesitate to share.
- **Reporting Issues**: Found a bug? Let me know! Clear descriptions of the problem help me make ServiceHub more reliable.

Your contributions, big or small, play a significant role in the growth and improvement of the project and help others learn better.

## License 📄

ServiceHub doesn't come with a formal license. This means you're free to use, modify, and distribute your version of the project as you see fit. Whether you're using it for personal projects, educational purposes, or as a base for your business's website, there are no restrictions. However, if you do use ServiceHub as a starting point for your project, acknowledging it is highly appreciated :)
