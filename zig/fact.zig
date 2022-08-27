const std = @import("std");
const BigInt = std.math.big.int.Managed;

const target = 1000;

pub fn main() !void {
  const allocator = std.heap.c_allocator;

  var f = try BigInt.initSet(allocator, 1);
  var c = try BigInt.initSet(allocator, 1);
  var one = try BigInt.initSet(allocator, 1);

  var i: usize = 0;
  while (i < target) : (i += 1) {
    try f.mul(&f, &c);
    try c.add(&c, &one);
  }

  const as = try f.toString(allocator, 10, std.fmt.Case.lower);
  std.debug.print("{s}\n", .{ as });
  defer allocator.free(as);
}