package bar;

public class Simplest3 {
	private Simplest2 s;

	public String name;

	private void foo() {
		int i = 0;
		int b = 5;

		Object o = null;
		name = o.toString();
		System.out.println("=> " + o);
	}
}
