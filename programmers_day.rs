extern crate chrono;
use chrono::{NaiveDate, FixedOffset, Utc};

fn main() {
    let start = NaiveDate::from_ymd_opt(2024, 01, 01).unwrap();
    let offset = FixedOffset::west_opt(6 * 60 * 60).unwrap();
    let now = Utc::now().with_timezone(&offset).date_naive();
    let days = now.signed_duration_since(start).num_days();
    if days == 255 {
        println!("\nHappy programmers day!!\n");
    } else {
        println!("\nHappy shitty normal day!!\n");
    }
}
