echo "Launch of CHT Rheometry Batch"
sbatch bashRunFiles/gpuRun.sh CLB/d3q27_tePSM_per_NEBB/main my/3DNTpart/Rheometer3D/GPURheometer/CHTCounterShear/CVR_CHTsvf0_T_inc.xml svf0_t_inc
sbatch bashRunFiles/gpuRun.sh CLB/d3q27_tePSM_per_NEBB/main my/3DNTpart/Rheometer3D/GPURheometer/CHTCounterShear/CVR_CHTsvf1_T_inc.xml svf1_t_inc
sbatch bashRunFiles/gpuRun.sh CLB/d3q27_tePSM_per_NEBB/main my/3DNTpart/Rheometer3D/GPURheometer/CHTCounterShear/CVR_CHTsvf2_T_inc.xml svf2_t_inc
sbatch bashRunFiles/gpuRun.sh CLB/d3q27_tePSM_per_NEBB/main my/3DNTpart/Rheometer3D/GPURheometer/CHTCounterShear/CVR_CHTsvf3_T_inc.xml svf3_t_inc

sbatch bashRunFiles/gpuRun.sh CLB/d3q27_tePSM_per_NEBB/main my/3DNTpart/Rheometer3D/GPURheometer/CHTCounterShear/CVR_CHTsvf0_T_red.xml svf0_t_red
sbatch bashRunFiles/gpuRun.sh CLB/d3q27_tePSM_per_NEBB/main my/3DNTpart/Rheometer3D/GPURheometer/CHTCounterShear/CVR_CHTsvf1_T_red.xml svf1_t_red
sbatch bashRunFiles/gpuRun.sh CLB/d3q27_tePSM_per_NEBB/main my/3DNTpart/Rheometer3D/GPURheometer/CHTCounterShear/CVR_CHTsvf2_T_red.xml svf2_t_red
sbatch bashRunFiles/gpuRun.sh CLB/d3q27_tePSM_per_NEBB/main my/3DNTpart/Rheometer3D/GPURheometer/CHTCounterShear/CVR_CHTsvf3_T_red.xml svf3_t_red
echo "All set, hopefully..."
