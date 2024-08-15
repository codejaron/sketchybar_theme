# #!/bin/bash

# if lsappinfo -all list | grep $NAME >>/dev/null; then
# 	LABEL=$(lsappinfo -all list | grep $NAME | egrep -o "\"StatusLabel\"=\{ \"label\"=\"?(.*?)\"? \}" | sed 's/\"StatusLabel\"={ \"label\"=\(.*\) }/\1/g')
# 	if [[ $LABEL =~ ^\".*\"$ ]]; then
# 		LABEL=$(echo $LABEL | sed 's/^"//' | sed 's/"$//')
# 		if [ -z "$LABEL" ]; then
# 			LABEL=0
# 		fi
# 	else
# 		LABEL=0
# 	fi
# else
# 	LABEL="?"
# fi

# sketchybar --set $NAME label=$LABEL

#!/bin/bash

# 确保 $NAME 变量已正确设置为目标应用程序的名称
if [ -z "$NAME" ]; then
    echo "Error: NAME variable is not set."
    exit 1
fi

# 使用 lsappinfo 查询应用信息
APP_INFO=$(lsappinfo -all list | grep "$NAME")

if [ -z "$APP_INFO" ]; then
    LABEL="?"
else
    # 提取 StatusLabel 字段
    LABEL=$(echo "$APP_INFO" | grep -o '"StatusLabel"={ "label"="[^"]*"' | sed -E 's/"StatusLabel"=\{ "label"="(.*)"/\1/')
    if [ -z "$LABEL" ]; then
        LABEL=0
    fi
fi

# 使用 sketchybar 设置标签
sketchybar --set "$NAME" label="$LABEL"
