FROM openjdk 

COPY target/my-app1-1.0-SNAPSHOT.jar /deployments/

CMD java -cp /deployments/my-app1-1.0-SNAPSHOT.jar com.mycompany.app.App 