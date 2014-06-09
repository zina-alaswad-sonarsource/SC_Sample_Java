package foo;

import org.junit.Test;
import static org.junit.Assert.*;

public class SimplestTest {

  @Test
  public void testAdd() throws Exception {
  	assertEquals(Simplest.add(4, 5), 9);
  }

  @Test
  public void testAdd_WhichFails() throws Exception {
  	assertEquals(Simplest.add(4, 5), 2);
  }

  @Test
  public void testAdd_InError() throws Exception {
  	assertEquals(Simplest.add(4, 5), 9);
  	String o = null;
  	o.toString();
  }

}
