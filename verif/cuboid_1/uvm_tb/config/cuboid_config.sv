////////////////////////////////////////////////////////////////////////////////
//
//  Filename      : cuboid_config.sv
//  Author        : MR
//  Creation Date : 11/01/2021
//
//  Copyright 2020 Sahil Semiconductor. All Rights Reserved.
//
//  No portions of this material may be reproduced in any form without
//  the written permission of:
//
//    Sahil Semiconductor
//    1601 McCarthy Blvd
//    Milpitas CA – 95035
//
//  All information contained in this document is Sahil Semiconductor
//  company private, proprietary and trade secret.
//
//  Description
//  ===========
//  Common Configuration Class
////////////////////////////////////////////////////////////////////////////////

class cuboid_config extends uvm_component;

  uvm_cmdline_processor clp = uvm_cmdline_processor::get_inst();

  // int length;
  // int width;
  // int height;
  int min_length;
  int min_width;
  int min_height;
  int max_length;
  int max_width;
  int max_height;

  `uvm_component_utils_begin(cuboid_config)
  // `uvm_field_int(length, UVM_DEC)
  // `uvm_field_int(width, UVM_DEC)
  // `uvm_field_int(height, UVM_DEC)
    `uvm_field_int(min_length, UVM_DEC)
    `uvm_field_int(min_width, UVM_DEC)
    `uvm_field_int(min_height, UVM_DEC)
    `uvm_field_int(max_length, UVM_DEC)
    `uvm_field_int(max_width, UVM_DEC)
    `uvm_field_int(max_height, UVM_DEC)
  `uvm_component_utils_end

  function new(string name = "cuboid_config", uvm_component parent = null);
    string arg_value;
    super.new(name, parent);
    if (clp.get_arg_value("+minlength=", arg_value)) min_length = arg_value.atoi();
    if (clp.get_arg_value("+maxlength=", arg_value)) max_length = arg_value.atoi();
    if (clp.get_arg_value("+minwidth=", arg_value)) min_width = arg_value.atoi();
    if (clp.get_arg_value("+maxwidth=", arg_value)) max_width = arg_value.atoi();
    if (clp.get_arg_value("+minheight=", arg_value)) min_height = arg_value.atoi();
    if (clp.get_arg_value("+maxheight=", arg_value)) max_height = arg_value.atoi();
    // if (clp.get_arg_value("+length=", arg_value)) length = arg_value.atoi();
    // else length = 'd10;
    // if (clp.get_arg_value("+width=", arg_value)) width = arg_value.atoi();
    // else width = 'd5;
    // if (clp.get_arg_value("+height=", arg_value)) height = arg_value.atoi();
    // else height = 'd10;

  endfunction

  // TODO add Configurations



  // constraint config_1_c  {config_1 == 100;}
  // constraint config_2_c  {config_2 ==   0;}



  // function void build_phase(uvm_phase phase);
  //   string arg_value;
  //   // super.post_randomize();
  //   if (clp.get_arg_value("+length=", arg_value)) length = arg_value.atoi();
  //   else length = 'd10;
  //   if (clp.get_arg_value("+width=", arg_value)) width = arg_value.atoi();
  //   else width = 'd5;
  //   if (clp.get_arg_value("+height=", arg_value)) height = arg_value.atoi();
  //   else height = 'd10;

  // endfunction  // build_phase

endclass  // cuboid_config
