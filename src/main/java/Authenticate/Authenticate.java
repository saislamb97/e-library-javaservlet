package Authenticate;

public class Authenticate {

    public String authenticate(String username, String password) {
        if (username.equals("admin") && password.equals("admin")) {
            return "admin";
        } else if (username.equals("user1") && password.equals("user1")) {
            return "coach";
        } else if (username.equals("user2") && password.equals("user2")) {
            return "trainee";
        } else {
            return "invalid";
        }
    }
}
