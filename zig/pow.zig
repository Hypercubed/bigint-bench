const std = @import("std");
const io = std.io;
const BigInt = std.math.big.int.Managed;

pub fn main() anyerror!void {
    const allocator = std.heap.c_allocator;

    var a = try BigInt.initSet(allocator, 5);
    try a.pow(&a, try std.math.powi(u32, 4, try std.math.powi(u32, 3, 2)));
    defer a.deinit();

    var b = try BigInt.initSet(allocator, 10);
    defer b.deinit();

    var res = try BigInt.init(allocator);
    defer res.deinit();

    var mod = try BigInt.init(allocator);
    defer mod.deinit();

    try res.divFloor(&mod, &a, &b);

    const as = try mod.toString(allocator, 10, std.fmt.Case.lower);
    std.debug.print("{s}\n", .{as});
    defer allocator.free(as);
}
