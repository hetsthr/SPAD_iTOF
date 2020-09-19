/* Generated by Yosys 0.9 (git sha1 UNKNOWN, gcc 4.8.5 -fPIC -Os) */

(* cells_not_processed =  1  *)
(* src = "coincidence_detector.v:2" *)
module coincidence_detector(a, b, c, d, SPAD_valid);
  wire _0_;
  wire _1_;
  wire _2_;
  wire _3_;
  (* src = "coincidence_detector.v:4" *)
  output SPAD_valid;
  (* src = "coincidence_detector.v:3" *)
  input a;
  (* src = "coincidence_detector.v:3" *)
  input b;
  (* src = "coincidence_detector.v:3" *)
  input c;
  (* src = "coincidence_detector.v:3" *)
  input d;
  OR2X1 _4_ (
    .A(c),
    .B(d),
    .Y(_0_)
  );
  AOI21X1 _5_ (
    .A(a),
    .B(b),
    .C(_0_),
    .Y(_1_)
  );
  NAND2X1 _6_ (
    .A(c),
    .B(d),
    .Y(_2_)
  );
  NOR2X1 _7_ (
    .A(a),
    .B(b),
    .Y(_3_)
  );
  OAI21X1 _8_ (
    .A(_1_),
    .B(_3_),
    .C(_2_),
    .Y(SPAD_valid)
  );
endmodule