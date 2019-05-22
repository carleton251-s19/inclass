public class Lambdas {

    public static void evaluate(
        Function f, int x, int y) {

        System.out.println(f(x,y));
    }
    
    public static void main(String[] args) {
        Function add = ...
            add two numbers;

        evaluate(add, 5, 3);
    }
}
