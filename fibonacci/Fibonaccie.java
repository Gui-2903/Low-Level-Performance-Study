public class Fibonaccie {
    public static int fib(int n) {
        if (n <= 1) return n;
        return fib(n-1) + fib(n-2);
    }

    public static void main(String[] args) {
        long start = System.nanoTime();
        System.out.println(fib(40));
        long end = System.nanoTime();

        System.out.println("Tempo: " + (end - start)/1e9);
    }
}