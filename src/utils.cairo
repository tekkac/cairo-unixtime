fn is_leap_year(year: u64) -> bool {
    return year % 4 == 0 && (year % 100 != 0 || year % 400 == 0);
}

fn days_in_month(month: u64) -> u64 {
    assert(month < 12, 'Invalid month');
    let days: Array<u64> = array![31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
    return *days.get(TryInto::<u64, usize>::try_into(month).unwrap()).unwrap().unbox();
}

fn days_in_month2(month: u64) -> u64 {
    assert(month < 12, 'Invalid month');
    let parity = month % 2;
    if month == 1 {
        return 28;
    } else if month < 7 {
        if parity == 0 {
            return 31;
        } else {
            return 30;
        }
    } else if parity == 0 {
        return 30;
    } else {
        return 31;
    }
}

fn days_in_month3(month: u64) -> u64 {
    assert(month < 12, 'Invalid month');
    if month < 6 {
        if month < 3 {
            if month == 1 {
                return 28;
            } else {
                return 31;
            }
        } else {
            if month == 4 {
                return 31;
            } else {
                return 30;
            }
        }
    } else {
        if month < 9 {
            if month == 8 {
                return 30;
            } else {
                return 31;
            }
        } else {
            if month == 10 {
                return 30;
            } else {
                return 31;
            }
        }
    }
}
