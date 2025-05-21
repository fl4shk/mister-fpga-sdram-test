// Generator : SpinalHDL v1.10.2a    git head : a348a60b7e8b6a455c72e1536ec3d74a2ea16935
// Component : MyTopLevel
// Git hash  : 29a7691e09fef3837c191bd76e2043f7e1bc9637

`timescale 1ns/1ps

module MyTopLevel (
  input  wire [1:0]    io_va_vec_0_inp_a,
  input  wire [1:0]    io_va_vec_0_inp_b,
  input  wire [0:0]    io_va_vec_0_inp_carry,
  input  wire [2:0]    io_va_vec_0_inp_op,
  output wire [1:0]    io_va_vec_0_outp_result,
  output wire [0:0]    io_va_vec_0_outp_carry,
  input  wire [1:0]    io_va_vec_1_inp_a,
  input  wire [1:0]    io_va_vec_1_inp_b,
  input  wire [0:0]    io_va_vec_1_inp_carry,
  input  wire [2:0]    io_va_vec_1_inp_op,
  output wire [1:0]    io_va_vec_1_outp_result,
  output wire [0:0]    io_va_vec_1_outp_carry,
  input  wire [1:0]    io_va_vec_2_inp_a,
  input  wire [1:0]    io_va_vec_2_inp_b,
  input  wire [0:0]    io_va_vec_2_inp_carry,
  input  wire [2:0]    io_va_vec_2_inp_op,
  output wire [1:0]    io_va_vec_2_outp_result,
  output wire [0:0]    io_va_vec_2_outp_carry,
  input  wire [1:0]    io_va_vec_3_inp_a,
  input  wire [1:0]    io_va_vec_3_inp_b,
  input  wire [0:0]    io_va_vec_3_inp_carry,
  input  wire [2:0]    io_va_vec_3_inp_op,
  output wire [1:0]    io_va_vec_3_outp_result,
  output wire [0:0]    io_va_vec_3_outp_carry,
  input  wire [1:0]    io_sel,
  output wire [1:0]    io_result
);
  localparam AluOp_add = 3'd0;
  localparam AluOp_adc = 3'd1;
  localparam AluOp_sub = 3'd2;
  localparam AluOp_sbc = 3'd3;
  localparam AluOp_and_1 = 3'd4;
  localparam AluOp_or_1 = 3'd5;
  localparam AluOp_xor_1 = 3'd6;

  wire       [1:0]    dut_io_vec_0_outp_result;
  wire       [0:0]    dut_io_vec_0_outp_carry;
  wire       [1:0]    dut_io_vec_1_outp_result;
  wire       [0:0]    dut_io_vec_1_outp_carry;
  wire       [1:0]    dut_io_vec_2_outp_result;
  wire       [0:0]    dut_io_vec_2_outp_carry;
  wire       [1:0]    dut_io_vec_3_outp_result;
  wire       [0:0]    dut_io_vec_3_outp_carry;
  reg        [1:0]    _zz_io_result;
  `ifndef SYNTHESIS
  reg [39:0] io_va_vec_0_inp_op_string;
  reg [39:0] io_va_vec_1_inp_op_string;
  reg [39:0] io_va_vec_2_inp_op_string;
  reg [39:0] io_va_vec_3_inp_op_string;
  `endif


  VectorAlu dut (
    .io_vec_0_inp_a       (io_va_vec_0_inp_a[1:0]       ), //i
    .io_vec_0_inp_b       (io_va_vec_0_inp_b[1:0]       ), //i
    .io_vec_0_inp_carry   (io_va_vec_0_inp_carry        ), //i
    .io_vec_0_inp_op      (io_va_vec_0_inp_op[2:0]      ), //i
    .io_vec_0_outp_result (dut_io_vec_0_outp_result[1:0]), //o
    .io_vec_0_outp_carry  (dut_io_vec_0_outp_carry      ), //o
    .io_vec_1_inp_a       (io_va_vec_1_inp_a[1:0]       ), //i
    .io_vec_1_inp_b       (io_va_vec_1_inp_b[1:0]       ), //i
    .io_vec_1_inp_carry   (io_va_vec_1_inp_carry        ), //i
    .io_vec_1_inp_op      (io_va_vec_1_inp_op[2:0]      ), //i
    .io_vec_1_outp_result (dut_io_vec_1_outp_result[1:0]), //o
    .io_vec_1_outp_carry  (dut_io_vec_1_outp_carry      ), //o
    .io_vec_2_inp_a       (io_va_vec_2_inp_a[1:0]       ), //i
    .io_vec_2_inp_b       (io_va_vec_2_inp_b[1:0]       ), //i
    .io_vec_2_inp_carry   (io_va_vec_2_inp_carry        ), //i
    .io_vec_2_inp_op      (io_va_vec_2_inp_op[2:0]      ), //i
    .io_vec_2_outp_result (dut_io_vec_2_outp_result[1:0]), //o
    .io_vec_2_outp_carry  (dut_io_vec_2_outp_carry      ), //o
    .io_vec_3_inp_a       (io_va_vec_3_inp_a[1:0]       ), //i
    .io_vec_3_inp_b       (io_va_vec_3_inp_b[1:0]       ), //i
    .io_vec_3_inp_carry   (io_va_vec_3_inp_carry        ), //i
    .io_vec_3_inp_op      (io_va_vec_3_inp_op[2:0]      ), //i
    .io_vec_3_outp_result (dut_io_vec_3_outp_result[1:0]), //o
    .io_vec_3_outp_carry  (dut_io_vec_3_outp_carry      )  //o
  );
  always @(*) begin
    case(io_sel)
      2'b00 : _zz_io_result = io_va_vec_0_outp_result;
      2'b01 : _zz_io_result = io_va_vec_1_outp_result;
      2'b10 : _zz_io_result = io_va_vec_2_outp_result;
      default : _zz_io_result = io_va_vec_3_outp_result;
    endcase
  end

  `ifndef SYNTHESIS
  always @(*) begin
    case(io_va_vec_0_inp_op)
      AluOp_add : io_va_vec_0_inp_op_string = "add  ";
      AluOp_adc : io_va_vec_0_inp_op_string = "adc  ";
      AluOp_sub : io_va_vec_0_inp_op_string = "sub  ";
      AluOp_sbc : io_va_vec_0_inp_op_string = "sbc  ";
      AluOp_and_1 : io_va_vec_0_inp_op_string = "and_1";
      AluOp_or_1 : io_va_vec_0_inp_op_string = "or_1 ";
      AluOp_xor_1 : io_va_vec_0_inp_op_string = "xor_1";
      default : io_va_vec_0_inp_op_string = "?????";
    endcase
  end
  always @(*) begin
    case(io_va_vec_1_inp_op)
      AluOp_add : io_va_vec_1_inp_op_string = "add  ";
      AluOp_adc : io_va_vec_1_inp_op_string = "adc  ";
      AluOp_sub : io_va_vec_1_inp_op_string = "sub  ";
      AluOp_sbc : io_va_vec_1_inp_op_string = "sbc  ";
      AluOp_and_1 : io_va_vec_1_inp_op_string = "and_1";
      AluOp_or_1 : io_va_vec_1_inp_op_string = "or_1 ";
      AluOp_xor_1 : io_va_vec_1_inp_op_string = "xor_1";
      default : io_va_vec_1_inp_op_string = "?????";
    endcase
  end
  always @(*) begin
    case(io_va_vec_2_inp_op)
      AluOp_add : io_va_vec_2_inp_op_string = "add  ";
      AluOp_adc : io_va_vec_2_inp_op_string = "adc  ";
      AluOp_sub : io_va_vec_2_inp_op_string = "sub  ";
      AluOp_sbc : io_va_vec_2_inp_op_string = "sbc  ";
      AluOp_and_1 : io_va_vec_2_inp_op_string = "and_1";
      AluOp_or_1 : io_va_vec_2_inp_op_string = "or_1 ";
      AluOp_xor_1 : io_va_vec_2_inp_op_string = "xor_1";
      default : io_va_vec_2_inp_op_string = "?????";
    endcase
  end
  always @(*) begin
    case(io_va_vec_3_inp_op)
      AluOp_add : io_va_vec_3_inp_op_string = "add  ";
      AluOp_adc : io_va_vec_3_inp_op_string = "adc  ";
      AluOp_sub : io_va_vec_3_inp_op_string = "sub  ";
      AluOp_sbc : io_va_vec_3_inp_op_string = "sbc  ";
      AluOp_and_1 : io_va_vec_3_inp_op_string = "and_1";
      AluOp_or_1 : io_va_vec_3_inp_op_string = "or_1 ";
      AluOp_xor_1 : io_va_vec_3_inp_op_string = "xor_1";
      default : io_va_vec_3_inp_op_string = "?????";
    endcase
  end
  `endif

  assign io_va_vec_0_outp_result = dut_io_vec_0_outp_result;
  assign io_va_vec_0_outp_carry = dut_io_vec_0_outp_carry;
  assign io_va_vec_1_outp_result = dut_io_vec_1_outp_result;
  assign io_va_vec_1_outp_carry = dut_io_vec_1_outp_carry;
  assign io_va_vec_2_outp_result = dut_io_vec_2_outp_result;
  assign io_va_vec_2_outp_carry = dut_io_vec_2_outp_carry;
  assign io_va_vec_3_outp_result = dut_io_vec_3_outp_result;
  assign io_va_vec_3_outp_carry = dut_io_vec_3_outp_carry;
  assign io_result = _zz_io_result;

endmodule

module VectorAlu (
  input  wire [1:0]    io_vec_0_inp_a,
  input  wire [1:0]    io_vec_0_inp_b,
  input  wire [0:0]    io_vec_0_inp_carry,
  input  wire [2:0]    io_vec_0_inp_op,
  output wire [1:0]    io_vec_0_outp_result,
  output wire [0:0]    io_vec_0_outp_carry,
  input  wire [1:0]    io_vec_1_inp_a,
  input  wire [1:0]    io_vec_1_inp_b,
  input  wire [0:0]    io_vec_1_inp_carry,
  input  wire [2:0]    io_vec_1_inp_op,
  output wire [1:0]    io_vec_1_outp_result,
  output wire [0:0]    io_vec_1_outp_carry,
  input  wire [1:0]    io_vec_2_inp_a,
  input  wire [1:0]    io_vec_2_inp_b,
  input  wire [0:0]    io_vec_2_inp_carry,
  input  wire [2:0]    io_vec_2_inp_op,
  output wire [1:0]    io_vec_2_outp_result,
  output wire [0:0]    io_vec_2_outp_carry,
  input  wire [1:0]    io_vec_3_inp_a,
  input  wire [1:0]    io_vec_3_inp_b,
  input  wire [0:0]    io_vec_3_inp_carry,
  input  wire [2:0]    io_vec_3_inp_op,
  output wire [1:0]    io_vec_3_outp_result,
  output wire [0:0]    io_vec_3_outp_carry
);
  localparam AluOp_add = 3'd0;
  localparam AluOp_adc = 3'd1;
  localparam AluOp_sub = 3'd2;
  localparam AluOp_sbc = 3'd3;
  localparam AluOp_and_1 = 3'd4;
  localparam AluOp_or_1 = 3'd5;
  localparam AluOp_xor_1 = 3'd6;

  wire       [1:0]    aluArr_0_io_outp_result;
  wire       [0:0]    aluArr_0_io_outp_carry;
  wire       [1:0]    aluArr_1_io_outp_result;
  wire       [0:0]    aluArr_1_io_outp_carry;
  wire       [1:0]    aluArr_2_io_outp_result;
  wire       [0:0]    aluArr_2_io_outp_carry;
  wire       [1:0]    aluArr_3_io_outp_result;
  wire       [0:0]    aluArr_3_io_outp_carry;
  `ifndef SYNTHESIS
  reg [39:0] io_vec_0_inp_op_string;
  reg [39:0] io_vec_1_inp_op_string;
  reg [39:0] io_vec_2_inp_op_string;
  reg [39:0] io_vec_3_inp_op_string;
  `endif


  Alu aluArr_0 (
    .io_inp_a       (io_vec_0_inp_a[1:0]         ), //i
    .io_inp_b       (io_vec_0_inp_b[1:0]         ), //i
    .io_inp_carry   (io_vec_0_inp_carry          ), //i
    .io_inp_op      (io_vec_0_inp_op[2:0]        ), //i
    .io_outp_result (aluArr_0_io_outp_result[1:0]), //o
    .io_outp_carry  (aluArr_0_io_outp_carry      )  //o
  );
  Alu aluArr_1 (
    .io_inp_a       (io_vec_1_inp_a[1:0]         ), //i
    .io_inp_b       (io_vec_1_inp_b[1:0]         ), //i
    .io_inp_carry   (io_vec_1_inp_carry          ), //i
    .io_inp_op      (io_vec_1_inp_op[2:0]        ), //i
    .io_outp_result (aluArr_1_io_outp_result[1:0]), //o
    .io_outp_carry  (aluArr_1_io_outp_carry      )  //o
  );
  Alu aluArr_2 (
    .io_inp_a       (io_vec_2_inp_a[1:0]         ), //i
    .io_inp_b       (io_vec_2_inp_b[1:0]         ), //i
    .io_inp_carry   (io_vec_2_inp_carry          ), //i
    .io_inp_op      (io_vec_2_inp_op[2:0]        ), //i
    .io_outp_result (aluArr_2_io_outp_result[1:0]), //o
    .io_outp_carry  (aluArr_2_io_outp_carry      )  //o
  );
  Alu aluArr_3 (
    .io_inp_a       (io_vec_3_inp_a[1:0]         ), //i
    .io_inp_b       (io_vec_3_inp_b[1:0]         ), //i
    .io_inp_carry   (io_vec_3_inp_carry          ), //i
    .io_inp_op      (io_vec_3_inp_op[2:0]        ), //i
    .io_outp_result (aluArr_3_io_outp_result[1:0]), //o
    .io_outp_carry  (aluArr_3_io_outp_carry      )  //o
  );
  `ifndef SYNTHESIS
  always @(*) begin
    case(io_vec_0_inp_op)
      AluOp_add : io_vec_0_inp_op_string = "add  ";
      AluOp_adc : io_vec_0_inp_op_string = "adc  ";
      AluOp_sub : io_vec_0_inp_op_string = "sub  ";
      AluOp_sbc : io_vec_0_inp_op_string = "sbc  ";
      AluOp_and_1 : io_vec_0_inp_op_string = "and_1";
      AluOp_or_1 : io_vec_0_inp_op_string = "or_1 ";
      AluOp_xor_1 : io_vec_0_inp_op_string = "xor_1";
      default : io_vec_0_inp_op_string = "?????";
    endcase
  end
  always @(*) begin
    case(io_vec_1_inp_op)
      AluOp_add : io_vec_1_inp_op_string = "add  ";
      AluOp_adc : io_vec_1_inp_op_string = "adc  ";
      AluOp_sub : io_vec_1_inp_op_string = "sub  ";
      AluOp_sbc : io_vec_1_inp_op_string = "sbc  ";
      AluOp_and_1 : io_vec_1_inp_op_string = "and_1";
      AluOp_or_1 : io_vec_1_inp_op_string = "or_1 ";
      AluOp_xor_1 : io_vec_1_inp_op_string = "xor_1";
      default : io_vec_1_inp_op_string = "?????";
    endcase
  end
  always @(*) begin
    case(io_vec_2_inp_op)
      AluOp_add : io_vec_2_inp_op_string = "add  ";
      AluOp_adc : io_vec_2_inp_op_string = "adc  ";
      AluOp_sub : io_vec_2_inp_op_string = "sub  ";
      AluOp_sbc : io_vec_2_inp_op_string = "sbc  ";
      AluOp_and_1 : io_vec_2_inp_op_string = "and_1";
      AluOp_or_1 : io_vec_2_inp_op_string = "or_1 ";
      AluOp_xor_1 : io_vec_2_inp_op_string = "xor_1";
      default : io_vec_2_inp_op_string = "?????";
    endcase
  end
  always @(*) begin
    case(io_vec_3_inp_op)
      AluOp_add : io_vec_3_inp_op_string = "add  ";
      AluOp_adc : io_vec_3_inp_op_string = "adc  ";
      AluOp_sub : io_vec_3_inp_op_string = "sub  ";
      AluOp_sbc : io_vec_3_inp_op_string = "sbc  ";
      AluOp_and_1 : io_vec_3_inp_op_string = "and_1";
      AluOp_or_1 : io_vec_3_inp_op_string = "or_1 ";
      AluOp_xor_1 : io_vec_3_inp_op_string = "xor_1";
      default : io_vec_3_inp_op_string = "?????";
    endcase
  end
  `endif

  assign io_vec_0_outp_result = aluArr_0_io_outp_result;
  assign io_vec_0_outp_carry = aluArr_0_io_outp_carry;
  assign io_vec_1_outp_result = aluArr_1_io_outp_result;
  assign io_vec_1_outp_carry = aluArr_1_io_outp_carry;
  assign io_vec_2_outp_result = aluArr_2_io_outp_result;
  assign io_vec_2_outp_carry = aluArr_2_io_outp_carry;
  assign io_vec_3_outp_result = aluArr_3_io_outp_result;
  assign io_vec_3_outp_carry = aluArr_3_io_outp_carry;

endmodule

//Alu_3 replaced by Alu

//Alu_2 replaced by Alu

//Alu_1 replaced by Alu

module Alu (
  input  wire [1:0]    io_inp_a,
  input  wire [1:0]    io_inp_b,
  input  wire [0:0]    io_inp_carry,
  input  wire [2:0]    io_inp_op,
  output reg  [1:0]    io_outp_result,
  output reg  [0:0]    io_outp_carry
);
  localparam AluOp_add = 3'd0;
  localparam AluOp_adc = 3'd1;
  localparam AluOp_sub = 3'd2;
  localparam AluOp_sbc = 3'd3;
  localparam AluOp_and_1 = 3'd4;
  localparam AluOp_or_1 = 3'd5;
  localparam AluOp_xor_1 = 3'd6;

  wire       [1:0]    rcaArr_2_io_inp_b;
  wire       [1:0]    rcaArr_3_io_inp_b;
  wire       [1:0]    rcaArr_0_io_outp_sum;
  wire       [0:0]    rcaArr_0_io_outp_carry;
  wire       [1:0]    rcaArr_1_io_outp_sum;
  wire       [0:0]    rcaArr_1_io_outp_carry;
  wire       [1:0]    rcaArr_2_io_outp_sum;
  wire       [0:0]    rcaArr_2_io_outp_carry;
  wire       [1:0]    rcaArr_3_io_outp_sum;
  wire       [0:0]    rcaArr_3_io_outp_carry;
  wire       [2:0]    _zz_io_outp_result;
  wire       [2:0]    _zz_io_outp_result_1;
  wire       [2:0]    _zz_io_outp_result_2;
  wire       [2:0]    _zz_io_outp_result_3;
  wire       [2:0]    _zz_io_outp_result_4;
  wire       [2:0]    _zz_io_outp_result_5;
  `ifndef SYNTHESIS
  reg [39:0] io_inp_op_string;
  `endif


  RippleCarryAdder_12 rcaArr_0 (
    .io_inp_a      (io_inp_a[1:0]            ), //i
    .io_inp_b      (io_inp_b[1:0]            ), //i
    .io_inp_carry  (1'b0                     ), //i
    .io_outp_sum   (rcaArr_0_io_outp_sum[1:0]), //o
    .io_outp_carry (rcaArr_0_io_outp_carry   )  //o
  );
  RippleCarryAdder_12 rcaArr_1 (
    .io_inp_a      (io_inp_a[1:0]            ), //i
    .io_inp_b      (io_inp_b[1:0]            ), //i
    .io_inp_carry  (io_inp_carry             ), //i
    .io_outp_sum   (rcaArr_1_io_outp_sum[1:0]), //o
    .io_outp_carry (rcaArr_1_io_outp_carry   )  //o
  );
  RippleCarryAdder_12 rcaArr_2 (
    .io_inp_a      (io_inp_a[1:0]            ), //i
    .io_inp_b      (rcaArr_2_io_inp_b[1:0]   ), //i
    .io_inp_carry  (1'b0                     ), //i
    .io_outp_sum   (rcaArr_2_io_outp_sum[1:0]), //o
    .io_outp_carry (rcaArr_2_io_outp_carry   )  //o
  );
  RippleCarryAdder_12 rcaArr_3 (
    .io_inp_a      (io_inp_a[1:0]            ), //i
    .io_inp_b      (rcaArr_3_io_inp_b[1:0]   ), //i
    .io_inp_carry  (io_inp_carry             ), //i
    .io_outp_sum   (rcaArr_3_io_outp_sum[1:0]), //o
    .io_outp_carry (rcaArr_3_io_outp_carry   )  //o
  );
  `ifndef SYNTHESIS
  always @(*) begin
    case(io_inp_op)
      AluOp_add : io_inp_op_string = "add  ";
      AluOp_adc : io_inp_op_string = "adc  ";
      AluOp_sub : io_inp_op_string = "sub  ";
      AluOp_sbc : io_inp_op_string = "sbc  ";
      AluOp_and_1 : io_inp_op_string = "and_1";
      AluOp_or_1 : io_inp_op_string = "or_1 ";
      AluOp_xor_1 : io_inp_op_string = "xor_1";
      default : io_inp_op_string = "?????";
    endcase
  end
  `endif

  assign rcaArr_2_io_inp_b = (~ io_inp_b);
  assign rcaArr_3_io_inp_b = (~ io_inp_b);
  assign _zz_io_outp_result = {rcaArr_0_io_outp_carry,rcaArr_0_io_outp_sum};
  always @(*) begin
    case(io_inp_op)
      AluOp_add : begin
        io_outp_result = _zz_io_outp_result[1 : 0];
      end
      AluOp_adc : begin
        io_outp_result = _zz_io_outp_result_1[1 : 0];
      end
      AluOp_sub : begin
        io_outp_result = rcaArr_2_io_outp_sum;
      end
      AluOp_sbc : begin
        io_outp_result = _zz_io_outp_result_2[1 : 0];
      end
      AluOp_and_1 : begin
        io_outp_result = _zz_io_outp_result_3[1 : 0];
      end
      AluOp_or_1 : begin
        io_outp_result = _zz_io_outp_result_4[1 : 0];
      end
      default : begin
        io_outp_result = _zz_io_outp_result_5[1 : 0];
      end
    endcase
  end

  always @(*) begin
    case(io_inp_op)
      AluOp_add : begin
        io_outp_carry = _zz_io_outp_result[2 : 2];
      end
      AluOp_adc : begin
        io_outp_carry = _zz_io_outp_result_1[2 : 2];
      end
      AluOp_sub : begin
        io_outp_carry = rcaArr_2_io_outp_carry;
      end
      AluOp_sbc : begin
        io_outp_carry = _zz_io_outp_result_2[2 : 2];
      end
      AluOp_and_1 : begin
        io_outp_carry = _zz_io_outp_result_3[2 : 2];
      end
      AluOp_or_1 : begin
        io_outp_carry = _zz_io_outp_result_4[2 : 2];
      end
      default : begin
        io_outp_carry = _zz_io_outp_result_5[2 : 2];
      end
    endcase
  end

  assign _zz_io_outp_result_1 = {rcaArr_1_io_outp_carry,rcaArr_1_io_outp_sum};
  assign _zz_io_outp_result_2 = {rcaArr_3_io_outp_carry,rcaArr_3_io_outp_sum};
  assign _zz_io_outp_result_3 = {1'b0,(io_inp_a & io_inp_b)};
  assign _zz_io_outp_result_4 = {1'b0,(io_inp_a | io_inp_b)};
  assign _zz_io_outp_result_5 = {1'b0,(io_inp_a ^ io_inp_b)};

endmodule

//RippleCarryAdder_3 replaced by RippleCarryAdder_12

//RippleCarryAdder_2 replaced by RippleCarryAdder_12

//RippleCarryAdder_1 replaced by RippleCarryAdder_12

//RippleCarryAdder replaced by RippleCarryAdder_12

//RippleCarryAdder_7 replaced by RippleCarryAdder_12

//RippleCarryAdder_6 replaced by RippleCarryAdder_12

//RippleCarryAdder_5 replaced by RippleCarryAdder_12

//RippleCarryAdder_4 replaced by RippleCarryAdder_12

//RippleCarryAdder_11 replaced by RippleCarryAdder_12

//RippleCarryAdder_10 replaced by RippleCarryAdder_12

//RippleCarryAdder_9 replaced by RippleCarryAdder_12

//RippleCarryAdder_8 replaced by RippleCarryAdder_12

//RippleCarryAdder_15 replaced by RippleCarryAdder_12

//RippleCarryAdder_14 replaced by RippleCarryAdder_12

//RippleCarryAdder_13 replaced by RippleCarryAdder_12

module RippleCarryAdder_12 (
  input  wire [1:0]    io_inp_a,
  input  wire [1:0]    io_inp_b,
  input  wire [0:0]    io_inp_carry,
  output reg  [1:0]    io_outp_sum,
  output wire [0:0]    io_outp_carry
);

  wire       [0:0]    faArr_0_io_inp_a;
  wire       [0:0]    faArr_0_io_inp_b;
  wire       [0:0]    faArr_1_io_inp_a;
  wire       [0:0]    faArr_1_io_inp_b;
  wire       [0:0]    faArr_0_io_outp_sum;
  wire       [0:0]    faArr_0_io_outp_carry;
  wire       [0:0]    faArr_1_io_outp_sum;
  wire       [0:0]    faArr_1_io_outp_carry;

  FullAdder_30 faArr_0 (
    .io_inp_a      (faArr_0_io_inp_a     ), //i
    .io_inp_b      (faArr_0_io_inp_b     ), //i
    .io_inp_carry  (io_inp_carry         ), //i
    .io_outp_sum   (faArr_0_io_outp_sum  ), //o
    .io_outp_carry (faArr_0_io_outp_carry)  //o
  );
  FullAdder_30 faArr_1 (
    .io_inp_a      (faArr_1_io_inp_a     ), //i
    .io_inp_b      (faArr_1_io_inp_b     ), //i
    .io_inp_carry  (faArr_0_io_outp_carry), //i
    .io_outp_sum   (faArr_1_io_outp_sum  ), //o
    .io_outp_carry (faArr_1_io_outp_carry)  //o
  );
  assign io_outp_carry = faArr_1_io_outp_carry;
  assign faArr_0_io_inp_a[0] = io_inp_a[0];
  assign faArr_0_io_inp_b[0] = io_inp_b[0];
  always @(*) begin
    io_outp_sum[0] = faArr_0_io_outp_sum[0];
    io_outp_sum[1] = faArr_1_io_outp_sum[0];
  end

  assign faArr_1_io_inp_a[0] = io_inp_a[1];
  assign faArr_1_io_inp_b[0] = io_inp_b[1];

endmodule

//FullAdder_1 replaced by FullAdder_30

//FullAdder replaced by FullAdder_30

//FullAdder_3 replaced by FullAdder_30

//FullAdder_2 replaced by FullAdder_30

//FullAdder_5 replaced by FullAdder_30

//FullAdder_4 replaced by FullAdder_30

//FullAdder_7 replaced by FullAdder_30

//FullAdder_6 replaced by FullAdder_30

//FullAdder_9 replaced by FullAdder_30

//FullAdder_8 replaced by FullAdder_30

//FullAdder_11 replaced by FullAdder_30

//FullAdder_10 replaced by FullAdder_30

//FullAdder_13 replaced by FullAdder_30

//FullAdder_12 replaced by FullAdder_30

//FullAdder_15 replaced by FullAdder_30

//FullAdder_14 replaced by FullAdder_30

//FullAdder_17 replaced by FullAdder_30

//FullAdder_16 replaced by FullAdder_30

//FullAdder_19 replaced by FullAdder_30

//FullAdder_18 replaced by FullAdder_30

//FullAdder_21 replaced by FullAdder_30

//FullAdder_20 replaced by FullAdder_30

//FullAdder_23 replaced by FullAdder_30

//FullAdder_22 replaced by FullAdder_30

//FullAdder_25 replaced by FullAdder_30

//FullAdder_24 replaced by FullAdder_30

//FullAdder_27 replaced by FullAdder_30

//FullAdder_26 replaced by FullAdder_30

//FullAdder_29 replaced by FullAdder_30

//FullAdder_28 replaced by FullAdder_30

//FullAdder_31 replaced by FullAdder_30

module FullAdder_30 (
  input  wire [0:0]    io_inp_a,
  input  wire [0:0]    io_inp_b,
  input  wire [0:0]    io_inp_carry,
  output wire [0:0]    io_outp_sum,
  output wire [0:0]    io_outp_carry
);

  wire       [1:0]    _zz__zz_io_outp_sum;
  wire       [1:0]    _zz__zz_io_outp_sum_1;
  wire       [1:0]    _zz_io_outp_sum;

  assign _zz__zz_io_outp_sum = (_zz__zz_io_outp_sum_1 + {1'b0,io_inp_carry});
  assign _zz__zz_io_outp_sum_1 = ({1'b0,io_inp_a} + {1'b0,io_inp_b});
  assign _zz_io_outp_sum = _zz__zz_io_outp_sum;
  assign io_outp_sum = _zz_io_outp_sum[0 : 0];
  assign io_outp_carry = _zz_io_outp_sum[1 : 1];

endmodule
