namespace eval ::optrace {
  variable script "C:/CSEE4280/GRP2ADD/Exercise5/Exercise5/Exercise5.runs/impl_1/top.tcl"
  variable category "vivado_impl"
}

# Try to connect to running dispatch if we haven't done so already.
# This code assumes that the Tcl interpreter is not using threads,
# since the ::dispatch::connected variable isn't mutex protected.
if {![info exists ::dispatch::connected]} {
  namespace eval ::dispatch {
    variable connected false
    if {[llength [array get env XILINX_CD_CONNECT_ID]] > 0} {
      set result "true"
      if {[catch {
        if {[lsearch -exact [package names] DispatchTcl] < 0} {
          set result [load librdi_cd_clienttcl[info sharedlibextension]] 
        }
        if {$result eq "false"} {
          puts "WARNING: Could not load dispatch client library"
        }
        set connect_id [ ::dispatch::init_client -mode EXISTING_SERVER ]
        if { $connect_id eq "" } {
          puts "WARNING: Could not initialize dispatch client"
        } else {
          puts "INFO: Dispatch client connection id - $connect_id"
          set connected true
        }
      } catch_res]} {
        puts "WARNING: failed to connect to dispatch server - $catch_res"
      }
    }
  }
}
if {$::dispatch::connected} {
  # Remove the dummy proc if it exists.
  if { [expr {[llength [info procs ::OPTRACE]] > 0}] } {
    rename ::OPTRACE ""
  }
  proc ::OPTRACE { task action {tags {} } } {
    ::vitis_log::op_trace "$task" $action -tags $tags -script $::optrace::script -category $::optrace::category
  }
  # dispatch is generic. We specifically want to attach logging.
  ::vitis_log::connect_client
} else {
  # Add dummy proc if it doesn't exist.
  if { [expr {[llength [info procs ::OPTRACE]] == 0}] } {
    proc ::OPTRACE {{arg1 \"\" } {arg2 \"\"} {arg3 \"\" } {arg4 \"\"} {arg5 \"\" } {arg6 \"\"}} {
        # Do nothing
    }
  }
}

proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    } elseif { [info exist ::env(HOST)] } {
      set host $::env(HOST)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
OPTRACE "impl_1" END { }
}

set_msg_config  -id {USF-XSim-62}  -string {{ERROR: [USF-XSim-62] 'elaborate' step failed with error(s) while executing 'C:/CSEE4280/GRP2ADD/Exercise5/Exercise5/Exercise5.sim/sim_1/impl/func/xsim/elaborate.bat' script. Please check that the file has the correct 'read/write/execute' permissions and the Tcl console output for any other possible errors or warnings.}}  -suppress 
set_msg_config  -id {DRC MDRV-1}  -string {{ERROR: [DRC MDRV-1] Multiple Driver Nets: Net rgbc/pwmb/Counter[14] has multiple drivers: rgbc/pwmb/Counter_reg[14]/Q, and rgbc/pwmb/Counter_reg[14]__0/Q.}}  -suppress 
set_msg_config  -id {DRC MDRV-1}  -string {{ERROR: [DRC MDRV-1] Multiple Driver Nets: Net rgbc/pwmb/Counter[15] has multiple drivers: rgbc/pwmb/Counter_reg[15]__0/Q, and rgbc/pwmb/Counter_reg[15]/Q.}}  -suppress 
set_msg_config  -id {DRC MDRV-1}  -string {{ERROR: [DRC MDRV-1] Multiple Driver Nets: Net rgbc/pwmb/Counter[1] has multiple drivers: rgbc/pwmb/Counter_reg[1]/Q, and rgbc/pwmb/Counter_reg[1]__0/Q.}}  -suppress 
set_msg_config  -id {USF-XSim-62}  -string {{ERROR: [USF-XSim-62] 'compile' step failed with error(s) while executing 'C:/CSEE4280/GRP2ADD/Exercise5/Exercise5/Exercise5.sim/sim_1/impl/func/xsim/compile.bat' script. Please check that the file has the correct 'read/write/execute' permissions and the Tcl console output for any other possible errors or warnings.}}  -suppress 
set_msg_config  -id {Common 17-180}  -string {{ERROR: [Common 17-180] Spawn failed: No error}}  -suppress 
set_msg_config  -id {Common 17-69}  -string {{ERROR: [Common 17-69] Command failed: Synthesis failed - please see the console or run log file for details}}  -suppress 
set_msg_config  -id {DRC MDRV-1}  -string {{ERROR: [DRC MDRV-1] Multiple Driver Nets: Net rgbc/pwmb/Counter[0] has multiple drivers: rgbc/pwmb/Counter_reg[0]/Q, and rgbc/pwmb/Counter_reg[0]__0/Q.}}  -suppress 
set_msg_config  -id {DRC MDRV-1}  -string {{ERROR: [DRC MDRV-1] Multiple Driver Nets: Net rgbc/pwmb/Counter[10] has multiple drivers: rgbc/pwmb/Counter_reg[10]/Q, and rgbc/pwmb/Counter_reg[10]__0/Q.}}  -suppress 
set_msg_config  -id {DRC MDRV-1}  -string {{ERROR: [DRC MDRV-1] Multiple Driver Nets: Net rgbc/pwmb/Counter[11] has multiple drivers: rgbc/pwmb/Counter_reg[11]/Q, and rgbc/pwmb/Counter_reg[11]__0/Q.}}  -suppress 
set_msg_config  -id {DRC MDRV-1}  -string {{ERROR: [DRC MDRV-1] Multiple Driver Nets: Net rgbc/pwmb/Counter[12] has multiple drivers: rgbc/pwmb/Counter_reg[12]__0/Q, and rgbc/pwmb/Counter_reg[12]/Q.}}  -suppress 
set_msg_config  -id {DRC MDRV-1}  -string {{ERROR: [DRC MDRV-1] Multiple Driver Nets: Net rgbc/pwmb/Counter[13] has multiple drivers: rgbc/pwmb/Counter_reg[13]/Q, and rgbc/pwmb/Counter_reg[13]__0/Q.}}  -suppress 

OPTRACE "impl_1" START { ROLLUP_1 }
OPTRACE "Phase: Write Bitstream" START { ROLLUP_AUTO }
OPTRACE "write_bitstream setup" START { }
start_step write_bitstream
set ACTIVE_STEP write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
  set_param chipscope.maxJobs 3
  set_param runs.launchOptions { -jobs 12  }
  open_checkpoint top_routed.dcp
  set_property webtalk.parent_dir C:/CSEE4280/GRP2ADD/Exercise5/Exercise5/Exercise5.cache/wt [current_project]
set_property TOP top [current_fileset]
OPTRACE "read constraints: write_bitstream" START { }
OPTRACE "read constraints: write_bitstream" END { }
  catch { write_mem_info -force -no_partial_mmi top.mmi }
OPTRACE "write_bitstream setup" END { }
OPTRACE "write_bitstream" START { }
  write_bitstream -force top.bit 
OPTRACE "write_bitstream" END { }
OPTRACE "write_bitstream misc" START { }
OPTRACE "read constraints: write_bitstream_post" START { }
OPTRACE "read constraints: write_bitstream_post" END { }
  catch {write_debug_probes -quiet -force top}
  catch {file copy -force top.ltx debug_nets.ltx}
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
  unset ACTIVE_STEP 
}

OPTRACE "write_bitstream misc" END { }
OPTRACE "Phase: Write Bitstream" END { }
OPTRACE "impl_1" END { }
