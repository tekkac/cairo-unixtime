use unixtime::time::UnixTime;
use unixtime::time::HumanTime;
use unixtime::utils;
use unixtime::utils::days_in_month3;


#[test]
#[available_gas(9915_000)]
fn test_days_in_month() {
    assert(utils::days_in_month(0) == 31, 'Jan has 31 days');
    assert(utils::days_in_month(1) == 28, 'Feb has 28 days');
    assert(utils::days_in_month(2) == 31, 'Mar has 31 days');
    assert(utils::days_in_month(3) == 30, 'Apr has 30 days');
    assert(utils::days_in_month(4) == 31, 'May has 31 days');
    assert(utils::days_in_month(5) == 30, 'Jun has 30 days');
    assert(utils::days_in_month(6) == 31, 'Jul has 31 days');
    assert(utils::days_in_month(7) == 31, 'Aug has 31 days');
    assert(utils::days_in_month(8) == 30, 'Sep has 30 days');
    assert(utils::days_in_month(9) == 31, 'Oct has 31 days');
    assert(utils::days_in_month(10) == 30, 'Nov has 30 days');
    assert(utils::days_in_month(11) == 31, 'Dec has 31 days');
}

#[test]
#[available_gas(200_000)]
fn test_days_in_month2() {
    assert(utils::days_in_month2(0) == 31, 'Jan has 31 days');
    assert(utils::days_in_month2(1) == 28, 'Feb has 28 days');
    assert(utils::days_in_month2(2) == 31, 'Mar has 31 days');
    assert(utils::days_in_month2(3) == 30, 'Apr has 30 days');
    assert(utils::days_in_month2(4) == 31, 'May has 31 days');
    assert(utils::days_in_month2(5) == 30, 'Jun has 30 days');
    assert(utils::days_in_month2(6) == 31, 'Jul has 31 days');
    assert(utils::days_in_month2(7) == 31, 'Aug has 31 days');
    assert(utils::days_in_month2(8) == 30, 'Sep has 30 days');
    assert(utils::days_in_month2(9) == 31, 'Oct has 31 days');
    assert(utils::days_in_month2(10) == 30, 'Nov has 30 days');
    assert(utils::days_in_month2(11) == 31, 'Dec has 31 days');
}

#[test]
#[available_gas(115_000)]
fn test_days_in_month3() {
    assert(days_in_month3(0) == 31, 'Jan has 31 days');
    assert(days_in_month3(1) == 28, 'Feb has 28 days');
    assert(days_in_month3(2) == 31, 'Mar has 31 days');
    assert(days_in_month3(3) == 30, 'Apr has 30 days');
    assert(days_in_month3(4) == 31, 'May has 31 days');
    assert(days_in_month3(5) == 30, 'Jun has 30 days');
    assert(days_in_month3(6) == 31, 'Jul has 31 days');
    assert(days_in_month3(7) == 31, 'Aug has 31 days');
    assert(days_in_month3(8) == 30, 'Sep has 30 days');
    assert(days_in_month3(9) == 31, 'Oct has 31 days');
    assert(days_in_month3(10) == 30, 'Nov has 30 days');
    assert(days_in_month3(11) == 31, 'Dec has 31 days');
}

#[test]
#[available_gas(330_000)]
fn test_leap_years() {
    assert(utils::is_leap_year(1970) == false, '1970 is no leap year');
    assert(utils::is_leap_year(1971) == false, '1971 is no leap year');
    assert(utils::is_leap_year(1972) == true, 'leap year error: 1972');
    assert(utils::is_leap_year(1973) == false, '1973 is no leap year');
    assert(utils::is_leap_year(1974) == false, '1974 is no leap year');
    assert(utils::is_leap_year(1975) == false, '1975 is no leap year');
    assert(utils::is_leap_year(1976) == true, 'leap year error: 1976');

    assert(utils::is_leap_year(1999) == false, '1999 is no leap year');
    assert(utils::is_leap_year(2000) == true, 'leap year error: 2000');
    assert(utils::is_leap_year(2001) == false, '2001 is no leap year');
    assert(utils::is_leap_year(2002) == false, '2002 is no leap year');
    assert(utils::is_leap_year(2003) == false, '2003 is no leap year');
    assert(utils::is_leap_year(2004) == true, 'leap year error 2004');
    assert(utils::is_leap_year(2005) == false, '2005 is no leap year');
}


#[test]
#[available_gas(15_000)]
fn test_default_time() {
    let unix_t: UnixTime = Default::default();
    let human_t: HumanTime = unix_t.into();
}

