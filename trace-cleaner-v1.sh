#!/bin/bash

menu(){
clear
echo
echo
echo -e "  \033[38;5;222m# # # # # # # # # # # # # # # # #"
echo -e "  #                               #"
echo -e "  #      \033[38;5;82mSystem Trace Cleaner\e[m     \033[38;5;222m#"
echo -e "  #                               #"
echo -e "  # # # # # # # # # # # # # # # # #\e[m"
echo
echo -e " -- -- -- -- -- -- -- -- -- -- -- -- -- --"
echo
echo -e " | \033[38;5;1m1) \e[m | \033[38;5;61mClean Terminal History\e[m          |"
echo
echo -e " | \033[38;5;1m2) \e[m | \033[38;5;61mClean User Logins\e[m               |"
echo
echo -e " | \033[38;5;1m3) \e[m | \033[38;5;61mClean System logs\e[m               |"
echo
echo -e " | \033[38;5;1m4) \e[m | \033[38;5;61mClean System Memory Cache\e[m       |"
echo
echo -e " | \033[38;5;1m5) \e[m | \033[38;5;61mHide System Processes\e[m           |"
echo
echo -e " | \033[38;5;1m6) \e[m | \033[38;5;61mClean Network Connectivity Logs\e[m |"
echo
echo -e " | \033[38;5;1m7) \e[m | \033[38;5;61mGeneral Information            \e[m |"
echo
echo -e " | \033[38;5;1m8) \e[m | \033[38;5;61mExit\e[m                            |"
echo
echo -e " -- -- -- -- -- -- -- -- -- -- -- -- -- --"
echo
echo -e " Your privacy is meaningful,"
echo -e " Remove any digital fingerprint!"
echo
echo -e "\033[38;5;40m"
read -p " | >_ | " finger
echo -e "\e[m"
echo

#Delete Terminal History
case $finger in
1)
	clear
	echo
	echo -e " \033[38;5;222m# # # # # # # # # # # # # # # # # # # # # # # # #\e[m"
	echo -e " \033[38;5;222m#                                               #\e[m"
	echo -e " \033[38;5;222m#  \033[38;5;82m#\e[m                                    \033[38;5;222m        #\e[m"
	echo -e " \033[38;5;222m#    \033[38;5;82m#\e[m                                  \033[38;5;222m        #\e[m"
	echo -e " \033[38;5;222m#      \033[38;5;82m#\e[m    \e[1mTerminal History Deletion\e[m   \033[38;5;222m        #\e[m"
	echo -e " \033[38;5;222m#    \033[38;5;82m#\e[m                                  \033[38;5;222m        #\e[m"
	echo -e " \033[38;5;222m#  \033[38;5;82m#  # # #\e[m                             \033[38;5;222m        #\e[m"
	echo -e " \033[38;5;222m#                                               #\e[m"
	echo -e " \033[38;5;222m# # # # # # # # # # # # # # # # # # # # # # # # #\e[m"
	echo
	echo -e " -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --"
	echo
	echo -e " | \033[38;5;1m1)\e[m | \033[38;5;61mBash Shell\e[m                             |"
	echo
	echo -e " | \033[38;5;1m2)\e[m | \033[38;5;61mZsh Shell\e[m                              |"
	echo
	echo -e " | \033[38;5;1m3)\e[m | \033[38;5;61mKorn Shell\e[m                             |"
	echo
	echo -e " | \033[38;5;1m4)\e[m | \033[38;5;61mFish shell\e[m                             |"
	echo
	echo -e " | \033[38;5;1m5)\e[m | \033[38;5;61mBack to Main Menu\e[m                      |"
	echo
	echo -e " -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --"
	echo
	echo
	echo -e " Shell Detected: \e[96m$SHELL\e[m shell"
	echo -e " Which shell history would you like to remove? "
	echo
	echo -e "\033[38;5;40m"
 	read -p " | >_ | " shell
 	echo -e "\e[m"
 	echo
	case $shell in
	1)
		echo
		if [ $(id -u) -eq "0" ];then
			rm /root/.bash_history
		else
			rm /home/$USER/.bash_history 2> /dev/null
			if [ -e /home/$USER/.bash_history ];then
				echo -e " Bash History Status --> \033[38;5;9m NOT OK \e[m"
				sleep 2s
				menu
			else
				echo -e " Bash History Status --> \033[38;5;82m OK \e[m"
				sleep 2s
				menu
			fi
		fi
		;;
	2)
		echo
		if [ $(id -u) -eq "0" ];then
			rm /root/.zsh_history
		else
			rm /home/$USER/.zsh_history 2> /dev/null
			if [ -e /home/$USER/.zsh_history ];then
				echo -e " Zsh History Status --> \033[38;5;9m NOT OK \e[m"
				sleep 2s
				menu
			else
				echo -e " Zsh History Status --> \033[38;5;82m OK \e[m"
				sleep 2s
				menu
			fi
		fi
		;;
	3)
		echo
		if [ $(id -u) -eq "0" ];then
			rm /root/.ksh_history
		else
			rm /home/$USER/.ksh_history 2> /dev/null
			if [ -e /home/$USER/.ksh_history ];then
				echo -e " Korn History Status --> \033[38;5;9m NOT OK \e[m"
				sleep 2s
				menu
			else
				echo -e " Korn History Status --> \033[38;5;82m OK \e[m"
				sleep 2s
				menu
			fi
		fi
		;;
	4)
		echo
		if [ $(id -u) -eq "0" ];then
			rm /root/.fish_history
		else
			rm /home/$USER/.fish_history 2> /dev/null
			if [ -e /home/$USER/.fish_history ];then
				echo -e " Fish History Status --> \033[38;5;9m NOT OK \e[m"
				sleep 2s
			else
				echo -e " Fish History Status --> \033[38;5;82m OK \e[m"
				sleep 2s
			fi
		fi
		;;
	5)
		echo
		echo " Going back to Main Menu.."
		sleep 1s
		menu
		;;
	*)
		echo
		echo
		echo -e " Invalid.."
		sleep 2s
		menu
	esac
;;

#Clean User Login Information
2)
	clear
	echo
	echo -e " \033[38;5;222m# # # # # # # # # # # # # # # # # #\e[m"
	echo -e " \033[38;5;222m#                                 #\e[m"
	echo -e " \033[38;5;222m#\e[m  \033[38;5;82m#\e[m                              \033[38;5;222m#\e[m"
	echo -e " \033[38;5;222m#\e[m  \033[38;5;82m#\e[m                              \033[38;5;222m#\e[m"
	echo -e " \033[38;5;222m#\e[m  \033[38;5;82m#\e[m          Last Login          \033[38;5;222m#\e[m"
	echo -e " \033[38;5;222m#\e[m  \033[38;5;82m#\e[m      Information Deletion    \033[38;5;222m#\e[m"
	echo -e " \033[38;5;222m#\e[m  \033[38;5;82m#\e[m                              \033[38;5;222m#\e[m"
	echo -e " \033[38;5;222m#\e[m  \033[38;5;82m# # # #\e[m                        \033[38;5;222m#\e[m"
	echo -e " \033[38;5;222m#                                 #\e[m"
	echo -e " \033[38;5;222m# # # # # # # # # # # # # # # # # #\e[m"
	echo
	echo
	echo 
	echo -e "\033[38;5;82m"
	last | grep tty
	echo -e " \e[m"
	echo
	echo " The following files will be removed:"
	echo -e " --> \033[38;5;61mwtmp\e[m"
	echo -e " --> \033[38;5;61mbtmp\e[m"
	echo -e " --> \033[38;5;61mlastlog\e[m"
	echo
	echo
	echo "Proceed to removal? [Yy/Nn]"
	echo "Select [B/b] to go back.."
	echo
	echo -e "\033[38;5;40m"
 	read -p " | >_ | " lastuser
 	echo -e "\e[m"
 	echo
	case $lastuser in
	Y|y)
		echo " Removing.."
		echo
		if [ $(id -u) -eq "0" ];then
			rm /var/log/wtmp 2> /dev/null
			if [ -e /var/log/wtmp ];then
				echo -e " wtmp File Status --> \033[38;5;9m NOT OK \e[m"
				echo
				sleep 1s
			else
				echo -e " wtmp File Status --> \033[38;5;82m OK \e[m"
				echo
				sleep 1s
			fi
			rm /var/log/btmp 2> /dev/null
			if [ -e /var/log/btmp ];then
				echo -e " btmp File Status --> \033[38;5;9m NOT OK \e[m"
				echo
				sleep 1s
			else
				echo -e " btmp File Status --> \033[38;5;82m OK \e[m"
				echo
				sleep 1s
			fi
			rm /var/log/lastlog 2> /dev/null
			if [ -e /var/log/lastlog ];then
				echo -e " lastlog File Status --> \033[38;5;9m NOT OK \e[m"
				echo
				sleep 1s
			else
				echo -e " lastlog File Status --> \033[38;5;82m OK \e[m"
				echo
				sleep 1s
			fi
		else
			sudo sudo rm /var/log/wtmp 2> /dev/null
			if [ -e /var/log/wtmp ];then
				echo -e " wtmp File Status --> \033[38;5;9m NOT OK \e[m"
				echo
				sleep 1s
			else
				echo -e " wtmp File Status --> \033[38;5;82m OK \e[m"
				echo
				sleep 1s
			fi
			sudo rm /var/log/btmp 2> /dev/null
			if [ -e /var/log/btmp ];then
				echo -e " btmp File Status --> \033[38;5;9m NOT OK \e[m"
				echo
				sleep 1s
			else
				echo -e " btmp File Status --> \033[38;5;82m OK \e[m"
				echo
				sleep 1s
			fi
			sudo rm /var/log/lastlog 2> /dev/null
			if [ -e /var/log/lastlog ];then
				echo -e " lastlog File Status --> \033[38;5;9m NOT OK \e[m"
				echo
				sleep 1s
			else
				echo -e " lastlog File Status --> \033[38;5;82m OK \e[m"
				echo
				sleep 1s
			fi
		fi
		sleep 2s
		menu
		;;
	N|n)
		echo
		echo "Going back to Main Menu.."
		sleep 1s
		menu
		;;
	B|b)
		echo
		echo " Please wait.."
		sleep 1s
		menu
		;;
	*)
		echo
		echo " Invalid.."
		menu
	esac
;;

#Clean System Logs
3)
	clear
	echo
	echo -e " \033[38;5;222m# # # # # # # # # # # # # # # # # # # # #\e[m"
	echo -e " \033[38;5;222m#                                       #\e[m"
	echo -e " \033[38;5;222m#   \033[38;5;82m# # # # #\e[m                           \033[38;5;222m#\e[m"
	echo -e " \033[38;5;222m#   \033[38;5;82m#   #   #\e[m        CLEAN SYSTEM       \033[38;5;222m#\e[m"
	echo -e " \033[38;5;222m#   \033[38;5;82m#       #\e[m            LOGS           \033[38;5;222m#\e[m"
	echo -e " \033[38;5;222m#   \033[38;5;82m#   #   #\e[m                           \033[38;5;222m#\e[m"
	echo -e " \033[38;5;222m#   \033[38;5;82m#       #\e[m                           \033[38;5;222m#\e[m"
	echo -e " \033[38;5;222m#   \033[38;5;82m#  # #  #\e[m                           \033[38;5;222m#\e[m"
	echo -e " \033[38;5;222m#                                       #\e[m"
	echo -e " \033[38;5;222m# # # # # # # # # # # # # # # # # # # # #\e[m"
	echo 
	echo -e " -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --"
	echo -e " |                   |                                |"
	echo -e " |  \033[38;5;1m(1)\e[m              |  \033[38;5;61mJournal Logs\e[m                  |"
	echo -e " |                   |                                |"
	echo -e " |  \033[38;5;1m(2)\e[m              |  \033[38;5;61mApt and Dpkg Logs\e[m             |"
	echo -e " |                   |                                |"
	echo -e " |  \033[38;5;1m(3)\e[m              |  \033[38;5;61mKernel Logs\e[m                   |"
	echo -e " |                   |                                |"
	echo -e " |  \033[38;5;1m(4)\e[m              |  \033[38;5;61mXorg Logs\e[m                     |"
	echo -e " |                   |                                |"
	echo -e " |  \033[38;5;1mAny other Key\e[m    |  \033[38;5;61mReturn to Main Menu\e[m           |"
	echo -e " |                   |                                |"
	echo -e " -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --"
	echo
	echo -e " What would you like to clean?"
	echo -e "\033[38;5;40m"
 	read -p " | >_ | " log
 	echo -e "\e[m"
 	echo
	case $log in 
	1)
		if [ $(id -u) -eq "0" ];then
			rm /var/log/journal/*
			rm /var/log/syslog*
		else
			sudo rm /var/log/journal/*
			sudo rm /var/log/syslog*
		fi
		;;
	2)
		if [ $(id -u) -eq "0" ];then
			rm /var/log/apt/*
			rm /var/log/dpkg*
		else
			sudo rm /var/log/apt/*
			sudo rm /var/log/dpkg*
		fi
		;;
	3)
		if [ $(id -u) -eq "0" ];then
			rm /var/log/kern.*
		else
			sudo rm /var/log/kern.*
		fi
		;;
	4)
		if [ $(id -u) -eq "0" ];then
			rm /var/log/Xorg*
		else
			sudo rm /var/log/Xorg*
		fi
		;;	
	*)
		echo
		echo "Going back to Main Menu.."
		sleep 1s
		menu
	esac
	
;;                                 

#General Information
7)
	clear
	echo
	echo -e " \033[38;5;222mGeneral Information\e[m"
	echo " - - - - - - - - - - -"
	echo
	echo -e " \033[38;5;222mVersion:\e[m Alpha"
	echo 
	echo -e " \033[38;5;222mLicense:\e[m GPL v3.0"
	echo
	echo -e " \033[38;5;222mAuthor:\e[m libreazer "
	echo
	echo
	echo
	echo
	echo -e " Discussed Topics:"
	echo
	echo -e " --> \033[38;5;61mTerminal History and Security\e[m"
	echo
	echo -e " --> \033[38;5;61mUser Logins and Security\e[m"
	echo
	echo -e " --> \033[38;5;61mSystem Logs and Security\e[m"
	echo
	echo
	echo
	echo " Press [N]ext to get informed about the following topics!"
	echo " Press any other key to return to Main Menu.."
	echo
	echo -e "\033[38;5;40m"
 	read -p " | >_ | " key
 	echo -e "\e[m"
 	echo
	case $key in
	N|n)
		clear
		echo -e "  - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
		echo -e " |                                                                                                     |"
		echo -e " | \033[38;5;222mTerminal History and Security\e[m                                                                       |"
		echo -e " | - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - |"
		echo -e " |                                                                                                     |"
		echo -e " | \033[38;5;222mEvery Linux distro has a terminal-emulator. For example, there is Mate-Terminal,\e[m                    |"
		echo -e " | \033[38;5;222mXfce-Terminal, Tmux and many other.. Every terminal emulator is based on a shell,\e[m                   |"
		echo -e " | \033[38;5;222mwhere a user can use system command in order to retrieve information or to exe-\e[m                     |"
		echo -e " | \033[38;5;222mcute an application. Some examples are Zsh shell and Bash shell as they consist\e[m                     |"
		echo -e " | \033[38;5;222ma big contribution in the open-source community.\e[m                                                    |"
		echo -e " | \033[38;5;222mWhenever a user execute a command in the specific shell, this input will be saved\e[m                   |"
		echo -e " | \033[38;5;222min a hidden plain text file under the /home/ directory. Although it is useful for\e[m                   |"
		echo -e " | \033[38;5;222msearching previous command executions, it is safe to delete this text file so if\e[m                    |"
		echo -e " | \033[38;5;222ma malicious user gets access on the user's computer, he/she will be unable to\e[m                       |"
		echo -e " | \033[38;5;222mfind out the shell's history.\e[m                                                                       |"
		echo -e " | - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - |"
		echo -e " |                                                                                                     |"
		echo -e " |                                                                                                     |"
		echo -e " | - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - |"
		echo -e " | \033[38;5;222mUser Logins and Security\e[m                                                                            |"
		echo -e " | - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - |"
		echo -e " | \033[38;5;222mWhenever a user logins to a system, this attemp as the successful login will be writen\e[m              |"
		echo -e " | \033[38;5;222mto a log file. This logfile contains login data from various date about the specific user. Even if\e[m  |"
		echo -e " | \033[38;5;222mits useful to know when and who has access to the system, for the purpose of privacy, those logs\e[m    |"
		echo -e " | \033[38;5;222mhave better to be removed.\e[m                                                                          |"
		echo
		echo
		echo -e " Press any key to return to Main Menu.."
		echo -e "\033[38;5;40m"
 		read -p " | >_ | " gi
 		echo -e "\e[m"
 		echo
		case $gi in
		*)
			echo " Please wait.."
			sleep 1s
			menu
		esac
		;;
		
	*)
		sleep 1s
		menu
	esac
;;

#Exit
8)
	echo
	echo -e " \e[1mStay secure.. Bye\e[m"
	sleep 0.5s
	echo
	exit
	;;

#Any other Option
*)
	echo
	echo -e " \e[1mInvalid option..\e[m"
	sleep 1s
	echo
	menu
esac
}

menu
