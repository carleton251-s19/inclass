public class Scope {

    public static int x = 8;

    public static void fun1() {
        //System.out.println("michael says " + x);
        int x = 6;
        System.out.println("michael says " + x);
        int x = 12;
        fun2();
    }

    public static void fun2() {
        System.out.println(x);
    }

    public static void main(String[] args) {
        fun2();
        fun1();
    }
}
