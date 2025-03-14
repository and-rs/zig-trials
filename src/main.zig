const std = @import("std");

const Test = struct {
    hello: []const u8,

    fn structFunction() []const u8 {
        return "hello from fn";
    }
};

pub fn main() !void {
    const testing_struct = Test{ .hello = "this is the new struct" };

    std.debug.print("hello from zig \n", .{});
    std.debug.print("testing struct => {s} \n", .{testing_struct.hello});
}
