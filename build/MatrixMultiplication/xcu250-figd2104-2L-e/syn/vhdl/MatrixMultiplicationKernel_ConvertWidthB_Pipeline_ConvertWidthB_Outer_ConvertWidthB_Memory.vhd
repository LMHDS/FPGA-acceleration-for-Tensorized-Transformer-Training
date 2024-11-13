-- ==============================================================
-- Generated by Vitis HLS v2024.1
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- ==============================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity MatrixMultiplicationKernel_ConvertWidthB_Pipeline_ConvertWidthB_Outer_ConvertWidthB_Memory is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    bMemory_dout : IN STD_LOGIC_VECTOR (511 downto 0);
    bMemory_num_data_valid : IN STD_LOGIC_VECTOR (6 downto 0);
    bMemory_fifo_cap : IN STD_LOGIC_VECTOR (6 downto 0);
    bMemory_empty_n : IN STD_LOGIC;
    bMemory_read : OUT STD_LOGIC;
    bFeed_din : OUT STD_LOGIC_VECTOR (255 downto 0);
    bFeed_num_data_valid : IN STD_LOGIC_VECTOR (2 downto 0);
    bFeed_fifo_cap : IN STD_LOGIC_VECTOR (2 downto 0);
    bFeed_full_n : IN STD_LOGIC;
    bFeed_write : OUT STD_LOGIC;
    bound : IN STD_LOGIC_VECTOR (60 downto 0) );
end;


architecture behav of MatrixMultiplicationKernel_ConvertWidthB_Pipeline_ConvertWidthB_Outer_ConvertWidthB_Memory is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv512_lc_1 : STD_LOGIC_VECTOR (511 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv61_0 : STD_LOGIC_VECTOR (60 downto 0) := "0000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv61_1 : STD_LOGIC_VECTOR (60 downto 0) := "0000000000000000000000000000000000000000000000000000000000001";
    constant ap_const_lv2_2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv8_20 : STD_LOGIC_VECTOR (7 downto 0) := "00100000";
    constant ap_const_lv8_40 : STD_LOGIC_VECTOR (7 downto 0) := "01000000";
    constant ap_const_lv8_60 : STD_LOGIC_VECTOR (7 downto 0) := "01100000";
    constant ap_const_lv8_80 : STD_LOGIC_VECTOR (7 downto 0) := "10000000";
    constant ap_const_lv8_A0 : STD_LOGIC_VECTOR (7 downto 0) := "10100000";
    constant ap_const_lv8_C0 : STD_LOGIC_VECTOR (7 downto 0) := "11000000";
    constant ap_const_lv8_E0 : STD_LOGIC_VECTOR (7 downto 0) := "11100000";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter3 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal icmp_ln309_reg_414 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state3_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_state4_pp0_stage0_iter3 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal icmp_ln303_fu_111_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter1_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal bFeed_blk_n : STD_LOGIC;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal bMemory_blk_n : STD_LOGIC;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal icmp_ln306_fu_125_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln306_reg_409 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln309_fu_139_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal empty_fu_145_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal empty_reg_418 : STD_LOGIC_VECTOR (0 downto 0);
    signal empty_reg_418_pp0_iter2_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal j_2_fu_62 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    signal j_fu_149_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal p_0_0_06_fu_66 : STD_LOGIC_VECTOR (511 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    signal select_ln302_fu_168_p3 : STD_LOGIC_VECTOR (511 downto 0);
    signal indvar_flatten_fu_70 : STD_LOGIC_VECTOR (60 downto 0) := "0000000000000000000000000000000000000000000000000000000000000";
    signal add_ln303_fu_119_p2 : STD_LOGIC_VECTOR (60 downto 0);
    signal bMemory_read_local : STD_LOGIC;
    signal tmp_s_fu_356_p9 : STD_LOGIC_VECTOR (255 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal bFeed_write_local : STD_LOGIC;
    signal select_ln302_1_fu_131_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal i_assign_fu_188_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal zext_ln170_fu_195_p1 : STD_LOGIC_VECTOR (511 downto 0);
    signal lshr_ln170_fu_199_p2 : STD_LOGIC_VECTOR (511 downto 0);
    signal or_ln_fu_209_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal zext_ln170_1_fu_216_p1 : STD_LOGIC_VECTOR (511 downto 0);
    signal lshr_ln170_1_fu_220_p2 : STD_LOGIC_VECTOR (511 downto 0);
    signal or_ln170_1_fu_230_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal zext_ln170_2_fu_237_p1 : STD_LOGIC_VECTOR (511 downto 0);
    signal lshr_ln170_2_fu_241_p2 : STD_LOGIC_VECTOR (511 downto 0);
    signal or_ln170_2_fu_251_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal zext_ln170_3_fu_258_p1 : STD_LOGIC_VECTOR (511 downto 0);
    signal lshr_ln170_3_fu_262_p2 : STD_LOGIC_VECTOR (511 downto 0);
    signal or_ln170_3_fu_272_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal zext_ln170_4_fu_279_p1 : STD_LOGIC_VECTOR (511 downto 0);
    signal lshr_ln170_4_fu_283_p2 : STD_LOGIC_VECTOR (511 downto 0);
    signal or_ln170_4_fu_293_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal zext_ln170_5_fu_300_p1 : STD_LOGIC_VECTOR (511 downto 0);
    signal lshr_ln170_5_fu_304_p2 : STD_LOGIC_VECTOR (511 downto 0);
    signal or_ln170_5_fu_314_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal zext_ln170_6_fu_321_p1 : STD_LOGIC_VECTOR (511 downto 0);
    signal lshr_ln170_6_fu_325_p2 : STD_LOGIC_VECTOR (511 downto 0);
    signal or_ln170_6_fu_335_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal zext_ln170_7_fu_342_p1 : STD_LOGIC_VECTOR (511 downto 0);
    signal lshr_ln170_7_fu_346_p2 : STD_LOGIC_VECTOR (511 downto 0);
    signal trunc_ln170_39_fu_352_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal trunc_ln170_38_fu_331_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal trunc_ln170_37_fu_310_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal trunc_ln170_36_fu_289_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal trunc_ln170_35_fu_268_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal trunc_ln170_34_fu_247_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal trunc_ln170_33_fu_226_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal trunc_ln170_fu_205_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter2_reg : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ready_sig : STD_LOGIC;
    signal ap_done_sig : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component MatrixMultiplicationKernel_flow_control_loop_pipe_sequential_init IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_start_int : OUT STD_LOGIC;
        ap_loop_init : OUT STD_LOGIC;
        ap_ready_int : IN STD_LOGIC;
        ap_loop_exit_ready : IN STD_LOGIC;
        ap_loop_exit_done : IN STD_LOGIC;
        ap_continue_int : OUT STD_LOGIC;
        ap_done_int : IN STD_LOGIC );
    end component;



begin
    flow_control_loop_pipe_sequential_init_U : component MatrixMultiplicationKernel_flow_control_loop_pipe_sequential_init
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => ap_start,
        ap_ready => ap_ready_sig,
        ap_done => ap_done_sig,
        ap_start_int => ap_start_int,
        ap_loop_init => ap_loop_init,
        ap_ready_int => ap_ready_int,
        ap_loop_exit_ready => ap_condition_exit_pp0_iter1_stage0,
        ap_loop_exit_done => ap_done_int,
        ap_continue_int => ap_continue_int,
        ap_done_int => ap_done_int);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue_int = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_loop_exit_ready_pp0_iter2_reg = ap_const_logic_1))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter1_stage0)) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_enable_reg_pp0_iter1 <= ap_start_int;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter2_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter1_stage0)) then 
                    ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
                elsif ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter3_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter3 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
                end if; 
            end if;
        end if;
    end process;


    indvar_flatten_fu_70_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    indvar_flatten_fu_70 <= ap_const_lv61_0;
                elsif (((icmp_ln303_fu_111_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                    indvar_flatten_fu_70 <= add_ln303_fu_119_p2;
                end if;
            end if; 
        end if;
    end process;

    j_2_fu_62_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    j_2_fu_62 <= ap_const_lv2_0;
                elsif (((icmp_ln303_fu_111_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                    j_2_fu_62 <= j_fu_149_p2;
                end if;
            end if; 
        end if;
    end process;

    p_0_0_06_fu_66_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
                    p_0_0_06_fu_66 <= ap_const_lv512_lc_1;
                elsif (((icmp_ln309_reg_414 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
                    p_0_0_06_fu_66 <= bMemory_dout;
                elsif (((icmp_ln309_reg_414 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
                    p_0_0_06_fu_66 <= select_ln302_fu_168_p3;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready;
                empty_reg_418 <= empty_fu_145_p1;
                icmp_ln306_reg_409 <= icmp_ln306_fu_125_p2;
                icmp_ln309_reg_414 <= icmp_ln309_fu_139_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                empty_reg_418_pp0_iter2_reg <= empty_reg_418;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    add_ln303_fu_119_p2 <= std_logic_vector(unsigned(indvar_flatten_fu_70) + unsigned(ap_const_lv61_1));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_01001_assign_proc : process(ap_enable_reg_pp0_iter2, ap_enable_reg_pp0_iter3, ap_block_state3_pp0_stage0_iter2, ap_block_state4_pp0_stage0_iter3)
    begin
                ap_block_pp0_stage0_01001 <= (((ap_enable_reg_pp0_iter3 = ap_const_logic_1) and (ap_const_boolean_1 = ap_block_state4_pp0_stage0_iter3)) or ((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_1 = ap_block_state3_pp0_stage0_iter2)));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(ap_enable_reg_pp0_iter2, ap_enable_reg_pp0_iter3, ap_block_state3_pp0_stage0_iter2, ap_block_state4_pp0_stage0_iter3)
    begin
                ap_block_pp0_stage0_11001 <= (((ap_enable_reg_pp0_iter3 = ap_const_logic_1) and (ap_const_boolean_1 = ap_block_state4_pp0_stage0_iter3)) or ((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_1 = ap_block_state3_pp0_stage0_iter2)));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(ap_enable_reg_pp0_iter2, ap_enable_reg_pp0_iter3, ap_block_state3_pp0_stage0_iter2, ap_block_state4_pp0_stage0_iter3)
    begin
                ap_block_pp0_stage0_subdone <= (((ap_enable_reg_pp0_iter3 = ap_const_logic_1) and (ap_const_boolean_1 = ap_block_state4_pp0_stage0_iter3)) or ((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_1 = ap_block_state3_pp0_stage0_iter2)));
    end process;


    ap_block_state3_pp0_stage0_iter2_assign_proc : process(bMemory_empty_n, icmp_ln309_reg_414)
    begin
                ap_block_state3_pp0_stage0_iter2 <= ((icmp_ln309_reg_414 = ap_const_lv1_1) and (bMemory_empty_n = ap_const_logic_0));
    end process;


    ap_block_state4_pp0_stage0_iter3_assign_proc : process(bFeed_full_n)
    begin
                ap_block_state4_pp0_stage0_iter3 <= (bFeed_full_n = ap_const_logic_0);
    end process;


    ap_condition_exit_pp0_iter1_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_subdone, icmp_ln303_fu_111_p2)
    begin
        if (((icmp_ln303_fu_111_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter1_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter1_stage0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_done <= ap_done_sig;

    ap_done_int_assign_proc : process(ap_block_pp0_stage0_subdone, ap_done_reg, ap_loop_exit_ready_pp0_iter2_reg)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_loop_exit_ready_pp0_iter2_reg = ap_const_logic_1))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_reg_pp0_iter0 <= ap_start_int;

    ap_idle_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_idle_pp0, ap_start_int)
    begin
        if (((ap_start_int = ap_const_logic_0) and (ap_idle_pp0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, ap_enable_reg_pp0_iter3)
    begin
        if (((ap_enable_reg_pp0_iter3 = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter1_stage0;
    ap_ready <= ap_ready_sig;

    ap_ready_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    bFeed_blk_n_assign_proc : process(ap_enable_reg_pp0_iter3, bFeed_full_n, ap_block_pp0_stage0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1))) then 
            bFeed_blk_n <= bFeed_full_n;
        else 
            bFeed_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    bFeed_din <= tmp_s_fu_356_p9;
    bFeed_write <= bFeed_write_local;

    bFeed_write_local_assign_proc : process(ap_enable_reg_pp0_iter3, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1))) then 
            bFeed_write_local <= ap_const_logic_1;
        else 
            bFeed_write_local <= ap_const_logic_0;
        end if; 
    end process;


    bMemory_blk_n_assign_proc : process(ap_enable_reg_pp0_iter2, bMemory_empty_n, icmp_ln309_reg_414, ap_block_pp0_stage0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (icmp_ln309_reg_414 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            bMemory_blk_n <= bMemory_empty_n;
        else 
            bMemory_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    bMemory_read <= bMemory_read_local;

    bMemory_read_local_assign_proc : process(ap_enable_reg_pp0_iter2, icmp_ln309_reg_414, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln309_reg_414 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            bMemory_read_local <= ap_const_logic_1;
        else 
            bMemory_read_local <= ap_const_logic_0;
        end if; 
    end process;

    empty_fu_145_p1 <= select_ln302_1_fu_131_p3(1 - 1 downto 0);
    i_assign_fu_188_p3 <= (empty_reg_418_pp0_iter2_reg & ap_const_lv8_0);
    icmp_ln303_fu_111_p2 <= "1" when (indvar_flatten_fu_70 = bound) else "0";
    icmp_ln306_fu_125_p2 <= "1" when (j_2_fu_62 = ap_const_lv2_2) else "0";
    icmp_ln309_fu_139_p2 <= "1" when (select_ln302_1_fu_131_p3 = ap_const_lv2_0) else "0";
    j_fu_149_p2 <= std_logic_vector(unsigned(select_ln302_1_fu_131_p3) + unsigned(ap_const_lv2_1));
    lshr_ln170_1_fu_220_p2 <= std_logic_vector(shift_right(unsigned(p_0_0_06_fu_66),to_integer(unsigned('0' & zext_ln170_1_fu_216_p1(31-1 downto 0)))));
    lshr_ln170_2_fu_241_p2 <= std_logic_vector(shift_right(unsigned(p_0_0_06_fu_66),to_integer(unsigned('0' & zext_ln170_2_fu_237_p1(31-1 downto 0)))));
    lshr_ln170_3_fu_262_p2 <= std_logic_vector(shift_right(unsigned(p_0_0_06_fu_66),to_integer(unsigned('0' & zext_ln170_3_fu_258_p1(31-1 downto 0)))));
    lshr_ln170_4_fu_283_p2 <= std_logic_vector(shift_right(unsigned(p_0_0_06_fu_66),to_integer(unsigned('0' & zext_ln170_4_fu_279_p1(31-1 downto 0)))));
    lshr_ln170_5_fu_304_p2 <= std_logic_vector(shift_right(unsigned(p_0_0_06_fu_66),to_integer(unsigned('0' & zext_ln170_5_fu_300_p1(31-1 downto 0)))));
    lshr_ln170_6_fu_325_p2 <= std_logic_vector(shift_right(unsigned(p_0_0_06_fu_66),to_integer(unsigned('0' & zext_ln170_6_fu_321_p1(31-1 downto 0)))));
    lshr_ln170_7_fu_346_p2 <= std_logic_vector(shift_right(unsigned(p_0_0_06_fu_66),to_integer(unsigned('0' & zext_ln170_7_fu_342_p1(31-1 downto 0)))));
    lshr_ln170_fu_199_p2 <= std_logic_vector(shift_right(unsigned(p_0_0_06_fu_66),to_integer(unsigned('0' & zext_ln170_fu_195_p1(31-1 downto 0)))));
    or_ln170_1_fu_230_p3 <= (empty_reg_418_pp0_iter2_reg & ap_const_lv8_40);
    or_ln170_2_fu_251_p3 <= (empty_reg_418_pp0_iter2_reg & ap_const_lv8_60);
    or_ln170_3_fu_272_p3 <= (empty_reg_418_pp0_iter2_reg & ap_const_lv8_80);
    or_ln170_4_fu_293_p3 <= (empty_reg_418_pp0_iter2_reg & ap_const_lv8_A0);
    or_ln170_5_fu_314_p3 <= (empty_reg_418_pp0_iter2_reg & ap_const_lv8_C0);
    or_ln170_6_fu_335_p3 <= (empty_reg_418_pp0_iter2_reg & ap_const_lv8_E0);
    or_ln_fu_209_p3 <= (empty_reg_418_pp0_iter2_reg & ap_const_lv8_20);
    select_ln302_1_fu_131_p3 <= 
        ap_const_lv2_0 when (icmp_ln306_fu_125_p2(0) = '1') else 
        j_2_fu_62;
    select_ln302_fu_168_p3 <= 
        ap_const_lv512_lc_1 when (icmp_ln306_reg_409(0) = '1') else 
        p_0_0_06_fu_66;
    tmp_s_fu_356_p9 <= (((((((trunc_ln170_39_fu_352_p1 & trunc_ln170_38_fu_331_p1) & trunc_ln170_37_fu_310_p1) & trunc_ln170_36_fu_289_p1) & trunc_ln170_35_fu_268_p1) & trunc_ln170_34_fu_247_p1) & trunc_ln170_33_fu_226_p1) & trunc_ln170_fu_205_p1);
    trunc_ln170_33_fu_226_p1 <= lshr_ln170_1_fu_220_p2(32 - 1 downto 0);
    trunc_ln170_34_fu_247_p1 <= lshr_ln170_2_fu_241_p2(32 - 1 downto 0);
    trunc_ln170_35_fu_268_p1 <= lshr_ln170_3_fu_262_p2(32 - 1 downto 0);
    trunc_ln170_36_fu_289_p1 <= lshr_ln170_4_fu_283_p2(32 - 1 downto 0);
    trunc_ln170_37_fu_310_p1 <= lshr_ln170_5_fu_304_p2(32 - 1 downto 0);
    trunc_ln170_38_fu_331_p1 <= lshr_ln170_6_fu_325_p2(32 - 1 downto 0);
    trunc_ln170_39_fu_352_p1 <= lshr_ln170_7_fu_346_p2(32 - 1 downto 0);
    trunc_ln170_fu_205_p1 <= lshr_ln170_fu_199_p2(32 - 1 downto 0);
    zext_ln170_1_fu_216_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(or_ln_fu_209_p3),512));
    zext_ln170_2_fu_237_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(or_ln170_1_fu_230_p3),512));
    zext_ln170_3_fu_258_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(or_ln170_2_fu_251_p3),512));
    zext_ln170_4_fu_279_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(or_ln170_3_fu_272_p3),512));
    zext_ln170_5_fu_300_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(or_ln170_4_fu_293_p3),512));
    zext_ln170_6_fu_321_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(or_ln170_5_fu_314_p3),512));
    zext_ln170_7_fu_342_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(or_ln170_6_fu_335_p3),512));
    zext_ln170_fu_195_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_assign_fu_188_p3),512));
end behav;