use std::time::Instant;

fn main() {
    let n = 200;
    // Usando um único vetor flat costuma ser ainda mais rápido em Rust
    let mut c = vec![vec![0; n]; n];

    let start = Instant::now();

    for i in 0..n {
        for k in 0..n { // Trocamos o K com o J
            for j in 0..n {
                // Agora acessamos a memória de forma linear no loop interno
                c[i][j] += 1; 
            }
        }
    }

    let duration = start.elapsed();
    println!("Tempo: {:?}", duration);
}