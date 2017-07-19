.class public Lcom/sec/android/app/camera/executor/RulePathState;
.super Ljava/lang/Object;
.source "RulePathState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/executor/RulePathState$StateInfo;
    }
.end annotation


# static fields
.field public static final NO_MATCHING_DIM_KEY:I = -0x1

.field public static final STATE_ID_ADD_SHORTCUT_ON_HOME_SCREEN:I = 0x54

.field public static final STATE_ID_AF_AREA:I = 0x83

.field public static final STATE_ID_ANTI_FOG:I = 0xaa

.field public static final STATE_ID_ANTI_FOG_CONTROLLBAR:I = 0xa9

.field public static final STATE_ID_ANTI_FOG_MODE:I = 0xa8

.field public static final STATE_ID_ASPREVIEW_SETTING:I = 0x23

.field public static final STATE_ID_ASSISTANT_SHUTTER_MODE:I = 0x22

.field public static final STATE_ID_ASSISTANT_SHUTTER_OFF:I = 0xa0

.field public static final STATE_ID_ASSISTANT_SHUTTER_ON:I = 0x9f

.field public static final STATE_ID_ASSISTANT_SHUTTER_SETTING:I = 0x34

.field public static final STATE_ID_AS_PREVIEWED_MODE:I = 0x15

.field public static final STATE_ID_BEAUTY:I = 0x95

.field public static final STATE_ID_CAMERA:I = 0x1

.field public static final STATE_ID_CAMERA_SETTING:I = 0x4d

.field public static final STATE_ID_CAPTURE_MODE:I = 0xb

.field public static final STATE_ID_CHANGE_COMMON_TIMER:I = 0x47

.field public static final STATE_ID_CHANGE_MODE:I = 0xa

.field public static final STATE_ID_COLORTONE:I = 0x92

.field public static final STATE_ID_COLORTUNE_RESET:I = 0x8c

.field public static final STATE_ID_COLORTUNE_RESET_STATE:I = 0x8d

.field public static final STATE_ID_COMMON_TAKE_3SHOTS_OFF:I = 0x4c

.field public static final STATE_ID_COMMON_TAKE_3SHOTS_ON:I = 0x4b

.field public static final STATE_ID_COMMON_TIMER:I = 0x48

.field public static final STATE_ID_COMMON_TIMER_OFF:I = 0x4a

.field public static final STATE_ID_CONTACTUS:I = 0x73

.field public static final STATE_ID_CROSS_SHARE:I = 0x4e

.field public static final STATE_ID_DUAL_CAMERA_MODE:I = 0x21

.field public static final STATE_ID_EDIT_MODE_SCREEN:I = 0xb3

.field public static final STATE_ID_EV:I = 0x89

.field public static final STATE_ID_EV_CONTROLBAR:I = 0x88

.field public static final STATE_ID_FILTER_CHANGE:I = 0x43

.field public static final STATE_ID_FILTER_DOWNLOAD:I = 0x52

.field public static final STATE_ID_FILTER_DOWNLOAD_PAGE:I = 0x53

.field public static final STATE_ID_FILTER_MODE:I = 0xe

.field public static final STATE_ID_FILTER_MODE_STRENGTH:I = 0x76

.field public static final STATE_ID_FILTER_MODE_VIGNETTE:I = 0x77

.field public static final STATE_ID_FILTER_REMOVE:I = 0xb2

.field public static final STATE_ID_FILTER_STRENGTH:I = 0x78

.field public static final STATE_ID_FILTER_VIGNETTE:I = 0x79

.field public static final STATE_ID_FLASH_AUTO:I = 0x3b

.field public static final STATE_ID_FLASH_MODE:I = 0x5

.field public static final STATE_ID_FLASH_OFF:I = 0x39

.field public static final STATE_ID_FLASH_ON:I = 0x3a

.field public static final STATE_ID_FOCUS:I = 0x91

.field public static final STATE_ID_FOCUS_CONTROLBAR:I = 0x90

.field public static final STATE_ID_FOOD_MODE:I = 0x1d

.field public static final STATE_ID_FRONT_PICTURESIZE:I = 0x5d

.field public static final STATE_ID_FRONT_PICTURESIZE_SETTING:I = 0x29

.field public static final STATE_ID_FRONT_PICTURE_MODE:I = 0x13

.field public static final STATE_ID_FRONT_PICTURE_SETTING:I = 0x28

.field public static final STATE_ID_FRONT_VIDEOSIZE:I = 0x5e

.field public static final STATE_ID_FRONT_VIDEOSIZE_SETTING:I = 0x2b

.field public static final STATE_ID_FRONT_VIDEO_MODE:I = 0x12

.field public static final STATE_ID_FRONT_VIDEO_SETTING:I = 0x2a

.field public static final STATE_ID_GALLERY:I = 0x38

.field public static final STATE_ID_GALLERY_MODE:I = 0x7d

.field public static final STATE_ID_GESTURE_CONTROL_OFF:I = 0x65

.field public static final STATE_ID_GESTURE_CONTROL_ON:I = 0x64

.field public static final STATE_ID_GRID_LINES:I = 0x6a

.field public static final STATE_ID_GRID_LINES_OFF:I = 0x74

.field public static final STATE_ID_HDR_AUTO:I = 0x3e

.field public static final STATE_ID_HDR_MODE:I = 0x6

.field public static final STATE_ID_HDR_OFF:I = 0x3c

.field public static final STATE_ID_HDR_ON:I = 0x3d

.field public static final STATE_ID_HELP:I = 0xa5

.field public static final STATE_ID_HYPERLAPSE_MODE:I = 0x1b

.field public static final STATE_ID_INTERACTIVE_FILTER:I = 0x46

.field public static final STATE_ID_ISO:I = 0x85

.field public static final STATE_ID_ISO_CONTROLBAR:I = 0x84

.field public static final STATE_ID_LARGE_EYES:I = 0x9a

.field public static final STATE_ID_LOCATION_TAGS_MODE:I = 0xa6

.field public static final STATE_ID_LOCATION_TAGS_OFF:I = 0x42

.field public static final STATE_ID_LOCATION_TAGS_ON:I = 0x41

.field public static final STATE_ID_LOCATION_TAGS_SETTING:I = 0x7b

.field public static final STATE_ID_METERING:I = 0x82

.field public static final STATE_ID_MODE_DOWNLOAD:I = 0x50

.field public static final STATE_ID_MODE_DOWNLOAD_PAGE:I = 0x51

.field public static final STATE_ID_MODE_INFO:I = 0x7a

.field public static final STATE_ID_MOTION_PANORAMA_OFF:I = 0x80

.field public static final STATE_ID_MOTION_PANORAMA_ON:I = 0x7f

.field public static final STATE_ID_MOTION_PHOTO_MODE:I = 0x8

.field public static final STATE_ID_MOTION_PHOTO_OFF:I = 0x40

.field public static final STATE_ID_MOTION_PHOTO_ON:I = 0x3f

.field public static final STATE_ID_MOTION_PHOTO_SETTING:I = 0x24

.field public static final STATE_ID_MOTION_WIDE_ANGLE_SELFIE_OFF:I = 0x9e

.field public static final STATE_ID_MOTION_WIDE_ANGLE_SELFIE_ON:I = 0x9d

.field public static final STATE_ID_PANORAMA_MODE:I = 0x1a

.field public static final STATE_ID_PICTURE_MODE:I = 0x3

.field public static final STATE_ID_PRO_FILTER:I = 0x8a

.field public static final STATE_ID_PRO_MODE:I = 0x1c

.field public static final STATE_ID_QR_CODE_DETECTION_MODE:I = 0xad

.field public static final STATE_ID_QR_CODE_DETECTION_OFF:I = 0xac

.field public static final STATE_ID_QR_CODE_DETECTION_ON:I = 0xab

.field public static final STATE_ID_QUICK_LAUNCH_OFF:I = 0x6e

.field public static final STATE_ID_QUICK_LAUNCH_ON:I = 0x6d

.field public static final STATE_ID_QUICK_LAUNCH_SELECT:I = 0xaf

.field public static final STATE_ID_QUICK_LAUNCH_SETTING:I = 0xb0

.field public static final STATE_ID_RADIAL_BLUR_OFF:I = 0x94

.field public static final STATE_ID_RADIAL_BLUR_ON:I = 0x93

.field public static final STATE_ID_REAR_PICTURESIZE:I = 0x55

.field public static final STATE_ID_REAR_PICTURESIZE_SETTING:I = 0x30

.field public static final STATE_ID_REAR_PICTURE_MODE:I = 0x19

.field public static final STATE_ID_REAR_PICTURE_SETTING:I = 0x2f

.field public static final STATE_ID_REAR_VIDEOSIZE:I = 0x58

.field public static final STATE_ID_REAR_VIDEOSIZE_SETTING:I = 0x32

.field public static final STATE_ID_REAR_VIDEO_MODE:I = 0xf

.field public static final STATE_ID_REAR_VIDEO_SETTING:I = 0x31

.field public static final STATE_ID_RECORDING:I = 0x36

.field public static final STATE_ID_RECORD_MODE:I = 0x4

.field public static final STATE_ID_REMOVE_GUIDE:I = 0xb4

.field public static final STATE_ID_REVIEW_PICTURES_OFF:I = 0x6c

.field public static final STATE_ID_REVIEW_PICTURES_ON:I = 0x6b

.field public static final STATE_ID_REVIEW_PICTURE_MODE:I = 0x17

.field public static final STATE_ID_REVIEW_PICTURE_SETTING:I = 0x2e

.field public static final STATE_ID_SAVE_PICTURES_AS_PREVIEWED_OFF:I = 0x60

.field public static final STATE_ID_SAVE_PICTURES_AS_PREVIEWED_ON:I = 0x5f

.field public static final STATE_ID_SAVE_RAW_AND_JPEG_FILES_OFF:I = 0x57

.field public static final STATE_ID_SAVE_RAW_AND_JPEG_FILES_ON:I = 0x56

.field public static final STATE_ID_SELECT_BASIC_FILTER:I = 0x44

.field public static final STATE_ID_SELECT_BEAUTY_FILTER:I = 0x45

.field public static final STATE_ID_SELECT_FILTER_FOR_SETTING:I = 0x2d

.field public static final STATE_ID_SELECT_MODE:I = 0xd

.field public static final STATE_ID_SELECT_SPEED:I = 0x81

.field public static final STATE_ID_SELFIE_MODE:I = 0x1f

.field public static final STATE_ID_SELFIE_SHAPE_CORRECTION_OFF:I = 0x9c

.field public static final STATE_ID_SELFIE_SHAPE_CORRECTION_ON:I = 0x9b

.field public static final STATE_ID_SETTING:I = 0x35

.field public static final STATE_ID_SETTING_RESET:I = 0x72

.field public static final STATE_ID_SET_MODE:I = 0x9

.field public static final STATE_ID_SHAPE_CORRECTION_MODE:I = 0x11

.field public static final STATE_ID_SHAPE_CORRECTION_OFF:I = 0x5c

.field public static final STATE_ID_SHAPE_CORRECTION_ON:I = 0x5b

.field public static final STATE_ID_SHAPE_CORRECTION_SETTING:I = 0x27

.field public static final STATE_ID_SHARE:I = 0x75

.field public static final STATE_ID_SHARE_MODE:I = 0x18

.field public static final STATE_ID_SHUTTER_SOUND_OFF:I = 0xa4

.field public static final STATE_ID_SHUTTER_SOUND_ON:I = 0xa3

.field public static final STATE_ID_SHUTTER_SPEED:I = 0x87

.field public static final STATE_ID_SHUTTER_SPEED_CONTROLBAR:I = 0x86

.field public static final STATE_ID_SKINTONE_MODE:I = 0x1e

.field public static final STATE_ID_SKIN_TONE:I = 0x96

.field public static final STATE_ID_SLIM_FACE:I = 0x99

.field public static final STATE_ID_SPOT_LIGHT:I = 0x97

.field public static final STATE_ID_SPOT_LIGHT_DIRECTION:I = 0x98

.field public static final STATE_ID_STABILIZATION_MODE:I = 0x16

.field public static final STATE_ID_STABILIZATION_SETTING:I = 0x2c

.field public static final STATE_ID_STAMP_FILTER:I = 0x4f

.field public static final STATE_ID_STORAGE_LOCATION_INTERNAL_STORAGE:I = 0xa1

.field public static final STATE_ID_STORAGE_LOCATION_MEMORYCARD:I = 0xa2

.field public static final STATE_ID_SWITCH_CAMERA:I = 0x37

.field public static final STATE_ID_SWITCH_CAMERA_MODE:I = 0xc

.field public static final STATE_ID_TAB_TO_TAKE_PICTURES_OFF:I = 0x63

.field public static final STATE_ID_TAB_TO_TAKE_PICTURES_ON:I = 0x62

.field public static final STATE_ID_TAKE_A_PICTURE:I = 0x2

.field public static final STATE_ID_TAKE_COMMON_TIMER:I = 0x49

.field public static final STATE_ID_TIMER_MODE:I = 0x7

.field public static final STATE_ID_TIMER_SETTING:I = 0x25

.field public static final STATE_ID_TONE_CONTROLBAR:I = 0x8b

.field public static final STATE_ID_TRACKINGAF_SETTING:I = 0x26

.field public static final STATE_ID_TRACKING_AF_MODE:I = 0x10

.field public static final STATE_ID_TRACKING_AF_OFF:I = 0x5a

.field public static final STATE_ID_TRACKING_AF_ON:I = 0x59

.field public static final STATE_ID_UNKNOWN:I = -0x1

.field public static final STATE_ID_USE_HEARTRATE_SENSOR_OFF:I = 0x67

.field public static final STATE_ID_USE_HEARTRATE_SENSOR_ON:I = 0x66

.field public static final STATE_ID_VIDEO_STABILIZATION_OFF:I = 0x69

.field public static final STATE_ID_VIDEO_STABILIZATION_ON:I = 0x68

.field public static final STATE_ID_VOICE_CONTROL_MODE:I = 0xa7

.field public static final STATE_ID_VOICE_CONTROL_OFF:I = 0x70

.field public static final STATE_ID_VOICE_CONTROL_ON:I = 0x6f

.field public static final STATE_ID_VOICE_CONTROL_SETTING:I = 0x7c

.field public static final STATE_ID_VOLUME_KEY_FUNCTION:I = 0x71

.field public static final STATE_ID_VOLUME_KEY_SETTING:I = 0x7e

.field public static final STATE_ID_WATERMARK_FILTER:I = 0xae

.field public static final STATE_ID_WAY_MODE:I = 0x14

.field public static final STATE_ID_WAY_SETTING:I = 0x33

.field public static final STATE_ID_WAY_TO_TAKE_PICTURES:I = 0x61

.field public static final STATE_ID_WB:I = 0x8f

.field public static final STATE_ID_WB_CONTROLBAR:I = 0x8e

.field public static final STATE_ID_WECHAT_VIDEO_MODE:I = 0xb1

.field public static final STATE_ID_WIDE_SELFIE_MODE:I = 0x20

.field public static final STATE_TYPE_ACTION_CAPTURE:I = 0x8

.field public static final STATE_TYPE_CHANGE_SETTING_BY_MULTI_VALUE:I = 0x5

.field public static final STATE_TYPE_CHANGE_SETTING_BY_SINGLE_VALUE:I = 0x3

.field public static final STATE_TYPE_CHANGE_SHOOTING_MODE:I = 0x1

.field public static final STATE_TYPE_LAUNCH_SETTING:I = 0x2

.field public static final STATE_TYPE_LAUNCH_TO_OTHER_APP:I = 0x7

.field public static final STATE_TYPE_SHOW_MENU:I = 0x6

.field public static final STATE_TYPE_SKIP_STATE:I = 0x4

.field public static final STATE_TYPE_UNKNOWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "RulePathState"

.field public static final USE_LAST_LANDING_STATE:I = -0x1

.field private static mStateInfoDepot:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/app/camera/executor/RulePathState$StateInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/16 v8, 0x23

    const/16 v7, 0x47

    const/16 v6, 0x61

    const/16 v5, 0x35

    const/4 v4, -0x1

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/executor/RulePathState;->mStateInfoDepot:Landroid/util/SparseArray;

    const/4 v0, 0x1

    const-string v1, "Camera"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/4 v0, 0x3

    const-string v1, "PictureMode"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/4 v0, 0x2

    const-string v1, "TakeaPicture"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/4 v0, 0x4

    const-string v1, "RecordMode"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/4 v0, 0x5

    const-string v1, "FlashMode"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/4 v0, 0x6

    const-string v1, "HDRMode"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/4 v0, 0x7

    const-string v1, "TimerMode"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x8

    const-string v1, "MotionphotoMode"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x9

    const-string v1, "SetMode"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0xa

    const-string v1, "ChangeMode"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0xd

    const-string v1, "SelectMode"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0xe

    const-string v1, "FilterMode"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0xf

    const-string v1, "RearVideoMode"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x10

    const-string v1, "TrackingAFMode"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x11

    const-string v1, "ShapeCorrectionMode"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x12

    const-string v1, "FrontVideoMode"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x13

    const-string v1, "FrontPictureMode"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x14

    const-string v1, "WayMode"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x15

    const-string v1, "AsPreviewMode"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x16

    const-string v1, "StabilizationMode"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x17

    const-string v1, "ReviewpictureMode"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x18

    const-string v1, "ShareMode"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x19

    const-string v1, "RearPictureMode"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x1a

    const-string v1, "PanoramaMode"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x1b

    const-string v1, "HyperlapseMode"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x1c

    const-string v1, "ProMode"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x1d

    const-string v1, "FoodMode"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x1e

    const-string v1, "SkintoneMode"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x1f

    const-string v1, "SelfieMode"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x20

    const-string v1, "WideselfieMode"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x21

    const-string v1, "DualcameraMode"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x22

    const-string v1, "AssistantShutterMode"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0xa6

    const-string v1, "LocationtagsMode"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0xa7

    const-string v1, "VoicecontrolMode"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x7d

    const-string v1, "GalleryMode"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const-string v0, "AsPreviewSetting"

    invoke-static {v8, v0, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x24

    const-string v1, "MotionphotoSetting"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x25

    const-string v1, "TimerSetting"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x26

    const-string v1, "TrackingAFSetting"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x27

    const-string v1, "ShapeCorrectionSetting"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x28

    const-string v1, "FrontPictureSetting"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x29

    const-string v1, "FrontPictureSizeSetting"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x2a

    const-string v1, "FrontVideoSetting"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x2b

    const-string v1, "FrontVideoSizeSetting"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x2c

    const-string v1, "StabilizationSetting"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x2d

    const-string v1, "SelectFilterForSetting"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x2e

    const-string v1, "ReviewpictureSetting"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x2f

    const-string v1, "RearPictureSetting"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x30

    const-string v1, "RearPictureSizeSetting"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x31

    const-string v1, "RearVideoSetting"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x32

    const-string v1, "RearVideoSizeSetting"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x33

    const-string v1, "WaySetting"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x34

    const-string v1, "AssistantShutterSetting"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const-string v0, "Setting"

    invoke-static {v5, v0, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x7b

    const-string v1, "LocationtagsSetting"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x7c

    const-string v1, "VoicecontrolSetting"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x36

    const-string v1, "Recording"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x37

    const-string v1, "SwitchCamera"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x38

    const-string v1, "Gallery"

    const/16 v2, 0xb

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x39

    const-string v1, "FlashOff"

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x3a

    const-string v1, "FlashOn"

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x3b

    const-string v1, "FlashAuto"

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x3c

    const-string v1, "HDROff"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x3d

    const-string v1, "HDROn"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x3e

    const-string v1, "HDRAuto"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x3f

    const-string v1, "MotionphotoOn"

    const/16 v2, 0x20

    const/16 v3, 0x24

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;II)V

    const/16 v0, 0x40

    const-string v1, "MotionphotoOff"

    const/16 v2, 0x20

    const/16 v3, 0x24

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;II)V

    const/16 v0, 0x41

    const-string v1, "LocationtagsOn"

    const/16 v2, 0x11

    const/16 v3, 0x7b

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;II)V

    const/16 v0, 0x42

    const-string v1, "LocationtagsOff"

    const/16 v2, 0x11

    const/16 v3, 0x7b

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;II)V

    const/16 v0, 0x43

    const-string v1, "FilterChange"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x44

    const-string v1, "SelectBasicFilter"

    const/16 v2, 0x44

    invoke-static {v0, v1, v4, v2}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;II)V

    const/16 v0, 0x45

    const-string v1, "SelectBeautyFilter"

    const/16 v2, 0x45

    invoke-static {v0, v1, v4, v2}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;II)V

    const/16 v0, 0x46

    const-string v1, "InteractiveFilter"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x4f

    const-string v1, "StampFilter"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x50

    const-string v1, "ModeDownload"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x51

    const-string v1, "ModeDownloadpage"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x52

    const-string v1, "FilterDownload"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x53

    const-string v1, "FilterDownloadpage"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x54

    const-string v1, "AddshortcutonHomescreen"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x55

    const-string v1, "RearPictureSize"

    const/4 v2, 0x6

    const/16 v3, 0x30

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;II)V

    const/16 v0, 0x56

    const-string v1, "SaveRAWandJPEGfilesOn"

    const/16 v2, 0x19

    const/16 v3, 0x30

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;II)V

    const/16 v0, 0x57

    const-string v1, "SaveRAWandJPEGfilesOff"

    const/16 v2, 0x19

    const/16 v3, 0x30

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;II)V

    const/16 v0, 0x58

    const-string v1, "RearVideoSize"

    const/16 v2, 0xc

    const/16 v3, 0x32

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;II)V

    const/16 v0, 0x59

    const-string v1, "TrackingAFOn"

    const/16 v2, 0x14

    const/16 v3, 0x26

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;II)V

    const/16 v0, 0x5a

    const-string v1, "TrackingAFOff"

    const/16 v2, 0x14

    const/16 v3, 0x26

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;II)V

    const/16 v0, 0x5b

    const-string v1, "ShapeCorrectionOn"

    const/16 v2, 0x1a

    const/16 v3, 0x27

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;II)V

    const/16 v0, 0x5c

    const-string v1, "ShapeCorrectionOff"

    const/16 v2, 0x1a

    const/16 v3, 0x27

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;II)V

    const/16 v0, 0x5d

    const-string v1, "FrontPictureSize"

    const/4 v2, 0x6

    const/16 v3, 0x29

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;II)V

    const/16 v0, 0x5e

    const-string v1, "FrontVideoSize"

    const/16 v2, 0xc

    const/16 v3, 0x2b

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;II)V

    const/16 v0, 0x5f

    const-string v1, "SavepicturesaspreviewedOn"

    const/16 v2, 0xe

    invoke-static {v0, v1, v2, v8}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;II)V

    const/16 v0, 0x60

    const-string v1, "SavepicturesaspreviewedOff"

    const/16 v2, 0xe

    invoke-static {v0, v1, v2, v8}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;II)V

    const-string v0, "Waytotakepictures"

    invoke-static {v6, v0, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x62

    const-string v1, "TabtotakepicturesOn"

    const/16 v2, 0x1d

    invoke-static {v0, v1, v2, v6}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;II)V

    const/16 v0, 0x63

    const-string v1, "TabtotakepicturesOff"

    const/16 v2, 0x1d

    invoke-static {v0, v1, v2, v6}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;II)V

    const/16 v0, 0x64

    const-string v1, "GesturecontrolOn"

    const/16 v2, 0x13

    invoke-static {v0, v1, v2, v6}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;II)V

    const/16 v0, 0x65

    const-string v1, "GesturecontrolOff"

    const/16 v2, 0x13

    invoke-static {v0, v1, v2, v6}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;II)V

    const/16 v0, 0x66

    const-string v1, "UseheartratesensorOn"

    const/16 v2, 0x1e

    invoke-static {v0, v1, v2, v6}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;II)V

    const/16 v0, 0x67

    const-string v1, "UseheartratesensorOff"

    const/16 v2, 0x1e

    invoke-static {v0, v1, v2, v6}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;II)V

    const/16 v0, 0x68

    const-string v1, "VideostabilizationOn"

    const/16 v2, 0xf

    const/16 v3, 0x2c

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;II)V

    const/16 v0, 0x69

    const-string v1, "VideostabilizationOff"

    const/16 v2, 0xf

    const/16 v3, 0x2c

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;II)V

    const/16 v0, 0x6a

    const-string v1, "Gridlines"

    const/16 v2, 0xa

    invoke-static {v0, v1, v2, v5}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;II)V

    const/16 v0, 0x6b

    const-string v1, "ReviewpicturesOn"

    const/16 v2, 0x8

    const/16 v3, 0x2e

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;II)V

    const/16 v0, 0x6c

    const-string v1, "ReviewpicturesOff"

    const/16 v2, 0x8

    const/16 v3, 0x2e

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;II)V

    const/16 v0, 0x6d

    const-string v1, "QuickLaunchOn"

    invoke-static {v0, v1, v4, v5}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;II)V

    const/16 v0, 0x6e

    const-string v1, "QuickLaunchOff"

    invoke-static {v0, v1, v4, v5}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;II)V

    const/16 v0, 0x6f

    const-string v1, "VoicecontrolOn"

    const/16 v2, 0x10

    const/16 v3, 0x7c

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;II)V

    const/16 v0, 0x70

    const-string v1, "VoicecontrolOff"

    const/16 v2, 0x10

    const/16 v3, 0x7c

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;II)V

    const/16 v0, 0x71

    const-string v1, "Volumekeyfunction"

    const/16 v2, 0x17

    const/16 v3, 0x7e

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;II)V

    const/16 v0, 0x72

    const-string v1, "Settingreset"

    const/16 v2, 0x16

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x73

    const-string v1, "Contactus"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x75

    const-string v1, "Share"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x76

    const-string v1, "FilterModeStrength"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x77

    const-string v1, "FilterModeVignette"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x78

    const-string v1, "FilterStrength"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x79

    const-string v1, "FilterVignette"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x7a

    const-string v1, "ModeInfo"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x7f

    const-string v1, "MotionPanoramaOn"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x80

    const-string v1, "MotionPanoramaOff"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x81

    const-string v1, "Selectspeed"

    const/16 v2, 0x81

    invoke-static {v0, v1, v4, v2}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;II)V

    const/16 v0, 0x82

    const-string v1, "Metering"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x83

    const-string v1, "AFarea"

    const/16 v2, 0x21

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x84

    const-string v1, "ISOcontrolbar"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x85

    const-string v1, "ISO"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x86

    const-string v1, "ShutterSpeedcontrolbar"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x87

    const-string v1, "ShutterSpeed"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x88

    const-string v1, "Evcontrolbar"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x89

    const-string v1, "EV"

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x8a

    const-string v1, "ProFilter"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x8b

    const-string v1, "Tonecontrolbar"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x8c

    const-string v1, "Colortunereset"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x8d

    const-string v1, "Colortuneresetstate"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x8e

    const-string v1, "WBcontrolbar"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x8f

    const-string v1, "WB"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x90

    const-string v1, "Focuscontrolbar"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x91

    const-string v1, "Focus"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x92

    const-string v1, "Colortone"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x93

    const-string v1, "RadialblurOn"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x94

    const-string v1, "RadialblurOff"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x95

    const-string v1, "Beauty"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x96

    const-string v1, "SkinTone"

    const/16 v2, 0x96

    invoke-static {v0, v1, v4, v2}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;II)V

    const/16 v0, 0x97

    const-string v1, "Spotlight"

    const/16 v2, 0x97

    invoke-static {v0, v1, v4, v2}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;II)V

    const/16 v0, 0x98

    const-string v1, "Spotlightdirection"

    const/16 v2, 0x98

    invoke-static {v0, v1, v4, v2}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;II)V

    const/16 v0, 0x99

    const-string v1, "Slimface"

    const/16 v2, 0x99

    invoke-static {v0, v1, v4, v2}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;II)V

    const/16 v0, 0x9a

    const-string v1, "Largeeyes"

    const/16 v2, 0x9a

    invoke-static {v0, v1, v4, v2}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;II)V

    const/16 v0, 0x9b

    const-string v1, "SelfieShapecorrectionOn"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x9c

    const-string v1, "SelfieShapecorrectionOff"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x9d

    const-string v1, "MotionwideangleselfieOn"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x9e

    const-string v1, "MotionwideangleselfieOff"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x9f

    const-string v1, "AssistantShutterOn"

    const/16 v2, 0x34

    invoke-static {v0, v1, v8, v2}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;II)V

    const/16 v0, 0xa0

    const-string v1, "AssistantShutterOff"

    const/16 v2, 0x34

    invoke-static {v0, v1, v8, v2}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;II)V

    const/16 v0, 0xa1

    const-string v1, "StoragelocationInternalstorage"

    const/16 v2, 0x9

    invoke-static {v0, v1, v2, v5}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;II)V

    const/16 v0, 0xa2

    const-string v1, "StoragelocationMemorycard"

    const/16 v2, 0x9

    invoke-static {v0, v1, v2, v5}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;II)V

    const/16 v0, 0xa3

    const-string v1, "ShuttersoundOn"

    const/16 v2, 0xd

    invoke-static {v0, v1, v2, v5}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;II)V

    const/16 v0, 0xa4

    const-string v1, "ShuttersoundOff"

    const/16 v2, 0xd

    invoke-static {v0, v1, v2, v5}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;II)V

    const/16 v0, 0xa5

    const-string v1, "Help"

    const/16 v2, 0x1c

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x7e

    const-string v1, "VolumekeySetting"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0xa8

    const-string v1, "AntiFogMode"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0xa9

    const-string v1, "AntiFogcontrollbar"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0xaa

    const-string v1, "AntiFog"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0xab

    const-string v1, "QRcodeDetectionOn"

    const/16 v2, 0x1b

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0xac

    const-string v1, "QRcodeDetectionOff"

    const/16 v2, 0x1b

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0xad

    const-string v1, "QRcodeDetectionMode"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0xae

    const-string v1, "WatermarkFilter"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0xb

    const-string v1, "CaptureMode"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0xc

    const-string v1, "SwitchCameraMode"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x74

    const-string v1, "GridlinesOff"

    const/16 v2, 0xa

    invoke-static {v0, v1, v2, v5}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;II)V

    const/16 v0, 0xaf

    const-string v1, "QuickLaunchSelect"

    const/16 v2, 0xb0

    invoke-static {v0, v1, v4, v2}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;II)V

    const/16 v0, 0xb0

    const-string v1, "QuickLaunchSetting"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0xb1

    const-string v1, "WechatVideoMode"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const-string v0, "ChangeCommonTimer"

    invoke-static {v7, v0, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x48

    const-string v1, "CommonTimer"

    invoke-static {v0, v1, v4, v7}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;II)V

    const/16 v0, 0x49

    const-string v1, "TakeCommonTimer"

    invoke-static {v0, v1, v4, v7}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;II)V

    const/16 v0, 0x4a

    const-string v1, "CommonTimerOff"

    invoke-static {v0, v1, v4, v7}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;II)V

    const/16 v0, 0x4b

    const-string v1, "CommonTake3shotsOn"

    invoke-static {v0, v1, v4, v7}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;II)V

    const/16 v0, 0x4c

    const-string v1, "CommonTake3shotsOff"

    invoke-static {v0, v1, v4, v7}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;II)V

    const/16 v0, 0x4d

    const-string v1, "CameraSetting"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0x4e

    const-string v1, "CrossShare"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0xb2

    const-string v1, "FilterRemove"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0xb3

    const-string v1, "EditModeScreen"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    const/16 v0, 0xb4

    const-string v1, "RemoveGuide"

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->add(ILjava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static add(ILjava/lang/String;I)V
    .locals 2

    sget-object v0, Lcom/sec/android/app/camera/executor/RulePathState;->mStateInfoDepot:Landroid/util/SparseArray;

    new-instance v1, Lcom/sec/android/app/camera/executor/RulePathState$StateInfo;

    invoke-direct {v1, p1, p2}, Lcom/sec/android/app/camera/executor/RulePathState$StateInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method private static add(ILjava/lang/String;II)V
    .locals 2

    sget-object v0, Lcom/sec/android/app/camera/executor/RulePathState;->mStateInfoDepot:Landroid/util/SparseArray;

    new-instance v1, Lcom/sec/android/app/camera/executor/RulePathState$StateInfo;

    invoke-direct {v1, p1, p2, p3}, Lcom/sec/android/app/camera/executor/RulePathState$StateInfo;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public static checkGroupTypeStateByStateId(I)I
    .locals 3

    const-string v0, "RulePathState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "statId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x6

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x7

    goto :goto_0

    :pswitch_5
    const/16 v0, 0x8

    goto :goto_0

    :pswitch_6
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_7
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_7
        :pswitch_4
        :pswitch_7
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_2
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_7
        :pswitch_3
        :pswitch_7
        :pswitch_3
        :pswitch_7
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_2
        :pswitch_7
        :pswitch_3
        :pswitch_7
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_6
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_6
        :pswitch_2
    .end packed-switch
.end method

.method public static getDimKeyOfStateID(I)I
    .locals 2

    sget-object v1, Lcom/sec/android/app/camera/executor/RulePathState;->mStateInfoDepot:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/executor/RulePathState$StateInfo;

    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    iget v1, v0, Lcom/sec/android/app/camera/executor/RulePathState$StateInfo;->dimKey:I

    goto :goto_0
.end method

.method public static getName(I)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/sec/android/app/camera/executor/RulePathState;->mStateInfoDepot:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/executor/RulePathState$StateInfo;

    if-nez v0, :cond_0

    const-string v1, "RulePathState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getName : info is null : id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "UNKNOWN_STATE"

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/sec/android/app/camera/executor/RulePathState$StateInfo;->stateIdName:Ljava/lang/String;

    goto :goto_0
.end method

.method private static varargs getNames([I)Ljava/util/LinkedHashSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/LinkedHashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget v0, p0, v2

    invoke-static {v0}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static getNlgLandingStateID(I)I
    .locals 2

    sget-object v1, Lcom/sec/android/app/camera/executor/RulePathState;->mStateInfoDepot:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/executor/RulePathState$StateInfo;

    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    iget v1, v0, Lcom/sec/android/app/camera/executor/RulePathState$StateInfo;->nlgLandingStateId:I

    goto :goto_0
.end method

.method public static getStateIDbyName(Ljava/lang/String;)I
    .locals 5

    const/4 v2, -0x1

    const/4 v0, 0x0

    :goto_0
    sget-object v4, Lcom/sec/android/app/camera/executor/RulePathState;->mStateInfoDepot:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    sget-object v4, Lcom/sec/android/app/camera/executor/RulePathState;->mStateInfoDepot:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    sget-object v4, Lcom/sec/android/app/camera/executor/RulePathState;->mStateInfoDepot:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/executor/RulePathState$StateInfo;

    if-eqz v3, :cond_1

    iget-object v4, v3, Lcom/sec/android/app/camera/executor/RulePathState$StateInfo;->stateIdName:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v1

    :cond_0
    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getSupportedModeSet(IZ)Ljava/util/LinkedHashSet;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/LinkedHashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/16 v7, 0x1c

    const/16 v6, 0x14

    const/16 v5, 0x13

    const/16 v4, 0xe

    const-string v1, "RulePathState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSupportedModeSet : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sparse-switch p0, :sswitch_data_0

    const-string v1, "RulePathState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unSupported : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object v0

    :sswitch_0
    new-array v1, v7, [I

    fill-array-data v1, :array_0

    invoke-static {v1}, Lcom/sec/android/app/camera/executor/RulePathState;->getNames([I)Ljava/util/LinkedHashSet;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_PRO:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_PRO_LITE:Z

    if-eqz v1, :cond_0

    :cond_1
    const/16 v1, 0x16

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    invoke-static {v1}, Lcom/sec/android/app/camera/executor/RulePathState;->getNames([I)Ljava/util/LinkedHashSet;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_SELFIE:Z

    if-eqz v1, :cond_0

    new-array v1, v7, [I

    fill-array-data v1, :array_2

    invoke-static {v1}, Lcom/sec/android/app/camera/executor/RulePathState;->getNames([I)Ljava/util/LinkedHashSet;

    move-result-object v0

    goto :goto_0

    :sswitch_3
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_MOTION_PANORAMA:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_PANORAMA_SHOT:Z

    if-eqz v1, :cond_0

    :cond_2
    const/16 v1, 0xf

    new-array v1, v1, [I

    fill-array-data v1, :array_3

    invoke-static {v1}, Lcom/sec/android/app/camera/executor/RulePathState;->getNames([I)Ljava/util/LinkedHashSet;

    move-result-object v0

    goto :goto_0

    :sswitch_4
    if-eqz p1, :cond_3

    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_SELECTIVE_FOCUS:Z

    if-eqz v1, :cond_0

    new-array v1, v5, [I

    fill-array-data v1, :array_4

    invoke-static {v1}, Lcom/sec/android/app/camera/executor/RulePathState;->getNames([I)Ljava/util/LinkedHashSet;

    move-result-object v0

    goto :goto_0

    :cond_3
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_SELECTIVE_FOCUS:Z

    if-eqz v1, :cond_0

    new-array v1, v5, [I

    fill-array-data v1, :array_5

    invoke-static {v1}, Lcom/sec/android/app/camera/executor/RulePathState;->getNames([I)Ljava/util/LinkedHashSet;

    move-result-object v0

    goto :goto_0

    :sswitch_5
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_WIDE_SELFIE:Z

    if-nez v1, :cond_4

    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_WIDE_SELFIE_LITE:Z

    if-nez v1, :cond_4

    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_MOTION_WIDE_SELFIE:Z

    if-eqz v1, :cond_0

    :cond_4
    new-array v1, v6, [I

    fill-array-data v1, :array_6

    invoke-static {v1}, Lcom/sec/android/app/camera/executor/RulePathState;->getNames([I)Ljava/util/LinkedHashSet;

    move-result-object v0

    goto :goto_0

    :sswitch_6
    if-eqz p1, :cond_5

    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_VIRTUAL_SHOT:Z

    if-eqz v1, :cond_0

    new-array v1, v5, [I

    fill-array-data v1, :array_7

    invoke-static {v1}, Lcom/sec/android/app/camera/executor/RulePathState;->getNames([I)Ljava/util/LinkedHashSet;

    move-result-object v0

    goto/16 :goto_0

    :cond_5
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_VIRTUAL_SHOT:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x10

    new-array v1, v1, [I

    fill-array-data v1, :array_8

    invoke-static {v1}, Lcom/sec/android/app/camera/executor/RulePathState;->getNames([I)Ljava/util/LinkedHashSet;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_7
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_HYPER_MOTION:Z

    if-eqz v1, :cond_0

    new-array v1, v4, [I

    fill-array-data v1, :array_9

    invoke-static {v1}, Lcom/sec/android/app/camera/executor/RulePathState;->getNames([I)Ljava/util/LinkedHashSet;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_8
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_FOOD:Z

    if-eqz v1, :cond_0

    new-array v1, v6, [I

    fill-array-data v1, :array_a

    invoke-static {v1}, Lcom/sec/android/app/camera/executor/RulePathState;->getNames([I)Ljava/util/LinkedHashSet;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_9
    if-eqz p1, :cond_6

    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_VIDEO_COLLAGE:Z

    if-eqz v1, :cond_0

    new-array v1, v4, [I

    fill-array-data v1, :array_b

    invoke-static {v1}, Lcom/sec/android/app/camera/executor/RulePathState;->getNames([I)Ljava/util/LinkedHashSet;

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_VIDEO_COLLAGE:Z

    if-eqz v1, :cond_0

    new-array v1, v4, [I

    fill-array-data v1, :array_c

    invoke-static {v1}, Lcom/sec/android/app/camera/executor/RulePathState;->getNames([I)Ljava/util/LinkedHashSet;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_a
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_SLOW_MOTION:Z

    if-eqz v1, :cond_0

    const/16 v1, 0xd

    new-array v1, v1, [I

    fill-array-data v1, :array_d

    invoke-static {v1}, Lcom/sec/android/app/camera/executor/RulePathState;->getNames([I)Ljava/util/LinkedHashSet;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_b
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0x36

    aput v3, v1, v2

    invoke-static {v1}, Lcom/sec/android/app/camera/executor/RulePathState;->getNames([I)Ljava/util/LinkedHashSet;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_c
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_ANTI_FOG:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x11

    new-array v1, v1, [I

    fill-array-data v1, :array_e

    invoke-static {v1}, Lcom/sec/android/app/camera/executor/RulePathState;->getNames([I)Ljava/util/LinkedHashSet;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_d
    if-eqz p1, :cond_7

    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_WECHAT_VIDEO:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_f

    invoke-static {v1}, Lcom/sec/android/app/camera/executor/RulePathState;->getNames([I)Ljava/util/LinkedHashSet;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_WECHAT_VIDEO:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    new-array v1, v1, [I

    fill-array-data v1, :array_10

    invoke-static {v1}, Lcom/sec/android/app/camera/executor/RulePathState;->getNames([I)Ljava/util/LinkedHashSet;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_e
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_11

    invoke-static {v1}, Lcom/sec/android/app/camera/executor/RulePathState;->getNames([I)Ljava/util/LinkedHashSet;

    move-result-object v0

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_3
        0x3 -> :sswitch_b
        0x7 -> :sswitch_e
        0x28 -> :sswitch_e
        0x2d -> :sswitch_4
        0x2f -> :sswitch_e
        0x31 -> :sswitch_c
        0x34 -> :sswitch_5
        0x37 -> :sswitch_2
        0x38 -> :sswitch_e
        0x3a -> :sswitch_e
        0x3b -> :sswitch_1
        0x3e -> :sswitch_6
        0x3f -> :sswitch_a
        0x44 -> :sswitch_8
        0x45 -> :sswitch_9
        0x48 -> :sswitch_3
        0x4a -> :sswitch_7
        0x4b -> :sswitch_1
        0x4d -> :sswitch_5
        0x4e -> :sswitch_5
        0x4f -> :sswitch_d
    .end sparse-switch

    :array_0
    .array-data 4
        0xb
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xc
        0xa
        0xe
        0x10
        0x11
        0x17
        0x19
        0x13
        0x12
        0xf
        0x14
        0x18
        0x15
        0x22
        0x16
        0xa7
        0x7d
        0xad
        0x1e
        0xa6
        0xb1
    .end array-data

    :array_1
    .array-data 4
        0x1c
        0xb
        0x4
        0x5
        0x7
        0x9
        0xc
        0xa
        0x10
        0x11
        0x17
        0x19
        0x13
        0x12
        0x16
        0xf
        0x14
        0x18
        0x15
        0xa7
        0x7d
        0xa6
    .end array-data

    :array_2
    .array-data 4
        0x1f
        0xb
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xc
        0xa
        0xe
        0x10
        0x11
        0x16
        0x19
        0x13
        0x12
        0xf
        0x14
        0x18
        0x15
        0x22
        0xa7
        0x7d
        0x1e
        0xa6
        0x17
        0xb1
    .end array-data

    :array_3
    .array-data 4
        0x1a
        0xb
        0x4
        0x9
        0xc
        0xa
        0x13
        0x12
        0xf
        0x14
        0x15
        0x16
        0xa7
        0x7d
        0xa6
    .end array-data

    :array_4
    .array-data 4
        0xb
        0x4
        0x6
        0x7
        0x9
        0xc
        0xa
        0x17
        0x19
        0x13
        0x12
        0xf
        0x14
        0x15
        0x18
        0x16
        0xa7
        0x7d
        0xa6
    .end array-data

    :array_5
    .array-data 4
        0xb
        0x4
        0x6
        0x7
        0x9
        0xc
        0xa
        0x17
        0x19
        0x13
        0x12
        0xf
        0x14
        0x15
        0x18
        0x16
        0xa7
        0x7d
        0xa6
    .end array-data

    :array_6
    .array-data 4
        0x20
        0xb
        0x4
        0x7
        0x9
        0xc
        0xa
        0x10
        0x11
        0x16
        0x17
        0x19
        0x12
        0xf
        0x14
        0x18
        0x15
        0xa7
        0x7d
        0xa6
    .end array-data

    :array_7
    .array-data 4
        0xb
        0x4
        0x5
        0x9
        0xc
        0xa
        0x10
        0x11
        0x16
        0x17
        0x19
        0x12
        0xf
        0x14
        0x15
        0x16
        0xa7
        0x7d
        0xa6
    .end array-data

    :array_8
    .array-data 4
        0xb
        0x4
        0x5
        0x9
        0xc
        0xa
        0x17
        0x13
        0x12
        0xf
        0x14
        0x15
        0x16
        0xa7
        0x7d
        0xa6
    .end array-data

    :array_9
    .array-data 4
        0x1b
        0x4
        0x5
        0x7
        0x9
        0xc
        0xa
        0x13
        0x12
        0x14
        0x15
        0xa7
        0x7d
        0xa6
    .end array-data

    :array_a
    .array-data 4
        0x1d
        0xb
        0x4
        0x5
        0x9
        0xc
        0xa
        0x11
        0x17
        0x19
        0x13
        0x12
        0xf
        0x14
        0x18
        0x15
        0x16
        0xa7
        0x7d
        0xa6
    .end array-data

    :array_b
    .array-data 4
        0x4
        0x6
        0x9
        0xc
        0xa
        0xe
        0x10
        0x11
        0x17
        0x19
        0xf
        0xa7
        0x7d
        0xa6
    .end array-data

    :array_c
    .array-data 4
        0x4
        0x5
        0x6
        0x9
        0xc
        0xa
        0xe
        0x17
        0x13
        0x12
        0x15
        0xa7
        0x7d
        0xa6
    .end array-data

    :array_d
    .array-data 4
        0x4
        0x5
        0x7
        0x9
        0xc
        0xa
        0x13
        0x12
        0x14
        0x15
        0xa7
        0x7d
        0xa6
    .end array-data

    :array_e
    .array-data 4
        0xa8
        0xb
        0xa
        0x9
        0xc
        0x18
        0x4
        0x13
        0x12
        0xf
        0x19
        0x15
        0x14
        0x7
        0x16
        0x17
        0xa6
    .end array-data

    :array_f
    .array-data 4
        0xa
        0xc
        0x4
        0x12
    .end array-data

    :array_10
    .array-data 4
        0xa
        0x5
        0xc
        0x4
        0xf
    .end array-data

    :array_11
    .array-data 4
        0xa
        0xb
    .end array-data
.end method

.method public static getSupportedSettingSet(IZ)Ljava/util/LinkedHashSet;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/LinkedHashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/16 v7, 0xd

    const/16 v6, 0xa

    const/16 v5, 0xc

    const/16 v4, 0x8

    const-string v1, "RulePathState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSupportedSettingSet : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sparse-switch p0, :sswitch_data_0

    const-string v1, "RulePathState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unSupported : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0

    :sswitch_0
    const/16 v1, 0x10

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-static {v1}, Lcom/sec/android/app/camera/executor/RulePathState;->getNames([I)Ljava/util/LinkedHashSet;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    const/16 v1, 0xe

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    invoke-static {v1}, Lcom/sec/android/app/camera/executor/RulePathState;->getNames([I)Ljava/util/LinkedHashSet;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    const/16 v1, 0xf

    new-array v1, v1, [I

    fill-array-data v1, :array_2

    invoke-static {v1}, Lcom/sec/android/app/camera/executor/RulePathState;->getNames([I)Ljava/util/LinkedHashSet;

    move-result-object v0

    goto :goto_0

    :sswitch_3
    new-array v1, v6, [I

    fill-array-data v1, :array_3

    invoke-static {v1}, Lcom/sec/android/app/camera/executor/RulePathState;->getNames([I)Ljava/util/LinkedHashSet;

    move-result-object v0

    goto :goto_0

    :sswitch_4
    new-array v1, v5, [I

    fill-array-data v1, :array_4

    invoke-static {v1}, Lcom/sec/android/app/camera/executor/RulePathState;->getNames([I)Ljava/util/LinkedHashSet;

    move-result-object v0

    goto :goto_0

    :sswitch_5
    new-array v1, v5, [I

    fill-array-data v1, :array_5

    invoke-static {v1}, Lcom/sec/android/app/camera/executor/RulePathState;->getNames([I)Ljava/util/LinkedHashSet;

    move-result-object v0

    goto :goto_0

    :sswitch_6
    if-eqz p1, :cond_0

    new-array v1, v7, [I

    fill-array-data v1, :array_6

    invoke-static {v1}, Lcom/sec/android/app/camera/executor/RulePathState;->getNames([I)Ljava/util/LinkedHashSet;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-array v1, v6, [I

    fill-array-data v1, :array_7

    invoke-static {v1}, Lcom/sec/android/app/camera/executor/RulePathState;->getNames([I)Ljava/util/LinkedHashSet;

    move-result-object v0

    goto :goto_0

    :sswitch_7
    new-array v1, v4, [I

    fill-array-data v1, :array_8

    invoke-static {v1}, Lcom/sec/android/app/camera/executor/RulePathState;->getNames([I)Ljava/util/LinkedHashSet;

    move-result-object v0

    goto :goto_0

    :sswitch_8
    new-array v1, v7, [I

    fill-array-data v1, :array_9

    invoke-static {v1}, Lcom/sec/android/app/camera/executor/RulePathState;->getNames([I)Ljava/util/LinkedHashSet;

    move-result-object v0

    goto :goto_0

    :sswitch_9
    if-eqz p1, :cond_1

    new-array v1, v4, [I

    fill-array-data v1, :array_a

    invoke-static {v1}, Lcom/sec/android/app/camera/executor/RulePathState;->getNames([I)Ljava/util/LinkedHashSet;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x7

    new-array v1, v1, [I

    fill-array-data v1, :array_b

    invoke-static {v1}, Lcom/sec/android/app/camera/executor/RulePathState;->getNames([I)Ljava/util/LinkedHashSet;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_a
    new-array v1, v4, [I

    fill-array-data v1, :array_c

    invoke-static {v1}, Lcom/sec/android/app/camera/executor/RulePathState;->getNames([I)Ljava/util/LinkedHashSet;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_b
    new-array v1, v5, [I

    fill-array-data v1, :array_d

    invoke-static {v1}, Lcom/sec/android/app/camera/executor/RulePathState;->getNames([I)Ljava/util/LinkedHashSet;

    move-result-object v0

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_3
        0x2d -> :sswitch_4
        0x31 -> :sswitch_b
        0x34 -> :sswitch_5
        0x37 -> :sswitch_2
        0x3b -> :sswitch_1
        0x3e -> :sswitch_6
        0x3f -> :sswitch_a
        0x44 -> :sswitch_8
        0x45 -> :sswitch_9
        0x48 -> :sswitch_3
        0x4a -> :sswitch_7
        0x4b -> :sswitch_1
        0x4d -> :sswitch_5
        0x4e -> :sswitch_5
    .end sparse-switch

    :array_0
    .array-data 4
        0x25
        0x24
        0x35
        0x26
        0x27
        0x2e
        0x2f
        0x28
        0x2a
        0x31
        0x33
        0x23
        0x34
        0x2c
        0x7c
        0x7b
    .end array-data

    :array_1
    .array-data 4
        0x25
        0x35
        0x26
        0x27
        0x2e
        0x2f
        0x28
        0x2a
        0x2c
        0x31
        0x33
        0x23
        0x7c
        0x7b
    .end array-data

    :array_2
    .array-data 4
        0x25
        0x24
        0x35
        0x26
        0x27
        0x2c
        0x2f
        0x28
        0x2a
        0x31
        0x33
        0x23
        0x34
        0x7c
        0x7b
    .end array-data

    :array_3
    .array-data 4
        0x25
        0x35
        0x28
        0x2a
        0x31
        0x33
        0x23
        0x2c
        0x7c
        0x7b
    .end array-data

    :array_4
    .array-data 4
        0x25
        0x35
        0x2e
        0x2f
        0x28
        0x2a
        0x31
        0x33
        0x23
        0x2c
        0x7c
        0x7b
    .end array-data

    :array_5
    .array-data 4
        0x25
        0x35
        0x26
        0x27
        0x2c
        0x2f
        0x2a
        0x31
        0x33
        0x23
        0x7c
        0x7b
    .end array-data

    :array_6
    .array-data 4
        0x35
        0x26
        0x27
        0x2c
        0x2e
        0x2f
        0x2a
        0x31
        0x33
        0x23
        0x2c
        0x7c
        0x7b
    .end array-data

    :array_7
    .array-data 4
        0x35
        0x2e
        0x28
        0x2a
        0x31
        0x33
        0x23
        0x2c
        0x7c
        0x7b
    .end array-data

    :array_8
    .array-data 4
        0x25
        0x35
        0x28
        0x2a
        0x33
        0x23
        0x7c
        0x7b
    .end array-data

    :array_9
    .array-data 4
        0x25
        0x35
        0x27
        0x2e
        0x2f
        0x28
        0x2a
        0x31
        0x33
        0x23
        0x2c
        0x7c
        0x7b
    .end array-data

    :array_a
    .array-data 4
        0x35
        0x26
        0x27
        0x2e
        0x2f
        0x31
        0x7c
        0x7b
    .end array-data

    :array_b
    .array-data 4
        0x35
        0x2e
        0x28
        0x2a
        0x23
        0x7c
        0x7b
    .end array-data

    :array_c
    .array-data 4
        0x25
        0x35
        0x28
        0x2a
        0x33
        0x23
        0x7c
        0x7b
    .end array-data

    :array_d
    .array-data 4
        0x35
        0x18
        0x28
        0x2a
        0x31
        0x2f
        0x23
        0x33
        0x25
        0x2c
        0x2e
        0x7b
    .end array-data
.end method
