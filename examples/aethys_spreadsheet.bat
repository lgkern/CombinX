@echo off
set "simc=C:\Users\Aethys\Desktop\Simulationcraft_Legion\simc.exe"
set /p "input=Enter the Magic Number:"

set "tempoutput=..\examples\aethys_cmd_templog.txt"
set "output=..\examples\aethys_cmd_log.txt"
set "t_asn_1t=talents=1130111"
set "t_otl_1t=talents=1310022"
set "t_sub_1t=talents=1210011"
set "t_asn_ex_1t=talents=2130131"
set "t_asn_2t=talents=2130121"
set "t_otl_2t=talents=1310023"
set "t_sub_2t=talents=2210011"
set "t_asn_ex_2t=talents=2130131"
set "t_asn_3t=talents=1110121"
set "t_otl_3t=talents=1310023"
set "t_sub_3t=talents=2220023"
set "t_asn_ex_3t=talents=2110121"
set "t_asn_1ta=talents=2130132"
set "t_otl_1ta=talents=1310023"
set "t_sub_1ta=talents=1210022"
set "t_asn_ex_1ta=talents=2130131"

cd ..\src\

if "%input%"=="-1" (
	%simc% input=..\config.simc output=nul target_error=0.03 "$(fight_style)=1t" "$(specialization)=subtlety" "$(tier)=t19m" input=main.simc "$(row)=all" input=talents.simc input=report_html.simc
	%simc% input=..\config.simc output=nul target_error=0.03 "$(fight_style)=1t" "$(specialization)=subtlety" "$(tier)=t19m_nh" input=main.simc "$(row)=all" input=talents.simc input=report_html.simc
	@pause
) else if "%input%"=="0" (
	>%tempoutput% (
		echo "Temporary Output"
		%simc% input=..\config.simc output=nul target_error=0.05 "$(fight_style)=1t" "$(specialization)=subtlety" "$(tier)=t19m" input=main.simc "$(row)=all" input=talents.simc input=report_html.simc
		%simc% input=..\config.simc output=nul target_error=0.05 "$(fight_style)=1t" "$(specialization)=subtlety" "$(tier)=t19m_nh" input=main.simc "$(row)=all" input=talents.simc input=report_html.simc
	)
	@pause
) else if "%input%"=="1" (
	>%output% (
		echo "Doing Talents Comparison Set"

		echo "1-Target"
		echo "Rogue Assassination T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(specialization)=assassination" "$(tier)=t19m" input=main.simc "$(row)=all" input=talents.simc input=report_json.simc
		echo "Rogue Assassination Exsg T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(specialization)=assassination" "$(specialization_suffix)=_Exsg_" "$(tier)=t19m" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" "$(row)=all" input=talents.simc input=report_json.simc
		echo "Rogue Outlaw T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(specialization)=outlaw" "$(tier)=t19m" input=main.simc "$(row)=all" input=talents.simc input=report_json.simc
		echo "Rogue Subtlety T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(specialization)=subtlety" "$(tier)=t19m" input=main.simc "$(row)=all" input=talents.simc input=report_json.simc

		echo "2-Target"
		echo "Rogue Assassination T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=2t" "$(specialization)=assassination" "$(tier)=t19m" input=main.simc "$(row)=all" input=talents.simc input=report_json.simc
		echo "Rogue Assassination Exsg T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=2t" "$(specialization)=assassination" "$(specialization_suffix)=_Exsg_" "$(tier)=t19m" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" "$(row)=all" input=talents.simc input=report_json.simc
		echo "Rogue Outlaw T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=2t" "$(specialization)=outlaw" "$(tier)=t19m" input=main.simc "$(row)=all" input=talents.simc input=report_json.simc
		echo "Rogue Subtlety T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=2t" "$(specialization)=subtlety" "$(tier)=t19m" input=main.simc "$(row)=all" input=talents.simc input=report_json.simc

		echo "3-Target"
		echo "Rogue Assassination T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=3t" "$(specialization)=assassination" "$(tier)=t19m" input=main.simc "$(row)=all" input=talents.simc input=report_json.simc
		echo "Rogue Assassination Exsg T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=3t" "$(specialization)=assassination" "$(specialization_suffix)=_Exsg_" "$(tier)=t19m" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" "$(row)=all" input=talents.simc input=report_json.simc
		echo "Rogue Outlaw T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=3t" "$(specialization)=outlaw" "$(tier)=t19m" input=main.simc "$(row)=all" input=talents.simc input=report_json.simc
		echo "Rogue Subtlety T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=3t" "$(specialization)=subtlety" "$(tier)=t19m" input=main.simc "$(row)=all" input=talents.simc input=report_json.simc

		echo "1-Target RE-Adds:4_3x_30_10"
		echo "Rogue Assassination T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(specialization)=assassination" "$(tier)=t19m" input=main.simc input="$(fight_style_path)"aethys_adds_4_3x_30_10.simc "$(row)=all" input=talents.simc input=report_json.simc
		echo "Rogue Assassination Exsg T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(specialization)=assassination" "$(specialization_suffix)=_Exsg_" "$(tier)=t19m" input=main.simc input="$(fight_style_path)"aethys_adds_4_3x_30_10.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" "$(row)=all" input=talents.simc input=report_json.simc
		echo "Rogue Outlaw T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(specialization)=outlaw" "$(tier)=t19m" input=main.simc input="$(fight_style_path)"aethys_adds_4_3x_30_10.simc "$(row)=all" input=talents.simc input=report_json.simc
		echo "Rogue Subtlety T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(specialization)=subtlety" "$(tier)=t19m" input=main.simc input="$(fight_style_path)"aethys_adds_4_3x_30_10.simc "$(row)=all" input=talents.simc input=report_json.simc
	)
	@pause
) else if "%input%"=="2" (
	>%output% (
		echo "Doing Artifact Paths Comparison Set"

		echo "1-Target"
		echo "Rogue Subtlety T19M Rank 19"
		%simc% input=..\config.simc output=nul target_error=0.8 "$(fight_style)=1t" "$(option_override)=%t_sub_1t%" "$(specialization)=subtlety" "$(tier)=t19m" input=main.simc "$(artifact_rank)=19" input=artifact_path.simc input=report_json.simc
		echo "Rogue Subtlety T19M Rank 26"
		%simc% input=..\config.simc output=nul target_error=0.8 "$(fight_style)=1t" "$(option_override)=%t_sub_1t%" "$(specialization)=subtlety" "$(tier)=t19m" input=main.simc "$(artifact_rank)=26" input=artifact_path.simc input=report_json.simc
		echo "Rogue Outlaw T19M Rank 19"
		%simc% input=..\config.simc output=nul target_error=0.8 "$(fight_style)=1t" "$(option_override)=%t_otl_1t%" "$(specialization)=outlaw" "$(tier)=t19m" input=main.simc "$(artifact_rank)=19" input=artifact_path.simc input=report_json.simc
		echo "Rogue Outlaw T19M Rank 26"
		%simc% input=..\config.simc output=nul target_error=0.8 "$(fight_style)=1t" "$(option_override)=%t_otl_1t%" "$(specialization)=outlaw" "$(tier)=t19m" input=main.simc "$(artifact_rank)=26" input=artifact_path.simc input=report_json.simc
		echo "Rogue Assassination T19M Rank 19"
		%simc% input=..\config.simc threads=2 output=nul target_error=0.8 "$(fight_style)=1t" "$(option_override)=%t_asn_1t%" "$(specialization)=assassination" "$(tier)=t19m" input=main.simc "$(artifact_rank)=19" input=artifact_path.simc input=report_json.simc
		echo "Rogue Assassination T19M Rank 26"
		%simc% input=..\config.simc threads=2 output=nul target_error=0.8 "$(fight_style)=1t" "$(option_override)=%t_asn_1t%" "$(specialization)=assassination" "$(tier)=t19m" input=main.simc "$(artifact_rank)=26" input=artifact_path.simc input=report_json.simc

		echo "3-Target"
		echo "Rogue Subtlety T19M Rank 19"
		%simc% input=..\config.simc output=nul target_error=0.8 "$(fight_style)=3t" "$(option_override)=%t_sub_3t%" "$(specialization)=subtlety" "$(tier)=t19m" input=main.simc "$(artifact_rank)=19" input=artifact_path.simc input=report_json.simc
		echo "Rogue Subtlety T19M Rank 26"
		%simc% input=..\config.simc output=nul target_error=0.8 "$(fight_style)=3t" "$(option_override)=%t_sub_3t%" "$(specialization)=subtlety" "$(tier)=t19m" input=main.simc "$(artifact_rank)=26" input=artifact_path.simc input=report_json.simc
		echo "Rogue Outlaw T19M Rank 19"
		%simc% input=..\config.simc output=nul target_error=0.8 "$(fight_style)=3t" "$(option_override)=%t_otl_3t%" "$(specialization)=outlaw" "$(tier)=t19m" input=main.simc "$(artifact_rank)=19" input=artifact_path.simc input=report_json.simc
		echo "Rogue Outlaw T19M Rank 26"
		%simc% input=..\config.simc output=nul target_error=0.8 "$(fight_style)=3t" "$(option_override)=%t_otl_3t%" "$(specialization)=outlaw" "$(tier)=t19m" input=main.simc "$(artifact_rank)=26" input=artifact_path.simc input=report_json.simc
		echo "Rogue Assassination T19M Rank 19"
		%simc% input=..\config.simc threads=2 output=nul target_error=0.8 "$(fight_style)=3t" "$(option_override)=%t_asn_3t%" "$(specialization)=assassination" "$(tier)=t19m" input=main.simc "$(artifact_rank)=19" input=artifact_path.simc input=report_json.simc
		echo "Rogue Assassination T19M Rank 26"
		%simc% input=..\config.simc threads=2 output=nul target_error=0.8 "$(fight_style)=3t" "$(option_override)=%t_asn_3t%" "$(specialization)=assassination" "$(tier)=t19m" input=main.simc "$(artifact_rank)=26" input=artifact_path.simc input=report_json.simc
	)
	@pause
) else if "%input%"=="3" (
	>%output% (
		echo "Doing Main Comparison Set"

		echo "1-Target"
		echo "Rogue Assassination T19P & T19H & T19M"
		%simc% input=..\config.simc output=nul target_error=0.1 "$(fight_style)=1t" "$(option_override)=%t_asn_1t%" "$(specialization)=assassination" "$(tier)=t19p" input=main.simc "$(tier)=t19h" input=main.simc "$(tier)=t19m" input=main.simc "$(tier)=t19x" input=report_html.simc input=report_json.simc
		echo "Rogue Assassination Exsg T19P & T19H & T19M"
		%simc% input=..\config.simc output=nul target_error=0.1 "$(fight_style)=1t" "$(option_override)=%t_asn_ex_1t%" "$(specialization)=assassination" "$(specialization_suffix)=_Exsg_" "$(tier)=t19p" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" "$(tier)=t19h" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" "$(tier)=t19m" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" "$(tier)=t19x" input=report_html.simc input=report_json.simc
		echo "Rogue Outlaw T19P & T19H & T19M"
		%simc% input=..\config.simc output=nul target_error=0.1 "$(fight_style)=1t" "$(option_override)=%t_otl_1t%" "$(specialization)=outlaw" "$(tier)=t19p" input=main.simc "$(tier)=t19h" input=main.simc "$(tier)=t19m" input=main.simc "$(tier)=t19x" input=report_html.simc input=report_json.simc
		echo "Rogue Subtlety T19P & T19H & T19M"
		%simc% input=..\config.simc output=nul target_error=0.1 "$(fight_style)=1t" "$(option_override)=%t_sub_1t%" "$(specialization)=subtlety" "$(tier)=t19p" input=main.simc "$(tier)=t19h" input=main.simc "$(tier)=t19m" input=main.simc "$(tier)=t19x" input=report_html.simc input=report_json.simc

		echo "2-Target"
		echo "Rogue Assassination T19P & T19H & T19M"
		%simc% input=..\config.simc output=nul target_error=0.1 "$(fight_style)=2t" "$(option_override)=%t_asn_2t%" "$(specialization)=assassination" "$(tier)=t19p" input=main.simc "$(tier)=t19h" input=main.simc "$(tier)=t19m" input=main.simc "$(tier)=t19x" input=report_html.simc input=report_json.simc
		echo "Rogue Assassination Exsg T19P & T19H & T19M"
		%simc% input=..\config.simc output=nul target_error=0.1 "$(fight_style)=2t" "$(option_override)=%t_asn_ex_2t%" "$(specialization)=assassination" "$(specialization_suffix)=_Exsg_" "$(tier)=t19p" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" "$(tier)=t19h" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" "$(tier)=t19m" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" "$(tier)=t19x" input=report_html.simc input=report_json.simc
		echo "Rogue Outlaw T19P & T19H & T19M"
		%simc% input=..\config.simc output=nul target_error=0.1 "$(fight_style)=2t" "$(option_override)=%t_otl_2t%" "$(specialization)=outlaw" "$(tier)=t19p" input=main.simc "$(tier)=t19h" input=main.simc "$(tier)=t19m" input=main.simc "$(tier)=t19x" input=report_html.simc input=report_json.simc
		echo "Rogue Subtlety T19P & T19H & T19M"
		%simc% input=..\config.simc output=nul target_error=0.1 "$(fight_style)=2t" "$(option_override)=%t_sub_2t%" "$(specialization)=subtlety" "$(tier)=t19p" input=main.simc "$(tier)=t19h" input=main.simc "$(tier)=t19m" input=main.simc "$(tier)=t19x" input=report_html.simc input=report_json.simc

		echo "3-Target"
		echo "Rogue Assassination T19P & T19H & T19M"
		%simc% input=..\config.simc output=nul target_error=0.1 "$(fight_style)=3t" "$(option_override)=%t_asn_3t%" "$(specialization)=assassination" "$(tier)=t19p" input=main.simc "$(tier)=t19h" input=main.simc "$(tier)=t19m" input=main.simc "$(tier)=t19x" input=report_html.simc input=report_json.simc
		echo "Rogue Assassination Exsg T19P & T19H & T19M"
		%simc% input=..\config.simc output=nul target_error=0.1 "$(fight_style)=3t" "$(option_override)=%t_asn_ex_3t%" "$(specialization)=assassination" "$(specialization_suffix)=_Exsg_" "$(tier)=t19p" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" "$(tier)=t19h" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" "$(tier)=t19m" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" "$(tier)=t19x" input=report_html.simc input=report_json.simc
		echo "Rogue Outlaw T19P & T19H & T19M"
		%simc% input=..\config.simc output=nul target_error=0.1 "$(fight_style)=3t" "$(option_override)=%t_otl_3t%" "$(specialization)=outlaw" "$(tier)=t19p" input=main.simc "$(tier)=t19h" input=main.simc "$(tier)=t19m" input=main.simc "$(tier)=t19x" input=report_html.simc input=report_json.simc
		echo "Rogue Subtlety T19P & T19H & T19M"
		%simc% input=..\config.simc output=nul target_error=0.1 "$(fight_style)=3t" "$(option_override)=%t_sub_3t%" "$(specialization)=subtlety" "$(tier)=t19p" input=main.simc "$(tier)=t19h" input=main.simc "$(tier)=t19m" input=main.simc "$(tier)=t19x" input=report_html.simc input=report_json.simc

		echo "1-Target RE-Adds:4_3x_30_10"
		echo "Rogue Assassination T19P & T19H & T19M"
		%simc% input=..\config.simc output=nul target_error=0.1 "$(fight_style)=1t" "$(option_override)=%t_asn_1ta%" "$(specialization)=assassination" "$(tier)=t19p" input=main.simc "$(tier)=t19h" input=main.simc "$(tier)=t19m" input=main.simc input="$(fight_style_path)"aethys_adds_4_3x_30_10.simc "$(tier)=t19x" input=report_html.simc input=report_json.simc
		echo "Rogue Assassination Exsg T19P & T19H & T19M"
		%simc% input=..\config.simc output=nul target_error=0.1 "$(fight_style)=1t" "$(option_override)=%t_asn_ex_1ta%" "$(specialization)=assassination" "$(specialization_suffix)=_Exsg_" "$(tier)=t19p" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" "$(tier)=t19h" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" "$(tier)=t19m" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" input="$(fight_style_path)"aethys_adds_4_3x_30_10.simc "$(tier)=t19x" input=report_html.simc input=report_json.simc
		echo "Rogue Outlaw T19P & T19H & T19M"
		%simc% input=..\config.simc output=nul target_error=0.1 "$(fight_style)=1t" "$(option_override)=%t_otl_1ta%" "$(specialization)=outlaw" "$(tier)=t19p" input=main.simc "$(tier)=t19h" input=main.simc "$(tier)=t19m" input=main.simc input="$(fight_style_path)"aethys_adds_4_3x_30_10.simc "$(tier)=t19x" input=report_html.simc input=report_json.simc
		echo "Rogue Subtlety T19P & T19H & T19M"
		%simc% input=..\config.simc output=nul target_error=0.1 "$(fight_style)=1t" "$(option_override)=%t_sub_1ta%" "$(specialization)=subtlety" "$(tier)=t19p" input=main.simc "$(tier)=t19h" input=main.simc "$(tier)=t19m" input=main.simc input="$(fight_style_path)"aethys_adds_4_3x_30_10.simc "$(tier)=t19x" input=report_html.simc input=report_json.simc
	)
	@pause
) else if "%input%"=="4" (
	>%output% (
		echo "Doing Main Combined Comparison Set"

		echo "1-Target"
		echo "Rogue Assassination & Outlaw & Subtlety @ T19P & T19H & T19M"
		%simc% input=..\config.simc output=nul target_error=0.1 "$(sim_type)=default_combined" "$(fight_style)=1t" "$(option_override)=%t_asn_1t%" "$(specialization)=assassination" "$(tier)=t19p" input=main.simc "$(tier)=t19h" input=main.simc "$(tier)=t19m" input=main.simc "$(option_override)=%t_asn_ex_1t%" "$(specialization)=assassination" "$(specialization_suffix)=_Exsg_" "$(tier)=t19p" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" input=name_override.simc "$(tier)=t19h" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" input=name_override.simc "$(tier)=t19m" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" input=name_override.simc "$(option_override)=%t_otl_1t%" "$(specialization)=outlaw" "$(specialization_suffix)=_" "$(tier)=t19p" input=main.simc "$(tier)=t19h" input=main.simc "$(tier)=t19m" input=main.simc "$(option_override)=%t_sub_1t%" "$(specialization)=subtlety" "$(tier)=t19p" input=main.simc "$(tier)=t19h" input=main.simc "$(tier)=t19m" input=main.simc "$(clas)=discord_rog" "$(spec)=all" "$(tier)=t19x" input=report_html.simc

		echo "2-Target"
		echo "Rogue Assassination & Outlaw & Subtlety @ T19P & T19H & T19M"
		%simc% input=..\config.simc output=nul target_error=0.1 "$(sim_type)=default_combined" "$(fight_style)=2t" "$(option_override)=%t_asn_2t%" "$(specialization)=assassination" "$(tier)=t19p" input=main.simc "$(tier)=t19h" input=main.simc "$(tier)=t19m" input=main.simc "$(option_override)=%t_asn_ex_2t%" "$(specialization)=assassination" "$(specialization_suffix)=_Exsg_" "$(tier)=t19p" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" input=name_override.simc "$(tier)=t19h" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" input=name_override.simc "$(tier)=t19m" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" input=name_override.simc "$(option_override)=%t_otl_2t%" "$(specialization)=outlaw" "$(specialization_suffix)=_" "$(tier)=t19p" input=main.simc "$(tier)=t19h" input=main.simc "$(tier)=t19m" input=main.simc "$(option_override)=%t_sub_2t%" "$(specialization)=subtlety" "$(tier)=t19p" input=main.simc "$(tier)=t19h" input=main.simc "$(tier)=t19m" input=main.simc "$(clas)=discord_rog" "$(spec)=all" "$(tier)=t19x" input=report_html.simc

		echo "3-Target"
		echo "Rogue Assassination & Outlaw & Subtlety @ T19P & T19H & T19M"
		%simc% input=..\config.simc output=nul target_error=0.1 "$(sim_type)=default_combined" "$(fight_style)=3t" "$(option_override)=%t_asn_3t%" "$(specialization)=assassination" "$(tier)=t19p" input=main.simc "$(tier)=t19h" input=main.simc "$(tier)=t19m" input=main.simc "$(option_override)=%t_asn_ex_3t%" "$(specialization)=assassination" "$(specialization_suffix)=_Exsg_" "$(tier)=t19p" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" input=name_override.simc "$(tier)=t19h" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" input=name_override.simc "$(tier)=t19m" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" input=name_override.simc "$(option_override)=%t_otl_3t%" "$(specialization)=outlaw" "$(specialization_suffix)=_" "$(tier)=t19p" input=main.simc "$(tier)=t19h" input=main.simc "$(tier)=t19m" input=main.simc "$(option_override)=%t_sub_3t%" "$(specialization)=subtlety" "$(tier)=t19p" input=main.simc "$(tier)=t19h" input=main.simc "$(tier)=t19m" input=main.simc "$(clas)=discord_rog" "$(spec)=all" "$(tier)=t19x" input=report_html.simc

		echo "1-Target"
		echo "Rogue Assassination & Outlaw & Subtlety @ T19P & T19H & T19M"
		%simc% input=..\config.simc output=nul target_error=0.1 "$(sim_type)=default_combined" "$(fight_style)=1t" "$(option_override)=%t_asn_1ta%" "$(specialization)=assassination" "$(tier)=t19p" input=main.simc "$(tier)=t19h" input=main.simc "$(tier)=t19m" input=main.simc "$(option_override)=%t_asn_ex_1ta%" "$(specialization)=assassination" "$(specialization_suffix)=_Exsg_" "$(tier)=t19p" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" input=name_override.simc "$(tier)=t19h" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" input=name_override.simc "$(tier)=t19m" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" input=name_override.simc "$(option_override)=%t_otl_1ta%" "$(specialization)=outlaw" "$(specialization_suffix)=_" "$(tier)=t19p" input=main.simc "$(tier)=t19h" input=main.simc "$(tier)=t19m" input=main.simc "$(option_override)=%t_sub_1ta%" "$(specialization)=subtlety" "$(tier)=t19p" input=main.simc "$(tier)=t19h" input=main.simc "$(tier)=t19m" input=main.simc input="$(fight_style_path)"aethys_adds_4_3x_30_10.simc "$(clas)=discord_rog" "$(spec)=all" "$(tier)=t19x" input=report_html.simc
	)
	@pause
) else if "%input%"=="5" (
	>%output% (
		echo "Doing Legendaries Comparison Set"

		echo "1-Target"
		echo "Rogue Assassination T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(option_override)=%t_asn_1t%" "$(specialization)=assassination" "$(tier)=t19m" input=main.simc input="$(gear_path)"no_legendary.simc input=legendaries.simc input=report_html.simc input=report_json.simc
		echo "Rogue Assassination Exsg T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(option_override)=%t_asn_ex_1t%" "$(specialization)=assassination" "$(specialization_suffix)=_Exsg_" "$(tier)=t19m" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" input="$(gear_path)"no_legendary.simc input=legendaries.simc input=report_html.simc input=report_json.simc
		echo "Rogue Outlaw T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(option_override)=%t_otl_1t%" "$(specialization)=outlaw" "$(tier)=t19m" input=main.simc input="$(gear_path)"no_legendary.simc input=legendaries.simc input=report_html.simc input=report_json.simc
		echo "Rogue Subtlety T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(option_override)=%t_sub_1t%" "$(specialization)=subtlety" "$(tier)=t19m" input=main.simc input="$(gear_path)"no_legendary.simc input=legendaries.simc input=report_html.simc input=report_json.simc

		echo "2-Target"
		echo "Rogue Assassination T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=2t" "$(option_override)=%t_asn_2t%" "$(specialization)=assassination" "$(tier)=t19m" input=main.simc input="$(gear_path)"no_legendary.simc input=legendaries.simc input=report_html.simc input=report_json.simc
		echo "Rogue Assassination Exsg T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=2t" "$(option_override)=%t_asn_ex_2t%" "$(specialization)=assassination" "$(specialization_suffix)=_Exsg_" "$(tier)=t19m" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" input="$(gear_path)"no_legendary.simc input=legendaries.simc input=report_html.simc input=report_json.simc
		echo "Rogue Outlaw T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=2t" "$(option_override)=%t_otl_2t%" "$(specialization)=outlaw" "$(tier)=t19m" input=main.simc input="$(gear_path)"no_legendary.simc input=legendaries.simc input=report_html.simc input=report_json.simc
		echo "Rogue Subtlety T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=2t" "$(option_override)=%t_sub_2t%" "$(specialization)=subtlety" "$(tier)=t19m" input=main.simc input="$(gear_path)"no_legendary.simc input=legendaries.simc input=report_html.simc input=report_json.simc

		echo "3-Target"
		echo "Rogue Assassination T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=3t" "$(option_override)=%t_asn_3t%" "$(specialization)=assassination" "$(tier)=t19m" input=main.simc input="$(gear_path)"no_legendary.simc input=legendaries.simc input=report_html.simc input=report_json.simc
		echo "Rogue Assassination Exsg T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=3t" "$(option_override)=%t_asn_ex_3t%" "$(specialization)=assassination" "$(specialization_suffix)=_Exsg_" "$(tier)=t19m" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" input="$(gear_path)"no_legendary.simc input=legendaries.simc input=report_html.simc input=report_json.simc
		echo "Rogue Outlaw T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=3t" "$(option_override)=%t_otl_3t%" "$(specialization)=outlaw" "$(tier)=t19m" input=main.simc input="$(gear_path)"no_legendary.simc input=legendaries.simc input=report_html.simc input=report_json.simc
		echo "Rogue Subtlety T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=3t" "$(option_override)=%t_sub_3t%" "$(specialization)=subtlety" "$(tier)=t19m" input=main.simc input="$(gear_path)"no_legendary.simc input=legendaries.simc input=report_html.simc input=report_json.simc

		echo "1-Target RE-Adds:4_3x_30_10"
		echo "Rogue Assassination T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(option_override)=%t_asn_1ta%" "$(specialization)=assassination" "$(tier)=t19m" input=main.simc input="$(gear_path)"no_legendary.simc input=legendaries.simc input="$(fight_style_path)"aethys_adds_4_3x_30_10.simc input=report_html.simc input=report_json.simc
		echo "Rogue Assassination Exsg T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(option_override)=%t_asn_ex_1ta%" "$(specialization)=assassination" "$(specialization_suffix)=_Exsg_" "$(tier)=t19m" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" input="$(gear_path)"no_legendary.simc input=legendaries.simc input="$(fight_style_path)"aethys_adds_4_3x_30_10.simc input=report_html.simc input=report_json.simc
		echo "Rogue Outlaw T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(option_override)=%t_otl_1ta%" "$(specialization)=outlaw" "$(tier)=t19m" input=main.simc input="$(gear_path)"no_legendary.simc input=legendaries.simc input="$(fight_style_path)"aethys_adds_4_3x_30_10.simc input=report_html.simc input=report_json.simc
		echo "Rogue Subtlety T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(option_override)=%t_sub_1ta%" "$(specialization)=subtlety" "$(tier)=t19m" input=main.simc input="$(gear_path)"no_legendary.simc input=legendaries.simc input="$(fight_style_path)"aethys_adds_4_3x_30_10.simc input=report_html.simc input=report_json.simc
	)
	@pause
) else if "%input%"=="6" (
	>%output% (
		echo "Doing Legendaries Combined Comparison Set"

		echo "1-Target"
		echo "Rogue Assassination & Outlaw & Subtlety @ T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(option_override)=%t_asn_1t%" "$(specialization)=assassination" "$(tier)=t19m" input=main.simc input="$(gear_path)"no_legendary.simc input=legendaries.simc "$(option_override)=%t_asn_ex_1t%" "$(specialization)=assassination" "$(specialization_suffix)=_Exsg_" "$(tier)=t19m" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" input="$(gear_path)"no_legendary.simc input=legendaries.simc "$(option_override)=%t_otl_1t%" "$(specialization)=outlaw" "$(specialization_suffix)=_" "$(tier)=t19m" input=main.simc input="$(gear_path)"no_legendary.simc input=legendaries.simc "$(option_override)=%t_sub_1t%" "$(specialization)=subtlety" "$(tier)=t19m" input=main.simc input="$(gear_path)"no_legendary.simc input=legendaries.simc "$(clas)=discord_rog" "$(spec)=all" input=report_html.simc

		echo "2-Target"
		echo "Rogue Assassination & Outlaw & Subtlety @ T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=2t" "$(option_override)=%t_asn_2t%" "$(specialization)=assassination" "$(tier)=t19m" input=main.simc input="$(gear_path)"no_legendary.simc input=legendaries.simc "$(option_override)=%t_asn_ex_2t%" "$(specialization)=assassination" "$(specialization_suffix)=_Exsg_" "$(tier)=t19m" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" input="$(gear_path)"no_legendary.simc input=legendaries.simc "$(option_override)=%t_otl_2t%" "$(specialization)=outlaw" "$(specialization_suffix)=_" "$(tier)=t19m" input=main.simc input="$(gear_path)"no_legendary.simc input=legendaries.simc "$(option_override)=%t_sub_2t%" "$(specialization)=subtlety" "$(tier)=t19m" input=main.simc input="$(gear_path)"no_legendary.simc input=legendaries.simc "$(clas)=discord_rog" "$(spec)=all" input=report_html.simc

		echo "3-Target"
		echo "Rogue Assassination & Outlaw & Subtlety @ T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=3t" "$(option_override)=%t_asn_3t%" "$(specialization)=assassination" "$(tier)=t19m" input=main.simc input="$(gear_path)"no_legendary.simc input=legendaries.simc "$(option_override)=%t_asn_ex_3t%" "$(specialization)=assassination" "$(specialization_suffix)=_Exsg_" "$(tier)=t19m" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" input="$(gear_path)"no_legendary.simc input=legendaries.simc "$(option_override)=%t_otl_3t%" "$(specialization)=outlaw" "$(specialization_suffix)=_" "$(tier)=t19m" input=main.simc input="$(gear_path)"no_legendary.simc input=legendaries.simc "$(option_override)=%t_sub_3t%" "$(specialization)=subtlety" "$(tier)=t19m" input=main.simc input="$(gear_path)"no_legendary.simc input=legendaries.simc "$(clas)=discord_rog" "$(spec)=all" input=report_html.simc

		echo "1-Target RE-Adds:4_3x_30_10"
		echo "Rogue Assassination & Outlaw & Subtlety @ T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(option_override)=%t_asn_1ta%" "$(specialization)=assassination" "$(tier)=t19m" input=main.simc input="$(gear_path)"no_legendary.simc input=legendaries.simc "$(option_override)=%t_asn_ex_1ta%" "$(specialization)=assassination" "$(specialization_suffix)=_Exsg_" "$(tier)=t19m" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" input="$(gear_path)"no_legendary.simc input=legendaries.simc "$(option_override)=%t_otl_1ta%" "$(specialization)=outlaw" "$(specialization_suffix)=_" "$(tier)=t19m" input=main.simc input="$(gear_path)"no_legendary.simc input=legendaries.simc "$(option_override)=%t_sub_1ta%" "$(specialization)=subtlety" "$(tier)=t19m" input=main.simc input="$(gear_path)"no_legendary.simc input=legendaries.simc input="$(fight_style_path)"aethys_adds_4_3x_30_10.simc "$(clas)=discord_rog" "$(spec)=all" input=report_html.simc
	)
	@pause
) else if "%input%"=="7" (
	>%output% (
		echo "Doing Stats Scaling Set"

		echo "1-Target"
		echo "Rogue Assassination T19P & T19H & T19M"
		%simc% input=..\config.simc output=nul target_error=0.05 "$(fight_style)=1t" "$(option_override)=%t_asn_1t%" "$(specialization)=assassination" "$(tier)=t19p" input=main.simc "$(tier)=t19h" input=main.simc "$(tier)=t19m" input=main.simc "$(stats_to_scale)=agility,crit_rating,haste_rating,mastery_rating,versatility_rating,weapon_dps" input=stats_scaling.simc "$(tier)=t19x" input=report_html.simc input=report_json.simc
		echo "Rogue Outlaw T19P & T19H & T19M"
		%simc% input=..\config.simc output=nul target_error=0.05 "$(fight_style)=1t" "$(option_override)=%t_otl_1t%" "$(specialization)=outlaw" "$(tier)=t19p" input=main.simc "$(tier)=t19h" input=main.simc "$(tier)=t19m" input=main.simc "$(stats_to_scale)=agility,crit_rating,haste_rating,mastery_rating,versatility_rating,weapon_dps" input=stats_scaling.simc "$(tier)=t19x" input=report_html.simc input=report_json.simc
		echo "Rogue Subtlety T19P & T19H & T19M"
		%simc% input=..\config.simc output=nul target_error=0.05 "$(fight_style)=1t" "$(option_override)=%t_sub_1t%" "$(specialization)=subtlety" "$(tier)=t19p" input=main.simc "$(tier)=t19h" input=main.simc "$(tier)=t19m" input=main.simc "$(stats_to_scale)=agility,crit_rating,haste_rating,mastery_rating,versatility_rating,weapon_dps" input=stats_scaling.simc "$(tier)=t19x" input=report_html.simc input=report_json.simc

		echo "2-Target"
		echo "Rogue Assassination T19P & T19H & T19M"
		%simc% input=..\config.simc output=nul target_error=0.05 "$(fight_style)=2t" "$(option_override)=%t_asn_2t%" "$(specialization)=assassination" "$(tier)=t19p" input=main.simc "$(tier)=t19h" input=main.simc "$(tier)=t19m" input=main.simc "$(stats_to_scale)=agility,crit_rating,haste_rating,mastery_rating,versatility_rating,weapon_dps" input=stats_scaling.simc "$(tier)=t19x" input=report_html.simc input=report_json.simc
		echo "Rogue Outlaw T19P & T19H & T19M"
		%simc% input=..\config.simc output=nul target_error=0.05 "$(fight_style)=2t" "$(option_override)=%t_otl_2t%" "$(specialization)=outlaw" "$(tier)=t19p" input=main.simc "$(tier)=t19h" input=main.simc "$(tier)=t19m" input=main.simc "$(stats_to_scale)=agility,crit_rating,haste_rating,mastery_rating,versatility_rating,weapon_dps" input=stats_scaling.simc "$(tier)=t19x" input=report_html.simc input=report_json.simc
		echo "Rogue Subtlety T19P & T19H & T19M"
		%simc% input=..\config.simc output=nul target_error=0.05 "$(fight_style)=2t" "$(option_override)=%t_sub_2t%" "$(specialization)=subtlety" "$(tier)=t19p" input=main.simc "$(tier)=t19h" input=main.simc "$(tier)=t19m" input=main.simc "$(stats_to_scale)=agility,crit_rating,haste_rating,mastery_rating,versatility_rating,weapon_dps" input=stats_scaling.simc "$(tier)=t19x" input=report_html.simc input=report_json.simc

		echo "3-Target"
		echo "Rogue Assassination T19P & T19H & T19M"
		%simc% input=..\config.simc output=nul target_error=0.05 "$(fight_style)=3t" "$(option_override)=%t_asn_3t%" "$(specialization)=assassination" "$(tier)=t19p" input=main.simc "$(tier)=t19h" input=main.simc "$(tier)=t19m" input=main.simc "$(stats_to_scale)=agility,crit_rating,haste_rating,mastery_rating,versatility_rating,weapon_dps" input=stats_scaling.simc "$(tier)=t19x" input=report_html.simc input=report_json.simc
		echo "Rogue Outlaw T19P & T19H & T19M"
		%simc% input=..\config.simc output=nul target_error=0.05 "$(fight_style)=3t" "$(option_override)=%t_otl_3t%" "$(specialization)=outlaw" "$(tier)=t19p" input=main.simc "$(tier)=t19h" input=main.simc "$(tier)=t19m" input=main.simc "$(stats_to_scale)=agility,crit_rating,haste_rating,mastery_rating,versatility_rating,weapon_dps" input=stats_scaling.simc "$(tier)=t19x" input=report_html.simc input=report_json.simc
		echo "Rogue Subtlety T19P & T19H & T19M"
		%simc% input=..\config.simc output=nul target_error=0.05 "$(fight_style)=3t" "$(option_override)=%t_sub_3t%" "$(specialization)=subtlety" "$(tier)=t19p" input=main.simc "$(tier)=t19h" input=main.simc "$(tier)=t19m" input=main.simc "$(stats_to_scale)=agility,crit_rating,haste_rating,mastery_rating,versatility_rating,weapon_dps" input=stats_scaling.simc "$(tier)=t19x" input=report_html.simc input=report_json.simc

		echo "1-Target RE-Adds:4_3x_30_10"
		echo "Rogue Assassination T19P & T19H & T19M"
		%simc% input=..\config.simc output=nul target_error=0.05 "$(fight_style)=1t" "$(option_override)=%t_asn_1ta%" "$(specialization)=assassination" "$(tier)=t19p" input=main.simc "$(tier)=t19h" input=main.simc "$(tier)=t19m" input=main.simc "$(stats_to_scale)=agility,crit_rating,haste_rating,mastery_rating,versatility_rating,weapon_dps" input=stats_scaling.simc input="$(fight_style_path)"aethys_adds_4_3x_30_10.simc "$(tier)=t19x" input=report_html.simc input=report_json.simc
		echo "Rogue Outlaw T19P & T19H & T19M"
		%simc% input=..\config.simc output=nul target_error=0.05 "$(fight_style)=1t" "$(option_override)=%t_otl_1ta%" "$(specialization)=outlaw" "$(tier)=t19p" input=main.simc "$(tier)=t19h" input=main.simc "$(tier)=t19m" input=main.simc "$(stats_to_scale)=agility,crit_rating,haste_rating,mastery_rating,versatility_rating,weapon_dps" input=stats_scaling.simc input="$(fight_style_path)"aethys_adds_4_3x_30_10.simc "$(tier)=t19x" input=report_html.simc input=report_json.simc
		echo "Rogue Subtlety T19P & T19H & T19M"
		%simc% input=..\config.simc output=nul target_error=0.05 "$(fight_style)=1t" "$(option_override)=%t_sub_1ta%" "$(specialization)=subtlety" "$(tier)=t19p" input=main.simc "$(tier)=t19h" input=main.simc "$(tier)=t19m" input=main.simc "$(stats_to_scale)=agility,crit_rating,haste_rating,mastery_rating,versatility_rating,weapon_dps" input=stats_scaling.simc input="$(fight_style_path)"aethys_adds_4_3x_30_10.simc "$(tier)=t19x" input=report_html.simc input=report_json.simc
	)
	@pause
) else if "%input%"=="8" (
	>%output% (
		echo "Doing Main Races Comparison"

		echo "1-Target"
		echo "Rogue Assassination T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(option_override)=%t_asn_1t%" "$(specialization)=assassination" "$(tier)=t19m" input=main.simc input=races.simc input=report_html.simc input=report_json.simc
		echo "Rogue Assassination Exsg T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(option_override)=%t_asn_ex_1t%" "$(specialization)=assassination" "$(specialization_suffix)=_Exsg_" "$(tier)=t19m" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" input=races.simc input=report_html.simc input=report_json.simc
		echo "Rogue Outlaw T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(option_override)=%t_otl_1t%" "$(specialization)=outlaw" "$(tier)=t19m" input=main.simc input=races.simc input=report_html.simc input=report_json.simc
		echo "Rogue Subtlety T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(option_override)=%t_sub_1t%" "$(specialization)=subtlety" "$(tier)=t19m" input=main.simc input=races.simc input=report_html.simc input=report_json.simc

		echo "2-Target"
		echo "Rogue Assassination T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=2t" "$(option_override)=%t_asn_2t%" "$(specialization)=assassination" "$(tier)=t19m" input=main.simc input=races.simc input=report_html.simc input=report_json.simc
		echo "Rogue Assassination Exsg T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=2t" "$(option_override)=%t_asn_ex_2t%" "$(specialization)=assassination" "$(specialization_suffix)=_Exsg_" "$(tier)=t19m" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" input=races.simc input=report_html.simc input=report_json.simc
		echo "Rogue Outlaw T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=2t" "$(option_override)=%t_otl_2t%" "$(specialization)=outlaw" "$(tier)=t19m" input=main.simc input=races.simc input=report_html.simc input=report_json.simc
		echo "Rogue Subtlety T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=2t" "$(option_override)=%t_sub_2t%" "$(specialization)=subtlety" "$(tier)=t19m" input=main.simc input=races.simc input=report_html.simc input=report_json.simc

		echo "3-Target"
		echo "Rogue Assassination T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=3t" "$(option_override)=%t_asn_3t%" "$(specialization)=assassination" "$(tier)=t19m" input=main.simc input=races.simc input=report_html.simc input=report_json.simc
		echo "Rogue Assassination Exsg T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=3t" "$(option_override)=%t_asn_ex_3t%" "$(specialization)=assassination" "$(specialization_suffix)=_Exsg_" "$(tier)=t19m" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" input=races.simc input=report_html.simc input=report_json.simc
		echo "Rogue Outlaw T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=3t" "$(option_override)=%t_otl_3t%" "$(specialization)=outlaw" "$(tier)=t19m" input=main.simc input=races.simc input=report_html.simc input=report_json.simc
		echo "Rogue Subtlety T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=3t" "$(option_override)=%t_sub_3t%" "$(specialization)=subtlety" "$(tier)=t19m" input=main.simc input=races.simc input=report_html.simc input=report_json.simc

		echo "1-Target RE-Adds:4_3x_30_10"
		echo "Rogue Assassination T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(option_override)=%t_asn_1ta%" "$(specialization)=assassination" "$(tier)=t19m" input=main.simc input=races.simc input="$(fight_style_path)"aethys_adds_4_3x_30_10.simc input=report_html.simc input=report_json.simc
		echo "Rogue Assassination Exsg T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(option_override)=%t_asn_ex_1ta%" "$(specialization)=assassination" "$(specialization_suffix)=_Exsg_" "$(tier)=t19m" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" input=races.simc input="$(fight_style_path)"aethys_adds_4_3x_30_10.simc input=report_html.simc input=report_json.simc
		echo "Rogue Outlaw T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(option_override)=%t_otl_1ta%" "$(specialization)=outlaw" "$(tier)=t19m" input=main.simc input=races.simc input="$(fight_style_path)"aethys_adds_4_3x_30_10.simc input=report_html.simc input=report_json.simc
		echo "Rogue Subtlety T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(option_override)=%t_sub_1ta%" "$(specialization)=subtlety" "$(tier)=t19m" input=main.simc input=races.simc input="$(fight_style_path)"aethys_adds_4_3x_30_10.simc input=report_html.simc input=report_json.simc
	)
	@pause
) else if "%input%"=="9" (
	>%output% (
		echo "Doing Trinkets Comparison"

		echo "1-Target"
		echo "Rogue Assassination T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(option_override)=%t_asn_1t%" "$(specialization)=assassination" "$(tier)=t19m" input=main.simc input=trinkets.simc input=report_html.simc input=report_json.simc
		echo "Rogue Assassination Exsg T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(option_override)=%t_asn_ex_1t%" "$(specialization)=assassination" "$(specialization_suffix)=_Exsg_" "$(tier)=t19m" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" input=trinkets.simc input=report_html.simc input=report_json.simc
		echo "Rogue Outlaw T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(option_override)=%t_otl_1t%" "$(specialization)=outlaw" "$(tier)=t19m" input=main.simc input=trinkets.simc input=report_html.simc input=report_json.simc
		echo "Rogue Subtlety T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(option_override)=%t_sub_1t%" "$(specialization)=subtlety" "$(tier)=t19m" input=main.simc input=trinkets.simc input=report_html.simc input=report_json.simc

		echo "2-Target"
		echo "Rogue Assassination T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=2t" "$(option_override)=%t_asn_2t%" "$(specialization)=assassination" "$(tier)=t19m" input=main.simc input=trinkets.simc input=report_html.simc input=report_json.simc
		echo "Rogue Assassination Exsg T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=2t" "$(option_override)=%t_asn_ex_2t%" "$(specialization)=assassination" "$(specialization_suffix)=_Exsg_" "$(tier)=t19m" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" input=trinkets.simc input=report_html.simc input=report_json.simc
		echo "Rogue Outlaw T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=2t" "$(option_override)=%t_otl_2t%" "$(specialization)=outlaw" "$(tier)=t19m" input=main.simc input=trinkets.simc input=report_html.simc input=report_json.simc
		echo "Rogue Subtlety T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=2t" "$(option_override)=%t_sub_2t%" "$(specialization)=subtlety" "$(tier)=t19m" input=main.simc input=trinkets.simc input=report_html.simc input=report_json.simc

		echo "3-Target"
		echo "Rogue Assassination T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=3t" "$(option_override)=%t_asn_3t%" "$(specialization)=assassination" "$(tier)=t19m" input=main.simc input=trinkets.simc input=report_html.simc input=report_json.simc
		echo "Rogue Assassination Exsg T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=3t" "$(option_override)=%t_asn_ex_3t%" "$(specialization)=assassination" "$(specialization_suffix)=_Exsg_" "$(tier)=t19m" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" input=trinkets.simc input=report_html.simc input=report_json.simc
		echo "Rogue Outlaw T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=3t" "$(option_override)=%t_otl_3t%" "$(specialization)=outlaw" "$(tier)=t19m" input=main.simc input=trinkets.simc input=report_html.simc input=report_json.simc
		echo "Rogue Subtlety T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=3t" "$(option_override)=%t_sub_3t%" "$(specialization)=subtlety" "$(tier)=t19m" input=main.simc input=trinkets.simc input=report_html.simc input=report_json.simc

		echo "1-Target RE-Adds:4_3x_30_10"
		echo "Rogue Assassination T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(option_override)=%t_asn_1ta%" "$(specialization)=assassination" "$(tier)=t19m" input=main.simc input=trinkets.simc input="$(fight_style_path)"aethys_adds_4_3x_30_10.simc input=report_html.simc input=report_json.simc
		echo "Rogue Assassination Exsg T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(option_override)=%t_asn_ex_1ta%" "$(specialization)=assassination" "$(specialization_suffix)=_Exsg_" "$(tier)=t19m" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" input=trinkets.simc input="$(fight_style_path)"aethys_adds_4_3x_30_10.simc input=report_html.simc input=report_json.simc
		echo "Rogue Outlaw T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(option_override)=%t_otl_1ta%" "$(specialization)=outlaw" "$(tier)=t19m" input=main.simc input=trinkets.simc input="$(fight_style_path)"aethys_adds_4_3x_30_10.simc input=report_html.simc input=report_json.simc
		echo "Rogue Subtlety T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(option_override)=%t_sub_1ta%" "$(specialization)=subtlety" "$(tier)=t19m" input=main.simc input=trinkets.simc input="$(fight_style_path)"aethys_adds_4_3x_30_10.simc input=report_html.simc input=report_json.simc
	)
	@pause
) else if "%input%"=="10" (
	>%output% (
		echo "Doing Relics Comparison"

		echo "1-Target"
		echo "Rogue Assassination T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(option_override)=%t_asn_1t%" "$(specialization)=assassination" "$(tier)=t19m" input=main.simc input=relics.simc input=report_html.simc input=report_json.simc
		echo "Rogue Assassination Exsg T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(option_override)=%t_asn_ex_1t%" "$(specialization)=assassination" "$(specialization_suffix)=_Exsg_" "$(tier)=t19m" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" input=relics.simc input=report_html.simc input=report_json.simc
		echo "Rogue Outlaw T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(option_override)=%t_otl_1t%" "$(specialization)=outlaw" "$(tier)=t19m" input=main.simc input=relics.simc input=report_html.simc input=report_json.simc
		echo "Rogue Subtlety T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(option_override)=%t_sub_1t%" "$(specialization)=subtlety" "$(tier)=t19m" input=main.simc input=relics.simc input=report_html.simc input=report_json.simc

		echo "2-Target"
		echo "Rogue Assassination T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=2t" "$(option_override)=%t_asn_2t%" "$(specialization)=assassination" "$(tier)=t19m" input=main.simc input=relics.simc input=report_html.simc input=report_json.simc
		echo "Rogue Assassination Exsg T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=2t" "$(option_override)=%t_asn_ex_2t%" "$(specialization)=assassination" "$(specialization_suffix)=_Exsg_" "$(tier)=t19m" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" input=relics.simc input=report_html.simc input=report_json.simc
		echo "Rogue Outlaw T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=2t" "$(option_override)=%t_otl_2t%" "$(specialization)=outlaw" "$(tier)=t19m" input=main.simc input=relics.simc input=report_html.simc input=report_json.simc
		echo "Rogue Subtlety T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=2t" "$(option_override)=%t_sub_2t%" "$(specialization)=subtlety" "$(tier)=t19m" input=main.simc input=relics.simc input=report_html.simc input=report_json.simc

		echo "3-Target"
		echo "Rogue Assassination T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=3t" "$(option_override)=%t_asn_3t%" "$(specialization)=assassination" "$(tier)=t19m" input=main.simc input=relics.simc input=report_html.simc input=report_json.simc
		echo "Rogue Assassination Exsg T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=3t" "$(option_override)=%t_asn_ex_3t%" "$(specialization)=assassination" "$(specialization_suffix)=_Exsg_" "$(tier)=t19m" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" input=relics.simc input=report_html.simc input=report_json.simc
		echo "Rogue Outlaw T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=3t" "$(option_override)=%t_otl_3t%" "$(specialization)=outlaw" "$(tier)=t19m" input=main.simc input=relics.simc input=report_html.simc input=report_json.simc
		echo "Rogue Subtlety T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=3t" "$(option_override)=%t_sub_3t%" "$(specialization)=subtlety" "$(tier)=t19m" input=main.simc input=relics.simc input=report_html.simc input=report_json.simc

		echo "1-Target RE-Adds:4_3x_30_10"
		echo "Rogue Assassination T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(option_override)=%t_asn_1ta%" "$(specialization)=assassination" "$(tier)=t19m" input=main.simc input=relics.simc input="$(fight_style_path)"aethys_adds_4_3x_30_10.simc input=report_html.simc input=report_json.simc
		echo "Rogue Assassination Exsg T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(option_override)=%t_asn_ex_1ta%" "$(specialization)=assassination" "$(specialization_suffix)=_Exsg_" "$(tier)=t19m" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" input=relics.simc input="$(fight_style_path)"aethys_adds_4_3x_30_10.simc input=report_html.simc input=report_json.simc
		echo "Rogue Outlaw T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(option_override)=%t_otl_1ta%" "$(specialization)=outlaw" "$(tier)=t19m" input=main.simc input=relics.simc input="$(fight_style_path)"aethys_adds_4_3x_30_10.simc input=report_html.simc input=report_json.simc
		echo "Rogue Subtlety T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(option_override)=%t_sub_1ta%" "$(specialization)=subtlety" "$(tier)=t19m" input=main.simc input=relics.simc input="$(fight_style_path)"aethys_adds_4_3x_30_10.simc input=report_html.simc input=report_json.simc
	)
	@pause
) else if "%input%"=="11" (
	>%output% (
		echo "Doing 4D Plotting"

		echo "1-Target"
		echo "Rogue Assassination T19M 21k"
		%simc% input=..\config.simc threads=5 output=nul target_error=0.8 "$(fight_style)=1t" "$(option_override)=%t_asn_1t%" "$(specialization)=assassination" "$(tier)=t19m" input=main.simc input=rogue_t19m_plot_21kstats_by1066.simc input=report_json.simc
		echo "Rogue Assassination Exsg T19M 21k"
		%simc% input=..\config.simc threads=5 output=nul target_error=0.8 "$(fight_style)=1t" "$(option_override)=%t_asn_ex_1t%" "$(specialization)=assassination" "$(specialization_suffix)=_Exsg_" "$(tier)=t19m" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" input=rogue_t19m_plot_21kstats_by1066.simc input=report_json.simc
		echo "Rogue Outlaw T19M 21k"
		%simc% input=..\config.simc threads=5 output=nul target_error=0.8 "$(fight_style)=1t" "$(option_override)=%t_otl_1t%" "$(specialization)=outlaw" "$(tier)=t19m" input=main.simc input=rogue_t19m_plot_21kstats_by1066.simc input=report_json.simc
		echo "Rogue Subtlety T19M 21k"
		%simc% input=..\config.simc threads=5 output=nul target_error=0.8 "$(fight_style)=1t" "$(option_override)=%t_sub_1t%" "$(specialization)=subtlety" "$(tier)=t19m" input=main.simc input=rogue_t19m_plot_21kstats_by1066.simc input=report_json.simc

		echo "2-Target"
		echo "Rogue Assassination T19M 21k"
		%simc% input=..\config.simc threads=5 output=nul target_error=0.8 "$(fight_style)=2t" "$(option_override)=%t_asn_2t%" "$(specialization)=assassination" "$(tier)=t19m" input=main.simc input=rogue_t19m_plot_21kstats_by1066.simc input=report_json.simc
		echo "Rogue Assassination Exsg T19M 21k"
		%simc% input=..\config.simc threads=5 output=nul target_error=0.8 "$(fight_style)=2t" "$(option_override)=%t_asn_ex_2t%" "$(specialization)=assassination" "$(specialization_suffix)=_Exsg_" "$(tier)=t19m" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" input=rogue_t19m_plot_21kstats_by1066.simc input=report_json.simc
		echo "Rogue Outlaw T19M 21k"
		%simc% input=..\config.simc threads=5 output=nul target_error=0.8 "$(fight_style)=2t" "$(option_override)=%t_otl_2t%" "$(specialization)=outlaw" "$(tier)=t19m" input=main.simc input=rogue_t19m_plot_21kstats_by1066.simc input=report_json.simc
		echo "Rogue Subtlety T19M 21k"
		%simc% input=..\config.simc threads=5 output=nul target_error=0.8 "$(fight_style)=2t" "$(option_override)=%t_sub_2t%" "$(specialization)=subtlety" "$(tier)=t19m" input=main.simc input=rogue_t19m_plot_21kstats_by1066.simc input=report_json.simc

		echo "3-Target"
		echo "Rogue Assassination T19M 21k"
		%simc% input=..\config.simc threads=5 output=nul target_error=0.8 "$(fight_style)=3t" "$(option_override)=%t_asn_3t%" "$(specialization)=assassination" "$(tier)=t19m" input=main.simc input=rogue_t19m_plot_21kstats_by1066.simc input=report_json.simc
		echo "Rogue Assassination Exsg T19M 21k"
		%simc% input=..\config.simc threads=5 output=nul target_error=0.8 "$(fight_style)=3t" "$(option_override)=%t_asn_ex_3t%" "$(specialization)=assassination" "$(specialization_suffix)=_Exsg_" "$(tier)=t19m" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" input=rogue_t19m_plot_21kstats_by1066.simc input=report_json.simc
		echo "Rogue Outlaw T19M 21k"
		%simc% input=..\config.simc threads=5 output=nul target_error=0.8 "$(fight_style)=3t" "$(option_override)=%t_otl_3t%" "$(specialization)=outlaw" "$(tier)=t19m" input=main.simc input=rogue_t19m_plot_21kstats_by1066.simc input=report_json.simc
		echo "Rogue Subtlety T19M 21k"
		%simc% input=..\config.simc threads=5 output=nul target_error=0.8 "$(fight_style)=3t" "$(option_override)=%t_sub_3t%" "$(specialization)=subtlety" "$(tier)=t19m" input=main.simc input=rogue_t19m_plot_21kstats_by1066.simc input=report_json.simc

		echo "1-Target RE-Adds:4_3x_30_10"
		echo "Rogue Assassination T19M 21k"
		%simc% input=..\config.simc threads=5 output=nul target_error=0.8 "$(fight_style)=1t" "$(option_override)=%t_asn_1ta%" "$(specialization)=assassination" "$(tier)=t19m" input=main.simc input=rogue_t19m_plot_21kstats_by1066.simc input="$(fight_style_path)"aethys_adds_4_3x_30_10.simc input=report_json.simc
		echo "Rogue Assassination Exsg T19M 21k"
		%simc% input=..\config.simc threads=5 output=nul target_error=0.8 "$(fight_style)=1t" "$(option_override)=%t_asn_ex_1ta%" "$(specialization)=assassination" "$(specialization_suffix)=_Exsg_" "$(tier)=t19m" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" input=rogue_t19m_plot_21kstats_by1066.simc input="$(fight_style_path)"aethys_adds_4_3x_30_10.simc input=report_json.simc
		echo "Rogue Outlaw T19M 21k"
		%simc% input=..\config.simc threads=5 output=nul target_error=0.8 "$(fight_style)=1t" "$(option_override)=%t_otl_1ta%" "$(specialization)=outlaw" "$(tier)=t19m" input=main.simc input=rogue_t19m_plot_21kstats_by1066.simc input="$(fight_style_path)"aethys_adds_4_3x_30_10.simc input=report_json.simc
		echo "Rogue Subtlety T19M 21k"
		%simc% input=..\config.simc threads=5 output=nul target_error=0.8 "$(fight_style)=1t" "$(option_override)=%t_sub_1ta%" "$(specialization)=subtlety" "$(tier)=t19m" input=main.simc input=rogue_t19m_plot_21kstats_by1066.simc input="$(fight_style_path)"aethys_adds_4_3x_30_10.simc input=report_json.simc
	)
	@pause
) else if "%input%"=="12" (
	>%output% (
		echo "Doing Full Trinkets Comparison"

		echo "1-Target"
		echo "Rogue Assassination T19P & T19H & T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(option_override)=%t_asn_1t%" "$(specialization)=assassination" "$(tier)=t19p" input=main.simc input=trinkets.simc input=report_html.simc input=report_json.simc
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(option_override)=%t_asn_1t%" "$(specialization)=assassination" "$(tier)=t19h" input=main.simc input=trinkets.simc input=report_html.simc input=report_json.simc
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(option_override)=%t_asn_1t%" "$(specialization)=assassination" "$(tier)=t19m" input=main.simc input=trinkets.simc input=report_html.simc input=report_json.simc
		echo "Rogue Outlaw T19P & T19H & T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(option_override)=%t_otl_1t%" "$(specialization)=outlaw" "$(tier)=t19p" input=main.simc input=trinkets.simc input=report_html.simc input=report_json.simc
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(option_override)=%t_otl_1t%" "$(specialization)=outlaw" "$(tier)=t19h" input=main.simc input=trinkets.simc input=report_html.simc input=report_json.simc
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(option_override)=%t_otl_1t%" "$(specialization)=outlaw" "$(tier)=t19m" input=main.simc input=trinkets.simc input=report_html.simc input=report_json.simc
		echo "Rogue Subtlety T19P & T19H & T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(option_override)=%t_sub_1t%" "$(specialization)=subtlety" "$(tier)=t19p" input=main.simc input=trinkets.simc input=report_html.simc input=report_json.simc
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(option_override)=%t_sub_1t%" "$(specialization)=subtlety" "$(tier)=t19h" input=main.simc input=trinkets.simc input=report_html.simc input=report_json.simc
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(option_override)=%t_sub_1t%" "$(specialization)=subtlety" "$(tier)=t19m" input=main.simc input=trinkets.simc input=report_html.simc input=report_json.simc

		echo "2-Target"
		echo "Rogue Assassination T19P & T19H & T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=2t" "$(option_override)=%t_asn_2t%" "$(specialization)=assassination" "$(tier)=t19p" input=main.simc input=trinkets.simc input=report_html.simc input=report_json.simc
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=2t" "$(option_override)=%t_asn_2t%" "$(specialization)=assassination" "$(tier)=t19h" input=main.simc input=trinkets.simc input=report_html.simc input=report_json.simc
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=2t" "$(option_override)=%t_asn_2t%" "$(specialization)=assassination" "$(tier)=t19m" input=main.simc input=trinkets.simc input=report_html.simc input=report_json.simc
		echo "Rogue Outlaw T19P & T19H & T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=2t" "$(option_override)=%t_otl_2t%" "$(specialization)=outlaw" "$(tier)=t19p" input=main.simc input=trinkets.simc input=report_html.simc input=report_json.simc
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=2t" "$(option_override)=%t_otl_2t%" "$(specialization)=outlaw" "$(tier)=t19h" input=main.simc input=trinkets.simc input=report_html.simc input=report_json.simc
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=2t" "$(option_override)=%t_otl_2t%" "$(specialization)=outlaw" "$(tier)=t19m" input=main.simc input=trinkets.simc input=report_html.simc input=report_json.simc
		echo "Rogue Subtlety T19P & T19H & T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=2t" "$(option_override)=%t_sub_2t%" "$(specialization)=subtlety" "$(tier)=t19p" input=main.simc input=trinkets.simc input=report_html.simc input=report_json.simc
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=2t" "$(option_override)=%t_sub_2t%" "$(specialization)=subtlety" "$(tier)=t19h" input=main.simc input=trinkets.simc input=report_html.simc input=report_json.simc
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=2t" "$(option_override)=%t_sub_2t%" "$(specialization)=subtlety" "$(tier)=t19m" input=main.simc input=trinkets.simc input=report_html.simc input=report_json.simc

		echo "3-Target"
		echo "Rogue Assassination T19P & T19H & T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=3t" "$(option_override)=%t_asn_3t%" "$(specialization)=assassination" "$(tier)=t19p" input=main.simc input=trinkets.simc input=report_html.simc input=report_json.simc
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=3t" "$(option_override)=%t_asn_3t%" "$(specialization)=assassination" "$(tier)=t19h" input=main.simc input=trinkets.simc input=report_html.simc input=report_json.simc
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=3t" "$(option_override)=%t_asn_3t%" "$(specialization)=assassination" "$(tier)=t19m" input=main.simc input=trinkets.simc input=report_html.simc input=report_json.simc
		echo "Rogue Outlaw T19P & T19H & T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=3t" "$(option_override)=%t_otl_3t%" "$(specialization)=outlaw" "$(tier)=t19p" input=main.simc input=trinkets.simc input=report_html.simc input=report_json.simc
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=3t" "$(option_override)=%t_otl_3t%" "$(specialization)=outlaw" "$(tier)=t19h" input=main.simc input=trinkets.simc input=report_html.simc input=report_json.simc
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=3t" "$(option_override)=%t_otl_3t%" "$(specialization)=outlaw" "$(tier)=t19m" input=main.simc input=trinkets.simc input=report_html.simc input=report_json.simc
		echo "Rogue Subtlety T19P & T19H & T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=3t" "$(option_override)=%t_sub_3t%" "$(specialization)=subtlety" "$(tier)=t19p" input=main.simc input=trinkets.simc input=report_html.simc input=report_json.simc
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=3t" "$(option_override)=%t_sub_3t%" "$(specialization)=subtlety" "$(tier)=t19h" input=main.simc input=trinkets.simc input=report_html.simc input=report_json.simc
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=3t" "$(option_override)=%t_sub_3t%" "$(specialization)=subtlety" "$(tier)=t19m" input=main.simc input=trinkets.simc input=report_html.simc input=report_json.simc

		echo "1-Target RE-Adds:4_3x_30_10"
		echo "Rogue Assassination T19P & T19H & T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(option_override)=%t_asn_1ta%" "$(specialization)=assassination" "$(tier)=t19p" input=main.simc input=trinkets.simc input="$(fight_style_path)"aethys_adds_4_3x_30_10.simc input=report_html.simc input=report_json.simc
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(option_override)=%t_asn_1ta%" "$(specialization)=assassination" "$(tier)=t19h" input=main.simc input=trinkets.simc input="$(fight_style_path)"aethys_adds_4_3x_30_10.simc input=report_html.simc input=report_json.simc
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(option_override)=%t_asn_1ta%" "$(specialization)=assassination" "$(tier)=t19m" input=main.simc input=trinkets.simc input="$(fight_style_path)"aethys_adds_4_3x_30_10.simc input=report_html.simc input=report_json.simc
		echo "Rogue Outlaw T19P & T19H & T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(option_override)=%t_otl_1ta%" "$(specialization)=outlaw" "$(tier)=t19p" input=main.simc input=trinkets.simc input="$(fight_style_path)"aethys_adds_4_3x_30_10.simc input=report_html.simc input=report_json.simc
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(option_override)=%t_otl_1ta%" "$(specialization)=outlaw" "$(tier)=t19h" input=main.simc input=trinkets.simc input="$(fight_style_path)"aethys_adds_4_3x_30_10.simc input=report_html.simc input=report_json.simc
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(option_override)=%t_otl_1ta%" "$(specialization)=outlaw" "$(tier)=t19m" input=main.simc input=trinkets.simc input="$(fight_style_path)"aethys_adds_4_3x_30_10.simc input=report_html.simc input=report_json.simc
		echo "Rogue Subtlety T19P & T19H & T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(option_override)=%t_sub_1ta%" "$(specialization)=subtlety" "$(tier)=t19p" input=main.simc input=trinkets.simc input="$(fight_style_path)"aethys_adds_4_3x_30_10.simc input=report_html.simc input=report_json.simc
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(option_override)=%t_sub_1ta%" "$(specialization)=subtlety" "$(tier)=t19h" input=main.simc input=trinkets.simc input="$(fight_style_path)"aethys_adds_4_3x_30_10.simc input=report_html.simc input=report_json.simc
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(option_override)=%t_sub_1ta%" "$(specialization)=subtlety" "$(tier)=t19m" input=main.simc input=trinkets.simc input="$(fight_style_path)"aethys_adds_4_3x_30_10.simc input=report_html.simc input=report_json.simc
	)
	@pause
) else if "%input%"=="20" (
	>%output% (
		echo "Full Combo"


		echo "Doing Main Comparison Set"

		echo "1-Target"
		echo "Rogue Assassination T19P & T19H & T19M"
		%simc% input=..\config.simc output=nul target_error=0.1 "$(fight_style)=1t" "$(option_override)=%t_asn_1t%" "$(specialization)=assassination" "$(tier)=t19p" input=main.simc "$(tier)=t19h" input=main.simc "$(tier)=t19m" input=main.simc "$(tier)=t19x" input=report_html.simc input=report_json.simc
		echo "Rogue Assassination Exsg T19P & T19H & T19M"
		%simc% input=..\config.simc output=nul target_error=0.1 "$(fight_style)=1t" "$(option_override)=%t_asn_ex_1t%" "$(specialization)=assassination" "$(specialization_suffix)=_Exsg_" "$(tier)=t19p" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" "$(tier)=t19h" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" "$(tier)=t19m" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" "$(tier)=t19x" input=report_html.simc input=report_json.simc
		echo "Rogue Outlaw T19P & T19H & T19M"
		%simc% input=..\config.simc output=nul target_error=0.1 "$(fight_style)=1t" "$(option_override)=%t_otl_1t%" "$(specialization)=outlaw" "$(tier)=t19p" input=main.simc "$(tier)=t19h" input=main.simc "$(tier)=t19m" input=main.simc "$(tier)=t19x" input=report_html.simc input=report_json.simc
		echo "Rogue Subtlety T19P & T19H & T19M"
		%simc% input=..\config.simc output=nul target_error=0.1 "$(fight_style)=1t" "$(option_override)=%t_sub_1t%" "$(specialization)=subtlety" "$(tier)=t19p" input=main.simc "$(tier)=t19h" input=main.simc "$(tier)=t19m" input=main.simc "$(tier)=t19x" input=report_html.simc input=report_json.simc

		echo "2-Target"
		echo "Rogue Assassination T19P & T19H & T19M"
		%simc% input=..\config.simc output=nul target_error=0.1 "$(fight_style)=2t" "$(option_override)=%t_asn_2t%" "$(specialization)=assassination" "$(tier)=t19p" input=main.simc "$(tier)=t19h" input=main.simc "$(tier)=t19m" input=main.simc "$(tier)=t19x" input=report_html.simc input=report_json.simc
		echo "Rogue Assassination Exsg T19P & T19H & T19M"
		%simc% input=..\config.simc output=nul target_error=0.1 "$(fight_style)=2t" "$(option_override)=%t_asn_ex_2t%" "$(specialization)=assassination" "$(specialization_suffix)=_Exsg_" "$(tier)=t19p" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" "$(tier)=t19h" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" "$(tier)=t19m" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" "$(tier)=t19x" input=report_html.simc input=report_json.simc
		echo "Rogue Outlaw T19P & T19H & T19M"
		%simc% input=..\config.simc output=nul target_error=0.1 "$(fight_style)=2t" "$(option_override)=%t_otl_2t%" "$(specialization)=outlaw" "$(tier)=t19p" input=main.simc "$(tier)=t19h" input=main.simc "$(tier)=t19m" input=main.simc "$(tier)=t19x" input=report_html.simc input=report_json.simc
		echo "Rogue Subtlety T19P & T19H & T19M"
		%simc% input=..\config.simc output=nul target_error=0.1 "$(fight_style)=2t" "$(option_override)=%t_sub_2t%" "$(specialization)=subtlety" "$(tier)=t19p" input=main.simc "$(tier)=t19h" input=main.simc "$(tier)=t19m" input=main.simc "$(tier)=t19x" input=report_html.simc input=report_json.simc

		echo "3-Target"
		echo "Rogue Assassination T19P & T19H & T19M"
		%simc% input=..\config.simc output=nul target_error=0.1 "$(fight_style)=3t" "$(option_override)=%t_asn_3t%" "$(specialization)=assassination" "$(tier)=t19p" input=main.simc "$(tier)=t19h" input=main.simc "$(tier)=t19m" input=main.simc "$(tier)=t19x" input=report_html.simc input=report_json.simc
		echo "Rogue Assassination Exsg T19P & T19H & T19M"
		%simc% input=..\config.simc output=nul target_error=0.1 "$(fight_style)=3t" "$(option_override)=%t_asn_ex_3t%" "$(specialization)=assassination" "$(specialization_suffix)=_Exsg_" "$(tier)=t19p" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" "$(tier)=t19h" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" "$(tier)=t19m" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" "$(tier)=t19x" input=report_html.simc input=report_json.simc
		echo "Rogue Outlaw T19P & T19H & T19M"
		%simc% input=..\config.simc output=nul target_error=0.1 "$(fight_style)=3t" "$(option_override)=%t_otl_3t%" "$(specialization)=outlaw" "$(tier)=t19p" input=main.simc "$(tier)=t19h" input=main.simc "$(tier)=t19m" input=main.simc "$(tier)=t19x" input=report_html.simc input=report_json.simc
		echo "Rogue Subtlety T19P & T19H & T19M"
		%simc% input=..\config.simc output=nul target_error=0.1 "$(fight_style)=3t" "$(option_override)=%t_sub_3t%" "$(specialization)=subtlety" "$(tier)=t19p" input=main.simc "$(tier)=t19h" input=main.simc "$(tier)=t19m" input=main.simc "$(tier)=t19x" input=report_html.simc input=report_json.simc

		echo "1-Target RE-Adds:4_3x_30_10"
		echo "Rogue Assassination T19P & T19H & T19M"
		%simc% input=..\config.simc output=nul target_error=0.1 "$(fight_style)=1t" "$(option_override)=%t_asn_1ta%" "$(specialization)=assassination" "$(tier)=t19p" input=main.simc "$(tier)=t19h" input=main.simc "$(tier)=t19m" input=main.simc input="$(fight_style_path)"aethys_adds_4_3x_30_10.simc "$(tier)=t19x" input=report_html.simc input=report_json.simc
		echo "Rogue Assassination Exsg T19P & T19H & T19M"
		%simc% input=..\config.simc output=nul target_error=0.1 "$(fight_style)=1t" "$(option_override)=%t_asn_ex_1ta%" "$(specialization)=assassination" "$(specialization_suffix)=_Exsg_" "$(tier)=t19p" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" "$(tier)=t19h" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" "$(tier)=t19m" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" input="$(fight_style_path)"aethys_adds_4_3x_30_10.simc "$(tier)=t19x" input=report_html.simc input=report_json.simc
		echo "Rogue Outlaw T19P & T19H & T19M"
		%simc% input=..\config.simc output=nul target_error=0.1 "$(fight_style)=1t" "$(option_override)=%t_otl_1ta%" "$(specialization)=outlaw" "$(tier)=t19p" input=main.simc "$(tier)=t19h" input=main.simc "$(tier)=t19m" input=main.simc input="$(fight_style_path)"aethys_adds_4_3x_30_10.simc "$(tier)=t19x" input=report_html.simc input=report_json.simc
		echo "Rogue Subtlety T19P & T19H & T19M"
		%simc% input=..\config.simc output=nul target_error=0.1 "$(fight_style)=1t" "$(option_override)=%t_sub_1ta%" "$(specialization)=subtlety" "$(tier)=t19p" input=main.simc "$(tier)=t19h" input=main.simc "$(tier)=t19m" input=main.simc input="$(fight_style_path)"aethys_adds_4_3x_30_10.simc "$(tier)=t19x" input=report_html.simc input=report_json.simc



		echo "Doing Main Combined Comparison Set"

		echo "1-Target"
		echo "Rogue Assassination & Outlaw & Subtlety @ T19P & T19H & T19M"
		%simc% input=..\config.simc output=nul target_error=0.1 "$(sim_type)=default_combined" "$(fight_style)=1t" "$(option_override)=%t_asn_1t%" "$(specialization)=assassination" "$(tier)=t19p" input=main.simc "$(tier)=t19h" input=main.simc "$(tier)=t19m" input=main.simc "$(option_override)=%t_asn_ex_1t%" "$(specialization)=assassination" "$(specialization_suffix)=_Exsg_" "$(tier)=t19p" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" input=name_override.simc "$(tier)=t19h" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" input=name_override.simc "$(tier)=t19m" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" input=name_override.simc "$(option_override)=%t_otl_1t%" "$(specialization)=outlaw" "$(specialization_suffix)=_" "$(tier)=t19p" input=main.simc "$(tier)=t19h" input=main.simc "$(tier)=t19m" input=main.simc "$(option_override)=%t_sub_1t%" "$(specialization)=subtlety" "$(tier)=t19p" input=main.simc "$(tier)=t19h" input=main.simc "$(tier)=t19m" input=main.simc "$(clas)=discord_rog" "$(spec)=all" "$(tier)=t19x" input=report_html.simc

		echo "2-Target"
		echo "Rogue Assassination & Outlaw & Subtlety @ T19P & T19H & T19M"
		%simc% input=..\config.simc output=nul target_error=0.1 "$(sim_type)=default_combined" "$(fight_style)=2t" "$(option_override)=%t_asn_2t%" "$(specialization)=assassination" "$(tier)=t19p" input=main.simc "$(tier)=t19h" input=main.simc "$(tier)=t19m" input=main.simc "$(option_override)=%t_asn_ex_2t%" "$(specialization)=assassination" "$(specialization_suffix)=_Exsg_" "$(tier)=t19p" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" input=name_override.simc "$(tier)=t19h" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" input=name_override.simc "$(tier)=t19m" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" input=name_override.simc "$(option_override)=%t_otl_2t%" "$(specialization)=outlaw" "$(specialization_suffix)=_" "$(tier)=t19p" input=main.simc "$(tier)=t19h" input=main.simc "$(tier)=t19m" input=main.simc "$(option_override)=%t_sub_2t%" "$(specialization)=subtlety" "$(tier)=t19p" input=main.simc "$(tier)=t19h" input=main.simc "$(tier)=t19m" input=main.simc "$(clas)=discord_rog" "$(spec)=all" "$(tier)=t19x" input=report_html.simc

		echo "3-Target"
		echo "Rogue Assassination & Outlaw & Subtlety @ T19P & T19H & T19M"
		%simc% input=..\config.simc output=nul target_error=0.1 "$(sim_type)=default_combined" "$(fight_style)=3t" "$(option_override)=%t_asn_3t%" "$(specialization)=assassination" "$(tier)=t19p" input=main.simc "$(tier)=t19h" input=main.simc "$(tier)=t19m" input=main.simc "$(option_override)=%t_asn_ex_3t%" "$(specialization)=assassination" "$(specialization_suffix)=_Exsg_" "$(tier)=t19p" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" input=name_override.simc "$(tier)=t19h" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" input=name_override.simc "$(tier)=t19m" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" input=name_override.simc "$(option_override)=%t_otl_3t%" "$(specialization)=outlaw" "$(specialization_suffix)=_" "$(tier)=t19p" input=main.simc "$(tier)=t19h" input=main.simc "$(tier)=t19m" input=main.simc "$(option_override)=%t_sub_3t%" "$(specialization)=subtlety" "$(tier)=t19p" input=main.simc "$(tier)=t19h" input=main.simc "$(tier)=t19m" input=main.simc "$(clas)=discord_rog" "$(spec)=all" "$(tier)=t19x" input=report_html.simc

		echo "1-Target"
		echo "Rogue Assassination & Outlaw & Subtlety @ T19P & T19H & T19M"
		%simc% input=..\config.simc output=nul target_error=0.1 "$(sim_type)=default_combined" "$(fight_style)=1t" "$(option_override)=%t_asn_1ta%" "$(specialization)=assassination" "$(tier)=t19p" input=main.simc "$(tier)=t19h" input=main.simc "$(tier)=t19m" input=main.simc "$(option_override)=%t_asn_ex_1ta%" "$(specialization)=assassination" "$(specialization_suffix)=_Exsg_" "$(tier)=t19p" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" input=name_override.simc "$(tier)=t19h" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" input=name_override.simc "$(tier)=t19m" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" input=name_override.simc "$(option_override)=%t_otl_1ta%" "$(specialization)=outlaw" "$(specialization_suffix)=_" "$(tier)=t19p" input=main.simc "$(tier)=t19h" input=main.simc "$(tier)=t19m" input=main.simc "$(option_override)=%t_sub_1ta%" "$(specialization)=subtlety" "$(tier)=t19p" input=main.simc "$(tier)=t19h" input=main.simc "$(tier)=t19m" input=main.simc input="$(fight_style_path)"aethys_adds_4_3x_30_10.simc "$(clas)=discord_rog" "$(spec)=all" "$(tier)=t19x" input=report_html.simc



		echo "Doing Legendaries Comparison Set"

		echo "1-Target"
		echo "Rogue Assassination T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(option_override)=%t_asn_1t%" "$(specialization)=assassination" "$(tier)=t19m" input=main.simc input="$(gear_path)"no_legendary.simc input=legendaries.simc input=report_html.simc input=report_json.simc
		echo "Rogue Assassination Exsg T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(option_override)=%t_asn_ex_1t%" "$(specialization)=assassination" "$(specialization_suffix)=_Exsg_" "$(tier)=t19m" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" input="$(gear_path)"no_legendary.simc input=legendaries.simc input=report_html.simc input=report_json.simc
		echo "Rogue Outlaw T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(option_override)=%t_otl_1t%" "$(specialization)=outlaw" "$(tier)=t19m" input=main.simc input="$(gear_path)"no_legendary.simc input=legendaries.simc input=report_html.simc input=report_json.simc
		echo "Rogue Subtlety T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(option_override)=%t_sub_1t%" "$(specialization)=subtlety" "$(tier)=t19m" input=main.simc input="$(gear_path)"no_legendary.simc input=legendaries.simc input=report_html.simc input=report_json.simc

		echo "2-Target"
		echo "Rogue Assassination T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=2t" "$(option_override)=%t_asn_2t%" "$(specialization)=assassination" "$(tier)=t19m" input=main.simc input="$(gear_path)"no_legendary.simc input=legendaries.simc input=report_html.simc input=report_json.simc
		echo "Rogue Assassination Exsg T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=2t" "$(option_override)=%t_asn_ex_2t%" "$(specialization)=assassination" "$(specialization_suffix)=_Exsg_" "$(tier)=t19m" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" input="$(gear_path)"no_legendary.simc input=legendaries.simc input=report_html.simc input=report_json.simc
		echo "Rogue Outlaw T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=2t" "$(option_override)=%t_otl_2t%" "$(specialization)=outlaw" "$(tier)=t19m" input=main.simc input="$(gear_path)"no_legendary.simc input=legendaries.simc input=report_html.simc input=report_json.simc
		echo "Rogue Subtlety T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=2t" "$(option_override)=%t_sub_2t%" "$(specialization)=subtlety" "$(tier)=t19m" input=main.simc input="$(gear_path)"no_legendary.simc input=legendaries.simc input=report_html.simc input=report_json.simc

		echo "3-Target"
		echo "Rogue Assassination T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=3t" "$(option_override)=%t_asn_3t%" "$(specialization)=assassination" "$(tier)=t19m" input=main.simc input="$(gear_path)"no_legendary.simc input=legendaries.simc input=report_html.simc input=report_json.simc
		echo "Rogue Assassination Exsg T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=3t" "$(option_override)=%t_asn_ex_3t%" "$(specialization)=assassination" "$(specialization_suffix)=_Exsg_" "$(tier)=t19m" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" input="$(gear_path)"no_legendary.simc input=legendaries.simc input=report_html.simc input=report_json.simc
		echo "Rogue Outlaw T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=3t" "$(option_override)=%t_otl_3t%" "$(specialization)=outlaw" "$(tier)=t19m" input=main.simc input="$(gear_path)"no_legendary.simc input=legendaries.simc input=report_html.simc input=report_json.simc
		echo "Rogue Subtlety T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=3t" "$(option_override)=%t_sub_3t%" "$(specialization)=subtlety" "$(tier)=t19m" input=main.simc input="$(gear_path)"no_legendary.simc input=legendaries.simc input=report_html.simc input=report_json.simc

		echo "1-Target RE-Adds:4_3x_30_10"
		echo "Rogue Assassination T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(option_override)=%t_asn_1ta%" "$(specialization)=assassination" "$(tier)=t19m" input=main.simc input="$(gear_path)"no_legendary.simc input=legendaries.simc input="$(fight_style_path)"aethys_adds_4_3x_30_10.simc input=report_html.simc input=report_json.simc
		echo "Rogue Assassination Exsg T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(option_override)=%t_asn_ex_1ta%" "$(specialization)=assassination" "$(specialization_suffix)=_Exsg_" "$(tier)=t19m" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" input="$(gear_path)"no_legendary.simc input=legendaries.simc input="$(fight_style_path)"aethys_adds_4_3x_30_10.simc input=report_html.simc input=report_json.simc
		echo "Rogue Outlaw T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(option_override)=%t_otl_1ta%" "$(specialization)=outlaw" "$(tier)=t19m" input=main.simc input="$(gear_path)"no_legendary.simc input=legendaries.simc input="$(fight_style_path)"aethys_adds_4_3x_30_10.simc input=report_html.simc input=report_json.simc
		echo "Rogue Subtlety T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(option_override)=%t_sub_1ta%" "$(specialization)=subtlety" "$(tier)=t19m" input=main.simc input="$(gear_path)"no_legendary.simc input=legendaries.simc input="$(fight_style_path)"aethys_adds_4_3x_30_10.simc input=report_html.simc input=report_json.simc



		echo "Doing Legendaries Combined Comparison Set"

		echo "1-Target"
		echo "Rogue Assassination & Outlaw & Subtlety @ T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(option_override)=%t_asn_1t%" "$(specialization)=assassination" "$(tier)=t19m" input=main.simc input="$(gear_path)"no_legendary.simc input=legendaries.simc "$(option_override)=%t_asn_ex_1t%" "$(specialization)=assassination" "$(specialization_suffix)=_Exsg_" "$(tier)=t19m" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" input="$(gear_path)"no_legendary.simc input=legendaries.simc "$(option_override)=%t_otl_1t%" "$(specialization)=outlaw" "$(specialization_suffix)=_" "$(tier)=t19m" input=main.simc input="$(gear_path)"no_legendary.simc input=legendaries.simc "$(option_override)=%t_sub_1t%" "$(specialization)=subtlety" "$(tier)=t19m" input=main.simc input="$(gear_path)"no_legendary.simc input=legendaries.simc "$(clas)=discord_rog" "$(spec)=all" input=report_html.simc

		echo "2-Target"
		echo "Rogue Assassination & Outlaw & Subtlety @ T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=2t" "$(option_override)=%t_asn_2t%" "$(specialization)=assassination" "$(tier)=t19m" input=main.simc input="$(gear_path)"no_legendary.simc input=legendaries.simc "$(option_override)=%t_asn_ex_2t%" "$(specialization)=assassination" "$(specialization_suffix)=_Exsg_" "$(tier)=t19m" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" input="$(gear_path)"no_legendary.simc input=legendaries.simc "$(option_override)=%t_otl_2t%" "$(specialization)=outlaw" "$(specialization_suffix)=_" "$(tier)=t19m" input=main.simc input="$(gear_path)"no_legendary.simc input=legendaries.simc "$(option_override)=%t_sub_2t%" "$(specialization)=subtlety" "$(tier)=t19m" input=main.simc input="$(gear_path)"no_legendary.simc input=legendaries.simc "$(clas)=discord_rog" "$(spec)=all" input=report_html.simc

		echo "3-Target"
		echo "Rogue Assassination & Outlaw & Subtlety @ T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=3t" "$(option_override)=%t_asn_3t%" "$(specialization)=assassination" "$(tier)=t19m" input=main.simc input="$(gear_path)"no_legendary.simc input=legendaries.simc "$(option_override)=%t_asn_ex_3t%" "$(specialization)=assassination" "$(specialization_suffix)=_Exsg_" "$(tier)=t19m" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" input="$(gear_path)"no_legendary.simc input=legendaries.simc "$(option_override)=%t_otl_3t%" "$(specialization)=outlaw" "$(specialization_suffix)=_" "$(tier)=t19m" input=main.simc input="$(gear_path)"no_legendary.simc input=legendaries.simc "$(option_override)=%t_sub_3t%" "$(specialization)=subtlety" "$(tier)=t19m" input=main.simc input="$(gear_path)"no_legendary.simc input=legendaries.simc "$(clas)=discord_rog" "$(spec)=all" input=report_html.simc

		echo "1-Target RE-Adds:4_3x_30_10"
		echo "Rogue Assassination & Outlaw & Subtlety @ T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(option_override)=%t_asn_1ta%" "$(specialization)=assassination" "$(tier)=t19m" input=main.simc input="$(gear_path)"no_legendary.simc input=legendaries.simc "$(option_override)=%t_asn_ex_1ta%" "$(specialization)=assassination" "$(specialization_suffix)=_Exsg_" "$(tier)=t19m" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" input="$(gear_path)"no_legendary.simc input=legendaries.simc "$(option_override)=%t_otl_1ta%" "$(specialization)=outlaw" "$(specialization_suffix)=_" "$(tier)=t19m" input=main.simc input="$(gear_path)"no_legendary.simc input=legendaries.simc "$(option_override)=%t_sub_1ta%" "$(specialization)=subtlety" "$(tier)=t19m" input=main.simc input="$(gear_path)"no_legendary.simc input=legendaries.simc input="$(fight_style_path)"aethys_adds_4_3x_30_10.simc "$(clas)=discord_rog" "$(spec)=all" input=report_html.simc



		echo "Doing Main Races Comparison"

		echo "1-Target"
		echo "Rogue Assassination T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(option_override)=%t_asn_1t%" "$(specialization)=assassination" "$(tier)=t19m" input=main.simc input=races.simc input=report_html.simc input=report_json.simc
		echo "Rogue Assassination Exsg T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(option_override)=%t_asn_ex_1t%" "$(specialization)=assassination" "$(specialization_suffix)=_Exsg_" "$(tier)=t19m" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" input=races.simc input=report_html.simc input=report_json.simc
		echo "Rogue Outlaw T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(option_override)=%t_otl_1t%" "$(specialization)=outlaw" "$(tier)=t19m" input=main.simc input=races.simc input=report_html.simc input=report_json.simc
		echo "Rogue Subtlety T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(option_override)=%t_sub_1t%" "$(specialization)=subtlety" "$(tier)=t19m" input=main.simc input=races.simc input=report_html.simc input=report_json.simc

		echo "2-Target"
		echo "Rogue Assassination T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=2t" "$(option_override)=%t_asn_2t%" "$(specialization)=assassination" "$(tier)=t19m" input=main.simc input=races.simc input=report_html.simc input=report_json.simc
		echo "Rogue Assassination Exsg T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=2t" "$(option_override)=%t_asn_ex_2t%" "$(specialization)=assassination" "$(specialization_suffix)=_Exsg_" "$(tier)=t19m" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" input=races.simc input=report_html.simc input=report_json.simc
		echo "Rogue Outlaw T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=2t" "$(option_override)=%t_otl_2t%" "$(specialization)=outlaw" "$(tier)=t19m" input=main.simc input=races.simc input=report_html.simc input=report_json.simc
		echo "Rogue Subtlety T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=2t" "$(option_override)=%t_sub_2t%" "$(specialization)=subtlety" "$(tier)=t19m" input=main.simc input=races.simc input=report_html.simc input=report_json.simc

		echo "3-Target"
		echo "Rogue Assassination T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=3t" "$(option_override)=%t_asn_3t%" "$(specialization)=assassination" "$(tier)=t19m" input=main.simc input=races.simc input=report_html.simc input=report_json.simc
		echo "Rogue Assassination Exsg T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=3t" "$(option_override)=%t_asn_ex_3t%" "$(specialization)=assassination" "$(specialization_suffix)=_Exsg_" "$(tier)=t19m" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" input=races.simc input=report_html.simc input=report_json.simc
		echo "Rogue Outlaw T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=3t" "$(option_override)=%t_otl_3t%" "$(specialization)=outlaw" "$(tier)=t19m" input=main.simc input=races.simc input=report_html.simc input=report_json.simc
		echo "Rogue Subtlety T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=3t" "$(option_override)=%t_sub_3t%" "$(specialization)=subtlety" "$(tier)=t19m" input=main.simc input=races.simc input=report_html.simc input=report_json.simc

		echo "1-Target RE-Adds:4_3x_30_10"
		echo "Rogue Assassination T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(option_override)=%t_asn_1ta%" "$(specialization)=assassination" "$(tier)=t19m" input=main.simc input=races.simc input="$(fight_style_path)"aethys_adds_4_3x_30_10.simc input=report_html.simc input=report_json.simc
		echo "Rogue Assassination Exsg T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(option_override)=%t_asn_ex_1ta%" "$(specialization)=assassination" "$(specialization_suffix)=_Exsg_" "$(tier)=t19m" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" input=races.simc input="$(fight_style_path)"aethys_adds_4_3x_30_10.simc input=report_html.simc input=report_json.simc
		echo "Rogue Outlaw T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(option_override)=%t_otl_1ta%" "$(specialization)=outlaw" "$(tier)=t19m" input=main.simc input=races.simc input="$(fight_style_path)"aethys_adds_4_3x_30_10.simc input=report_html.simc input=report_json.simc
		echo "Rogue Subtlety T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(option_override)=%t_sub_1ta%" "$(specialization)=subtlety" "$(tier)=t19m" input=main.simc input=races.simc input="$(fight_style_path)"aethys_adds_4_3x_30_10.simc input=report_html.simc input=report_json.simc



		echo "Doing Trinkets Comparison"

		echo "1-Target"
		echo "Rogue Assassination T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(option_override)=%t_asn_1t%" "$(specialization)=assassination" "$(tier)=t19m" input=main.simc input=trinkets.simc input=report_html.simc input=report_json.simc
		echo "Rogue Assassination Exsg T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(option_override)=%t_asn_ex_1t%" "$(specialization)=assassination" "$(specialization_suffix)=_Exsg_" "$(tier)=t19m" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" input=trinkets.simc input=report_html.simc input=report_json.simc
		echo "Rogue Outlaw T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(option_override)=%t_otl_1t%" "$(specialization)=outlaw" "$(tier)=t19m" input=main.simc input=trinkets.simc input=report_html.simc input=report_json.simc
		echo "Rogue Subtlety T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(option_override)=%t_sub_1t%" "$(specialization)=subtlety" "$(tier)=t19m" input=main.simc input=trinkets.simc input=report_html.simc input=report_json.simc

		echo "2-Target"
		echo "Rogue Assassination T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=2t" "$(option_override)=%t_asn_2t%" "$(specialization)=assassination" "$(tier)=t19m" input=main.simc input=trinkets.simc input=report_html.simc input=report_json.simc
		echo "Rogue Assassination Exsg T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=2t" "$(option_override)=%t_asn_ex_2t%" "$(specialization)=assassination" "$(specialization_suffix)=_Exsg_" "$(tier)=t19m" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" input=trinkets.simc input=report_html.simc input=report_json.simc
		echo "Rogue Outlaw T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=2t" "$(option_override)=%t_otl_2t%" "$(specialization)=outlaw" "$(tier)=t19m" input=main.simc input=trinkets.simc input=report_html.simc input=report_json.simc
		echo "Rogue Subtlety T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=2t" "$(option_override)=%t_sub_2t%" "$(specialization)=subtlety" "$(tier)=t19m" input=main.simc input=trinkets.simc input=report_html.simc input=report_json.simc

		echo "3-Target"
		echo "Rogue Assassination T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=3t" "$(option_override)=%t_asn_3t%" "$(specialization)=assassination" "$(tier)=t19m" input=main.simc input=trinkets.simc input=report_html.simc input=report_json.simc
		echo "Rogue Assassination Exsg T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=3t" "$(option_override)=%t_asn_ex_3t%" "$(specialization)=assassination" "$(specialization_suffix)=_Exsg_" "$(tier)=t19m" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" input=trinkets.simc input=report_html.simc input=report_json.simc
		echo "Rogue Outlaw T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=3t" "$(option_override)=%t_otl_3t%" "$(specialization)=outlaw" "$(tier)=t19m" input=main.simc input=trinkets.simc input=report_html.simc input=report_json.simc
		echo "Rogue Subtlety T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=3t" "$(option_override)=%t_sub_3t%" "$(specialization)=subtlety" "$(tier)=t19m" input=main.simc input=trinkets.simc input=report_html.simc input=report_json.simc

		echo "1-Target RE-Adds:4_3x_30_10"
		echo "Rogue Assassination T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(option_override)=%t_asn_1ta%" "$(specialization)=assassination" "$(tier)=t19m" input=main.simc input=trinkets.simc input="$(fight_style_path)"aethys_adds_4_3x_30_10.simc input=report_html.simc input=report_json.simc
		echo "Rogue Assassination Exsg T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(option_override)=%t_asn_ex_1ta%" "$(specialization)=assassination" "$(specialization_suffix)=_Exsg_" "$(tier)=t19m" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" input=trinkets.simc input="$(fight_style_path)"aethys_adds_4_3x_30_10.simc input=report_html.simc input=report_json.simc
		echo "Rogue Outlaw T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(option_override)=%t_otl_1ta%" "$(specialization)=outlaw" "$(tier)=t19m" input=main.simc input=trinkets.simc input="$(fight_style_path)"aethys_adds_4_3x_30_10.simc input=report_html.simc input=report_json.simc
		echo "Rogue Subtlety T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(option_override)=%t_sub_1ta%" "$(specialization)=subtlety" "$(tier)=t19m" input=main.simc input=trinkets.simc input="$(fight_style_path)"aethys_adds_4_3x_30_10.simc input=report_html.simc input=report_json.simc



		echo "Doing Relics Comparison"

		echo "1-Target"
		echo "Rogue Assassination T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(option_override)=%t_asn_1t%" "$(specialization)=assassination" "$(tier)=t19m" input=main.simc input=relics.simc input=report_html.simc input=report_json.simc
		echo "Rogue Assassination Exsg T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(option_override)=%t_asn_ex_1t%" "$(specialization)=assassination" "$(specialization_suffix)=_Exsg_" "$(tier)=t19m" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" input=relics.simc input=report_html.simc input=report_json.simc
		echo "Rogue Outlaw T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(option_override)=%t_otl_1t%" "$(specialization)=outlaw" "$(tier)=t19m" input=main.simc input=relics.simc input=report_html.simc input=report_json.simc
		echo "Rogue Subtlety T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(option_override)=%t_sub_1t%" "$(specialization)=subtlety" "$(tier)=t19m" input=main.simc input=relics.simc input=report_html.simc input=report_json.simc

		echo "2-Target"
		echo "Rogue Assassination T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=2t" "$(option_override)=%t_asn_2t%" "$(specialization)=assassination" "$(tier)=t19m" input=main.simc input=relics.simc input=report_html.simc input=report_json.simc
		echo "Rogue Assassination Exsg T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=2t" "$(option_override)=%t_asn_ex_2t%" "$(specialization)=assassination" "$(specialization_suffix)=_Exsg_" "$(tier)=t19m" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" input=relics.simc input=report_html.simc input=report_json.simc
		echo "Rogue Outlaw T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=2t" "$(option_override)=%t_otl_2t%" "$(specialization)=outlaw" "$(tier)=t19m" input=main.simc input=relics.simc input=report_html.simc input=report_json.simc
		echo "Rogue Subtlety T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=2t" "$(option_override)=%t_sub_2t%" "$(specialization)=subtlety" "$(tier)=t19m" input=main.simc input=relics.simc input=report_html.simc input=report_json.simc

		echo "3-Target"
		echo "Rogue Assassination T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=3t" "$(option_override)=%t_asn_3t%" "$(specialization)=assassination" "$(tier)=t19m" input=main.simc input=relics.simc input=report_html.simc input=report_json.simc
		echo "Rogue Assassination Exsg T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=3t" "$(option_override)=%t_asn_ex_3t%" "$(specialization)=assassination" "$(specialization_suffix)=_Exsg_" "$(tier)=t19m" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" input=relics.simc input=report_html.simc input=report_json.simc
		echo "Rogue Outlaw T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=3t" "$(option_override)=%t_otl_3t%" "$(specialization)=outlaw" "$(tier)=t19m" input=main.simc input=relics.simc input=report_html.simc input=report_json.simc
		echo "Rogue Subtlety T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=3t" "$(option_override)=%t_sub_3t%" "$(specialization)=subtlety" "$(tier)=t19m" input=main.simc input=relics.simc input=report_html.simc input=report_json.simc

		echo "1-Target RE-Adds:4_3x_30_10"
		echo "Rogue Assassination T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(option_override)=%t_asn_1ta%" "$(specialization)=assassination" "$(tier)=t19m" input=main.simc input=relics.simc input="$(fight_style_path)"aethys_adds_4_3x_30_10.simc input=report_html.simc input=report_json.simc
		echo "Rogue Assassination Exsg T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(option_override)=%t_asn_ex_1ta%" "$(specialization)=assassination" "$(specialization_suffix)=_Exsg_" "$(tier)=t19m" input=main.simc "$(spec)=asn_ex" "$(root)=$(clas)_$(spec)_$(tier_suffix)" input=relics.simc input="$(fight_style_path)"aethys_adds_4_3x_30_10.simc input=report_html.simc input=report_json.simc
		echo "Rogue Outlaw T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(option_override)=%t_otl_1ta%" "$(specialization)=outlaw" "$(tier)=t19m" input=main.simc input=relics.simc input="$(fight_style_path)"aethys_adds_4_3x_30_10.simc input=report_html.simc input=report_json.simc
		echo "Rogue Subtlety T19M"
		%simc% input=..\config.simc output=nul target_error=0.2 "$(fight_style)=1t" "$(option_override)=%t_sub_1ta%" "$(specialization)=subtlety" "$(tier)=t19m" input=main.simc input=relics.simc input="$(fight_style_path)"aethys_adds_4_3x_30_10.simc input=report_html.simc input=report_json.simc
	)
	@pause
)

cd ..\examples\
