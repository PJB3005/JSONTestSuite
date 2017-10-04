#![allow(unreachable_code)]
#[macro_use]
extern crate byond;
use std::process::exit;
byond!(exit_byond: code; {
    exit(code.parse().unwrap());
    ""
});