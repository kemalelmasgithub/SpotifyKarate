package examples.SpotifyKarate;

import com.intuit.karate.junit5.Karate;
import org.junit.jupiter.api.Test;

public class SpotifyKarate {
    @Test
    Karate testUsers() {
        return Karate.run("users").relativeTo(getClass());
    }
}
