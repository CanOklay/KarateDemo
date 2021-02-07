package Features;

import java.io.FileNotFoundException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;

public class Functions {

    public void callFunction() {
        System.out.println("Fatih Can Oklay");
    }

    public String callWithArgument(String arg) {
        System.out.println("Method çağırıldı.");
        return "Hoşgeldin : " + arg;
    }

    public void writeData(String arg) throws FileNotFoundException, UnsupportedEncodingException {
        PrintWriter writer = new PrintWriter("Data.txt", "UTF-8");
        writer.println(arg);
        writer.close();
    }
}

