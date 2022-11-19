              KEEP_NUMBER=2
              BUILD_NUMBER=${BUILD_NUMBER}
              echo $(KEEP_NUMBER)
              echo $(BUILD_NUMBER)
              echo ${KEEP_NUMBER}
              echo ${BUILD_NUMBER}
              OLD_BUILD=$(${BUILD_NUMBER} - ${KEEP_NUMBER})
              OLD_BUILD=$(${BUILD_NUMBER}--)
              OLD_BUILD=$( expr ${BUILD_NUMBER} - 2 )
              echo ${OLD_BUILD}
              echo $(BUILD_NUMBER)
              echo $(OLD_BUILD)
              echo ${OLD_BUILD} 
              # (( OLD_BUILD = ${BUILD_NUMBER} - 2 )); echo $OLD_BUILD
