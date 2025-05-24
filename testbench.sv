`timescale 1ns/1ns

import uvm_pkg::*;
`include "uvm_macros.svh"
`include "interface.sv"
`include "seq_item.sv"
`include "seq.sv"
`include "drv.sv"
`include "mon.sv"
`include "agent.sv"
`include "scb.sv"
`include "env.sv"
`include "test.sv"

module tb;
  
    
    
  spi_i vif();
  
  spi_mem dut (.clk(vif.clk), .rst(vif.rst), .cs(vif.cs), .miso(vif.miso), .ready(vif.ready), .mosi(vif.mosi), .op_done(vif.op_done));
  
  initial begin
    vif.clk <= 0;
  end
 
  always #10 vif.clk <= ~vif.clk;
 
  
  
  initial begin
    uvm_config_db#(virtual spi_i)::set(null, "*", "vif", vif);
    run_test("test");
   end
  
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
 
  
endmodule