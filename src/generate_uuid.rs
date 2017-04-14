extern crate uuid_v1;

use libc::c_char;
use std::ffi::{CStr, CString};

#[no_mangle]
pub extern "C" fn generate_uuid() -> *const c_char {
    let uuid = uuid_v1::new_v1();
    CString::new(&*uuid.to_string()).unwrap().into_raw()
}
