use std::time::Instant;

fn fib(n: u32) -> u32 {
    if n <= 1 {
        return n;
    }
    fib(n-1) + fib(n-2)
}

fn main() {
    let start = Instant::now();
    println!("{}", fib(40));
    let duration = start.elapsed();

    println!("Tempo: {:?}", duration);
}