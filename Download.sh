fol() {
	cd ~/Dl-Truecaller
	}
	caa() {
		cd /sdcard
		if [ -e "Termux-Download" ];then
		echo
		else
		mkdir Termux-Download
		fi
		}
	resd() {
		for aa in res1.zip res2.zip res3.zip res4.zip;do
		printf "\n\033[1;92m Downloading $aa\n\n"
		if [ -e "$aa" ];then
		printf "\n\033[1;93m Alredy downloaded $aa\n"
		else
		wget https://github.com/rooted-cyber/good/raw/master/Truecaller/res/$aa
		fi
		done
		}
	dl() {
		fol
		if [ -e "Download" ];then
		echo
		else
		mkdir Download
		fi
		cd Download
		for ab in files.zip folder1.zip lib.zip;do
		printf "\n\033[1;92m Downloading $ab\n\n"
		if [ -e "$ab" ];then
		printf "\n\033[1;93m Alredy downloaded $ab\n"
		else
		wget https://github.com/rooted-cyber/good/raw/master/Truecaller_v11.66.7/$ab
		fi
		done
		random
		printf "\n Unzip files\n"
		unzip files.zip
		random
		printf "\n unzip lib\n"
		unzip lib.zip
		random
		printf "\n Unzip Folder\n"
		unzip folder1.zip
		if [ -e "res" ];then
		cd res
		resd
		random
		printf "\n Unzip res part 1\n"
		unzip res1.zip
		random
		printf "\n Unzip res part 2\n"
		unzip res2.zip
		random
		printf "\n Unzip res part 3\n"
		unzip res3.zip
		random
		printf "\n Unzip res part 4\n"
		unzip res4.zip
		else
		mkdir res
		cd res
		resd
		random
		printf "\n Unzip res part 1\n"
		unzip res1.zip
		random
		printf "\n Unzip res part 2\n"
		unzip res2.zip
		random
		printf "\n Unzip res part 3\n"
		unzip res3.zip
		random
		printf "\n Unzip res part 4\n"
		unzip res4.zip
		fi
		rm res*zip
		cd ..
		rm -f *zip
		random
		printf "\n Building App..\n"
		zip -9 -r Truecaller *
		mv Truecaller.zip Truecaller.apk
		if [ -e "Truecaller.apk" ];then
		echo "hi" >> complete
		random
		printf "\n Successfully created app\n"
		random
		caa
		fol
		cd Download
		cp -f Truecaller.apk /sdcard/Termux-Download
		printf "\n Successfully saved your file \033[0m( /sdcard/Termux-Download )\n"
		fi
		
		}
		bann() {
figlet -f font Download
echo
}
ch() {
	cd ~/Dl-Truecaller/Download
	if [ -e "complete" ];then
	printf "\033[1;92m Already downloaded\033[1;93m"
	else
	printf "\033[1;91m Not download\033[1;93m"
	fi
	}
	check=$(ch)
	chh() {
		cd ~/Dl-Truecaller/Download2
		if [ -e "complete2" ];then
		printf "\033[1;92m Already downloaded\033[1;93m"
		else
		printf "\033[1;91m Not download\033[1;93m"
		fi
		}
		check2=$(chh)
		dlv() {
			fol
			if [ -e "Download2" ];then
			echo
			else
			mkdir Download2
			fi
			cd Download2
			for abc in files.zip folder1.zip folder2.zip;do
			random
			if [ -e "$abc" ];then
			random
			printf "\n Already downloded $abc\n"
			else
			random
			printf "\n Downloading $abc \n"
			wget https://github.com/rooted-cyber/good/raw/master/Truecaller_v11.70.5/$abc
			fi
			done
			random
			printf "\n unzip files\n"
			unzip files.zip
			random
			printf "\n unzip folder part 1\n"
			unzip folder1.zip
			random
			printf "\n unzip folder part 2\n"
			unzip folder2.zip
			rm -f *zip
			random
			printf "\n Building app\n"
			zip -9 -r Truecaller2 *
			mv Truecaller2.zip Truecaller2.apk
			if [ -e "Truecaller2.apk" ];then
			echo "gi" >> complete2
			random
			printf "\n Successfully created your apk\n\n"
			random
			caa
			fol
			cd Download2
			cp -f Truecaller2.apk /sdcard/Termux-Download
			printf "\n Successfully saved your file \033[0m( /sdcard/Termux-Download )\n"
			fi
			}
			mixx() {
				random
				caa
				printf "\n Downloading mixplore \n"
				wget https://github.com/rooted-cyber/upload-apk/raw/master/MiXplorer.apk -O /sdcard/Termux-Downlaod/Mixplore.apk
				random
				printf "\n Successfully saved your file \033[0m( /sdcard/Termux-Downlod )\n"
				}
menu() {
	bann
	printf "\n\n\033[1;91m Note : \033[1;3;4;92m If not install apk then sign apk using Mixplore.apk\n\033[0m\n"
	printf "\n\033[1;91m[\033[0m1\033[1;91m]\033[1;93m Download Truecaller modded v11.66.7 ( $check )\n"
	printf "\n\033[1;91m[\033[0m2\033[1;91m]\033[1;93m Download Truecaller v11.70.5 ( $check2 )\n"
	printf "\n\033[1;91m[\033[0m3\033[1;91m]\033[1;93m Mixplore \n"
	printf "\n\033[1;91m[\033[0m4\033[1;91m]\033[1;93m Exit \n\n\n"
	echo -e -n "\033[1;92m Download\033[0m —>> "
	read ab
	case $ab in
	1)dl ;;
	2)dlv ;;
	3)mixx ;;
	4)exit ;;
	*)menu ;;
	esac
	}
	menu
	