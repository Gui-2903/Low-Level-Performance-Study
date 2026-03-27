public class Matrizz {
    public static void main(String[] args) {
        int N = 200;
        int[][] A = new int[N][N];
        int[][] B = new int[N][N];
        int[][] C = new int[N][N];

        long start = System.nanoTime();

        for (int i = 0; i < N; i++)
            for (int j = 0; j < N; j++)
                for (int k = 0; k < N; k++)
                    C[i][j] += A[i][k] * B[k][j];

        long end = System.nanoTime();
        System.out.println("Tempo: " + (end - start)/1e9);
    }
}