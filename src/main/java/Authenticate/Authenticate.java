package Authenticate;

public class Authenticate {

    public String authenticate(String username, String password) {
        if (username.equals("admin") && password.equals("admin")) {
            return "admin";
        } else if (username.equals("student") && password.equals("student")) {
            return "student";
        } else {
            return "invalid";
        }
    }
}
