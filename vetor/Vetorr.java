public class Vetorr {
    public static void main(String[] args) {
        long start = System.nanoTime();

        int[] v = new int[10_000_000];
        for (int i = 0; i < v.length; i++) {
            v[i] = i;
        }

        long end = System.nanoTime();
        System.out.println("Tempo: " + (end - start)/1e9);
    }
}