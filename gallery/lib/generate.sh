for line in `cat list`
do
    # rm -rf ${line}.dart
    # touch ${line}.dart
    # sed -e "s/FutureBuilder/${line}/g" FutureBuilder.dart > ${line}.dart
    echo "import '../pages/MaterialComponents/${line}.dart';"
done

