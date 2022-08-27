const std = @import("std");
const BigInt = std.math.big.int.Managed;

pub fn main() anyerror!void {
  const allocator = std.heap.c_allocator;

  var a = try BigInt.initSet(allocator, 5);
  try a.pow(&a, try std.math.powi(u32, 4, try std.math.powi(u32, 3, 2)));
  defer a.deinit();

  const as = try a.toString(allocator, 10, std.fmt.Case.lower);
  std.debug.print("{s}\n", .{ as[as.len - 20 ..] });
  defer allocator.free(as);
}