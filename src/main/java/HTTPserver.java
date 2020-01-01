import java.io.IOException;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.Date;


/**
 * @author Charitath Chugh
 * @period 3
 */
public class HTTPserver {

    public static void main(String args[])  {
    try{
        ServerSocket server = new ServerSocket(3999);
        System.out.println("Listening for connection on port 8080 ....");
        while (true) {
            try (Socket socket = server.accept()) {
                Date today = new Date();
                String httpResponse = "HTTP/1.1 200 OK\r\n\r\n" + today;
                socket.getOutputStream().write(httpResponse.getBytes("UTF-8"));
            }
        }
    } catch (Throwable e){
        e.printStackTrace();
    }

    }
}