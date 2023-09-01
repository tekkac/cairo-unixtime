// Resources:
// - https://git.musl-libc.org/cgit/musl/tree/src/time/__secs_to_tm.c?h=v0.9.15
// - https://codereview.stackexchange.com/questions/38275/convert-between-date-time-and-time-stamp-without-using-standard-library-routines
// - https://www.geeksforgeeks.org/convert-unix-timestamp-to-dd-mm-yyyy-hhmmss-format/
// - https://howardhinnant.github.io/date_algorithms.html

use debug::PrintTrait;

#[derive(Default)]
type UnixTime = u64;

type String = felt252;

#[derive(Default, Drop)]
struct HumanTime {
    year: u16,
    month: u8,
    day: u8,
    hour: u8,
    minute: u8,
    second: u8,
// microsecond: u16
}

// similar to strftime("%H:%M:%S")
trait FormatTime {
    fn format(self: UnixTime, fmt: felt252) -> String;
}


impl UnixIntoHuman of Into<UnixTime, HumanTime> {
    fn into(self: UnixTime) -> HumanTime {
        // TODO
        Default::default()
    }
}

fn days(year_mod_4: u64, month: u64) -> u64 {
    0
}

impl HumanIntoUnix of Into<HumanTime, UnixTime> {
    fn into(self: HumanTime) -> UnixTime {
        let second: u64 = self.second.into();
        let minute: u64 = self.minute.into();
        let hour: u64 = self.hour.into();
        let day: u64 = self.day.into();
        let month: u64 = self.month.into();
        let year: u64 = self.year.into();

        let res = (((year / 4 * (365 * 4 + 1) + days(year % 4, month) + day) * 24 + hour) * 60
            + minute)
            * 60
            + second;

        Default::default()
    }
}

impl PrintHumanTime of PrintTrait<HumanTime> {
    fn print(self: HumanTime) {}
}
