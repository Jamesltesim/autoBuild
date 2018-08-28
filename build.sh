j=1
while(( $j<=1 ))
do
#   echo "LINE:"$j
#    读取文件指定行内容
#    url=$(sed -n "$[j]p" users.text)

#    替换文件夹中含有某字段文字
#    sed -i "" "$[j]s/com/net/“ users2.text

#指定行代替为url
#   sed "" "$[j]c $url" users2.text

#   echo "~~~~~~~~~url = $url"


#第一种
#project
#    xcodebuild -archivePath "/Users/jeff-/Desktop/testProject/testProject.xcarchive" -project /Users/jeff-/Desktop/testProject/testProject.xcodeproj -sdk iphoneos -scheme "testProject" -configuration "Release" archive
#
#    xcodebuild -exportArchive -archivePath "/Users/jeff-/Desktop/testProject/testProject.xcarchive" -exportPath "/Users/jeff-/Desktop/testProject/build_ipa$j" -exportOptionsPlist '/Users/jeff-/Desktop/testProject/ExportOptions.plist' -allowProvisioningUpdates


#第二种
#xcworkspace
xcodebuild -archivePath "/Users/jeff-/Desktop/testProject/testProject.xcarchive" -xcworkspace /Users/jeff-/Desktop/testProject/testProject.xcworkspace -sdk iphoneos -scheme "testProject" -configuration "Release" archive

xcodebuild -exportArchive -archivePath "/Users/jeff-/Desktop/testProject/testProject.xcarchive" -exportPath "/Users/jeff-/Desktop/testProject/build_ipa$j" -exportOptionsPlist '/Users/jeff-/Desktop/testProject/ExportOptions.plist' -allowProvisioningUpdates

    let "j++"
done
