module forwardUnit (reg_write_mw,reg_write_xm,rd_register_mw,rd_register_xm,rs_register_dx,rt_register_dx,rs_mux,rt_mux);

input wire reg_write_mw;
input wire reg_write_xm;
input wire rd_register_mw;
input wire rd_register_xm;
input wire rs_register_dx;
input wire rt_register_dx;
output wire [1:0] rs_mux;
output wire [1:0] rt_mux;

wire forwardDetected_xm_rs;
wire forwardDetected_mw;

assign forwardDetected=(reg_write_xm && (rd_register_xm != 0) && (rd_register_xm == rs_register_dx))||
(reg_write_mw && (rd_register_mw != 0) && (rd_register_mw == rs_register_dx))||
(reg_write_xm && (rd_register_xm != 0) && (rd_register_xm == rt_register_dx))||
(reg_write_mw && (rd_register_mw != 0) && (rd_register_mw == rt_register_dx));

if (reg_write_xm && (rd_register_xm != 0) && (rd_register_xm == rs_register_dx))
{
    assign rs_mux= 2'b10

}
elsif (reg_write_mw && (rd_register_mw != 0) && (rd_register_mw == rs_register_dx)){
    assign rs_mux= 2b'01
}
if (reg_write_xm && (rd_register_xm != 0) && (rd_register_xm == rt_register_dx)){
    assign rt_mux= 2'b01
}
if (reg_write_mw && (rd_register_mw != 0) && (rd_register_mw == rt_register_dx)){
    assign rt_mux= 2b'10
}



//assign 


endmodule