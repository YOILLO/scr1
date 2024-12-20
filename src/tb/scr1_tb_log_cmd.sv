module scr1_tb_log_cmd();

always_ff @(posedge scr1_top_tb_ahb.i_top.i_imem_ahb.clk) begin
    if (scr1_top_tb_ahb.i_top.i_imem_ahb.imem_resp == 2'b01) begin
        // valid data from ahb router
        if (
            (scr1_top_tb_ahb.i_top.i_imem_ahb.imem_rdata[6 : 0] == 7'b0110011) &
            (scr1_top_tb_ahb.i_top.i_imem_ahb.imem_rdata[14 : 12] == 3'b100)
        ) begin
            // detect xor command
            $display("Detect XOR command: csr_mstatus_mie_ff: %d, csr_mstatus_mpie_ff: %d, csr_mtvec_base: %d, csr_mtvec_mode: %d, csr_mie_meie_ff: %d, csr_mie_mtie_ff: %d, csr_mie_msie_ff: %d, csr_mip_meip: %d, csr_mip_mtip: %d, csr_mip_msip: %d, csr_mepc_ff: %d, csr_mcause_i_ff: %d, csr_mcause_ec_ff: %d, csr_mtval_ff: %d",

            scr1_top_tb_ahb.i_top.i_core_top.i_pipe_top.i_pipe_csr.csr_mstatus_mie_ff,
            scr1_top_tb_ahb.i_top.i_core_top.i_pipe_top.i_pipe_csr.csr_mstatus_mpie_ff,
            scr1_top_tb_ahb.i_top.i_core_top.i_pipe_top.i_pipe_csr.csr_mtvec_base,
            scr1_top_tb_ahb.i_top.i_core_top.i_pipe_top.i_pipe_csr.csr_mtvec_mode,
            scr1_top_tb_ahb.i_top.i_core_top.i_pipe_top.i_pipe_csr.csr_mie_meie_ff,
            scr1_top_tb_ahb.i_top.i_core_top.i_pipe_top.i_pipe_csr.csr_mie_mtie_ff,
            scr1_top_tb_ahb.i_top.i_core_top.i_pipe_top.i_pipe_csr.csr_mie_msie_ff,
            scr1_top_tb_ahb.i_top.i_core_top.i_pipe_top.i_pipe_csr.csr_mip_meip,
            scr1_top_tb_ahb.i_top.i_core_top.i_pipe_top.i_pipe_csr.csr_mip_mtip,
            scr1_top_tb_ahb.i_top.i_core_top.i_pipe_top.i_pipe_csr.csr_mip_msip,
            scr1_top_tb_ahb.i_top.i_core_top.i_pipe_top.i_pipe_csr.csr_mepc_ff,
            scr1_top_tb_ahb.i_top.i_core_top.i_pipe_top.i_pipe_csr.csr_mcause_i_ff,
            scr1_top_tb_ahb.i_top.i_core_top.i_pipe_top.i_pipe_csr.csr_mcause_ec_ff,
            scr1_top_tb_ahb.i_top.i_core_top.i_pipe_top.i_pipe_csr.csr_mtval_ff);
        end
    end
end

endmodule
