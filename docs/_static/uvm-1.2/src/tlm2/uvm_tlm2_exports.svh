//----------------------------------------------------------------------
//   Copyright 2010 Mentor Graphics Corporation
//   Copyright 2010 Synopsys, Inc.
//   All Rights Reserved Worldwide
//
//   Licensed under the Apache License, Version 2.0 (the
//   "License"); you may not use this file except in
//   compliance with the License.  You may obtain a copy of
//   the License at
//
//       http://www.apache.org/licenses/LICENSE-2.0
//
//   Unless required by applicable law or agreed to in
//   writing, software distributed under the License is
//   distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
//   CONDITIONS OF ANY KIND, either express or implied.  See
//   the License for the specific language governing
//   permissions and limitations under the License.
//----------------------------------------------------------------------

//----------------------------------------------------------------------
// Title: TLM2 Export Classes
//
// This section defines the export classes for connecting TLM2
// interfaces.
//----------------------------------------------------------------------


// Class: uvm_tlm_b_transport_export
//
// Blocking transport export class.

class uvm_tlm_b_transport_export #(type T=uvm_tlm_generic_payload)
  extends uvm_port_base #(uvm_tlm_if #(T));
  `UVM_EXPORT_COMMON(`UVM_TLM_B_MASK, "uvm_tlm_b_transport_export")
  `UVM_TLM_B_TRANSPORT_IMP(this.m_if, T, t, delay)
endclass



// Class: uvm_tlm_nb_transport_fw_export
//
// Non-blocking forward transport export class 

class uvm_tlm_nb_transport_fw_export #(type T=uvm_tlm_generic_payload,
                                   type P=uvm_tlm_phase_e)
  extends uvm_port_base #(uvm_tlm_if #(T,P));
  `UVM_EXPORT_COMMON(`UVM_TLM_NB_FW_MASK, "uvm_tlm_nb_transport_fw_export")
  `UVM_TLM_NB_TRANSPORT_FW_IMP(this.m_if, T, P, t, p, delay)
endclass



// Class: uvm_tlm_nb_transport_bw_export
//
// Non-blocking backward transport export class 

class uvm_tlm_nb_transport_bw_export #(type T=uvm_tlm_generic_payload,
                                   type P=uvm_tlm_phase_e)
  extends uvm_port_base #(uvm_tlm_if #(T,P));
   // Function: new
  `UVM_EXPORT_COMMON(`UVM_TLM_NB_BW_MASK, "uvm_tlm_nb_transport_bw_export")
  `UVM_TLM_NB_TRANSPORT_BW_IMP(this.m_if, T, P, t, p, delay)
endclass
