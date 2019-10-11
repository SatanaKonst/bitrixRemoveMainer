#!/bin/bash
# Дать права на выполнение chmod +x mainer_remove.sh
# Запустить mainer_remove.sh "путь до корня сайта"
# Предварительно сделать бэкап сайта

dir=$1

virusFiles=("bitrix/js/main/public_utils.js" "bitrix/js/main/time.js" "bitrix/js/main/core/core_loader.js" "bitrix/js/main/core/core_tasker.js" "bitrix/tools/check_files.php" "bitrix/gadgets/bitrix/weather/lang/ru/exec/include.php" "bitrix/modules/main/classes/mysql/usertypebool.php")

for file in ${virusFiles[@]}; do
	path="${dir}${file}"

	if test -f "$path"; then
		rm "$path"
		echo "$path removed"
	fi 
done
