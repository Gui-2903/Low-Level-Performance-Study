
use std::time::Instant;

fn main() {
    let start = Instant::now();

    let mut v = Vec::with_capacity(10_000_000);
    for i in 0..10_000_000 {
        v.push(i);
    }

    let duration = start.elapsed();
    println!("Tempo: {:?}", duration);
}