class adder_seqr extends uvm_sequencer#(adder_seq_item);
  `uvm_component_utils(adder_seqr)
  
  function new(string name = "adder_seqr", uvm_component parent);
    super.new(name, parent);
    `uvm_info("SEQR", "Inside constructor", UVM_LOW)
  endfunction
  
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    `uvm_info("SEQR", "Inside build phase", UVM_LOW)
  endfunction
  
  function void connect_phase(uvm_phase phase);
    super.connect_phase(phase);
    `uvm_info("SEQR", "Inside connect phase", UVM_LOW)
  endfunction
endclass