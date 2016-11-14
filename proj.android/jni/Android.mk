LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := cocos2dcpp_shared

LOCAL_MODULE_FILENAME := libcocos2dcpp

LOCAL_SRC_FILES := hellocpp/main.cpp \
                   ../../Classes/AppDelegate.cpp \
                   ../../Classes/AppMacros.cpp \
                   ../../Classes/CallJni.cpp \
                   ../../Classes/StoreLayer.cpp \
                   ../../Classes/Common/CommonFunction.cpp \
                   ../../Classes/Common/md5.cpp \
                   ../../Classes/Common/MyTinyXmlParser.cpp \
                   ../../Classes/Entity/DeskEntity.cpp \
                   ../../Classes/GameCore/GameLogical.cpp \
                   ../../Classes/GameCore/AI/Robot.cpp \
                   ../../Classes/Layer/GameCjLayer.cpp \
                   ../../Classes/Layer/GameDesk.cpp \
                   ../../Classes/Layer/GameHelp.cpp \
                   ../../Classes/Layer/GameMenu.cpp \
                   ../../Classes/Layer/GameMessage.cpp \
                   ../../Classes/Layer/GameMGLayer.cpp \
                   ../../Classes/Layer/GamePause.cpp \
                   ../../Classes/Layer/GameResult.cpp \
                   ../../Classes/Layer/GameSet.cpp \
                   ../../Classes/Layer/GameShowCJ.cpp \
                   ../../Classes/Layer/GkInfoDetailLayer.cpp \
                   ../../Classes/Layer/GkInfoLayer.cpp \
                   ../../Classes/Layer/GuanKaLayer.cpp \
                   ../../Classes/Layer/PersonSet.cpp \
                   ../../Classes/Layer/SetProgress.cpp \
                   ../../Classes/Layer/SplashLayer.cpp \
                   ../../Classes/Scene/GameCjScene.cpp \
                   ../../Classes/Scene/GameMoreGameScene.cpp \
                   ../../Classes/Scene/GameScene.cpp \
                   ../../Classes/Scene/GkInfoScene.cpp \
                   ../../Classes/Scene/GuanKaScene.cpp \
                   ../../Classes/Scene/HelpScene.cpp \
                   ../../Classes/Scene/LoadingScene.cpp \
                   ../../Classes/Scene/MenuScene.cpp \
                   ../../Classes/Scene/PersonSetScene.cpp \
                   ../../Classes/Scene/SetScene.cpp \
                   ../../Classes/Sprite/Card.cpp \
                   ../../Classes/Sprite/GameCjSprite.cpp \
                   ../../Classes/Sprite/GameMGSprite.cpp \
                   ../../Classes/Sprite/GuanKaSprite.cpp \
                   ../../Classes/Sprite/MyCard.cpp \
                   ../../Classes/Sprite/OutCard.cpp \
                   ../../Classes/Sprite/ScrollWordAndImage.cpp \
                   ../../Classes/Sprite/SelectSprite.cpp \
                   ../../Classes/Sprite/ShowCJ.cpp \
                   ../../Classes/Sprite/SpriteWordAndImage.cpp \
                   ../../Classes/Sprite/Timer.cpp \
                   ../../Classes/Sprite/Batch/ActionBatch.cpp \
                   ../../Classes/Sprite/Batch/DeskCardsBatch.cpp \
                   ../../Classes/Sprite/Batch/GameCjBatch.cpp \
                   ../../Classes/Sprite/Batch/GameMGBatch.cpp \
                   ../../Classes/Sprite/Batch/GkInfoBatch.cpp \
                   ../../Classes/Sprite/Batch/GuanKaBatch.cpp \
                   ../../Classes/Sprite/Batch/MarkBatch.cpp \
                   ../../Classes/Sprite/Batch/MyCardsBatch.cpp \
                   ../../Classes/Sprite/Batch/SplashBatch.cpp \
                   ../../Classes/tinyxml/tinystr.cpp \
                   ../../Classes/tinyxml/tinyxml.cpp \
                   ../../Classes/tinyxml/tinyxmlerror.cpp \
                   ../../Classes/tinyxml/tinyxmlparser.cpp \
                   ../../Classes/tinyxml/xmltest.cpp
                   

LOCAL_C_INCLUDES := $(LOCAL_PATH)/../../Classes \
					$(LOCAL_PATH)/../../Classes/Common \
					$(LOCAL_PATH)/../../Classes/Entity \
					$(LOCAL_PATH)/../../Classes/GameCore \
					$(LOCAL_PATH)/../../Classes/GameCore/AI \
					$(LOCAL_PATH)/../../Classes/GameCore/RuleGen \
					$(LOCAL_PATH)/../../Classes/Layer \
					$(LOCAL_PATH)/../../Classes/Scene \
					$(LOCAL_PATH)/../../Classes/Sprite \
					$(LOCAL_PATH)/../../Classes/Sprite/Batch \
					$(LOCAL_PATH)/../../Classes/tinyxml

LOCAL_WHOLE_STATIC_LIBRARIES += cocos2dx_static
LOCAL_WHOLE_STATIC_LIBRARIES += cocosdenshion_static
LOCAL_WHOLE_STATIC_LIBRARIES += box2d_static
LOCAL_WHOLE_STATIC_LIBRARIES += chipmunk_static
LOCAL_WHOLE_STATIC_LIBRARIES += cocos_extension_static

include $(BUILD_SHARED_LIBRARY)

$(call import-module,cocos2dx)
$(call import-module,cocos2dx/platform/third_party/android/prebuilt/libcurl)
$(call import-module,CocosDenshion/android)
$(call import-module,extensions)
$(call import-module,external/Box2D)
$(call import-module,external/chipmunk)
