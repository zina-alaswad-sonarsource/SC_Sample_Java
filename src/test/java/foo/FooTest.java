package foo;

import org.junit.Test;
import static org.junit.Assert.*;

public class FooTest {

  @Test
  public void testAdd() throws Exception {
  	assertEquals(Foo.times(4, 5), 123456);
  }
}
