/**
 * Just a small program to generate text
 */
public class StartGen {

    public static void main(String args[]) {
	String pre = "Game.baypatrol.Client|GameName";
	String mid = "|message=";
	String after = "text";

	int start = Integer.parseInt(args[0]);
	int end = Integer.parseInt(args[1]);

	for(int i = start; i < end; i++) {
	    System.out.println(pre+i+mid+after+i);
	}
    }
}