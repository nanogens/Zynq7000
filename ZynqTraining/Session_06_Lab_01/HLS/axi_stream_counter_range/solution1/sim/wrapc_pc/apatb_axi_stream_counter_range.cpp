// ==============================================================
// File generated on Mon Jan 21 17:58:53 -0500 2019
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================

#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;


// [dump_struct_tree [build_nameSpaceTree] dumpedStructList] ---------->


// [dump_enumeration [get_enumeration_list]] ---------->


// wrapc file define: "count_range"
#define AUTOTB_TVIN_count_range  "../tv/cdatafile/c.axi_stream_counter_range.autotvin_count_range.dat"
// wrapc file define: "counter_output"
#define AUTOTB_TVOUT_counter_output  "../tv/cdatafile/c.axi_stream_counter_range.autotvout_counter_output.dat"
#define AUTOTB_TVIN_counter_output  "../tv/cdatafile/c.axi_stream_counter_range.autotvin_counter_output.dat"
// wrapc file define: "ap_return"
#define AUTOTB_TVOUT_ap_return  "../tv/cdatafile/c.axi_stream_counter_range.autotvout_ap_return.dat"

#define INTER_TCL  "../tv/cdatafile/ref.tcl"

// tvout file define: "counter_output"
#define AUTOTB_TVOUT_PC_counter_output  "../tv/rtldatafile/rtl.axi_stream_counter_range.autotvout_counter_output.dat"
// tvout file define: "ap_return"
#define AUTOTB_TVOUT_PC_ap_return  "../tv/rtldatafile/rtl.axi_stream_counter_range.autotvout_ap_return.dat"

class INTER_TCL_FILE {
	public:
		INTER_TCL_FILE(const char* name) {
			mName = name;
			count_range_depth = 0;
			counter_output_depth = 0;
			ap_return_depth = 0;
			trans_num =0;
		}

		~INTER_TCL_FILE() {
			mFile.open(mName);
			if (!mFile.good()) {
				cout << "Failed to open file ref.tcl" << endl;
				exit (1);
			}
			string total_list = get_depth_list();
			mFile << "set depth_list {\n";
			mFile << total_list;
			mFile << "}\n";
			mFile << "set trans_num "<<trans_num<<endl;
			mFile.close();
		}

		string get_depth_list () {
			stringstream total_list;
			total_list << "{count_range " << count_range_depth << "}\n";
			total_list << "{counter_output " << counter_output_depth << "}\n";
			total_list << "{ap_return " << ap_return_depth << "}\n";
			return total_list.str();
		}

		void set_num (int num , int* class_num) {
			(*class_num) = (*class_num) > num ? (*class_num) : num;
		}
	public:
		int count_range_depth;
		int counter_output_depth;
		int ap_return_depth;
		int trans_num;

	private:
		ofstream mFile;
		const char* mName;
};

extern int axi_stream_counter_range (
int count_range,
int* counter_output);

int AESL_WRAP_axi_stream_counter_range (
int count_range,
int* counter_output)
{
	refine_signal_handler();
	fstream wrapc_switch_file_token;
	wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
	int AESL_i;
	if (wrapc_switch_file_token.good())
	{
		CodeState = ENTER_WRAPC_PC;
		static unsigned AESL_transaction_pc = 0;
		string AESL_token;
		string AESL_num;
		static AESL_FILE_HANDLER aesl_fh;

		int AESL_return;

		// output port post check: "counter_output"
		aesl_fh.read(AUTOTB_TVOUT_PC_counter_output, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_counter_output, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_counter_output, AESL_token); // data

			sc_bv<32> *counter_output_pc_buffer = new sc_bv<32>[1];
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'counter_output', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'counter_output', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					counter_output_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_counter_output, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_counter_output))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: counter_output
				{
					// bitslice(31, 0)
					// {
						// celement: counter_output(31, 0)
						// {
							sc_lv<32>* counter_output_lv0_0_0_1 = new sc_lv<32>[1];
						// }
					// }

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: counter_output(31, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								if (&(counter_output[0]) != NULL) // check the null address if the c port is array or others
								{
									counter_output_lv0_0_0_1[hls_map_index].range(31, 0) = sc_bv<32>(counter_output_pc_buffer[hls_map_index].range(31, 0));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: counter_output(31, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : counter_output[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : counter_output[0]
								// output_left_conversion : counter_output[i_0]
								// output_type_conversion : (counter_output_lv0_0_0_1[hls_map_index]).to_uint64()
								if (&(counter_output[0]) != NULL) // check the null address if the c port is array or others
								{
									counter_output[i_0] = (counter_output_lv0_0_0_1[hls_map_index]).to_uint64();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] counter_output_pc_buffer;
		}

		// output port post check: "ap_return"
		aesl_fh.read(AUTOTB_TVOUT_PC_ap_return, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_ap_return, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_ap_return, AESL_token); // data

			sc_bv<32> ap_return_pc_buffer;
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'ap_return', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'ap_return', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					ap_return_pc_buffer = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_ap_return, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_ap_return))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: ap_return
				{
					// bitslice(31, 0)
					// {
						// celement: return(31, 0)
						// {
							sc_lv<32> return_lv0_0_1_0;
						// }
					// }

					// bitslice(31, 0)
					{
						// celement: return(31, 0)
						{
							// carray: (0) => (1) @ (0)
							{
								if (&(AESL_return) != NULL) // check the null address if the c port is array or others
								{
									return_lv0_0_1_0.range(31, 0) = sc_bv<32>(ap_return_pc_buffer.range(31, 0));
								}
							}
						}
					}

					// bitslice(31, 0)
					{
						// celement: return(31, 0)
						{
							// carray: (0) => (1) @ (0)
							{
								// sub                    : 
								// ori_name               : AESL_return
								// sub_1st_elem           : 
								// ori_name_1st_elem      : AESL_return
								// output_left_conversion : AESL_return
								// output_type_conversion : (return_lv0_0_1_0).to_uint64()
								if (&(AESL_return) != NULL) // check the null address if the c port is array or others
								{
									AESL_return = (return_lv0_0_1_0).to_uint64();
								}
							}
						}
					}
				}
			}
		}

		AESL_transaction_pc++;

		return AESL_return;
	}
	else
	{
		CodeState = ENTER_WRAPC;
		static unsigned AESL_transaction;

		static AESL_FILE_HANDLER aesl_fh;

		// "count_range"
		char* tvin_count_range = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_count_range);

		// "counter_output"
		char* tvin_counter_output = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_counter_output);
		char* tvout_counter_output = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_counter_output);

		// "ap_return"
		char* tvout_ap_return = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_ap_return);

		CodeState = DUMP_INPUTS;
		static INTER_TCL_FILE tcl_file(INTER_TCL);
		int leading_zero;

		// [[transaction]]
		sprintf(tvin_count_range, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_count_range, tvin_count_range);

		sc_bv<32> count_range_tvin_wrapc_buffer;

		// RTL Name: count_range
		{
			// bitslice(31, 0)
			{
				// celement: count_range(31, 0)
				{
					// carray: (0) => (0) @ (0)
					{
						// sub                   : 
						// ori_name              : count_range
						// sub_1st_elem          : 
						// ori_name_1st_elem     : count_range
						// regulate_c_name       : count_range
						// input_type_conversion : count_range
						if (&(count_range) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> count_range_tmp_mem;
							count_range_tmp_mem = count_range;
							count_range_tvin_wrapc_buffer.range(31, 0) = count_range_tmp_mem.range(31, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_count_range, "%s\n", (count_range_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_count_range, tvin_count_range);
		}

		tcl_file.set_num(1, &tcl_file.count_range_depth);
		sprintf(tvin_count_range, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_count_range, tvin_count_range);

		// [[transaction]]
		sprintf(tvin_counter_output, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_counter_output, tvin_counter_output);

		sc_bv<32>* counter_output_tvin_wrapc_buffer = new sc_bv<32>[1];

		// RTL Name: counter_output
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: counter_output(31, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : counter_output[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : counter_output[0]
						// regulate_c_name       : counter_output
						// input_type_conversion : counter_output[i_0]
						if (&(counter_output[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> counter_output_tmp_mem;
							counter_output_tmp_mem = counter_output[i_0];
							counter_output_tvin_wrapc_buffer[hls_map_index].range(31, 0) = counter_output_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_counter_output, "%s\n", (counter_output_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_counter_output, tvin_counter_output);
		}

		tcl_file.set_num(1, &tcl_file.counter_output_depth);
		sprintf(tvin_counter_output, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_counter_output, tvin_counter_output);

		// release memory allocation
		delete [] counter_output_tvin_wrapc_buffer;

// [call_c_dut] ---------->

		CodeState = CALL_C_DUT;
		int AESL_return = axi_stream_counter_range(count_range, counter_output);

		CodeState = DUMP_OUTPUTS;

		// [[transaction]]
		sprintf(tvout_counter_output, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_counter_output, tvout_counter_output);

		sc_bv<32>* counter_output_tvout_wrapc_buffer = new sc_bv<32>[1];

		// RTL Name: counter_output
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: counter_output(31, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : counter_output[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : counter_output[0]
						// regulate_c_name       : counter_output
						// input_type_conversion : counter_output[i_0]
						if (&(counter_output[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> counter_output_tmp_mem;
							counter_output_tmp_mem = counter_output[i_0];
							counter_output_tvout_wrapc_buffer[hls_map_index].range(31, 0) = counter_output_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvout_counter_output, "%s\n", (counter_output_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_counter_output, tvout_counter_output);
		}

		tcl_file.set_num(1, &tcl_file.counter_output_depth);
		sprintf(tvout_counter_output, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_counter_output, tvout_counter_output);

		// release memory allocation
		delete [] counter_output_tvout_wrapc_buffer;

		// [[transaction]]
		sprintf(tvout_ap_return, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_ap_return, tvout_ap_return);

		sc_bv<32> ap_return_tvout_wrapc_buffer;

		// RTL Name: ap_return
		{
			// bitslice(31, 0)
			{
				// celement: return(31, 0)
				{
					// carray: (0) => (1) @ (0)
					{
						// sub                   : 
						// ori_name              : AESL_return
						// sub_1st_elem          : 
						// ori_name_1st_elem     : AESL_return
						// regulate_c_name       : return
						// input_type_conversion : AESL_return
						if (&(AESL_return) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> return_tmp_mem;
							return_tmp_mem = AESL_return;
							ap_return_tvout_wrapc_buffer.range(31, 0) = return_tmp_mem.range(31, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvout_ap_return, "%s\n", (ap_return_tvout_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_ap_return, tvout_ap_return);
		}

		tcl_file.set_num(1, &tcl_file.ap_return_depth);
		sprintf(tvout_ap_return, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_ap_return, tvout_ap_return);

		CodeState = DELETE_CHAR_BUFFERS;
		// release memory allocation: "count_range"
		delete [] tvin_count_range;
		// release memory allocation: "counter_output"
		delete [] tvout_counter_output;
		delete [] tvin_counter_output;
		// release memory allocation: "ap_return"
		delete [] tvout_ap_return;

		AESL_transaction++;

		tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);

		return AESL_return;
	}
}

