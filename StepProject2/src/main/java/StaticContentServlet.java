import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;

public class StaticContentServlet extends HttpServlet {

  private final String osStaticLocation;

  public StaticContentServlet(String osStaticLocation) {
    this.osStaticLocation = osStaticLocation;
  }

  @Override
  protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    String pathInfo = req.getPathInfo();

    // WINDOWS fix
//    if (pathInfo.startsWith("/")) pathInfo = pathInfo.substring(1);
    /**         MacOS/Linux  Windows
     * a ,  b =>   a/b         a\b
     * a/, /b =>   a/b         a/\/b
     * a/,  b =>   a/b         a/\b
     * a,  /b =>   a/b         a\/b
     */
    Path file = Path.of(osStaticLocation, pathInfo);

    if (!file.toFile().exists()) {
      resp.setStatus(404);
    } else {
      try (ServletOutputStream os = resp.getOutputStream()) {
        Files.copy(file, os);
      }
    }

  }

}
