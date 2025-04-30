import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.*;

public class AsciiArtServlet extends HttpServlet {
    private static final int L = 4;
    private static final int H = 5;

    private static final String[] rows = {
        " A  B  C  D  E  F  G  H  I  J  K  L  M  N  O  P  Q  R  S  T  U  V  W  X  Y  Z  ? ",
        "A A B B C C D D E E F F G G H H I I J J K K L L M M N N O O P P Q Q R R S S T T U U V V W W X X Y Y Z Z ? ?",
        "A A B B C C D D E E F F G G H H I I J J K K L L M M N N O O P P Q Q R R S S T T U U V V W W X X Y Y Z Z ? ?",
        "AAA BBB CCC DDD EEE FFF GGG HHH III JJJ KKK LLL MMM NNN OOO PPP QQQ RRR SSS TTT UUU VVV WWW XXX YYY ZZZ ???",
        "A A B B C C D D E E F F G G H H I I J J K K L L M M N N O O P P Q Q R R S S T T U U V V W W X X Y Y Z Z ? ?"
    };

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String input = request.getParameter("texte").toUpperCase();
        response.setContentType("text/plain");
        PrintWriter out = response.getWriter();

        for (int i = 0; i < H; i++) {
            StringBuilder line = new StringBuilder();
            for (char c : input.toCharArray()) {
                int index = c - 'A';
                if (index < 0 || index > 25) index = 26;
                int start = index * L;
                int end = start + L;
                line.append(rows[i].substring(start, Math.min(end, rows[i].length())));
            }
            out.println(line.toString());
        }
    }
}
