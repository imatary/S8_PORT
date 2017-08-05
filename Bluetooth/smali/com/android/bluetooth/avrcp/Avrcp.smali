.class public final Lcom/android/bluetooth/avrcp/Avrcp;
.super Ljava/lang/Object;
.source "Avrcp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/avrcp/Avrcp$1;,
        Lcom/android/bluetooth/avrcp/Avrcp$2;,
        Lcom/android/bluetooth/avrcp/Avrcp$3;,
        Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;,
        Lcom/android/bluetooth/avrcp/Avrcp$CommandExtra;,
        Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;,
        Lcom/android/bluetooth/avrcp/Avrcp$Folder;,
        Lcom/android/bluetooth/avrcp/Avrcp$MediaControllerCallbackHandler;,
        Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;,
        Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;,
        Lcom/android/bluetooth/avrcp/Avrcp$Metadata;,
        Lcom/android/bluetooth/avrcp/Avrcp$SupportActionState;
    }
.end annotation


# static fields
.field private static final ABSOLUTE_VOLUME_BLACKLIST:Ljava/lang/String; = "absolute_volume_blacklist"

.field private static final ACTION_AVRCP:Ljava/lang/String; = "com.samsung.android.bt.AVRCP"

.field private static final ACTION_PLAY_CONTENTS:Ljava/lang/String; = "com.samsung.musicplus.intent.action.PLAY_CONTENTS"

.field private static final ADDRESSED_PLAYER_CHANGED:I = 0x7

.field private static final APP_ID:Ljava/lang/String; = "com.android.bluetooth"

.field private static final AVAILABLE_PLAYERS_CHANGED:I = 0x6

.field private static final AVC_MODE_OFF:I = 0x0

.field private static final AVC_MODE_ON:I = 0x1

.field private static final AVRCP_BASE_VOLUME_STEP:I = 0x1

.field private static final AVRCP_MAX_VOL:I = 0x7f

.field private static final AVRCP_SUPPORT_FEATURE:Ljava/lang/String; = "RCSF"

.field private static final AVRCP_UPDATE_NOW_PLAYING_OBSERVER_TIMEOUT:I = 0x1f4

.field private static final AVRCP_UPDATE_PLAYSTATE_TIMEOUT:I = 0x1388

.field private static final AVRC_BROWSE_POOL_SIZE:I = 0x1000

.field private static final AVRC_RSP_ACCEPT:I = 0x9

.field private static final AVRC_RSP_CHANGED:I = 0xd

.field private static final AVRC_RSP_IMPL_STBL:I = 0xc

.field private static final AVRC_RSP_INTERIM:I = 0xf

.field private static final AVRC_RSP_IN_TRANS:I = 0xb

.field private static final AVRC_RSP_NOT_IMPL:I = 0x8

.field private static final AVRC_RSP_REJ:I = 0xa

.field public static final AVRC_SUPPORTED_APP_SETTINGS:[B

.field private static final BASE_SKIP_AMOUNT:I = 0x7d0

.field private static final BLUETOOTH_AVC_MODE:Ljava/lang/String; = "bluetooth_avc_mode"

.field public static final BTRC_FEAT_ABSOLUTE_VOLUME:I = 0x2

.field public static final BTRC_FEAT_BROWSE:I = 0x4

.field public static final BTRC_FEAT_GET_IMAGE_FEATURE:I = 0x10

.field public static final BTRC_FEAT_GET_IMAGE_PROPERTY:I = 0x8

.field public static final BTRC_FEAT_METADATA:I = 0x1

.field public static final BTRC_FEAT_THUMBNAIL:I = 0x20

.field private static final BTRC_MAX_FOLDER_DEPTH:I = 0x14

.field private static final BUTTON_TIMEOUT_TIME:I = 0x4e20

.field static final CHARSET_ID_FIELD_LENGTH:S = 0x2s

.field private static final CHARSET_UTF8:I = 0x6a

.field static final CHAR_SET_UTF8:S = 0x6as

.field private static final CMD_TIMEOUT_DELAY:I = 0x7d0

.field private static final DEBUG:Z

.field public static final DEFAULT_MUSIC_QUERY_WHERE:Ljava/lang/String; = "is_music=1"

.field private static final DEFAULT_PKG:Ljava/lang/String; = "tempPackage"

.field private static final DELAY_FOR_GETFOLDERITEMS_MEDIAPLAYER:I = 0x64

.field private static final DELAY_FOR_MEDIA_BROWSER:I = 0xbb8

.field private static final DIRECTION_DOWN:B = 0x1t

.field private static final DIRECTION_UP:B = 0x0t

.field static final DISPLAYABLE_NAME_LENGTH_FIELD_LENGTH:S = 0x2s

.field private static final EMERGENCY_START_SERVICE_BY_ORDER:Ljava/lang/String; = "com.samsung.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

.field static final EVT_ADDRESSED_PLAYER_CHANGED:I = 0xb

.field static final EVT_APP_SETTINGS_CHANGED:I = 0x8

.field static final EVT_AVAILABLE_PLAYERS_CHANGED:I = 0xa

.field static final EVT_BATT_STATUS_CHANGED:I = 0x6

.field static final EVT_NOW_PLAYING_CONTENT_CHANGED:I = 0x9

.field static final EVT_PLAY_POS_CHANGED:I = 0x5

.field static final EVT_PLAY_STATUS_CHANGED:I = 0x1

.field static final EVT_SYSTEM_STATUS_CHANGED:I = 0x7

.field static final EVT_TRACK_CHANGED:I = 0x2

.field static final EVT_TRACK_REACHED_END:I = 0x3

.field static final EVT_TRACK_REACHED_START:I = 0x4

.field private static final EXTRA_BASE_URI:Ljava/lang/String; = "base_uri"

.field static final EXTRA_FOLDER_TYPE:Ljava/lang/String; = "com.google.android.music.browse.bt_folder_type_hint"

.field private static final EXTRA_LIST:Ljava/lang/String; = "list"

.field private static final EXTRA_LIST_POSITION:Ljava/lang/String; = "listPosition"

.field private static final EXTRA_MEDIA_SESSION_REPEAT:Ljava/lang/String; = "com.sec.android.app.music.EXTRA_REPEAT"

.field private static final EXTRA_MEDIA_SESSION_SHUFFLE:Ljava/lang/String; = "com.sec.android.app.music.EXTRA_SHUFFLE"

.field private static final EXTRA_QUEUE_METADATA:Ljava/lang/String; = "com.google.android.music.mediasession.music_metadata"

.field private static final EXTRA_REPEAT:Ljava/lang/String; = "repeat"

.field private static final EXTRA_SHUFFLE:Ljava/lang/String; = "shuffle"

.field private static final FEATURE:I = 0x0

.field static final FEATURE_BITMASK_FIELD_LENGTH:S = 0x10s

.field static final FEATURE_MASK_0_BIT_NO:I = 0xe

.field static final FEATURE_MASK_0_MASK:I = 0x40

.field static final FEATURE_MASK_0_OFFSET:I = 0x1

.field static final FEATURE_MASK_1_BIT_NO:I = 0xf

.field static final FEATURE_MASK_1_MASK:I = 0x80

.field static final FEATURE_MASK_1_OFFSET:I = 0x1

.field static final FEATURE_MASK_2_BIT_NO:I = 0x10

.field static final FEATURE_MASK_2_MASK:I = 0x1

.field static final FEATURE_MASK_2_OFFSET:I = 0x2

.field static final FEATURE_MASK_3_BIT_NO:I = 0x11

.field static final FEATURE_MASK_3_MASK:I = 0x2

.field static final FEATURE_MASK_3_OFFSET:I = 0x2

.field static final FEATURE_MASK_4_BIT_NO:I = 0x12

.field static final FEATURE_MASK_4_MASK:I = 0x4

.field static final FEATURE_MASK_4_OFFSET:I = 0x2

.field static final FEATURE_MASK_5_BIT_NO:I = 0x13

.field static final FEATURE_MASK_5_MASK:I = 0x8

.field static final FEATURE_MASK_5_OFFSET:I = 0x2

.field static final FEATURE_MASK_6_BIT_NO:I = 0x14

.field static final FEATURE_MASK_6_MASK:I = 0x10

.field static final FEATURE_MASK_6_OFFSET:I = 0x2

.field static final FEATURE_MASK_7_BIT_NO:I = 0x15

.field static final FEATURE_MASK_7_MASK:I = 0x20

.field static final FEATURE_MASK_7_OFFSET:I = 0x2

.field static final FEATURE_MASK_8_BIT_NO:I = 0x16

.field static final FEATURE_MASK_8_MASK:I = 0x40

.field static final FEATURE_MASK_8_OFFSET:I = 0x2

.field static final FEATURE_MASK_9_BIT_NO:I = 0x17

.field static final FEATURE_MASK_9_MASK:I = 0x80

.field static final FEATURE_MASK_9_OFFSET:I = 0x2

.field static final FEATURE_MASK_ADD2NOWPLAY_BIT_NO:I = 0x3d

.field static final FEATURE_MASK_ADD2NOWPLAY_MASK:I = 0x20

.field static final FEATURE_MASK_ADD2NOWPLAY_OFFSET:I = 0x7

.field static final FEATURE_MASK_ADV_CTRL_BIT_NO:I = 0x3a

.field static final FEATURE_MASK_ADV_CTRL_MASK:I = 0x4

.field static final FEATURE_MASK_ADV_CTRL_OFFSET:I = 0x7

.field static final FEATURE_MASK_ANGLE_BIT_NO:I = 0x31

.field static final FEATURE_MASK_ANGLE_MASK:I = 0x2

.field static final FEATURE_MASK_ANGLE_OFFSET:I = 0x6

.field static final FEATURE_MASK_BACKWARD_BIT_NO:I = 0x30

.field static final FEATURE_MASK_BACKWARD_MASK:I = 0x1

.field static final FEATURE_MASK_BACKWARD_OFFSET:I = 0x6

.field static final FEATURE_MASK_BROWSE_BIT_NO:I = 0x3b

.field static final FEATURE_MASK_BROWSE_MASK:I = 0x8

.field static final FEATURE_MASK_BROWSE_OFFSET:I = 0x7

.field static final FEATURE_MASK_BR_WH_ADDR_BIT_NO:I = 0x3f

.field static final FEATURE_MASK_BR_WH_ADDR_MASK:I = 0x80

.field static final FEATURE_MASK_BR_WH_ADDR_OFFSET:I = 0x7

.field static final FEATURE_MASK_CHNL_DOWN_BIT_NO:I = 0x1c

.field static final FEATURE_MASK_CHNL_DOWN_MASK:I = 0x10

.field static final FEATURE_MASK_CHNL_DOWN_OFFSET:I = 0x3

.field static final FEATURE_MASK_CHNL_UP_BIT_NO:I = 0x1b

.field static final FEATURE_MASK_CHNL_UP_MASK:I = 0x8

.field static final FEATURE_MASK_CHNL_UP_OFFSET:I = 0x3

.field static final FEATURE_MASK_CLEAR_BIT_NO:I = 0x1a

.field static final FEATURE_MASK_CLEAR_MASK:I = 0x4

.field static final FEATURE_MASK_CLEAR_OFFSET:I = 0x3

.field static final FEATURE_MASK_CONTENTS_MENU_BIT_NO:I = 0xb

.field static final FEATURE_MASK_CONTENTS_MENU_MASK:I = 0x8

.field static final FEATURE_MASK_CONTENTS_MENU_OFFSET:I = 0x1

.field static final FEATURE_MASK_DISP_INFO_BIT_NO:I = 0x20

.field static final FEATURE_MASK_DISP_INFO_MASK:I = 0x1

.field static final FEATURE_MASK_DISP_INFO_OFFSET:I = 0x4

.field static final FEATURE_MASK_DOT_BIT_NO:I = 0x18

.field static final FEATURE_MASK_DOT_MASK:I = 0x1

.field static final FEATURE_MASK_DOT_OFFSET:I = 0x3

.field static final FEATURE_MASK_DOWN_BIT_NO:I = 0x2

.field static final FEATURE_MASK_DOWN_MASK:I = 0x4

.field static final FEATURE_MASK_DOWN_OFFSET:I = 0x0

.field static final FEATURE_MASK_EJECT_BIT_NO:I = 0x2e

.field static final FEATURE_MASK_EJECT_MASK:I = 0x40

.field static final FEATURE_MASK_EJECT_OFFSET:I = 0x5

.field static final FEATURE_MASK_ENTER_BIT_NO:I = 0x19

.field static final FEATURE_MASK_ENTER_MASK:I = 0x2

.field static final FEATURE_MASK_ENTER_OFFSET:I = 0x3

.field static final FEATURE_MASK_EXIT_BIT_NO:I = 0xd

.field static final FEATURE_MASK_EXIT_MASK:I = 0x20

.field static final FEATURE_MASK_EXIT_OFFSET:I = 0x1

.field static final FEATURE_MASK_F1_BIT_NO:I = 0x33

.field static final FEATURE_MASK_F1_MASK:I = 0x8

.field static final FEATURE_MASK_F1_OFFSET:I = 0x6

.field static final FEATURE_MASK_F2_BIT_NO:I = 0x34

.field static final FEATURE_MASK_F2_MASK:I = 0x10

.field static final FEATURE_MASK_F2_OFFSET:I = 0x6

.field static final FEATURE_MASK_F3_BIT_NO:I = 0x35

.field static final FEATURE_MASK_F3_MASK:I = 0x20

.field static final FEATURE_MASK_F3_OFFSET:I = 0x6

.field static final FEATURE_MASK_F4_BIT_NO:I = 0x36

.field static final FEATURE_MASK_F4_MASK:I = 0x40

.field static final FEATURE_MASK_F4_OFFSET:I = 0x6

.field static final FEATURE_MASK_F5_BIT_NO:I = 0x37

.field static final FEATURE_MASK_F5_MASK:I = 0x80

.field static final FEATURE_MASK_F5_OFFSET:I = 0x6

.field static final FEATURE_MASK_FAST_FWD_BIT_NO:I = 0x2d

.field static final FEATURE_MASK_FAST_FWD_MASK:I = 0x20

.field static final FEATURE_MASK_FAST_FWD_OFFSET:I = 0x5

.field static final FEATURE_MASK_FAVORITE_MENU_BIT_NO:I = 0xc

.field static final FEATURE_MASK_FAVORITE_MENU_MASK:I = 0x10

.field static final FEATURE_MASK_FAVORITE_MENU_OFFSET:I = 0x1

.field static final FEATURE_MASK_FORWARD_BIT_NO:I = 0x2f

.field static final FEATURE_MASK_FORWARD_MASK:I = 0x80

.field static final FEATURE_MASK_FORWARD_OFFSET:I = 0x5

.field static final FEATURE_MASK_GROUP_NAVI_BIT_NO:I = 0x39

.field static final FEATURE_MASK_GROUP_NAVI_MASK:I = 0x2

.field static final FEATURE_MASK_GROUP_NAVI_OFFSET:I = 0x7

.field static final FEATURE_MASK_HELP_BIT_NO:I = 0x21

.field static final FEATURE_MASK_HELP_MASK:I = 0x2

.field static final FEATURE_MASK_HELP_OFFSET:I = 0x4

.field static final FEATURE_MASK_INPUT_SEL_BIT_NO:I = 0x1f

.field static final FEATURE_MASK_INPUT_SEL_MASK:I = 0x80

.field static final FEATURE_MASK_INPUT_SEL_OFFSET:I = 0x3

.field static final FEATURE_MASK_LEFTDOWN_BIT_NO:I = 0x8

.field static final FEATURE_MASK_LEFTDOWN_MASK:I = 0x1

.field static final FEATURE_MASK_LEFTDOWN_OFFSET:I = 0x1

.field static final FEATURE_MASK_LEFTUP_BIT_NO:I = 0x7

.field static final FEATURE_MASK_LEFTUP_MASK:I = 0x80

.field static final FEATURE_MASK_LEFTUP_OFFSET:I = 0x0

.field static final FEATURE_MASK_LEFT_BIT_NO:I = 0x3

.field static final FEATURE_MASK_LEFT_MASK:I = 0x8

.field static final FEATURE_MASK_LEFT_OFFSET:I = 0x0

.field static final FEATURE_MASK_MUTE_BIT_NO:I = 0x27

.field static final FEATURE_MASK_MUTE_MASK:I = 0x80

.field static final FEATURE_MASK_MUTE_OFFSET:I = 0x4

.field static final FEATURE_MASK_NOW_PLAY_BIT_NO:I = 0x41

.field static final FEATURE_MASK_NOW_PLAY_MASK:I = 0x2

.field static final FEATURE_MASK_NOW_PLAY_OFFSET:I = 0x8

.field static final FEATURE_MASK_PAGE_DOWN_BIT_NO:I = 0x23

.field static final FEATURE_MASK_PAGE_DOWN_MASK:I = 0x8

.field static final FEATURE_MASK_PAGE_DOWN_OFFSET:I = 0x4

.field static final FEATURE_MASK_PAGE_UP_BIT_NO:I = 0x22

.field static final FEATURE_MASK_PAGE_UP_MASK:I = 0x4

.field static final FEATURE_MASK_PAGE_UP_OFFSET:I = 0x4

.field static final FEATURE_MASK_PAUSE_BIT_NO:I = 0x2a

.field static final FEATURE_MASK_PAUSE_MASK:I = 0x4

.field static final FEATURE_MASK_PAUSE_OFFSET:I = 0x5

.field static final FEATURE_MASK_PLAY_BIT_NO:I = 0x28

.field static final FEATURE_MASK_PLAY_MASK:I = 0x1

.field static final FEATURE_MASK_PLAY_OFFSET:I = 0x5

.field static final FEATURE_MASK_POWER_BIT_NO:I = 0x24

.field static final FEATURE_MASK_POWER_MASK:I = 0x10

.field static final FEATURE_MASK_POWER_OFFSET:I = 0x4

.field static final FEATURE_MASK_PREV_CHNL_BIT_NO:I = 0x1d

.field static final FEATURE_MASK_PREV_CHNL_MASK:I = 0x20

.field static final FEATURE_MASK_PREV_CHNL_OFFSET:I = 0x3

.field static final FEATURE_MASK_RECORD_BIT_NO:I = 0x2b

.field static final FEATURE_MASK_RECORD_MASK:I = 0x8

.field static final FEATURE_MASK_RECORD_OFFSET:I = 0x5

.field static final FEATURE_MASK_REWIND_BIT_NO:I = 0x2c

.field static final FEATURE_MASK_REWIND_MASK:I = 0x10

.field static final FEATURE_MASK_REWIND_OFFSET:I = 0x5

.field static final FEATURE_MASK_RIGHTDOWN_BIT_NO:I = 0x6

.field static final FEATURE_MASK_RIGHTDOWN_MASK:I = 0x40

.field static final FEATURE_MASK_RIGHTDOWN_OFFSET:I = 0x0

.field static final FEATURE_MASK_RIGHTUP_BIT_NO:I = 0x5

.field static final FEATURE_MASK_RIGHTUP_MASK:I = 0x20

.field static final FEATURE_MASK_RIGHTUP_OFFSET:I = 0x0

.field static final FEATURE_MASK_RIGHT_BIT_NO:I = 0x4

.field static final FEATURE_MASK_RIGHT_MASK:I = 0x10

.field static final FEATURE_MASK_RIGHT_OFFSET:I = 0x0

.field static final FEATURE_MASK_ROOT_MENU_BIT_NO:I = 0x9

.field static final FEATURE_MASK_ROOT_MENU_MASK:I = 0x2

.field static final FEATURE_MASK_ROOT_MENU_OFFSET:I = 0x1

.field static final FEATURE_MASK_SEARCH_BIT_NO:I = 0x3c

.field static final FEATURE_MASK_SEARCH_MASK:I = 0x10

.field static final FEATURE_MASK_SEARCH_OFFSET:I = 0x7

.field static final FEATURE_MASK_SEARCH_WH_ADDR_BIT_NO:I = 0x40

.field static final FEATURE_MASK_SEARCH_WH_ADDR_MASK:I = 0x1

.field static final FEATURE_MASK_SEARCH_WH_ADDR_OFFSET:I = 0x8

.field static final FEATURE_MASK_SELECT_BIT_NO:I = 0x0

.field static final FEATURE_MASK_SELECT_MASK:I = 0x1

.field static final FEATURE_MASK_SELECT_OFFSET:I = 0x0

.field static final FEATURE_MASK_SETUP_MENU_BIT_NO:I = 0xa

.field static final FEATURE_MASK_SETUP_MENU_MASK:I = 0x4

.field static final FEATURE_MASK_SETUP_MENU_OFFSET:I = 0x1

.field static final FEATURE_MASK_SOUND_SEL_BIT_NO:I = 0x1e

.field static final FEATURE_MASK_SOUND_SEL_MASK:I = 0x40

.field static final FEATURE_MASK_SOUND_SEL_OFFSET:I = 0x3

.field static final FEATURE_MASK_STOP_BIT_NO:I = 0x29

.field static final FEATURE_MASK_STOP_MASK:I = 0x2

.field static final FEATURE_MASK_STOP_OFFSET:I = 0x5

.field static final FEATURE_MASK_SUBPICTURE_BIT_NO:I = 0x32

.field static final FEATURE_MASK_SUBPICTURE_MASK:I = 0x4

.field static final FEATURE_MASK_SUBPICTURE_OFFSET:I = 0x6

.field static final FEATURE_MASK_UID_PERSIST_BIT_NO:I = 0x42

.field static final FEATURE_MASK_UID_PERSIST_MASK:I = 0x4

.field static final FEATURE_MASK_UID_PERSIST_OFFSET:I = 0x8

.field static final FEATURE_MASK_UID_UNIQUE_BIT_NO:I = 0x3e

.field static final FEATURE_MASK_UID_UNIQUE_MASK:I = 0x40

.field static final FEATURE_MASK_UID_UNIQUE_OFFSET:I = 0x7

.field static final FEATURE_MASK_UP_BIT_NO:I = 0x1

.field static final FEATURE_MASK_UP_MASK:I = 0x2

.field static final FEATURE_MASK_UP_OFFSET:I = 0x0

.field static final FEATURE_MASK_VENDOR_BIT_NO:I = 0x38

.field static final FEATURE_MASK_VENDOR_MASK:I = 0x1

.field static final FEATURE_MASK_VENDOR_OFFSET:I = 0x7

.field static final FEATURE_MASK_VOL_DOWN_BIT_NO:I = 0x26

.field static final FEATURE_MASK_VOL_DOWN_MASK:I = 0x40

.field static final FEATURE_MASK_VOL_DOWN_OFFSET:I = 0x4

.field static final FEATURE_MASK_VOL_UP_BIT_NO:I = 0x25

.field static final FEATURE_MASK_VOL_UP_MASK:I = 0x20

.field static final FEATURE_MASK_VOL_UP_OFFSET:I = 0x4

.field static final FOLDER_ITEM_COUNT_NONE:I = 0xff

.field private static final FOLDER_ITEM_IS_NOT_PLAYABLE:B = 0xct

.field static final FOLDER_TYPE_ALBUMS:B = 0x2t

.field static final FOLDER_TYPE_ARTISTS:B = 0x3t

.field static final FOLDER_TYPE_GENRES:B = 0x4t

.field static final FOLDER_TYPE_MIXED:B = 0x0t

.field static final FOLDER_TYPE_PLAYLISTS:B = 0x5t

.field static final FOLDER_TYPE_TITLES:B = 0x1t

.field static final FOLDER_TYPE_YEARS:B = 0x6t

.field private static final HQM_KEY_COMP_ID:Ljava/lang/String; = "Bluetooth"

.field private static final HQM_KEY_COMP_MANUFACTURE:Ljava/lang/String; = "sec"

.field private static final HQM_KEY_COMP_VER:Ljava/lang/String; = "0.0"

.field private static final HQM_KEY_HIT_TYPE:Ljava/lang/String; = "ph"

.field public static final HQM_KEY_TYPE:I = 0x0

.field private static final INITIAL_REMOTE_VOLUME:I = 0x8

.field private static final INTERNAL_ERROR:B = 0x3t

.field private static final INVALID_DIRECTION:B = 0x7t

.field private static final INVALID_PARAMETER:B = 0x2t

.field private static final INVALID_PLAYER_ID:B = 0x11t

.field private static final INVALID_SCOPE:B = 0xat

.field static final ITEM_FOLDER:B = 0x2t

.field static final ITEM_LENGTH_LENGTH:S = 0x2s

.field static final ITEM_MEDIA_ELEMENT:B = 0x3t

.field static final ITEM_PLAYER:B = 0x1t

.field static final ITEM_TYPE_LENGTH:S = 0x1s

.field private static final JVER_RCSF:Ljava/lang/String; = "1.0"

.field private static final KEY_STATE_PRESS:I = 0x1

.field private static final KEY_STATE_RELEASE:I = 0x0

.field static final MAJOR_PLAYER_TYPE_FIELD_LENGTH:S = 0x1s

.field static final MAJOR_TYPE_AUDIO:B = 0x1t

.field static final MAJOR_TYPE_BC_AUDIO:B = 0x4t

.field static final MAJOR_TYPE_BC_VIDEO:B = 0x8t

.field static final MAJOR_TYPE_INVALID:S = 0xf0s

.field static final MAJOR_TYPE_VIDEO:B = 0x2t

.field private static final MAX_ERROR_RETRY_TIMES:I = 0x3

.field private static final MAX_MULTIPLIER_VALUE:J = 0x8L

.field static final MEDIA_ATTR_ALBUM:I = 0x3

.field static final MEDIA_ATTR_ARTIST:I = 0x2

.field static final MEDIA_ATTR_GENRE:I = 0x6

.field static final MEDIA_ATTR_NUM_TRACKS:I = 0x5

.field static final MEDIA_ATTR_PLAYING_TIME:I = 0x7

.field static final MEDIA_ATTR_TITLE:I = 0x1

.field static final MEDIA_ATTR_TRACK_NUM:I = 0x4

.field private static final MEDIA_ITEM:I = 0x1

.field static final MEDIA_TYPE_AUDIO:B = 0x0t

.field private static final MESSAGE_A2DP_CONNECTION_STATE_CHANGED:I = 0x11

.field private static final MESSAGE_ABS_VOL_TIMEOUT:I = 0x9

.field private static final MESSAGE_ADJUST_VOLUME:I = 0x7

.field private static final MESSAGE_AVRCP_UPDATE_PLAYSTATE_EVT:I = 0x12

.field private static final MESSAGE_CHANGE_PLAY_POS:I = 0xc

.field private static final MESSAGE_FAST_FORWARD_PRESS:I = 0x12d

.field private static final MESSAGE_FAST_FORWARD_RELEASE:I = 0x12e

.field private static final MESSAGE_GET_ELEM_ATTRS:I = 0x3

.field private static final MESSAGE_GET_PLAY_STATUS:I = 0x2

.field private static final MESSAGE_GET_RC_FEATURES:I = 0x1

.field private static final MESSAGE_PLAY_INTERVAL_TIMEOUT:I = 0x5

.field private static final MESSAGE_REGISTER_NOTIFICATION:I = 0x4

.field private static final MESSAGE_REPEAT:I = 0xe

.field private static final MESSAGE_REWIND_PRESS:I = 0x12f

.field private static final MESSAGE_REWIND_RELEASE:I = 0x130

.field private static final MESSAGE_SET_A2DP_AUDIO_STATE:I = 0xd

.field private static final MESSAGE_SET_ABSOLUTE_VOLUME:I = 0x8

.field private static final MESSAGE_SHUFFLE:I = 0xf

.field private static final MESSAGE_VOLUME_CHANGED:I = 0x6

.field private static final MESSAGE_WAIT_SDP_DONE:I = 0x136

.field static final METADATA_KEY_QUEUE_POSITION:Ljava/lang/String; = "com.google.android.music.mediasession.METADATA_KEY_QUEUE_POSITION"

.field static final METADATA_KEY_QUEUE_SIZE:Ljava/lang/String; = "com.google.android.music.mediasession.METADATA_KEY_QUEUE_SIZE"

.field private static final MSG_BROWSING_CHILDREN_LOADED:I = 0xcb

.field private static final MSG_CHECK_NOW_PLAYING_CONTENT_CHANGED:I = 0xcd

.field private static final MSG_CHECK_QUEUE_CHANGED:I = 0xcc

.field private static final MSG_OBSERVE_QUEUE_NOT_CHANGED:I = 0xce

.field private static final MSG_PLAY_ITEM:I = 0xc9

.field private static final MSG_REGISTER_MEDIA_BROWSER:I = 0xdc

.field private static final MSG_REMOVE_PROCESS_PENDING_PLAYSTATE:I = 0xd3

.field private static final MSG_REMOVE_PROCESS_PLAY_ITEM:I = 0xd2

.field private static final MSG_SET_BROWSED_PLAYER_DELAYED:I = 0xe6

.field private static final MSG_SET_METADATA:I = 0x65

.field private static final MSG_UPDATE_PLAYER_SETTING:I = 0x10

.field private static final MSG_UPDATE_STATE:I = 0x64

.field private static final MSG_UPDATE_TRACK_CHANGE:I = 0xca

.field private static final MTU_MARGIN:I = 0x14

.field static final NOTIFICATION_TYPE_CHANGED:I = 0x1

.field static final NOTIFICATION_TYPE_INTERIM:I = 0x0

.field static final NOTIFICATION_TYPE_REJECT:I = 0x2

.field public static final NOWPLAY_LIST:I = 0x0

.field private static final NOW_PLAYING_CONTENT_CHANGED:I = 0x5

.field private static final NO_AVAILABLE_PLAYERS:B = 0x15t

.field private static final NO_VALID_SEARCH_RESULTS:B = 0x14t

.field private static final OPERATION_SUCCESS:B = 0x4t

.field private static final PATH_ALBUMS:Ljava/lang/String; = "ALBUMS"

.field private static final PATH_ARTISTS:Ljava/lang/String; = "ARTISTS"

.field private static final PATH_ROOT:Ljava/lang/String; = "Samsung Mobile Phone 0515"

.field private static final PATH_SONGS:Ljava/lang/String; = "SONGS"

.field private static final PATH_TAIL:Ljava/lang/String; = "Not Browsable Item 2670"

.field private static final PLAYBACK_POSITION_INVALID_FROM_A2DP:J = -0x2L

.field private static final PLAYBACK_POS_CHANGED:I = 0x3

.field private static final PLAYBACK_STATUS_CHANGED:I = 0x1

.field private static final PLAYER_APPLICATION_SETTING_CHANGED:I = 0x4

.field public static final PLAYER_ATTR_EQUALIZER:B = 0x1t

.field public static final PLAYER_ATTR_REPEAT:B = 0x2t

.field public static final PLAYER_ATTR_SCAN:B = 0x4t

.field public static final PLAYER_ATTR_SHUFFLE:B = 0x3t

.field static final PLAYER_ID_FIELD_LENGTH:S = 0x2s

.field private static final PLAYER_NOT_ADDRESSED:B = 0x13t

.field private static final PLAYER_NOT_BROWSABLE:B = 0x12t

.field static final PLAYER_SUBTYPE_FIELD_LENGTH:S = 0x4s

.field static final PLAYSTATUS_ERROR:I = 0xff

.field static final PLAYSTATUS_FWD_SEEK:I = 0x3

.field static final PLAYSTATUS_PAUSED:I = 0x2

.field static final PLAYSTATUS_PLAYING:I = 0x1

.field static final PLAYSTATUS_REV_SEEK:I = 0x4

.field static final PLAYSTATUS_STOPPED:I = 0x0

.field static final PLAY_STATUS_FIELD_LENGTH:S = 0x1s

.field private static POSITION:I = 0x0

.field private static final RANGE_OUT_OF_BOUNDS:B = 0xbt

.field private static final REMOTE_VOLUME:I = 0x9

.field public static final REPEAT_ALL:I = 0x3

.field public static final REPEAT_GROUP:I = 0x4

.field public static final REPEAT_OFF:I = 0x1

.field public static final REPEAT_SINGLE:I = 0x2

.field public static final SCOPE_MEDIA_PLAYER_LIST:B = 0x0t

.field public static final SCOPE_NOW_PLAYING:B = 0x3t

.field static final SCOPE_PLAYER_LIST:I = 0x0

.field public static final SCOPE_SEARCH:B = 0x2t

.field public static final SCOPE_VFS:B = 0x1t

.field private static final SEARCH_MEDIA_ITEM:I = 0x2

.field private static final SEARCH_NOT_SUPPORTED:B = 0xft

.field private static final SET_BROWSED_PLAYER_TIMEOUT:I = 0x1f4

.field public static final SHUFFLE_GROUP:I = 0x3

.field public static final SHUFFLE_OFF:I = 0x1

.field public static final SHUFFLE_ON:I = 0x2

.field private static final SKIP_DOUBLE_INTERVAL:I = 0xbb8

.field private static final SKIP_PERIOD:I = 0x190

.field static final SUB_TYPE_AUDIO_BOOK:I = 0x1

.field static final SUB_TYPE_INVALID:I = 0xfc

.field static final SUB_TYPE_NONE:I = 0x0

.field static final SUB_TYPE_PODCAST:I = 0x2

.field public static final SUPPORTED_REPEAT_ATTR_TXT:[Ljava/lang/String;

.field public static final SUPPORTED_REPEAT_ATTR_VAL:[I

.field public static final SUPPORTED_SHUFFLE_ATTR_TXT:[Ljava/lang/String;

.field public static final SUPPORTED_SHUFFLE_ATTR_VAL:[I

.field private static final TAG:Ljava/lang/String; = "Avrcp"

.field private static final TRACK_CHANGED:I = 0x2

.field static final TRACK_ID_SIZE:I = 0x8

.field private static final UID_ALBUM:J = 0x1L

.field private static final UID_ARTIST:J = 0x3L

.field private static final UID_COUNTER:I = 0x0

.field private static final UID_NOT_EXIST:B = 0x9t

.field private static final UID_PATH_ROOT:J = 0x0L

.field private static final UID_SONGS:J = 0x2L

.field private static final USE_AVC:Z = true

.field private static final USE_MEDIA_BROWSER:Z = true

.field public static final VIRTUAL_LIST:I = 0x1

.field private static currentPath:Ljava/lang/String; = null

.field private static disallowBrowsingCarkitAddr:Ljava/lang/String; = null

.field private static final googlePackageName:Ljava/lang/String; = "com.google.android.music"

.field private static isOldSamsungMusic:Z = false

.field private static isSamsungMediaBrowser:Z = false

.field private static mSearchBrowsing:Z = false

.field private static noOfPlayers:I = 0x0

.field private static playerQueryResult:Z = false

.field private static final samsungPackageName:Ljava/lang/String; = "com.sec.android.app.music"

.field private static final samsungPackageNameChn:Ljava/lang/String; = "com.samsung.android.app.music.chn"

.field private static final tempPackageName:Ljava/lang/String; = "tempPackage"

.field private static tempPlayStatus:I = 0x0

.field private static final videoPackageName:Ljava/lang/String; = "com.samsung.android.video"


# instance fields
.field private browsingMediaPlayer:Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;

.field private currentTimeUpdateState:J

.field private isA2dpPlaying:Z

.field private isChangedAppSettings:Z

.field private mA2dpService:Lcom/android/bluetooth/a2dp/A2dpService;

.field private mAbsVolRetryTimes:I

.field private mAbsVolThreshold:I

.field private mActivatedPackage:Ljava/lang/String;

.field private mActiveSessionListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mAddressedPlayerId:I

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mAudioStreamMax:I

.field private mAutoPlayCarkit:Z

.field mAvrcpHelper:Lcom/android/bluetooth/avrcp/AvrcpHelper;

.field private final mAvrcpReceiver:Landroid/content/BroadcastReceiver;

.field private mBackStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBaseVolume:I

.field private final mBrowseServiceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBrowser:Landroid/media/browse/MediaBrowser;

.field private mBrowserConnected:Z

.field private mBrowsingAddr:[B

.field private mConnectedDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectionCallbacks:Landroid/media/browse/MediaBrowser$ConnectionCallback;

.field private mContext:Landroid/content/Context;

.field private mCurrentA2dpDevice:Landroid/bluetooth/BluetoothDevice;

.field private mCurrentDevice:Ljava/lang/String;

.field private mCurrentPlayState:I

.field private mCurrentPlayer:Ljava/lang/String;

.field private mCurrentPosMs:J

.field public mCurrentScope:B

.field private mDataSet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceEventController:Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

.field private mEarShockSetInProgress:Z

.field private mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

.field private mIsFineVolume:Z

.field private mLastDirection:I

.field private mLastLocalVolume:I

.field private mLastParentId:Ljava/lang/String;

.field private mLastRemoteVolume:I

.field private mLocalVolume:I

.field mMediaBrowser:Lcom/samsung/bt/avrcp/BluetoothMediaBrowser;

.field private mMediaController:Landroid/media/session/MediaController;

.field private mMediaControllerCallbackHandler:Landroid/media/session/MediaController$Callback;

.field private mMediaPlayers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaRunning:Z

.field private mMediaStarted:Z

.field private mMetadata:Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

.field private mNeedUpdatePos:Z

.field private mNeedUpdatingPlayState:Z

.field private mNextPosMs:J

.field mNowPlayingList:[J

.field mNowPlayingMediaElms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mObserver:Landroid/database/ContentObserver;

.field private mPathStack:Ljava/util/Stack;

.field private mPendingPosition:J

.field private mPlayStartTimeMs:J

.field private mPlaybackIntervalMs:J

.field private mPrevPlayStatus:I

.field private mPrevPosMs:J

.field private mPublishedPlayerID:I

.field private mQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoteSuspend:Z

.field private mRepeat:I

.field private mRequestedPlayerId:I

.field private mSearchDataSet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field mSearchMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchString:Ljava/lang/String;

.field private mShuffle:I

.field private mSkipAmount:I

.field private mSkipStartTime:J

.field private mSongLengthMs:J

.field private mStateSeekFWD:Z

.field private mStateSeekREV:Z

.field private final mSubScribeCallback:Landroid/media/browse/MediaBrowser$SubscriptionCallback;

.field private mSupportAction:Lcom/android/bluetooth/avrcp/Avrcp$SupportActionState;

.field private mTempMediaPlayerId:I

.field private mTransportControlFlags:I

.field private mUpdateLocalVolumeInProgress:Z

.field mVirtualFileSystemList:[J

.field private mVolCmdAdjustInProgress:Z

.field private mVolCmdInProgress:Z

.field private mVolCmdSetInProgress:Z

.field private mVolumeMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mVolumeStep:I

.field private prevPlayerID:I

.field private tempMediaPlayer:Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;

.field private thirdPartyMediaPlayer:Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;

.field private trackNumber:[B


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1()I
    .locals 1

    sget v0, Lcom/android/bluetooth/avrcp/Avrcp;->POSITION:I

    return v0
.end method

.method static synthetic -get10(Lcom/android/bluetooth/avrcp/Avrcp;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAutoPlayCarkit:Z

    return v0
.end method

.method static synthetic -get11(Lcom/android/bluetooth/avrcp/Avrcp;)Ljava/util/Stack;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mBackStack:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/bluetooth/avrcp/Avrcp;)I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mBaseVolume:I

    return v0
.end method

.method static synthetic -get13(Lcom/android/bluetooth/avrcp/Avrcp;)Landroid/media/browse/MediaBrowser;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mBrowser:Landroid/media/browse/MediaBrowser;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/bluetooth/avrcp/Avrcp;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mBrowserConnected:Z

    return v0
.end method

.method static synthetic -get15(Lcom/android/bluetooth/avrcp/Avrcp;)[B
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mBrowsingAddr:[B

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/bluetooth/avrcp/Avrcp;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mConnectedDevices:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get17(Lcom/android/bluetooth/avrcp/Avrcp;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get18(Lcom/android/bluetooth/avrcp/Avrcp;)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic -get19(Lcom/android/bluetooth/avrcp/Avrcp;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentDevice:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/bluetooth/avrcp/Avrcp;->currentPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get20(Lcom/android/bluetooth/avrcp/Avrcp;)I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPlayState:I

    return v0
.end method

.method static synthetic -get21(Lcom/android/bluetooth/avrcp/Avrcp;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mDataSet:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get22(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mDeviceEventController:Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    return-object v0
.end method

.method static synthetic -get23(Lcom/android/bluetooth/avrcp/Avrcp;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mEarShockSetInProgress:Z

    return v0
.end method

.method static synthetic -get24(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    return-object v0
.end method

.method static synthetic -get25(Lcom/android/bluetooth/avrcp/Avrcp;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mIsFineVolume:Z

    return v0
.end method

.method static synthetic -get26(Lcom/android/bluetooth/avrcp/Avrcp;)I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mLastDirection:I

    return v0
.end method

.method static synthetic -get27(Lcom/android/bluetooth/avrcp/Avrcp;)I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mLastLocalVolume:I

    return v0
.end method

.method static synthetic -get28(Lcom/android/bluetooth/avrcp/Avrcp;)I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mLastRemoteVolume:I

    return v0
.end method

.method static synthetic -get29(Lcom/android/bluetooth/avrcp/Avrcp;)I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mLocalVolume:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/bluetooth/avrcp/Avrcp;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->currentTimeUpdateState:J

    return-wide v0
.end method

.method static synthetic -get30(Lcom/android/bluetooth/avrcp/Avrcp;)Landroid/media/session/MediaController;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaController:Landroid/media/session/MediaController;

    return-object v0
.end method

.method static synthetic -get31(Lcom/android/bluetooth/avrcp/Avrcp;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaPlayers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get32(Lcom/android/bluetooth/avrcp/Avrcp;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaRunning:Z

    return v0
.end method

.method static synthetic -get33(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$Metadata;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMetadata:Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    return-object v0
.end method

.method static synthetic -get34(Lcom/android/bluetooth/avrcp/Avrcp;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mNeedUpdatingPlayState:Z

    return v0
.end method

.method static synthetic -get35(Lcom/android/bluetooth/avrcp/Avrcp;)Ljava/util/Stack;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPathStack:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic -get36(Lcom/android/bluetooth/avrcp/Avrcp;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPendingPosition:J

    return-wide v0
.end method

.method static synthetic -get37(Lcom/android/bluetooth/avrcp/Avrcp;)I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPrevPlayStatus:I

    return v0
.end method

.method static synthetic -get38(Lcom/android/bluetooth/avrcp/Avrcp;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mRemoteSuspend:Z

    return v0
.end method

.method static synthetic -get39(Lcom/android/bluetooth/avrcp/Avrcp;)I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mRepeat:I

    return v0
.end method

.method static synthetic -get4()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/bluetooth/avrcp/Avrcp;->disallowBrowsingCarkitAddr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get40(Lcom/android/bluetooth/avrcp/Avrcp;)I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mRequestedPlayerId:I

    return v0
.end method

.method static synthetic -get41()Z
    .locals 1

    sget-boolean v0, Lcom/android/bluetooth/avrcp/Avrcp;->mSearchBrowsing:Z

    return v0
.end method

.method static synthetic -get42(Lcom/android/bluetooth/avrcp/Avrcp;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mSearchDataSet:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get43(Lcom/android/bluetooth/avrcp/Avrcp;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mSearchString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get44(Lcom/android/bluetooth/avrcp/Avrcp;)I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mShuffle:I

    return v0
.end method

.method static synthetic -get45(Lcom/android/bluetooth/avrcp/Avrcp;)I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mSkipAmount:I

    return v0
.end method

.method static synthetic -get46(Lcom/android/bluetooth/avrcp/Avrcp;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mSongLengthMs:J

    return-wide v0
.end method

.method static synthetic -get47(Lcom/android/bluetooth/avrcp/Avrcp;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mStateSeekFWD:Z

    return v0
.end method

.method static synthetic -get48(Lcom/android/bluetooth/avrcp/Avrcp;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mStateSeekREV:Z

    return v0
.end method

.method static synthetic -get49(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$SupportActionState;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mSupportAction:Lcom/android/bluetooth/avrcp/Avrcp$SupportActionState;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/bluetooth/avrcp/Avrcp;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->isA2dpPlaying:Z

    return v0
.end method

.method static synthetic -get50(Lcom/android/bluetooth/avrcp/Avrcp;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mVolCmdAdjustInProgress:Z

    return v0
.end method

.method static synthetic -get51(Lcom/android/bluetooth/avrcp/Avrcp;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mVolCmdSetInProgress:Z

    return v0
.end method

.method static synthetic -get6()Z
    .locals 1

    sget-boolean v0, Lcom/android/bluetooth/avrcp/Avrcp;->isOldSamsungMusic:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/bluetooth/avrcp/Avrcp;)I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAbsVolRetryTimes:I

    return v0
.end method

.method static synthetic -get8(Lcom/android/bluetooth/avrcp/Avrcp;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/bluetooth/avrcp/Avrcp;)Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic -set0(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/android/bluetooth/avrcp/Avrcp;->currentPath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic -set1(Lcom/android/bluetooth/avrcp/Avrcp;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->currentTimeUpdateState:J

    return-wide p1
.end method

.method static synthetic -set10(Lcom/android/bluetooth/avrcp/Avrcp;I)I
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mLocalVolume:I

    return p1
.end method

.method static synthetic -set11(Lcom/android/bluetooth/avrcp/Avrcp;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaRunning:Z

    return p1
.end method

.method static synthetic -set12(Lcom/android/bluetooth/avrcp/Avrcp;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mNeedUpdatingPlayState:Z

    return p1
.end method

.method static synthetic -set13(Lcom/android/bluetooth/avrcp/Avrcp;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPendingPosition:J

    return-wide p1
.end method

.method static synthetic -set14(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/bluetooth/avrcp/Avrcp;->mSearchBrowsing:Z

    return p0
.end method

.method static synthetic -set15(Lcom/android/bluetooth/avrcp/Avrcp;I)I
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mSkipAmount:I

    return p1
.end method

.method static synthetic -set16(Lcom/android/bluetooth/avrcp/Avrcp;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mSkipStartTime:J

    return-wide p1
.end method

.method static synthetic -set17(Lcom/android/bluetooth/avrcp/Avrcp;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mStateSeekFWD:Z

    return p1
.end method

.method static synthetic -set18(Lcom/android/bluetooth/avrcp/Avrcp;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mStateSeekREV:Z

    return p1
.end method

.method static synthetic -set19(Lcom/android/bluetooth/avrcp/Avrcp;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mUpdateLocalVolumeInProgress:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/bluetooth/avrcp/Avrcp;I)I
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAbsVolRetryTimes:I

    return p1
.end method

.method static synthetic -set20(Lcom/android/bluetooth/avrcp/Avrcp;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mVolCmdAdjustInProgress:Z

    return p1
.end method

.method static synthetic -set21(Lcom/android/bluetooth/avrcp/Avrcp;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mVolCmdSetInProgress:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/bluetooth/avrcp/Avrcp;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mBrowserConnected:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/bluetooth/avrcp/Avrcp;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentDevice:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set5(Lcom/android/bluetooth/avrcp/Avrcp;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mEarShockSetInProgress:Z

    return p1
.end method

.method static synthetic -set6(Lcom/android/bluetooth/avrcp/Avrcp;I)I
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mLastDirection:I

    return p1
.end method

.method static synthetic -set7(Lcom/android/bluetooth/avrcp/Avrcp;I)I
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mLastLocalVolume:I

    return p1
.end method

.method static synthetic -set8(Lcom/android/bluetooth/avrcp/Avrcp;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mLastParentId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set9(Lcom/android/bluetooth/avrcp/Avrcp;I)I
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mLastRemoteVolume:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/bluetooth/avrcp/Avrcp;[BB[I[Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/bluetooth/avrcp/Avrcp;->getElementAttrRspNative([BB[I[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/bluetooth/avrcp/Avrcp;[BIJJ)Z
    .locals 1

    invoke-direct/range {p0 .. p6}, Lcom/android/bluetooth/avrcp/Avrcp;->getPlayStatusRspNative([BIJJ)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/bluetooth/avrcp/Avrcp;[BII)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/avrcp/Avrcp;->registerNotificationRspPlayStatusNative([BII)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap11(Lcom/android/bluetooth/avrcp/Avrcp;[BIII)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/bluetooth/avrcp/Avrcp;->registerNotificationRspPlayerSettingNative([BIII)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap12(Lcom/android/bluetooth/avrcp/Avrcp;[BI[B)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/avrcp/Avrcp;->registerNotificationRspTrackChangeNative([BI[B)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap13(Lcom/android/bluetooth/avrcp/Avrcp;[BBII)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/bluetooth/avrcp/Avrcp;->searchMediaItemRspNative([BBII)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap14(Lcom/android/bluetooth/avrcp/Avrcp;[BBI)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/avrcp/Avrcp;->setChangePathRspNative([BBI)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap15(Lcom/android/bluetooth/avrcp/Avrcp;[BI)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/avrcp/Avrcp;->setVolumeNative([BI)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap16(Lcom/android/bluetooth/avrcp/Avrcp;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcp/Avrcp;->convertPlayStateToPlayStatus(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap17(Lcom/android/bluetooth/avrcp/Avrcp;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcp/Avrcp;->convertRepeatMode(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap18(Lcom/android/bluetooth/avrcp/Avrcp;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcp/Avrcp;->convertShuffleMode(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap19(Lcom/android/bluetooth/avrcp/Avrcp;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcp/Avrcp;->convertToAudioStreamVolume(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/bluetooth/avrcp/Avrcp;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcp/Avrcp;->isAVCSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap20(Lcom/android/bluetooth/avrcp/Avrcp;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcp/Avrcp;->convertToAvrcpVolume(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap21(Lcom/android/bluetooth/avrcp/Avrcp;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/Avrcp;->getSkipMultiplier()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap22(Lcom/android/bluetooth/avrcp/Avrcp;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/Avrcp;->getActiveStreamDevice()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap23(Lcom/android/bluetooth/avrcp/Avrcp;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcp/Avrcp;->getAttributeString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap24(Lcom/android/bluetooth/avrcp/Avrcp;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcp/Avrcp;->getBigdataString(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap25(Lcom/android/bluetooth/avrcp/Avrcp;)J
    .locals 2

    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/Avrcp;->getPlayPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap26(Lcom/android/bluetooth/avrcp/Avrcp;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcp/Avrcp;->blackListCurrentDevice(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap27(Lcom/android/bluetooth/avrcp/Avrcp;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/Avrcp;->browseBack()V

    return-void
.end method

.method static synthetic -wrap28(Lcom/android/bluetooth/avrcp/Avrcp;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcp/Avrcp;->browseChild(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap29(Lcom/android/bluetooth/avrcp/Avrcp;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/avrcp/Avrcp;->changePositionBy(J)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/bluetooth/avrcp/Avrcp;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/Avrcp;->isBMWCarkitForBrowsing()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap30(Lcom/android/bluetooth/avrcp/Avrcp;[BJJ[BZ)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/android/bluetooth/avrcp/Avrcp;->getFolderItemsMediaPlayerList([BJJ[BZ)V

    return-void
.end method

.method static synthetic -wrap31(Lcom/android/bluetooth/avrcp/Avrcp;[BIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/avrcp/Avrcp;->newApiSetBrowsedPlayer([BIZ)V

    return-void
.end method

.method static synthetic -wrap32(Lcom/android/bluetooth/avrcp/Avrcp;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcp/Avrcp;->notifyVolumeChanged(I)V

    return-void
.end method

.method static synthetic -wrap33(Lcom/android/bluetooth/avrcp/Avrcp;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcp/Avrcp;->pickActiveMediaController(Ljava/util/List;)V

    return-void
.end method

.method static synthetic -wrap34(Lcom/android/bluetooth/avrcp/Avrcp;[BII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/avrcp/Avrcp;->processRegisterNotification([BII)V

    return-void
.end method

.method static synthetic -wrap35(Lcom/android/bluetooth/avrcp/Avrcp;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/Avrcp;->registerMediaPlayers()V

    return-void
.end method

.method static synthetic -wrap36(Lcom/android/bluetooth/avrcp/Avrcp;[BLjava/util/ArrayList;J)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/bluetooth/avrcp/Avrcp;->sendTrackChangedRsp([BLjava/util/ArrayList;J)V

    return-void
.end method

.method static synthetic -wrap37(Lcom/android/bluetooth/avrcp/Avrcp;Landroid/media/session/MediaController;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcp/Avrcp;->setUpMediaController(Landroid/media/session/MediaController;)V

    return-void
.end method

.method static synthetic -wrap38(Lcom/android/bluetooth/avrcp/Avrcp;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/Avrcp;->setupMediaControllerWithMediaBrowser()V

    return-void
.end method

.method static synthetic -wrap39(Lcom/android/bluetooth/avrcp/Avrcp;[BI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/avrcp/Avrcp;->updateA2dpAudioState([BI)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/bluetooth/avrcp/Avrcp;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/Avrcp;->isBrowsingPlayer()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap40(Lcom/android/bluetooth/avrcp/Avrcp;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/avrcp/Avrcp;->updateApplicationSettings(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic -wrap41(Lcom/android/bluetooth/avrcp/Avrcp;[BLandroid/media/MediaMetadata;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/avrcp/Avrcp;->updateMetadata([BLandroid/media/MediaMetadata;)V

    return-void
.end method

.method static synthetic -wrap42(Lcom/android/bluetooth/avrcp/Avrcp;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcp/Avrcp;->updateNowPlayingContentChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap43(Lcom/android/bluetooth/avrcp/Avrcp;[BIJ)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/bluetooth/avrcp/Avrcp;->updatePlayPauseStateFromA2dp([BIJ)V

    return-void
.end method

.method static synthetic -wrap44(Lcom/android/bluetooth/avrcp/Avrcp;[BIJ)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/bluetooth/avrcp/Avrcp;->updatePlayPauseState([BIJ)V

    return-void
.end method

.method static synthetic -wrap45(Lcom/android/bluetooth/avrcp/Avrcp;Landroid/media/session/PlaybackState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcp/Avrcp;->updateSupportedActions(Landroid/media/session/PlaybackState;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/bluetooth/avrcp/Avrcp;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcp/Avrcp;->isBrowsingSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Lcom/android/bluetooth/avrcp/Avrcp;[BII)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/avrcp/Avrcp;->registerNotificationRspAddressedPlayerChangedNative([BII)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap7(Lcom/android/bluetooth/avrcp/Avrcp;[BI)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/avrcp/Avrcp;->registerNotificationRspAvailablePlayersChangedNative([BI)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap8(Lcom/android/bluetooth/avrcp/Avrcp;[BI)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/avrcp/Avrcp;->registerNotificationRspNowPlayingContentChangedNative([BI)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap9(Lcom/android/bluetooth/avrcp/Avrcp;[BIJ)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/bluetooth/avrcp/Avrcp;->registerNotificationRspPlayPosNative([BIJ)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    new-array v0, v4, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/bluetooth/avrcp/Avrcp;->AVRC_SUPPORTED_APP_SETTINGS:[B

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "Repeat"

    aput-object v1, v0, v2

    const-string/jumbo v1, "Off"

    aput-object v1, v0, v3

    const-string/jumbo v1, "Single track"

    aput-object v1, v0, v4

    const-string/jumbo v1, "All tracks"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/bluetooth/avrcp/Avrcp;->SUPPORTED_REPEAT_ATTR_TXT:[Ljava/lang/String;

    filled-new-array {v3, v4, v5}, [I

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/avrcp/Avrcp;->SUPPORTED_REPEAT_ATTR_VAL:[I

    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "Shuffle"

    aput-object v1, v0, v2

    const-string/jumbo v1, "Off"

    aput-object v1, v0, v3

    const-string/jumbo v1, "All tracks"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/bluetooth/avrcp/Avrcp;->SUPPORTED_SHUFFLE_ATTR_TXT:[Ljava/lang/String;

    filled-new-array {v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/avrcp/Avrcp;->SUPPORTED_SHUFFLE_ATTR_VAL:[I

    sput-boolean v2, Lcom/android/bluetooth/avrcp/Avrcp;->isSamsungMediaBrowser:Z

    sput-boolean v2, Lcom/android/bluetooth/avrcp/Avrcp;->isOldSamsungMusic:Z

    sput-boolean v3, Lcom/android/bluetooth/avrcp/Avrcp;->playerQueryResult:Z

    sput v2, Lcom/android/bluetooth/avrcp/Avrcp;->POSITION:I

    sput v2, Lcom/android/bluetooth/avrcp/Avrcp;->tempPlayStatus:I

    sput v2, Lcom/android/bluetooth/avrcp/Avrcp;->noOfPlayers:I

    const/4 v0, 0x0

    sput-object v0, Lcom/android/bluetooth/avrcp/Avrcp;->disallowBrowsingCarkitAddr:Ljava/lang/String;

    invoke-static {}, Lcom/android/bluetooth/avrcp/Avrcp;->classInitNative()V

    return-void

    :array_0
    .array-data 1
        0x2t
        0x3t
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 10

    const/4 v7, -0x1

    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mNeedUpdatePos:Z

    iput-wide v8, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPendingPosition:J

    iput-wide v8, p0, Lcom/android/bluetooth/avrcp/Avrcp;->currentTimeUpdateState:J

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mConnectedDevices:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;-><init>(Lcom/android/bluetooth/avrcp/Avrcp;)V

    iput-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mDeviceEventController:Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    iput-boolean v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mIsFineVolume:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mSearchMap:Ljava/util/HashMap;

    iput-object v6, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mNowPlayingMediaElms:Ljava/util/List;

    iput-byte v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentScope:B

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaPlayers:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mBackStack:Ljava/util/Stack;

    iput-object v6, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mNowPlayingList:[J

    iput-object v6, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mVirtualFileSystemList:[J

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mDataSet:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mSearchDataSet:Ljava/util/List;

    iput-object v6, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mLastParentId:Ljava/lang/String;

    const/4 v1, 0x6

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mBrowsingAddr:[B

    iput-boolean v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mBrowserConnected:Z

    const-string/jumbo v1, "tempPackage"

    iput-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mActivatedPackage:Ljava/lang/String;

    iput v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mTempMediaPlayerId:I

    iput v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mRequestedPlayerId:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mBrowseServiceMap:Ljava/util/HashMap;

    iput-object v6, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mActiveSessionListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mQueue:Ljava/util/List;

    new-instance v1, Lcom/android/bluetooth/avrcp/Avrcp$1;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/avrcp/Avrcp$1;-><init>(Lcom/android/bluetooth/avrcp/Avrcp;)V

    iput-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mSubScribeCallback:Landroid/media/browse/MediaBrowser$SubscriptionCallback;

    new-instance v1, Lcom/android/bluetooth/avrcp/Avrcp$2;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/avrcp/Avrcp$2;-><init>(Lcom/android/bluetooth/avrcp/Avrcp;)V

    iput-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAvrcpReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/bluetooth/avrcp/Avrcp$3;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/bluetooth/avrcp/Avrcp$3;-><init>(Lcom/android/bluetooth/avrcp/Avrcp;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mObserver:Landroid/database/ContentObserver;

    sget-boolean v1, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "Avrcp"

    const-string/jumbo v2, "Avrcp"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v1, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;-><init>(Lcom/android/bluetooth/avrcp/Avrcp;)V

    iput-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMetadata:Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    iput v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPlayState:I

    iput v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAddressedPlayerId:I

    iput v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPublishedPlayerID:I

    iput-wide v8, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPosMs:J

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPlayStartTimeMs:J

    iput-wide v8, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mSongLengthMs:J

    iput-wide v8, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPlaybackIntervalMs:J

    iput v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mLastDirection:I

    iput-boolean v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mVolCmdInProgress:Z

    iput v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAbsVolRetryTimes:I

    iput v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mRepeat:I

    iput v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mShuffle:I

    iput-boolean v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mStateSeekFWD:Z

    iput-boolean v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mStateSeekREV:Z

    const/16 v1, 0xff

    iput v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPrevPlayStatus:I

    iput-object v6, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentDevice:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->isChangedAppSettings:Z

    iput-object v6, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPlayer:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mNeedUpdatingPlayState:Z

    iput-boolean v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mRemoteSuspend:Z

    iput-boolean v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaRunning:Z

    iput-boolean v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaStarted:Z

    iput-object v6, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    iput-boolean v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->isA2dpPlaying:Z

    iput-boolean v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAutoPlayCarkit:Z

    iput-object p1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mContext:Landroid/content/Context;

    iput v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mLastRemoteVolume:I

    iput v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mLastDirection:I

    iput-boolean v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mVolCmdAdjustInProgress:Z

    iput-boolean v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mVolCmdSetInProgress:Z

    iput-boolean v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mUpdateLocalVolumeInProgress:Z

    iput-boolean v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mEarShockSetInProgress:Z

    iput v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAbsVolRetryTimes:I

    iput v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mLocalVolume:I

    iput v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mLastLocalVolume:I

    iput v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAbsVolThreshold:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mVolumeMapping:Ljava/util/HashMap;

    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/Avrcp;->initNative()V

    const-string/jumbo v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    iput v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAudioStreamMax:I

    const/16 v1, 0x9

    iput v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mBaseVolume:I

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->semIsFineVolumeAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAudioStreamMax:I

    mul-int/lit8 v1, v1, 0xa

    iput v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAudioStreamMax:I

    iput-boolean v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mIsFineVolume:Z

    const/16 v1, 0x5a

    iput v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mBaseVolume:I

    :cond_1
    iget v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAudioStreamMax:I

    const/16 v2, 0x7f

    div-int v1, v2, v1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mVolumeStep:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_2

    const v1, 0x7f080004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAbsVolThreshold:I

    :cond_2
    new-instance v1, Lcom/android/bluetooth/avrcp/AvrcpHelper;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/avrcp/AvrcpHelper;-><init>(Lcom/android/bluetooth/avrcp/Avrcp;)V

    iput-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAvrcpHelper:Lcom/android/bluetooth/avrcp/AvrcpHelper;

    new-instance v1, Lcom/samsung/bt/avrcp/BluetoothMediaBrowser;

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAvrcpHelper:Lcom/android/bluetooth/avrcp/AvrcpHelper;

    invoke-direct {v1, v2, p1}, Lcom/samsung/bt/avrcp/BluetoothMediaBrowser;-><init>(Lcom/android/bluetooth/avrcp/AvrcpHelper;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaBrowser:Lcom/samsung/bt/avrcp/BluetoothMediaBrowser;

    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPathStack:Ljava/util/Stack;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private addToNowPlaying(B[BI)V
    .locals 18

    sget-boolean v2, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "Avrcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "addToNowPlaying uid counter:: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "  scope::"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-wide/16 v14, 0x0

    invoke-static/range {p2 .. p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v16

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual/range {v16 .. v16}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v14

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const-string/jumbo v2, "_data"

    const/4 v3, 0x0

    aput-object v2, v4, v3

    const-string/jumbo v17, "is_music=1 and _id=?"

    new-instance v8, Ljava/lang/String;

    long-to-int v2, v14

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x0

    const/4 v10, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v5, "is_music=1 and _id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v8, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    if-nez v10, :cond_2

    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    const/4 v10, 0x0

    :cond_1
    return-void

    :cond_2
    :try_start_1
    sget-boolean v2, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string/jumbo v2, "Avrcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "count = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_4
    const-string/jumbo v2, "_data"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    sget-boolean v2, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v2, :cond_5

    const-string/jumbo v2, "Avrcp"

    const-string/jumbo v3, "_data"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_4

    :cond_6
    if-eqz v12, :cond_8

    const/4 v2, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/bluetooth/avrcp/Avrcp;->setAddToNowPlayingRspNative(B)Z

    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v10, :cond_7

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    const/4 v10, 0x0

    :cond_7
    return-void

    :cond_8
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v10, :cond_9

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :goto_0
    const/4 v10, 0x0

    :cond_9
    const/16 v2, 0x9

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/bluetooth/avrcp/Avrcp;->setAddToNowPlayingRspNative(B)Z

    return-void

    :catch_0
    move-exception v13

    :try_start_3
    const-string/jumbo v2, "Avrcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Catching SecurityException : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v10, :cond_9

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catch_1
    move-exception v9

    :try_start_4
    const-string/jumbo v2, "Avrcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "CursorIndexOutOfBoundsException"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v10, :cond_9

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catch_2
    move-exception v11

    :try_start_5
    const-string/jumbo v2, "Avrcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "CursorWindowAllocationException"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v10, :cond_9

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v2

    if-eqz v10, :cond_a

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    const/4 v10, 0x0

    :cond_a
    throw v2
.end method

.method private blackListCurrentDevice(Ljava/lang/String;)V
    .locals 9

    const/4 v8, 0x0

    const-string/jumbo v5, "Avrcp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "AVC blackListCurrentDevice "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getAddressForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v5, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v4, :cond_0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mDeviceEventController:Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    invoke-virtual {v5, p1, v8}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->getDeviceEvent(Ljava/lang/String;I)I

    move-result v2

    and-int/lit8 v2, v2, -0x3

    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mDeviceEventController:Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    invoke-virtual {v5, v1, v8, v2}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->setDeviceEvent(Ljava/util/ArrayList;II)V

    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, p1, v8}, Landroid/media/AudioManager;->avrcpSupportsAbsoluteVolume(Ljava/lang/String;Z)V

    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "absolute_volume_blacklist"

    invoke-virtual {v5, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v5, 0x1

    invoke-interface {v0, p1, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private browseBack()V
    .locals 4

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "Avrcp"

    const-string/jumbo v3, "browseBack Backstack is empty."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mBrowser:Landroid/media/browse/MediaBrowser;

    if-nez v2, :cond_1

    const-string/jumbo v2, "Avrcp"

    const-string/jumbo v3, "browseBack There are no connected browser."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaPlayers:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaPlayers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const-string/jumbo v2, "Avrcp"

    const-string/jumbo v3, "browseBack No mediaPlayers"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mLastParentId:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mBrowser:Landroid/media/browse/MediaBrowser;

    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mLastParentId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/media/browse/MediaBrowser;->unsubscribe(Ljava/lang/String;)V

    :cond_4
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_5

    const-string/jumbo v2, "Avrcp"

    const-string/jumbo v3, "browseBack parentId is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    iput-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mLastParentId:Ljava/lang/String;

    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mBrowser:Landroid/media/browse/MediaBrowser;

    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mSubScribeCallback:Landroid/media/browse/MediaBrowser$SubscriptionCallback;

    invoke-virtual {v2, v1, v3}, Landroid/media/browse/MediaBrowser;->subscribe(Ljava/lang/String;Landroid/media/browse/MediaBrowser$SubscriptionCallback;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "Avrcp"

    const-string/jumbo v3, "Catching ArrayIndexOutOfBoundsException : "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private browseChild(Ljava/lang/String;)V
    .locals 4

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mBrowser:Landroid/media/browse/MediaBrowser;

    if-nez v1, :cond_0

    const-string/jumbo v1, "Avrcp"

    const-string/jumbo v2, "browseChild There are no connected browser."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string/jumbo v1, "Avrcp"

    const-string/jumbo v2, "browseChild id is null. please check it"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaPlayers:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaPlayers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const-string/jumbo v1, "Avrcp"

    const-string/jumbo v2, "browseChild No mediaPlayers"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const-string/jumbo v1, "Avrcp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "browseChild "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mLastParentId:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mBackStack:Ljava/util/Stack;

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mLastParentId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mBrowser:Landroid/media/browse/MediaBrowser;

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mLastParentId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/media/browse/MediaBrowser;->unsubscribe(Ljava/lang/String;)V

    :cond_4
    iput-object p1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mLastParentId:Ljava/lang/String;

    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mBrowser:Landroid/media/browse/MediaBrowser;

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mSubScribeCallback:Landroid/media/browse/MediaBrowser$SubscriptionCallback;

    invoke-virtual {v1, p1, v2}, Landroid/media/browse/MediaBrowser;->subscribe(Ljava/lang/String;Landroid/media/browse/MediaBrowser$SubscriptionCallback;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Avrcp"

    const-string/jumbo v2, "Catching ArrayIndexOutOfBoundsException : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private changePath([BIB[B)V
    .locals 1

    sget-boolean v0, Lcom/android/bluetooth/avrcp/Avrcp;->isOldSamsungMusic:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/bluetooth/avrcp/Avrcp;->oldApiChangePath([BIB[B)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/bluetooth/avrcp/Avrcp;->newApiChangePath([BIB[B)V

    goto :goto_0
.end method

.method private changePositionBy(J)V
    .locals 9

    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/Avrcp;->getPlayPosition()J

    move-result-wide v0

    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    add-long v4, v0, p1

    const-wide/16 v6, 0x0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    sget-boolean v4, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string/jumbo v4, "Avrcp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "newPosMs = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v4}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Landroid/media/session/MediaController$TransportControls;->seekTo(J)V

    :cond_2
    return-void
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNative()V
.end method

.method private composeBrowsingServiceCandidate(Landroid/content/Context;)V
    .locals 8

    const-string/jumbo v5, "Avrcp"

    const-string/jumbo v6, "Compose Browsing Service Candidate"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v6, "android.media.browse.MediaBrowserService"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mBrowseServiceMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    const-string/jumbo v5, "Avrcp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ResolveInfo info "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mBrowseServiceMap:Ljava/util/HashMap;

    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v3}, Lcom/android/bluetooth/avrcp/Avrcp;->isSamsungNativePlayer(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/bluetooth/avrcp/Avrcp;->isSamsungMediaBrowser:Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private convertPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "no player"

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v1, "com.sec.android.app.music"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string/jumbo v0, "SM"

    :goto_0
    return-object v0

    :cond_2
    const-string/jumbo v1, "com.samsung.android.app.music.chn"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "com.google.android.music"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v0, "GM"

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "com.samsung.android.video"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v0, "VP"

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "tempPackage"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v0, "TP"

    goto :goto_0

    :cond_5
    const-string/jumbo v0, "others"

    goto :goto_0
.end method

.method private convertPlayStateToPlayStatus(I)I
    .locals 1

    const/16 v0, 0xff

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_6
    const/16 v0, 0xff

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private convertRepeatMode(I)I
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, -0x1

    return v0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    const/4 v0, 0x1

    return v0

    :pswitch_2
    const/4 v0, 0x2

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private convertShuffleMode(I)I
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, -0x1

    return v0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private convertToAudioStreamVolume(I)I
    .locals 4

    int-to-double v0, p1

    iget v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAudioStreamMax:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    const-wide v2, 0x405fc00000000000L    # 127.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method private convertToAvrcpVolume(I)I
    .locals 4

    int-to-double v0, p1

    const-wide v2, 0x405fc00000000000L    # 127.0

    mul-double/2addr v0, v2

    iget v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAudioStreamMax:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method private createAndConnectWithMediaBrowser(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    const-string/jumbo v3, "Avrcp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Create And Connect with Media Browser for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mBrowseServiceMap:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_0

    const-string/jumbo v3, "Avrcp"

    const-string/jumbo v4, "this selected package did not support media browsing"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p2, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/media/browse/MediaBrowser;

    iget-object v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mConnectionCallbacks:Landroid/media/browse/MediaBrowser$ConnectionCallback;

    invoke-direct {v3, p1, v1, v4, v6}, Landroid/media/browse/MediaBrowser;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/media/browse/MediaBrowser$ConnectionCallback;Landroid/os/Bundle;)V

    iput-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mBrowser:Landroid/media/browse/MediaBrowser;

    const-string/jumbo v3, "Avrcp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Connect the Media Browser :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mBrowser:Landroid/media/browse/MediaBrowser;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mBrowserConnected:Z

    :try_start_0
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mBrowser:Landroid/media/browse/MediaBrowser;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mBrowser:Landroid/media/browse/MediaBrowser;

    invoke-virtual {v3}, Landroid/media/browse/MediaBrowser;->connect()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "Avrcp"

    const-string/jumbo v4, "Catching IllegalArgumentException : "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private disallowBrowsingCarkit(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3

    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getIOPDeviceList()Lcom/android/bluetooth/btservice/AdapterService$checkAddrForIOP;

    move-result-object v0

    sget-boolean v1, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "Avrcp"

    const-string/jumbo v2, "Check disallowBrowsingCarkit "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    const/4 v1, 0x5

    invoke-virtual {v0, p1, v1}, Lcom/android/bluetooth/btservice/AdapterService$checkAddrForIOP;->isBlacklistDevice(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "Avrcp"

    const-string/jumbo v2, "carkit not allowed browsing player"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x1

    return v1

    :cond_2
    sget-boolean v1, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "Avrcp"

    const-string/jumbo v2, "disallowBrowsingCarkit, device or IopDevice is Null!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v1, 0x0

    return v1
.end method

.method private expectNowPlayingListUpdate()Z
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mNowPlayingList:[J

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mNowPlayingMediaElms:Ljava/util/List;

    if-nez v5, :cond_1

    :cond_0
    const-string/jumbo v5, "Avrcp"

    const-string/jumbo v6, " mNowPlayingList is Null"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_1
    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mNowPlayingMediaElms:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMetadata:Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    invoke-virtual {v5}, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->getHashCode()J

    move-result-wide v2

    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mNowPlayingMediaElms:Ljava/util/List;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->getHashCode()J

    move-result-wide v6

    cmp-long v5, v6, v2

    if-nez v5, :cond_4

    sget-boolean v5, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v5, :cond_3

    const-string/jumbo v5, "Avrcp"

    const-string/jumbo v6, " Found mMetadata match in now playing list"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v8

    :cond_4
    if-nez v0, :cond_2

    const-string/jumbo v5, "Avrcp"

    const-string/jumbo v6, "MediaElement is null."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    sget-boolean v5, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v5, :cond_6

    const-string/jumbo v5, "Avrcp"

    const-string/jumbo v6, " mMetadata could not be found in now playing list"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return v9
.end method

.method private fakeItemAttributesUsingMetadata([BJB[I)V
    .locals 18

    const-string/jumbo v2, "Avrcp"

    const-string/jumbo v3, "fakeItemAttributesUsingMetadata"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    const/4 v2, 0x1

    new-array v6, v2, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v2, v6, v3

    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "Not Available"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v2, v7, v3

    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-ltz v2, :cond_0

    const-wide/16 v2, 0x1

    cmp-long v2, p2, v2

    if-lez v2, :cond_1

    :cond_0
    const-string/jumbo v2, "Avrcp"

    const-string/jumbo v3, "only one item is supported"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x9

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/bluetooth/avrcp/Avrcp;->setGetItemAttributesRspNative([BBB[I[Ljava/lang/String;)Z

    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mMetadata:Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->-get4(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;)J

    move-result-wide v2

    const-wide/16 v8, 0x0

    cmp-long v2, v2, v8

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mMetadata:Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->-get5(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "Avrcp"

    const-string/jumbo v3, "metadata is not ready"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x9

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/bluetooth/avrcp/Avrcp;->setGetItemAttributesRspNative([BBB[I[Ljava/lang/String;)Z

    return-void

    :cond_2
    move/from16 v0, p4

    new-array v13, v0, [Ljava/lang/String;

    move/from16 v0, p4

    new-array v15, v0, [I

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    const/16 v16, 0x0

    :goto_0
    move/from16 v0, v16

    move/from16 v1, p4

    if-ge v0, v1, :cond_3

    aget v2, p5, v16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    new-array v0, v2, [I

    move-object/from16 v17, v0

    const/16 v16, 0x0

    :goto_1
    move/from16 v0, v16

    move/from16 v1, p4

    if-ge v0, v1, :cond_4

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v15, v16

    aget v2, v15, v16

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/bluetooth/avrcp/Avrcp;->getAttributeString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v13, v16

    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    :cond_4
    const/4 v10, 0x4

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v11, p4

    move-object/from16 v12, p5

    invoke-direct/range {v8 .. v13}, Lcom/android/bluetooth/avrcp/Avrcp;->setGetItemAttributesRspNative([BBB[I[Ljava/lang/String;)Z

    return-void
.end method

.method private fakeNowPlayingListUsingMetadata([BJJI[BB[I)V
    .locals 28

    const-string/jumbo v2, "Avrcp"

    const-string/jumbo v3, "fakeNowPlayingUsingMetadata"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    new-array v8, v2, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v2, v8, v3

    const/4 v6, 0x0

    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-lez v2, :cond_0

    const-string/jumbo v2, "Avrcp"

    const-string/jumbo v3, "only one item is supported"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0xb

    const/4 v5, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v7, p7

    invoke-direct/range {v2 .. v8}, Lcom/android/bluetooth/avrcp/Avrcp;->getFolderItemsRspNative([BBII[B[I)Z

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mMetadata:Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->-get4(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mMetadata:Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->-get5(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "Avrcp"

    const-string/jumbo v3, "metadata is not ready"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x15

    const/4 v5, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v7, p7

    invoke-direct/range {v2 .. v8}, Lcom/android/bluetooth/avrcp/Avrcp;->getFolderItemsRspNative([BBII[B[I)Z

    return-void

    :cond_1
    move/from16 v0, p8

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    move/from16 v0, p8

    new-array v0, v0, [I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/16 v27, 0x0

    :goto_0
    move/from16 v0, v27

    move/from16 v1, p8

    if-ge v0, v1, :cond_2

    aget v2, p9, v27

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v27, v27, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    new-array v0, v2, [I

    move-object/from16 v24, v0

    const/16 v27, 0x0

    :goto_1
    move/from16 v0, v27

    move/from16 v1, p8

    if-ge v0, v1, :cond_3

    move/from16 v0, v27

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v25, v27

    aget v2, v25, v27

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/bluetooth/avrcp/Avrcp;->getAttributeString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v17, v27

    add-int/lit8 v27, v27, 0x1

    goto :goto_1

    :cond_3
    new-instance v10, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mMetadata:Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->-get4(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;)J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mMetadata:Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->-get5(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v11, p0

    move/from16 v15, p8

    move-object/from16 v16, p9

    invoke-direct/range {v10 .. v17}, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;-><init>(Lcom/android/bluetooth/avrcp/Avrcp;JLjava/lang/String;B[I[Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->getEntryLength()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    move/from16 v0, p6

    if-ge v2, v0, :cond_4

    invoke-virtual {v10}, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->getEntryLength()I

    move-result v2

    const/4 v3, 0x0

    aput v2, v24, v3

    invoke-virtual {v10}, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->retrieveMediaItemEntry()[B

    move-result-object p7

    :cond_4
    const/16 v20, 0x4

    const/16 v21, 0x0

    const/16 v22, 0x1

    move-object/from16 v18, p0

    move-object/from16 v19, p1

    move-object/from16 v23, p7

    invoke-direct/range {v18 .. v24}, Lcom/android/bluetooth/avrcp/Avrcp;->getFolderItemsRspNative([BBII[B[I)Z

    return-void
.end method

.method private fastForward([BI)V
    .locals 5

    const/4 v0, 0x0

    const/4 v3, 0x1

    if-ne p2, v3, :cond_0

    const/16 v0, 0x12d

    :goto_0
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, p2, v4}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "BdAddress"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-virtual {v2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    invoke-virtual {v3, v2}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    const/16 v0, 0x12e

    goto :goto_0
.end method

.method private findMediaItemAttrVal(IJB[I)[Ljava/lang/String;
    .locals 10

    const-string/jumbo v0, "Not Available"

    const/4 v3, 0x0

    const/4 v8, 0x1

    if-ne p1, v8, :cond_0

    const-wide/16 v8, 0x1

    sub-long v8, p2, v8

    invoke-virtual {p0, v8, v9}, Lcom/android/bluetooth/avrcp/Avrcp;->getItem(J)Landroid/media/browse/MediaBrowser$MediaItem;

    move-result-object v6

    :goto_0
    if-eqz p4, :cond_3

    new-array v3, p4, [Ljava/lang/String;

    const/4 v4, 0x0

    :goto_1
    if-ge v4, p4, :cond_3

    aget v8, p5, v4

    packed-switch v8, :pswitch_data_0

    const-string/jumbo v8, "Avrcp"

    const-string/jumbo v9, "Invalid attrIds"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    iget-object v8, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mSearchDataSet:Ljava/util/List;

    long-to-int v9, p2

    add-int/lit8 v9, v9, -0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/browse/MediaBrowser$MediaItem;

    goto :goto_0

    :pswitch_0
    invoke-virtual {v6}, Landroid/media/browse/MediaBrowser$MediaItem;->getDescription()Landroid/media/MediaDescription;

    move-result-object v8

    invoke-virtual {v8}, Landroid/media/MediaDescription;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1

    move-object v7, v0

    :cond_1
    aput-object v7, v3, v4

    goto :goto_2

    :pswitch_1
    const/4 v2, 0x0

    move-object v2, v0

    aput-object v2, v3, v4

    goto :goto_2

    :pswitch_2
    const/4 v1, 0x0

    move-object v1, v0

    aput-object v1, v3, v4

    goto :goto_2

    :pswitch_3
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    move-object v5, v0

    :cond_2
    aput-object v5, v3, v4

    goto :goto_2

    :pswitch_4
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/Avrcp;->getItems()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v4

    goto :goto_2

    :pswitch_5
    aput-object v0, v3, v4

    goto :goto_2

    :pswitch_6
    aput-object v0, v3, v4

    goto :goto_2

    :cond_3
    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private findNPLMediaItemAttrVal(JB[I)[Ljava/lang/String;
    .locals 21

    const-string/jumbo v4, "Not Available"

    const/4 v7, 0x0

    const-wide/16 v18, 0x1

    sub-long v18, p1, v18

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/bluetooth/avrcp/Avrcp;->getNPLItem(J)Landroid/media/session/MediaSession$QueueItem;

    move-result-object v15

    invoke-virtual {v15}, Landroid/media/session/MediaSession$QueueItem;->getDescription()Landroid/media/MediaDescription;

    move-result-object v9

    invoke-virtual {v9}, Landroid/media/MediaDescription;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const/16 v16, 0x0

    if-eqz v8, :cond_0

    const-string/jumbo v18, "com.google.android.music.mediasession.music_metadata"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v16

    check-cast v16, Landroid/media/MediaMetadata;

    :cond_0
    if-eqz p3, :cond_b

    move/from16 v0, p3

    new-array v7, v0, [Ljava/lang/String;

    const/4 v13, 0x0

    :goto_0
    move/from16 v0, p3

    if-ge v13, v0, :cond_b

    aget v18, p4, v13

    packed-switch v18, :pswitch_data_0

    const-string/jumbo v18, "Avrcp"

    const-string/jumbo v19, "Invalid attrIds"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :pswitch_0
    invoke-virtual {v9}, Landroid/media/MediaDescription;->getTitle()Ljava/lang/CharSequence;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_1

    move-object/from16 v17, v4

    :cond_1
    aput-object v17, v7, v13

    goto :goto_1

    :pswitch_1
    const/4 v6, 0x0

    if-eqz v16, :cond_2

    const-string/jumbo v18, "android.media.metadata.ARTIST"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_2
    if-nez v6, :cond_3

    move-object v6, v4

    :cond_3
    aput-object v6, v7, v13

    goto :goto_1

    :pswitch_2
    const/4 v5, 0x0

    if-eqz v16, :cond_4

    const-string/jumbo v18, "android.media.metadata.ALBUM"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_4
    if-nez v5, :cond_5

    move-object v5, v4

    :cond_5
    aput-object v5, v7, v13

    goto :goto_1

    :pswitch_3
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_6

    move-object v14, v4

    :cond_6
    aput-object v14, v7, v13

    goto :goto_1

    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/avrcp/Avrcp;->getNPLItems()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v7, v13

    goto :goto_1

    :pswitch_5
    const/4 v12, 0x0

    if-eqz v16, :cond_7

    const-string/jumbo v18, "android.media.metadata.GENRE"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    :cond_7
    if-nez v12, :cond_8

    move-object v12, v4

    :cond_8
    aput-object v12, v7, v13

    goto :goto_1

    :pswitch_6
    const-wide/16 v10, -0x1

    if-eqz v16, :cond_9

    const-string/jumbo v18, "android.media.metadata.DURATION"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    :cond_9
    const-wide/16 v18, 0x0

    cmp-long v18, v10, v18

    if-gtz v18, :cond_a

    aput-object v4, v7, v13

    goto :goto_1

    :cond_a
    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v7, v13

    goto/16 :goto_1

    :cond_b
    return-object v7

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private getActivatedController(Ljava/util/List;)Landroid/media/session/MediaController;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaController;",
            ">;)",
            "Landroid/media/session/MediaController;"
        }
    .end annotation

    const/4 v12, 0x0

    const-string/jumbo v7, "Avrcp"

    const-string/jumbo v8, "Get the active Media Controller "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7}, Landroid/media/AudioManager;->isMultiSoundOn()Z

    move-result v7

    if-eqz v7, :cond_4

    const-string/jumbo v7, "Avrcp"

    const-string/jumbo v8, "MultiSound is running"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/session/MediaController;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getFlags()J

    move-result-wide v8

    const-wide/32 v10, 0x20000000

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-eqz v7, :cond_0

    sget-boolean v7, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v7, :cond_1

    const-string/jumbo v7, "Avrcp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "pkg : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v1

    :cond_2
    sget-boolean v7, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v7, :cond_3

    const-string/jumbo v7, "Avrcp"

    const-string/jumbo v8, "no active controller during MultiSound"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v12

    :cond_4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/session/MediaController;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    const-string/jumbo v7, "name : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v6, :cond_8

    invoke-virtual {v6}, Landroid/media/session/PlaybackState;->getState()I

    move-result v4

    const-string/jumbo v7, " play state : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x3

    if-eq v4, v7, :cond_6

    const/4 v7, 0x6

    if-ne v4, v7, :cond_7

    :cond_6
    const-string/jumbo v7, "Avrcp"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_7
    const/16 v7, 0x8

    if-eq v4, v7, :cond_6

    :goto_1
    const-string/jumbo v7, "\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v7, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v7, :cond_5

    const-string/jumbo v7, "Avrcp"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_8
    const-string/jumbo v7, " play state : is null "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_9
    return-object v12
.end method

.method private getActiveStreamDevice()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mA2dpService:Lcom/android/bluetooth/a2dp/A2dpService;

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpService;->getA2dpService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mA2dpService:Lcom/android/bluetooth/a2dp/A2dpService;

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mA2dpService:Lcom/android/bluetooth/a2dp/A2dpService;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mA2dpService:Lcom/android/bluetooth/a2dp/A2dpService;

    invoke-virtual {v2}, Lcom/android/bluetooth/a2dp/A2dpService;->getActiveStreamDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mA2dpService:Lcom/android/bluetooth/a2dp/A2dpService;

    invoke-virtual {v2}, Lcom/android/bluetooth/a2dp/A2dpService;->getActiveStreamDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "Avrcp"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getAttributeString(I)Ljava/lang/String;
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/Avrcp;->isBMWCarkit()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/avrcp/Avrcp;->isBrowsingSupported(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_0
    :goto_0
    packed-switch p1, :pswitch_data_0

    :cond_1
    :goto_1
    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    :cond_2
    sget-boolean v2, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string/jumbo v2, "Avrcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getAttributeString:attrId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " str="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v1

    :cond_4
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMetadata:Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    invoke-static {v2, v4, v5}, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->-set4(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;J)J

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMetadata:Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    invoke-static {v2, v4, v5}, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->-set3(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;J)J

    goto :goto_0

    :pswitch_0
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMetadata:Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->-get5(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :pswitch_1
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMetadata:Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->-get1(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :pswitch_2
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMetadata:Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->-get0(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :pswitch_3
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMetadata:Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->-get4(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;)J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMetadata:Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->-get4(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    :cond_5
    sget-boolean v2, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "Avrcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " MEDIA_ATTR_NUM_TRACKS mMetadata.trackNum : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMetadata:Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->-get4(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_4
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMetadata:Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->-get3(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;)J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMetadata:Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->-get3(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    :cond_6
    sget-boolean v2, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "Avrcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " MEDIA_ATTR_NUM_TRACKS :attrStr="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " totalNum="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMetadata:Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->-get3(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_5
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMetadata:Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->-get2(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :pswitch_6
    iget-wide v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mSongLengthMs:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    iget-wide v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mSongLengthMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private getBigdataString(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 8

    const/4 v7, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mDeviceEventController:Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v7}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->getDeviceEvent(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v1

    :goto_0
    const-string/jumbo v5, "\"JVER\":\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "1.0\","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\"FEATURE\":\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\"OUI\":\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\"COD\":\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\"NAME\":\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, -0x1

    if-eq v1, v5, :cond_2

    and-int/lit16 v5, v1, 0x1f00

    const/16 v6, 0x400

    if-ne v5, v6, :cond_2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_0
    const/4 v1, -0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string/jumbo v5, "PersonalDevice\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private getElementAttr([BB[I)V
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_0

    aget v4, p3, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p2, v6, v0}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const-string/jumbo v4, "BdAddress"

    invoke-virtual {v1, v4, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-virtual {v3, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    invoke-virtual {v4, v3}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private native getElementAttrRspNative([BB[I[Ljava/lang/String;)Z
.end method

.method private getFolderItems([BBJJIB[I)V
    .locals 29

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-byte v0, v1, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentScope:B

    const/16 v2, 0x1000

    move/from16 v0, p7

    if-ge v0, v2, :cond_1

    add-int/lit8 v24, p7, -0x14

    :goto_0
    sget-boolean v2, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "Avrcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getFolderItems scope:: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "Start "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " end "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p5

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " mtu_size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move/from16 v0, v24

    new-array v7, v0, [B

    const/4 v6, 0x0

    const/4 v2, 0x1

    new-array v8, v2, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v2, v8, v3

    const/16 v17, 0x0

    const/4 v9, 0x0

    :goto_1
    const/4 v2, 0x6

    if-ge v9, v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mBrowsingAddr:[B

    aget-byte v3, p1, v9

    aput-byte v3, v2, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    const/16 v24, 0xfec

    goto :goto_0

    :cond_2
    cmp-long v2, p5, p3

    if-ltz v2, :cond_3

    const-wide/16 v2, 0x0

    cmp-long v2, p5, v2

    if-gez v2, :cond_4

    :cond_3
    const-string/jumbo v2, "Avrcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "wrong index:: start= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", end= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p5

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0xb

    const/4 v5, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/bluetooth/avrcp/Avrcp;->getFolderItemsRspNative([BBII[B[I)Z

    return-void

    :cond_4
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-ltz v2, :cond_3

    packed-switch p2, :pswitch_data_0

    const/16 v4, 0xa

    const/4 v5, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/bluetooth/avrcp/Avrcp;->getFolderItemsRspNative([BBII[B[I)Z

    :goto_2
    return-void

    :pswitch_0
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-wide/from16 v12, p3

    move-wide/from16 v14, p5

    move-object/from16 v16, v7

    invoke-direct/range {v10 .. v17}, Lcom/android/bluetooth/avrcp/Avrcp;->getFolderItemsMediaPlayerList([BJJ[BZ)V

    goto :goto_2

    :pswitch_1
    move-object/from16 v18, p0

    move-object/from16 v19, p1

    move-wide/from16 v20, p3

    move-wide/from16 v22, p5

    move-object/from16 v25, v7

    move/from16 v26, p8

    move-object/from16 v27, p9

    invoke-direct/range {v18 .. v27}, Lcom/android/bluetooth/avrcp/Avrcp;->getFolderItemsVirtualFileSystem([BJJI[BB[I)V

    goto :goto_2

    :pswitch_2
    move-object/from16 v18, p0

    move-object/from16 v19, p1

    move-wide/from16 v20, p3

    move-wide/from16 v22, p5

    move-object/from16 v25, v7

    move/from16 v26, p8

    move-object/from16 v27, p9

    invoke-direct/range {v18 .. v27}, Lcom/android/bluetooth/avrcp/Avrcp;->getFolderItemsSearch([BJJI[BB[I)V

    goto :goto_2

    :pswitch_3
    move-object/from16 v18, p0

    move-object/from16 v19, p1

    move-wide/from16 v20, p3

    move-wide/from16 v22, p5

    move-object/from16 v25, v7

    move/from16 v26, p8

    move-object/from16 v27, p9

    invoke-direct/range {v18 .. v27}, Lcom/android/bluetooth/avrcp/Avrcp;->getFolderItemsNowPlaying([BJJI[BB[I)V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getFolderItemsMediaPlayerList([BJJ[BZ)V
    .locals 26

    const/16 v4, 0x20

    new-array v0, v4, [I

    move-object/from16 v17, v0

    const/4 v15, 0x0

    const/4 v8, 0x0

    const/16 v18, 0x0

    const/4 v4, 0x1

    new-array v10, v4, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v4, v10, v5

    sget-boolean v4, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "Avrcp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "activated package : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mActivatedPackage:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", Total noOfPlayers: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/bluetooth/avrcp/Avrcp;->noOfPlayers:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->isBrowsingSupported(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz p7, :cond_1

    const-string/jumbo v4, "Avrcp"

    const-string/jumbo v5, "Response with error becasue of browsing not supported"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v6, 0x15

    const/4 v7, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v9, p6

    invoke-direct/range {v4 .. v10}, Lcom/android/bluetooth/avrcp/Avrcp;->getFolderItemsRspNative([BBII[B[I)Z

    return-void

    :cond_0
    const-string/jumbo v4, "Avrcp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "activated package : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mActivatedPackage:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/bluetooth/avrcp/Avrcp;->convertPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", Total noOfPlayers: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/bluetooth/avrcp/Avrcp;->noOfPlayers:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string/jumbo v4, "Avrcp"

    const-string/jumbo v5, "Wait SDP"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v19, Landroid/os/Bundle;

    invoke-direct/range {v19 .. v19}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v4, "Start"

    move-object/from16 v0, v19

    move-wide/from16 v1, p2

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v4, "End"

    move-object/from16 v0, v19

    move-wide/from16 v1, p4

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v4, "FolderItems"

    move-object/from16 v0, v19

    move-object/from16 v1, p6

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string/jumbo v4, "BdAddress"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    const/16 v5, 0x136

    invoke-virtual {v4, v5}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    const-wide/16 v6, 0x64

    move-object/from16 v0, v22

    invoke-virtual {v4, v0, v6, v7}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_2
    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-lez v4, :cond_3

    const/16 v6, 0xb

    const/4 v7, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v9, p6

    invoke-direct/range {v4 .. v10}, Lcom/android/bluetooth/avrcp/Avrcp;->getFolderItemsRspNative([BBII[B[I)Z

    return-void

    :cond_3
    sget-boolean v4, Lcom/android/bluetooth/avrcp/Avrcp;->playerQueryResult:Z

    if-nez v4, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/avrcp/Avrcp;->retryMediaPlayerQuery()V

    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaPlayers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaPlayers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :cond_5
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;

    sget-boolean v4, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v4, :cond_6

    const-string/jumbo v4, "Avrcp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Player= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v20 .. v20}, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->getPlayerPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", id= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v20 .. v20}, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->getPlayerId()S

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-virtual/range {v20 .. v20}, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->GetPlayerPublishability()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual/range {v20 .. v20}, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->RetrievePlayerItemEntry()[B

    move-result-object v23

    invoke-virtual/range {v20 .. v20}, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->RetrievePlayerEntryLength()I

    move-result v21

    const/4 v4, 0x0

    const/4 v15, 0x1

    aput v21, v17, v4

    const/16 v18, 0x0

    :goto_2
    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_7

    add-int/lit8 v4, v18, 0x0

    aget-byte v5, v23, v18

    aput-byte v5, p6, v4

    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    :cond_6
    const-string/jumbo v4, "Avrcp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Player= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v20 .. v20}, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->getPlayerPackageName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/bluetooth/avrcp/Avrcp;->convertPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", id= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v20 .. v20}, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->getPlayerId()S

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_7
    add-int/lit8 v24, v21, 0x0

    :cond_8
    const-string/jumbo v4, "Avrcp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Number of available MediaPlayers = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x4

    const/4 v14, 0x0

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v16, p6

    invoke-direct/range {v11 .. v17}, Lcom/android/bluetooth/avrcp/Avrcp;->getFolderItemsRspNative([BBII[B[I)Z

    :goto_3
    return-void

    :cond_9
    const-string/jumbo v4, "Avrcp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Number of available MediaPlayers = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v6, 0x15

    const/4 v7, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v9, p6

    invoke-direct/range {v4 .. v10}, Lcom/android/bluetooth/avrcp/Avrcp;->getFolderItemsRspNative([BBII[B[I)Z

    goto :goto_3
.end method

.method private getFolderItemsNowPlaying([BJJI[BB[I)V
    .locals 2

    sget-boolean v0, Lcom/android/bluetooth/avrcp/Avrcp;->isOldSamsungMusic:Z

    if-eqz v0, :cond_0

    invoke-direct/range {p0 .. p9}, Lcom/android/bluetooth/avrcp/Avrcp;->oldApiGetFolderItemsNowPlaying([BJJI[BB[I)V

    :goto_0
    return-void

    :cond_0
    invoke-direct/range {p0 .. p9}, Lcom/android/bluetooth/avrcp/Avrcp;->newApiGetFolderItemsNowPlaying([BJJI[BB[I)V

    goto :goto_0
.end method

.method private native getFolderItemsRspNative([BBII[B[I)Z
.end method

.method private getFolderItemsSearch([BJJI[BB[I)V
    .locals 2

    sget-boolean v0, Lcom/android/bluetooth/avrcp/Avrcp;->isOldSamsungMusic:Z

    if-eqz v0, :cond_0

    invoke-direct/range {p0 .. p9}, Lcom/android/bluetooth/avrcp/Avrcp;->oldApiGetFolderItemsSearch([BJJI[BB[I)V

    :goto_0
    return-void

    :cond_0
    invoke-direct/range {p0 .. p9}, Lcom/android/bluetooth/avrcp/Avrcp;->newApiGetFolderItemsSearch([BJJI[BB[I)V

    goto :goto_0
.end method

.method private getFolderItemsVirtualFileSystem([BJJI[BB[I)V
    .locals 2

    sget-boolean v0, Lcom/android/bluetooth/avrcp/Avrcp;->isOldSamsungMusic:Z

    if-eqz v0, :cond_0

    invoke-direct/range {p0 .. p9}, Lcom/android/bluetooth/avrcp/Avrcp;->oldApiGetFolderItemsVirtualFileSystem([BJJI[BB[I)V

    :goto_0
    return-void

    :cond_0
    invoke-direct/range {p0 .. p9}, Lcom/android/bluetooth/avrcp/Avrcp;->newApiGetFolderItemsVirtualFileSystem([BJJI[BB[I)V

    goto :goto_0
.end method

.method private getItemAttributes([BBJIB[I)V
    .locals 1

    sget-boolean v0, Lcom/android/bluetooth/avrcp/Avrcp;->isOldSamsungMusic:Z

    if-eqz v0, :cond_0

    invoke-direct/range {p0 .. p7}, Lcom/android/bluetooth/avrcp/Avrcp;->oldApiGetItemAttributes([BBJIB[I)V

    :goto_0
    return-void

    :cond_0
    invoke-direct/range {p0 .. p7}, Lcom/android/bluetooth/avrcp/Avrcp;->newApiGetItemAttributes([BBJIB[I)V

    goto :goto_0
.end method

.method private getMdLong(Landroid/os/Bundle;I)J
    .locals 2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private getMdString(Landroid/os/Bundle;I)Ljava/lang/String;
    .locals 1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getOtherDeviceAddr(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mConnectedDevices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    return-object v5

    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mConnectedDevices:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    return-object v0

    :cond_2
    return-object v5
.end method

.method private getPlayPosition()J
    .locals 6

    const-wide/16 v0, -0x1

    iget-wide v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPosMs:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPlayState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mNeedUpdatePos:Z

    if-eqz v2, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPlayStartTimeMs:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPosMs:J

    add-long v0, v2, v4

    :cond_0
    :goto_0
    sget-boolean v2, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "Avrcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "position="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-wide v0

    :cond_2
    iget-wide v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPosMs:J

    goto :goto_0
.end method

.method private getPlayStatus([B)V
    .locals 4

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "BdAddress"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    invoke-virtual {v2, v1}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private native getPlayStatusRspNative([BIJJ)Z
.end method

.method private getRcFeatures([BI)V
    .locals 5

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p2, v4, v2}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private getSkipMultiplier()I
    .locals 10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    iget-wide v6, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mSkipStartTime:J

    sub-long v6, v0, v6

    const-wide/16 v8, 0xbb8

    div-long/2addr v6, v8

    long-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-long v2, v4

    iget-object v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPlayer:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPlayer:Ljava/lang/String;

    const-string/jumbo v5, "com.sec.android.app.videoplayer"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-boolean v4, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "Avrcp"

    const-string/jumbo v5, "seek speed change for videoplayer"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-wide/16 v4, 0x40

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    return v4

    :cond_1
    const-wide/16 v4, 0x8

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    return v4
.end method

.method private handlePassthroughCmd([BII)V
    .locals 0

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, p1, p3}, Lcom/android/bluetooth/avrcp/Avrcp;->rewind([BI)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1, p3}, Lcom/android/bluetooth/avrcp/Avrcp;->fastForward([BI)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x48
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private ignorePlayStatusFromA2dp()Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getIOPDeviceList()Lcom/android/bluetooth/btservice/AdapterService$checkAddrForIOP;

    move-result-object v3

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mConnectedDevices:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_2

    if-eqz v3, :cond_2

    const/4 v4, 0x7

    invoke-virtual {v3, v1, v4}, Lcom/android/bluetooth/btservice/AdapterService$checkAddrForIOP;->isBlacklistDevice(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    sget-boolean v4, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string/jumbo v4, "Avrcp"

    const-string/jumbo v5, "ignore play status from a2dp"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0

    :cond_2
    sget-boolean v4, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "Avrcp"

    const-string/jumbo v5, "device or IopDevice is Null!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    return-object v6
.end method

.method private native initNative()V
.end method

.method private initializeMediaController()V
    .locals 7

    :try_start_0
    const-string/jumbo v4, "Avrcp"

    const-string/jumbo v5, "Initialize Media Controller"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "media_session"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/session/MediaSessionManager;

    const-string/jumbo v4, "Avrcp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Get the Context Package Name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mActiveSessionListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    invoke-virtual {v3, v4, v0}, Landroid/media/session/MediaSessionManager;->addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;)V

    invoke-virtual {v3, v0}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v1

    const-string/jumbo v4, "Avrcp"

    const-string/jumbo v5, "getActiveSessions"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Lcom/android/bluetooth/avrcp/Avrcp;->pickActiveMediaController(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    const-string/jumbo v4, "Avrcp"

    const-string/jumbo v5, "Initialization of Media Controller failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isAVCSupported(Ljava/lang/String;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "bluetooth_avc_mode"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz p1, :cond_0

    if-nez v1, :cond_1

    :cond_0
    return v5

    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mA2dpService:Lcom/android/bluetooth/a2dp/A2dpService;

    if-nez v2, :cond_2

    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpService;->getA2dpService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mA2dpService:Lcom/android/bluetooth/a2dp/A2dpService;

    :cond_2
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mA2dpService:Lcom/android/bluetooth/a2dp/A2dpService;

    if-eqz v2, :cond_4

    sget-boolean v2, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string/jumbo v2, "Avrcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isAVCSupported DualPlayMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mA2dpService:Lcom/android/bluetooth/a2dp/A2dpService;

    invoke-virtual {v4}, Lcom/android/bluetooth/a2dp/A2dpService;->isDualPlayEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", device: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getAddressForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mA2dpService:Lcom/android/bluetooth/a2dp/A2dpService;

    invoke-virtual {v2}, Lcom/android/bluetooth/a2dp/A2dpService;->isDualPlayEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    return v5

    :cond_4
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mDeviceEventController:Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    const/16 v3, 0x8

    invoke-virtual {v2, p1, v3}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->getDeviceEvent(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_5

    const-string/jumbo v2, "Avrcp"

    const-string/jumbo v3, "isAVCSupported - not updated initial remote volume"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_5
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mDeviceEventController:Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    const/4 v3, 0x2

    invoke-virtual {v2, p1, v5, v3}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->compareEventFlag(Ljava/lang/String;II)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_7

    sget-boolean v2, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v2, :cond_6

    const-string/jumbo v2, "Avrcp"

    const-string/jumbo v3, "isAVCSupported true"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return v6

    :cond_7
    return v5
.end method

.method private isAVCSupportedRegardlessDualPlay(Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "bluetooth_avc_mode"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz p1, :cond_0

    if-nez v1, :cond_1

    :cond_0
    return v4

    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mDeviceEventController:Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    const/16 v3, 0x8

    invoke-virtual {v2, p1, v3}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->getDeviceEvent(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    const-string/jumbo v2, "Avrcp"

    const-string/jumbo v3, "isAVCSupportedRegardlessDualPlay - not updated initial remote volume"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_2
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mDeviceEventController:Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    const/4 v3, 0x2

    invoke-virtual {v2, p1, v4, v3}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->compareEventFlag(Ljava/lang/String;II)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    sget-boolean v2, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string/jumbo v2, "Avrcp"

    const-string/jumbo v3, "isAVCSupportedRegardlessDualPlay true"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v5

    :cond_4
    return v4
.end method

.method private isAutoPlayCarkit(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "VW Phone"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "VW PHONE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "00:17:CA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "48:A9:D2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    sget-boolean v1, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "Avrcp"

    const-string/jumbo v2, "connected device is AutoPlayCarkit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isBMWCarkit()Ljava/lang/String;
    .locals 8

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getIOPDeviceList()Lcom/android/bluetooth/btservice/AdapterService$checkAddrForIOP;

    move-result-object v3

    const/4 v0, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mConnectedDevices:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_2

    if-eqz v3, :cond_2

    const/4 v5, 0x6

    invoke-virtual {v3, v1, v5}, Lcom/android/bluetooth/btservice/AdapterService$checkAddrForIOP;->isBlacklistDevice(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-boolean v5, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string/jumbo v5, "Avrcp"

    const-string/jumbo v6, "Work around to handle carkit error"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    sget-boolean v5, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string/jumbo v5, "Avrcp"

    const-string/jumbo v6, "device or IopDevice is Null!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    return-object v7
.end method

.method private isBMWCarkitForBrowsing()Z
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/avrcp/Avrcp;->isBrowsingSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentDevice:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentDevice:Ljava/lang/String;

    const-string/jumbo v1, "00:0A:08"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentDevice:Ljava/lang/String;

    const-string/jumbo v1, "00:0E:9F"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentDevice:Ljava/lang/String;

    const-string/jumbo v1, "9C:DF:03"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    sget-boolean v0, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "Avrcp"

    const-string/jumbo v1, "WA for browsing error by address"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private isBrowsingPlayer()Z
    .locals 2

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mActivatedPackage:Ljava/lang/String;

    const-string/jumbo v1, "com.google.android.music"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mActivatedPackage:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/bluetooth/avrcp/Avrcp;->isSamsungNativePlayer(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isBrowsingSupported(Ljava/lang/String;)Z
    .locals 9

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x0

    if-nez p1, :cond_3

    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mConnectedDevices:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mDeviceEventController:Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    invoke-virtual {v5, v0, v8}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->getDeviceEvent(Ljava/lang/String;I)I

    move-result v4

    sget-boolean v5, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string/jumbo v5, "Avrcp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "remote mFeatures is : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", mBtAddr: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    and-int/lit8 v5, v4, 0x4

    if-eqz v5, :cond_0

    const/4 v3, 0x1

    :cond_2
    :goto_0
    return v3

    :cond_3
    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mDeviceEventController:Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    invoke-virtual {v5, p1, v8}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->getDeviceEvent(Ljava/lang/String;I)I

    move-result v4

    sget-boolean v5, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v5, :cond_4

    const-string/jumbo v5, "Avrcp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "remote mFeatures is : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", mBtAddr: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    and-int/lit8 v5, v4, 0x4

    if-eqz v5, :cond_2

    const/4 v3, 0x1

    goto :goto_0
.end method

.method private isPlayingState(I)Z
    .locals 1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isSamsungNativePlayer(Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v1

    :cond_0
    const-string/jumbo v0, "com.sec.android.app.music"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "com.samsung.android.app.music.chn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method public static make(Landroid/content/Context;)Lcom/android/bluetooth/avrcp/Avrcp;
    .locals 3

    sget-boolean v1, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "Avrcp"

    const-string/jumbo v2, "make"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/avrcp/Avrcp;-><init>(Landroid/content/Context;)V

    invoke-direct {v0}, Lcom/android/bluetooth/avrcp/Avrcp;->start()V

    return-object v0
.end method

.method private modifyRcFeatureFromBlacklist(ILjava/lang/String;)I
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "absolute_volume_blacklist"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return p1

    :cond_0
    invoke-interface {v0, p2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    and-int/lit8 p1, p1, -0x3

    :cond_1
    return p1
.end method

.method private newApiChangePath([BIB[B)V
    .locals 11

    sget-boolean v8, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v8, :cond_0

    const-string/jumbo v8, "Avrcp"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "changePath uid counter:: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "  direction::"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-wide/16 v4, 0x0

    const/4 v7, 0x0

    invoke-static {p4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    sget-object v8, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    sget-boolean v8, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v8, :cond_1

    const-string/jumbo v8, "Avrcp"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Received folder uid "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v8, 0x6

    if-ge v1, v8, :cond_2

    iget-object v8, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mBrowsingAddr:[B

    aget-byte v9, p1, v1

    aput-byte v9, v8, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    sput-boolean v8, Lcom/android/bluetooth/avrcp/Avrcp;->mSearchBrowsing:Z

    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/Avrcp;->isBrowsingPlayer()Z

    move-result v8

    if-eqz v8, :cond_4

    iget-boolean v8, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mBrowserConnected:Z

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPathStack:Ljava/util/Stack;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPathStack:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->empty()Z

    move-result v8

    if-eqz v8, :cond_5

    :cond_3
    const-string/jumbo v8, "Avrcp"

    const-string/jumbo v9, "Invalid direction"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x7

    invoke-direct {p0, p1, v8, v7}, Lcom/android/bluetooth/avrcp/Avrcp;->setChangePathRspNative([BBI)Z

    return-void

    :cond_4
    const-string/jumbo v8, "Avrcp"

    const-string/jumbo v9, "activated player does not support browsing"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v8, 0x15

    invoke-direct {p0, p1, v8, v7}, Lcom/android/bluetooth/avrcp/Avrcp;->setChangePathRspNative([BBI)Z

    return-void

    :cond_5
    const/4 v8, 0x1

    if-ne p3, v8, :cond_c

    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-lez v8, :cond_6

    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/Avrcp;->getItems()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    int-to-long v8, v8

    cmp-long v8, v4, v8

    if-lez v8, :cond_7

    :cond_6
    const/16 v8, 0x9

    invoke-direct {p0, p1, v8, v7}, Lcom/android/bluetooth/avrcp/Avrcp;->setChangePathRspNative([BBI)Z

    return-void

    :cond_7
    const-wide/16 v8, 0x1

    sub-long v8, v4, v8

    invoke-virtual {p0, v8, v9}, Lcom/android/bluetooth/avrcp/Avrcp;->getItem(J)Landroid/media/browse/MediaBrowser$MediaItem;

    move-result-object v2

    sget-boolean v8, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v8, :cond_8

    const-string/jumbo v8, "Avrcp"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Item is browsable "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Landroid/media/browse/MediaBrowser$MediaItem;->isBrowsable()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-virtual {v2}, Landroid/media/browse/MediaBrowser$MediaItem;->isBrowsable()Z

    move-result v8

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPathStack:Ljava/util/Stack;

    invoke-virtual {v2}, Landroid/media/browse/MediaBrowser$MediaItem;->getDescription()Landroid/media/MediaDescription;

    move-result-object v9

    invoke-virtual {v9}, Landroid/media/MediaDescription;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/media/browse/MediaBrowser$MediaItem;->getMediaId()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/bluetooth/avrcp/Avrcp;->browseChild(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_9
    sget-boolean v8, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v8, :cond_a

    const-string/jumbo v8, "Avrcp"

    const-string/jumbo v9, "Item is not browsable"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget-object v8, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPathStack:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v8, "Not Browsable Item 2670"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    iget-object v8, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPathStack:Ljava/util/Stack;

    const-string/jumbo v9, "Not Browsable Item 2670"

    invoke-virtual {v8, v9}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    const/4 v8, 0x7

    invoke-direct {p0, p1, v8, v7}, Lcom/android/bluetooth/avrcp/Avrcp;->setChangePathRspNative([BBI)Z

    return-void

    :cond_c
    if-nez p3, :cond_e

    iget-object v8, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPathStack:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v8, "Samsung Mobile Phone 0515"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    const-string/jumbo v8, "Avrcp"

    const-string/jumbo v9, "Invalid up direction"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x7

    invoke-direct {p0, p1, v8, v7}, Lcom/android/bluetooth/avrcp/Avrcp;->setChangePathRspNative([BBI)Z

    return-void

    :cond_d
    iget-object v8, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPathStack:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/Avrcp;->browseBack()V

    goto :goto_1

    :cond_e
    const-string/jumbo v8, "Avrcp"

    const-string/jumbo v9, "Invalid direction"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x7

    invoke-direct {p0, p1, v8, v7}, Lcom/android/bluetooth/avrcp/Avrcp;->setChangePathRspNative([BBI)Z

    return-void
.end method

.method private newApiGetFolderItemsNowPlaying([BJJI[BB[I)V
    .locals 40

    const/4 v4, 0x1

    new-array v10, v4, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v4, v10, v5

    const/4 v8, 0x0

    const/16 v27, 0x0

    const/16 v36, 0x0

    const/16 v24, 0x0

    move/from16 v11, p6

    sub-long v4, p4, p2

    const-wide/16 v6, 0x1

    add-long v38, v4, v6

    new-instance v31, Ljava/util/ArrayList;

    move-wide/from16 v0, v38

    long-to-int v4, v0

    move-object/from16 v0, v31

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    sget-object v4, Lcom/android/bluetooth/avrcp/Avrcp;->disallowBrowsingCarkitAddr:Ljava/lang/String;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/bluetooth/avrcp/Avrcp;->disallowBrowsingCarkitAddr:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct/range {p0 .. p9}, Lcom/android/bluetooth/avrcp/Avrcp;->fakeNowPlayingListUsingMetadata([BJJI[BB[I)V

    return-void

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/avrcp/Avrcp;->isBrowsingPlayer()Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "Avrcp"

    const-string/jumbo v5, "activated player does not support browsing"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v6, 0x15

    const/4 v7, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v9, p7

    invoke-direct/range {v4 .. v10}, Lcom/android/bluetooth/avrcp/Avrcp;->getFolderItemsRspNative([BBII[B[I)Z

    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/avrcp/Avrcp;->getNPLItems()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/avrcp/Avrcp;->getNPLItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    int-to-long v4, v4

    cmp-long v4, p2, v4

    if-ltz v4, :cond_2

    const-string/jumbo v4, "Avrcp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "start index is greater than available entries of npl : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/avrcp/Avrcp;->getNPLItems()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v6, 0xb

    const/4 v7, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v9, p7

    invoke-direct/range {v4 .. v10}, Lcom/android/bluetooth/avrcp/Avrcp;->getFolderItemsRspNative([BBII[B[I)Z

    return-void

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/avrcp/Avrcp;->getNPLItems()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/avrcp/Avrcp;->getNPLItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_8

    sget-boolean v4, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v4, :cond_3

    const-string/jumbo v4, "Avrcp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "no of NPLItems is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/avrcp/Avrcp;->getNPLItems()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-wide/16 v28, 0x0

    :goto_0
    sub-long v4, p4, p2

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    cmp-long v4, v28, v4

    if-gez v4, :cond_4

    add-long v4, v28, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/avrcp/Avrcp;->getNPLItems()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_7

    :cond_4
    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v4

    new-array v0, v4, [I

    move-object/from16 v26, v0

    invoke-interface/range {v31 .. v31}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v35

    :cond_5
    :goto_1
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    move-object/from16 v30, v34

    check-cast v30, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;

    invoke-virtual/range {v30 .. v30}, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->getEntryLength()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    if-ge v4, v11, :cond_a

    sget-boolean v4, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v4, :cond_6

    const-string/jumbo v4, "Avrcp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Adding item "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    add-int/lit8 v33, v24, 0x1

    invoke-virtual/range {v30 .. v30}, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->getEntryLength()I

    move-result v4

    aput v4, v26, v24

    invoke-virtual/range {v30 .. v30}, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->retrieveMediaItemEntry()[B

    move-result-object v32

    const/16 v27, 0x0

    :goto_2
    move-object/from16 v0, v32

    array-length v4, v0

    move/from16 v0, v27

    if-ge v0, v4, :cond_9

    add-int v4, v36, v27

    aget-byte v5, v32, v27

    aput-byte v5, p7, v4

    add-int/lit8 v27, v27, 0x1

    goto :goto_2

    :cond_7
    const-wide/16 v4, 0x1

    add-long v4, v4, v28

    add-long v14, v4, p2

    add-long v4, v28, p2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/bluetooth/avrcp/Avrcp;->getNPLItem(J)Landroid/media/session/MediaSession$QueueItem;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/session/MediaSession$QueueItem;->getDescription()Landroid/media/MediaDescription;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaDescription;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v16

    move/from16 v0, p8

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, p8

    move-object/from16 v2, p9

    invoke-direct {v0, v14, v15, v1, v2}, Lcom/android/bluetooth/avrcp/Avrcp;->findNPLMediaItemAttrVal(JB[I)[Ljava/lang/String;

    move-result-object v19

    new-instance v12, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;

    move-object/from16 v13, p0

    move/from16 v17, p8

    move-object/from16 v18, p9

    invoke-direct/range {v12 .. v19}, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;-><init>(Lcom/android/bluetooth/avrcp/Avrcp;JLjava/lang/String;B[I[Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 v4, 0x1

    add-long v28, v28, v4

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v4, "Avrcp"

    const-string/jumbo v5, "no valid search results"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v6, 0x14

    const/4 v7, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v9, p7

    invoke-direct/range {v4 .. v10}, Lcom/android/bluetooth/avrcp/Avrcp;->getFolderItemsRspNative([BBII[B[I)Z

    return-void

    :cond_9
    move-object/from16 v0, v32

    array-length v4, v0

    add-int v36, v36, v4

    move-object/from16 v0, v32

    array-length v4, v0

    add-int/lit8 v4, v4, 0x2

    sub-int/2addr v11, v4

    move/from16 v24, v33

    goto/16 :goto_1

    :cond_a
    sget-boolean v4, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v4, :cond_5

    const-string/jumbo v4, "Avrcp"

    const-string/jumbo v5, "no available space"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_b
    const/16 v22, 0x4

    const/16 v23, 0x0

    move-object/from16 v20, p0

    move-object/from16 v21, p1

    move-object/from16 v25, p7

    invoke-direct/range {v20 .. v26}, Lcom/android/bluetooth/avrcp/Avrcp;->getFolderItemsRspNative([BBII[B[I)Z

    return-void
.end method

.method private newApiGetFolderItemsSearch([BJJI[BB[I)V
    .locals 38

    const/4 v2, 0x1

    new-array v8, v2, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v2, v8, v3

    const/4 v6, 0x0

    const/16 v25, 0x0

    const/16 v35, 0x0

    const/16 v22, 0x0

    move/from16 v9, p6

    sub-long v2, p4, p2

    const-wide/16 v4, 0x1

    add-long v36, v2, v4

    new-instance v31, Ljava/util/ArrayList;

    move-wide/from16 v0, v36

    long-to-int v2, v0

    move-object/from16 v0, v31

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/avrcp/Avrcp;->isBrowsingPlayer()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mBrowserConnected:Z

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mSearchDataSet:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, p2, v2

    if-ltz v2, :cond_1

    const/16 v4, 0xb

    const/4 v5, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v7, p7

    invoke-direct/range {v2 .. v8}, Lcom/android/bluetooth/avrcp/Avrcp;->getFolderItemsRspNative([BBII[B[I)Z

    return-void

    :cond_0
    const-string/jumbo v2, "Avrcp"

    const-string/jumbo v3, "activated player does not support browsing"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x15

    const/4 v5, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v7, p7

    invoke-direct/range {v2 .. v8}, Lcom/android/bluetooth/avrcp/Avrcp;->getFolderItemsRspNative([BBII[B[I)Z

    return-void

    :cond_1
    const-wide/16 v28, 0x0

    :goto_0
    sub-long v2, p4, p2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    cmp-long v2, v28, v2

    if-gez v2, :cond_2

    add-long v2, v28, p2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mSearchDataSet:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_4

    :cond_2
    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v2

    new-array v0, v2, [I

    move-object/from16 v24, v0

    invoke-interface/range {v31 .. v31}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v34

    :goto_1
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    move-object/from16 v27, v33

    check-cast v27, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;

    invoke-virtual/range {v27 .. v27}, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->getEntryLength()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    if-ge v2, v9, :cond_6

    sget-boolean v2, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string/jumbo v2, "Avrcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Adding item "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    add-int/lit8 v32, v22, 0x1

    invoke-virtual/range {v27 .. v27}, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->getEntryLength()I

    move-result v2

    aput v2, v24, v22

    invoke-virtual/range {v27 .. v27}, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->retrieveMediaItemEntry()[B

    move-result-object v30

    const/16 v25, 0x0

    :goto_2
    move-object/from16 v0, v30

    array-length v2, v0

    move/from16 v0, v25

    if-ge v0, v2, :cond_5

    add-int v2, v35, v25

    aget-byte v3, v30, v25

    aput-byte v3, p7, v2

    add-int/lit8 v25, v25, 0x1

    goto :goto_2

    :cond_4
    const-wide/16 v2, 0x1

    add-long v2, v2, v28

    add-long v12, v2, p2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mSearchDataSet:Ljava/util/List;

    add-long v4, v28, p2

    long-to-int v3, v4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/browse/MediaBrowser$MediaItem;

    invoke-virtual {v2}, Landroid/media/browse/MediaBrowser$MediaItem;->getDescription()Landroid/media/MediaDescription;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaDescription;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v26

    move/from16 v0, p8

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/4 v11, 0x2

    move-object/from16 v10, p0

    move/from16 v14, p8

    move-object/from16 v15, p9

    invoke-direct/range {v10 .. v15}, Lcom/android/bluetooth/avrcp/Avrcp;->findMediaItemAttrVal(IJB[I)[Ljava/lang/String;

    move-result-object v17

    new-instance v10, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;

    move-object/from16 v11, p0

    move-object/from16 v14, v26

    move/from16 v15, p8

    move-object/from16 v16, p9

    invoke-direct/range {v10 .. v17}, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;-><init>(Lcom/android/bluetooth/avrcp/Avrcp;JLjava/lang/String;B[I[Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 v2, 0x1

    add-long v28, v28, v2

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, v30

    array-length v2, v0

    add-int v35, v35, v2

    move-object/from16 v0, v30

    array-length v2, v0

    add-int/lit8 v2, v2, 0x2

    sub-int/2addr v9, v2

    move/from16 v22, v32

    goto/16 :goto_1

    :cond_6
    sget-boolean v2, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v2, :cond_7

    const-string/jumbo v2, "Avrcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Filled number of searched items "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const/16 v20, 0x4

    const/16 v21, 0x0

    move-object/from16 v18, p0

    move-object/from16 v19, p1

    move-object/from16 v23, p7

    invoke-direct/range {v18 .. v24}, Lcom/android/bluetooth/avrcp/Avrcp;->getFolderItemsRspNative([BBII[B[I)Z

    return-void
.end method

.method private newApiGetFolderItemsVirtualFileSystem([BJJI[BB[I)V
    .locals 60

    const/4 v2, 0x1

    new-array v8, v2, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v2, v8, v3

    const/4 v6, 0x0

    const/16 v43, 0x0

    const/16 v57, 0x0

    const/4 v13, 0x0

    sub-long v2, p4, p2

    const-wide/16 v4, 0x1

    add-long v58, v2, v4

    move/from16 v42, p6

    const/16 v47, 0x0

    const/16 v53, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/avrcp/Avrcp;->isBrowsingPlayer()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mBrowserConnected:Z

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mPathStack:Ljava/util/Stack;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mPathStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->empty()Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mPathStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sput-object v2, Lcom/android/bluetooth/avrcp/Avrcp;->currentPath:Ljava/lang/String;

    sget-boolean v2, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "Avrcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Currentpath is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/bluetooth/avrcp/Avrcp;->currentPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/avrcp/Avrcp;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, p2, v2

    if-ltz v2, :cond_2

    const-string/jumbo v2, "Avrcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "start index is greater than available entries of vfs : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/avrcp/Avrcp;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    new-array v15, v2, [I

    const/16 v11, 0xb

    const/4 v12, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v14, p7

    invoke-direct/range {v9 .. v15}, Lcom/android/bluetooth/avrcp/Avrcp;->getFolderItemsRspNative([BBII[B[I)Z

    return-void

    :cond_1
    const-string/jumbo v2, "Avrcp"

    const-string/jumbo v3, "activated player does not support browsing"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x15

    const/4 v5, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v7, p7

    invoke-direct/range {v2 .. v8}, Lcom/android/bluetooth/avrcp/Avrcp;->getFolderItemsRspNative([BBII[B[I)Z

    return-void

    :cond_2
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/bluetooth/avrcp/Avrcp;->getItem(J)Landroid/media/browse/MediaBrowser$MediaItem;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/browse/MediaBrowser$MediaItem;->isBrowsable()Z

    move-result v50

    sget-boolean v2, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string/jumbo v2, "Avrcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Browsable is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v50

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz v50, :cond_6

    new-instance v47, Ljava/util/ArrayList;

    move-wide/from16 v0, v58

    long-to-int v2, v0

    move-object/from16 v0, v47

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    const-wide/16 v48, 0x0

    :goto_1
    sub-long v2, p4, p2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    cmp-long v2, v48, v2

    if-gez v2, :cond_4

    add-long v2, v48, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/avrcp/Avrcp;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_7

    :cond_4
    if-eqz v50, :cond_10

    invoke-interface/range {v47 .. v47}, Ljava/util/List;->size()I

    move-result v2

    new-array v0, v2, [I

    move-object/from16 v34, v0

    invoke-interface/range {v47 .. v47}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v56

    :goto_2
    invoke-interface/range {v56 .. v56}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface/range {v56 .. v56}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v55

    move-object/from16 v45, v55

    check-cast v45, Lcom/android/bluetooth/avrcp/Avrcp$Folder;

    invoke-virtual/range {v45 .. v45}, Lcom/android/bluetooth/avrcp/Avrcp$Folder;->getEntryLength()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    move/from16 v0, v42

    if-ge v2, v0, :cond_e

    sget-boolean v2, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v2, :cond_5

    const-string/jumbo v2, "Avrcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Adding item "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    add-int/lit8 v54, v13, 0x1

    invoke-virtual/range {v45 .. v45}, Lcom/android/bluetooth/avrcp/Avrcp$Folder;->getEntryLength()I

    move-result v2

    aput v2, v34, v13

    invoke-virtual/range {v45 .. v45}, Lcom/android/bluetooth/avrcp/Avrcp$Folder;->retrieveFolderItemEntry()[B

    move-result-object v46

    const/16 v43, 0x0

    :goto_3
    move-object/from16 v0, v46

    array-length v2, v0

    move/from16 v0, v43

    if-ge v0, v2, :cond_d

    add-int v2, v57, v43

    aget-byte v3, v46, v43

    aput-byte v3, p7, v2

    add-int/lit8 v43, v43, 0x1

    goto :goto_3

    :cond_6
    new-instance v53, Ljava/util/ArrayList;

    move-wide/from16 v0, v58

    long-to-int v2, v0

    move-object/from16 v0, v53

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    goto/16 :goto_0

    :cond_7
    const-wide/16 v2, 0x1

    add-long v2, v2, v48

    add-long v16, v2, p2

    add-long v2, v48, p2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/bluetooth/avrcp/Avrcp;->getItem(J)Landroid/media/browse/MediaBrowser$MediaItem;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/browse/MediaBrowser$MediaItem;->getDescription()Landroid/media/MediaDescription;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaDescription;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    if-eqz v50, :cond_c

    add-long v2, v48, p2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/bluetooth/avrcp/Avrcp;->getItem(J)Landroid/media/browse/MediaBrowser$MediaItem;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/browse/MediaBrowser$MediaItem;->getDescription()Landroid/media/MediaDescription;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaDescription;->getExtras()Landroid/os/Bundle;

    move-result-object v44

    const/16 v18, 0x5

    if-eqz v44, :cond_8

    const-string/jumbo v2, "com.google.android.music.browse.bt_folder_type_hint"

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    int-to-byte v0, v2

    move/from16 v18, v0

    :cond_8
    sget-boolean v2, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v2, :cond_9

    const-string/jumbo v2, "Avrcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "folderType is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    if-ltz v18, :cond_a

    const/4 v2, 0x6

    move/from16 v0, v18

    if-le v0, v2, :cond_b

    :cond_a
    const/16 v18, 0x5

    :cond_b
    new-instance v14, Lcom/android/bluetooth/avrcp/Avrcp$Folder;

    move-object/from16 v15, p0

    invoke-direct/range {v14 .. v19}, Lcom/android/bluetooth/avrcp/Avrcp$Folder;-><init>(Lcom/android/bluetooth/avrcp/Avrcp;JBLjava/lang/String;)V

    move-object/from16 v0, v47

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    const-wide/16 v2, 0x1

    add-long v48, v48, v2

    goto/16 :goto_1

    :cond_c
    move/from16 v0, p8

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v21, 0x1

    move-object/from16 v20, p0

    move-wide/from16 v22, v16

    move/from16 v24, p8

    move-object/from16 v25, p9

    invoke-direct/range {v20 .. v25}, Lcom/android/bluetooth/avrcp/Avrcp;->findMediaItemAttrVal(IJB[I)[Ljava/lang/String;

    move-result-object v27

    new-instance v20, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;

    move-object/from16 v21, p0

    move-wide/from16 v22, v16

    move-object/from16 v24, v19

    move/from16 v25, p8

    move-object/from16 v26, p9

    invoke-direct/range {v20 .. v27}, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;-><init>(Lcom/android/bluetooth/avrcp/Avrcp;JLjava/lang/String;B[I[Ljava/lang/String;)V

    move-object/from16 v0, v53

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_d
    move-object/from16 v0, v46

    array-length v2, v0

    add-int v57, v57, v2

    move-object/from16 v0, v46

    array-length v2, v0

    add-int/lit8 v2, v2, 0x2

    sub-int v42, v42, v2

    move/from16 v13, v54

    goto/16 :goto_2

    :cond_e
    sget-boolean v2, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v2, :cond_f

    const-string/jumbo v2, "Avrcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Filled number of items for folder"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    const/16 v30, 0x4

    const/16 v31, 0x0

    move-object/from16 v28, p0

    move-object/from16 v29, p1

    move/from16 v32, v13

    move-object/from16 v33, p7

    invoke-direct/range {v28 .. v34}, Lcom/android/bluetooth/avrcp/Avrcp;->getFolderItemsRspNative([BBII[B[I)Z

    :goto_5
    return-void

    :cond_10
    invoke-interface/range {v53 .. v53}, Ljava/util/List;->size()I

    move-result v2

    new-array v0, v2, [I

    move-object/from16 v41, v0

    invoke-interface/range {v53 .. v53}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v56

    :goto_6
    invoke-interface/range {v56 .. v56}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface/range {v56 .. v56}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v55

    move-object/from16 v51, v55

    check-cast v51, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;

    invoke-virtual/range {v51 .. v51}, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->getEntryLength()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    move/from16 v0, v42

    if-ge v2, v0, :cond_13

    sget-boolean v2, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v2, :cond_11

    const-string/jumbo v2, "Avrcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Adding item "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    add-int/lit8 v54, v13, 0x1

    invoke-virtual/range {v51 .. v51}, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->getEntryLength()I

    move-result v2

    aput v2, v41, v13

    invoke-virtual/range {v51 .. v51}, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->retrieveMediaItemEntry()[B

    move-result-object v52

    const/16 v43, 0x0

    :goto_7
    move-object/from16 v0, v52

    array-length v2, v0

    move/from16 v0, v43

    if-ge v0, v2, :cond_12

    add-int v2, v57, v43

    aget-byte v3, v52, v43

    aput-byte v3, p7, v2

    add-int/lit8 v43, v43, 0x1

    goto :goto_7

    :cond_12
    move-object/from16 v0, v52

    array-length v2, v0

    add-int v57, v57, v2

    move-object/from16 v0, v52

    array-length v2, v0

    add-int/lit8 v2, v2, 0x2

    sub-int v42, v42, v2

    move/from16 v13, v54

    goto :goto_6

    :cond_13
    sget-boolean v2, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v2, :cond_14

    const-string/jumbo v2, "Avrcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Filled number of items "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    const/16 v37, 0x4

    const/16 v38, 0x0

    move-object/from16 v35, p0

    move-object/from16 v36, p1

    move/from16 v39, v13

    move-object/from16 v40, p7

    invoke-direct/range {v35 .. v41}, Lcom/android/bluetooth/avrcp/Avrcp;->getFolderItemsRspNative([BBII[B[I)Z

    goto/16 :goto_5
.end method

.method private newApiGetItemAttributes([BBJIB[I)V
    .locals 25

    sget-boolean v6, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string/jumbo v6, "Avrcp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " getItemAttributes scope::"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v6, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v6, :cond_1

    const-string/jumbo v6, "Avrcp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " getItemAttributes trackid::"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p3

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-boolean v6, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v6, :cond_2

    const-string/jumbo v6, "Avrcp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " getItemAttributes uidCounter::"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p5

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-boolean v6, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v6, :cond_3

    const-string/jumbo v6, "Avrcp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " getItemAttributes attribute count::"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p6

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v9, 0x1

    const/4 v6, 0x1

    new-array v10, v6, [I

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v6, v10, v7

    const/16 v24, 0x0

    const/4 v6, 0x1

    new-array v11, v6, [Ljava/lang/String;

    new-instance v6, Ljava/lang/String;

    const-string/jumbo v7, "Not Available"

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    aput-object v6, v11, v7

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-byte v0, v1, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentScope:B

    sget-object v6, Lcom/android/bluetooth/avrcp/Avrcp;->disallowBrowsingCarkitAddr:Ljava/lang/String;

    if-eqz v6, :cond_4

    sget-object v6, Lcom/android/bluetooth/avrcp/Avrcp;->disallowBrowsingCarkitAddr:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-wide/from16 v8, p3

    move/from16 v10, p6

    move-object/from16 v11, p7

    invoke-direct/range {v6 .. v11}, Lcom/android/bluetooth/avrcp/Avrcp;->fakeItemAttributesUsingMetadata([BJB[I)V

    return-void

    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/avrcp/Avrcp;->isBrowsingPlayer()Z

    move-result v6

    if-nez v6, :cond_5

    const-string/jumbo v6, "Avrcp"

    const-string/jumbo v7, "activated player does not support browsing"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v8, 0x15

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-direct/range {v6 .. v11}, Lcom/android/bluetooth/avrcp/Avrcp;->setGetItemAttributesRspNative([BBB[I[Ljava/lang/String;)Z

    return-void

    :cond_5
    const-wide/16 v6, 0x1

    cmp-long v6, p3, v6

    if-gez v6, :cond_8

    const/4 v6, 0x3

    move/from16 v0, p2

    if-eq v0, v6, :cond_8

    :cond_6
    sget-boolean v6, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v6, :cond_7

    const-string/jumbo v6, "Avrcp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " uid is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p3

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const/16 v8, 0x9

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-direct/range {v6 .. v11}, Lcom/android/bluetooth/avrcp/Avrcp;->setGetItemAttributesRspNative([BBB[I[Ljava/lang/String;)Z

    return-void

    :cond_8
    const-wide/16 v6, -0x1

    cmp-long v6, p3, v6

    if-lez v6, :cond_6

    move-object/from16 v0, p0

    iget-byte v6, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentScope:B

    const/4 v7, 0x1

    if-ne v6, v7, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/avrcp/Avrcp;->getItems()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    int-to-long v6, v6

    cmp-long v6, p3, v6

    if-gtz v6, :cond_9

    move/from16 v0, p6

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/4 v13, 0x1

    move-object/from16 v12, p0

    move-wide/from16 v14, p3

    move/from16 v16, p6

    move-object/from16 v17, p7

    invoke-direct/range {v12 .. v17}, Lcom/android/bluetooth/avrcp/Avrcp;->findMediaItemAttrVal(IJB[I)[Ljava/lang/String;

    move-result-object v17

    const/4 v14, 0x4

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move/from16 v15, p6

    move-object/from16 v16, p7

    invoke-direct/range {v12 .. v17}, Lcom/android/bluetooth/avrcp/Avrcp;->setGetItemAttributesRspNative([BBB[I[Ljava/lang/String;)Z

    return-void

    :cond_9
    sget-boolean v6, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v6, :cond_a

    const-string/jumbo v6, "Avrcp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " uid not exist is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p3

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    const/16 v8, 0x9

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-direct/range {v6 .. v11}, Lcom/android/bluetooth/avrcp/Avrcp;->setGetItemAttributesRspNative([BBB[I[Ljava/lang/String;)Z

    return-void

    :cond_b
    move-object/from16 v0, p0

    iget-byte v6, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentScope:B

    const/4 v7, 0x3

    if-ne v6, v7, :cond_12

    const-wide/16 v6, 0x0

    cmp-long v6, p3, v6

    if-nez v6, :cond_f

    sget-boolean v6, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v6, :cond_c

    const-string/jumbo v6, "Avrcp"

    const-string/jumbo v7, " uid is 0, get currect item attributes"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    move/from16 v0, p6

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mMetadata:Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    invoke-static {v6}, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->-get4(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;)J

    move-result-wide v6

    const-wide/16 v12, 0x0

    cmp-long v6, v6, v12

    if-gtz v6, :cond_e

    sget-boolean v6, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v6, :cond_d

    const-string/jumbo v6, "Avrcp"

    const-string/jumbo v7, " track num was not updated properly"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    const/16 v8, 0x9

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-direct/range {v6 .. v11}, Lcom/android/bluetooth/avrcp/Avrcp;->setGetItemAttributesRspNative([BBB[I[Ljava/lang/String;)Z

    return-void

    :cond_e
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mMetadata:Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    invoke-static {v6}, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->-get4(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;)J

    move-result-wide v6

    move-object/from16 v0, p0

    move/from16 v1, p6

    move-object/from16 v2, p7

    invoke-direct {v0, v6, v7, v1, v2}, Lcom/android/bluetooth/avrcp/Avrcp;->findNPLMediaItemAttrVal(JB[I)[Ljava/lang/String;

    move-result-object v17

    const/4 v14, 0x4

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move/from16 v15, p6

    move-object/from16 v16, p7

    invoke-direct/range {v12 .. v17}, Lcom/android/bluetooth/avrcp/Avrcp;->setGetItemAttributesRspNative([BBB[I[Ljava/lang/String;)Z

    return-void

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/avrcp/Avrcp;->getNPLItems()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    int-to-long v6, v6

    cmp-long v6, p3, v6

    if-gtz v6, :cond_10

    move/from16 v0, p6

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move/from16 v3, p6

    move-object/from16 v4, p7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->findNPLMediaItemAttrVal(JB[I)[Ljava/lang/String;

    move-result-object v17

    const/4 v14, 0x4

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move/from16 v15, p6

    move-object/from16 v16, p7

    invoke-direct/range {v12 .. v17}, Lcom/android/bluetooth/avrcp/Avrcp;->setGetItemAttributesRspNative([BBB[I[Ljava/lang/String;)Z

    return-void

    :cond_10
    sget-boolean v6, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v6, :cond_11

    const-string/jumbo v6, "Avrcp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " uid not exist is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p3

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    const/16 v8, 0x9

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-direct/range {v6 .. v11}, Lcom/android/bluetooth/avrcp/Avrcp;->setGetItemAttributesRspNative([BBB[I[Ljava/lang/String;)Z

    return-void

    :cond_12
    move-object/from16 v0, p0

    iget-byte v6, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentScope:B

    const/4 v7, 0x2

    if-ne v6, v7, :cond_15

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mSearchDataSet:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    int-to-long v6, v6

    cmp-long v6, p3, v6

    if-gtz v6, :cond_13

    move/from16 v0, p6

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v19, 0x2

    move-object/from16 v18, p0

    move-wide/from16 v20, p3

    move/from16 v22, p6

    move-object/from16 v23, p7

    invoke-direct/range {v18 .. v23}, Lcom/android/bluetooth/avrcp/Avrcp;->findMediaItemAttrVal(IJB[I)[Ljava/lang/String;

    move-result-object v17

    const/4 v14, 0x4

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move/from16 v15, p6

    move-object/from16 v16, p7

    invoke-direct/range {v12 .. v17}, Lcom/android/bluetooth/avrcp/Avrcp;->setGetItemAttributesRspNative([BBB[I[Ljava/lang/String;)Z

    return-void

    :cond_13
    sget-boolean v6, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v6, :cond_14

    const-string/jumbo v6, "Avrcp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " uid not exist is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p3

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    const/16 v8, 0x9

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-direct/range {v6 .. v11}, Lcom/android/bluetooth/avrcp/Avrcp;->setGetItemAttributesRspNative([BBB[I[Ljava/lang/String;)Z

    return-void

    :cond_15
    sget-boolean v6, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v6, :cond_16

    const-string/jumbo v6, "Avrcp"

    const-string/jumbo v7, " invalid scope "

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    const/16 v8, 0xa

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-direct/range {v6 .. v11}, Lcom/android/bluetooth/avrcp/Avrcp;->setGetItemAttributesRspNative([BBB[I[Ljava/lang/String;)Z

    return-void
.end method

.method private newApiPlayItem(B[BI)V
    .locals 12

    sget-boolean v9, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v9, :cond_0

    const-string/jumbo v9, "Avrcp"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "playItem uid counter:: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "  scope::"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-wide/16 v6, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    sget-object v9, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v6

    const-string/jumbo v9, "Avrcp"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "uid of playItem is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x3

    if-ne p1, v9, :cond_7

    const-wide/16 v10, 0x0

    cmp-long v9, v6, v10

    if-lez v9, :cond_1

    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/Avrcp;->getNPLItems()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    int-to-long v10, v9

    cmp-long v9, v6, v10

    if-lez v9, :cond_2

    :cond_1
    const-string/jumbo v9, "Avrcp"

    const-string/jumbo v10, "tracknum is not exist in NPLItems"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v9, 0x9

    invoke-direct {p0, v9}, Lcom/android/bluetooth/avrcp/Avrcp;->setPlayItemRspNative(B)Z

    return-void

    :cond_2
    const-wide/16 v10, 0x1

    sub-long v10, v6, v10

    invoke-virtual {p0, v10, v11}, Lcom/android/bluetooth/avrcp/Avrcp;->getNPLItem(J)Landroid/media/session/MediaSession$QueueItem;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/session/MediaSession$QueueItem;->getQueueId()J

    move-result-wide v4

    iget-object v9, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v9}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Landroid/media/session/MediaController$TransportControls;->skipToQueueItem(J)V

    :cond_3
    const-string/jumbo v9, "Avrcp"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Now playing list select id : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/Avrcp;->isBMWCarkitForBrowsing()Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    const/16 v10, 0xd2

    invoke-virtual {v9, v10}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->hasMessages(I)Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    const/16 v10, 0xd2

    invoke-virtual {v9, v10}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->removeMessages(I)V

    :cond_5
    iget-object v9, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    const/16 v10, 0xd2

    invoke-virtual {v9, v10}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget-object v9, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    const-wide/16 v10, 0xbb8

    invoke-virtual {v9, v2, v10, v11}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_6
    const/4 v9, 0x4

    invoke-direct {p0, v9}, Lcom/android/bluetooth/avrcp/Avrcp;->setPlayItemRspNative(B)Z

    return-void

    :cond_7
    const/4 v9, 0x2

    if-ne p1, v9, :cond_b

    const-wide/16 v10, 0x0

    cmp-long v9, v6, v10

    if-lez v9, :cond_8

    iget-object v9, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mSearchDataSet:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    int-to-long v10, v9

    cmp-long v9, v6, v10

    if-lez v9, :cond_9

    :cond_8
    const-string/jumbo v9, "Avrcp"

    const-string/jumbo v10, "tracknum is not exist in SearchItems"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v9, 0x9

    invoke-direct {p0, v9}, Lcom/android/bluetooth/avrcp/Avrcp;->setPlayItemRspNative(B)Z

    return-void

    :cond_9
    iget-object v9, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mActivatedPackage:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/bluetooth/avrcp/Avrcp;->isSamsungNativePlayer(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    const-string/jumbo v9, "Avrcp"

    const-string/jumbo v10, "playItem for sec"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mSearchDataSet:Ljava/util/List;

    long-to-int v10, v6

    add-int/lit8 v10, v10, -0x1

    invoke-direct {p0, v9, v10}, Lcom/android/bluetooth/avrcp/Avrcp;->playForSec(Ljava/util/List;I)V

    goto :goto_0

    :cond_a
    const-string/jumbo v9, "Avrcp"

    const-string/jumbo v10, "playItem for other players"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v9, 0xc

    invoke-direct {p0, v9}, Lcom/android/bluetooth/avrcp/Avrcp;->setPlayItemRspNative(B)Z

    return-void

    :cond_b
    const/4 v9, 0x1

    if-ne p1, v9, :cond_10

    const-wide/16 v10, 0x0

    cmp-long v9, v6, v10

    if-lez v9, :cond_c

    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/Avrcp;->getItems()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    int-to-long v10, v9

    cmp-long v9, v6, v10

    if-lez v9, :cond_d

    :cond_c
    const-string/jumbo v9, "Avrcp"

    const-string/jumbo v10, "tracknum is not exist in Items"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v9, 0x9

    invoke-direct {p0, v9}, Lcom/android/bluetooth/avrcp/Avrcp;->setPlayItemRspNative(B)Z

    return-void

    :cond_d
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/Avrcp;->getItems()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_e

    const-wide/16 v10, 0x0

    invoke-virtual {p0, v10, v11}, Lcom/android/bluetooth/avrcp/Avrcp;->getItem(J)Landroid/media/browse/MediaBrowser$MediaItem;

    move-result-object v9

    invoke-virtual {v9}, Landroid/media/browse/MediaBrowser$MediaItem;->isBrowsable()Z

    move-result v9

    if-eqz v9, :cond_e

    const-string/jumbo v9, "Avrcp"

    const-string/jumbo v10, "current item is not playable"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v9, 0xc

    invoke-direct {p0, v9}, Lcom/android/bluetooth/avrcp/Avrcp;->setPlayItemRspNative(B)Z

    return-void

    :cond_e
    iget-object v9, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mActivatedPackage:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/bluetooth/avrcp/Avrcp;->isSamsungNativePlayer(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_f

    const-string/jumbo v9, "Avrcp"

    const-string/jumbo v10, "playItem for sec"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/Avrcp;->getItems()Ljava/util/List;

    move-result-object v9

    long-to-int v10, v6

    add-int/lit8 v10, v10, -0x1

    invoke-direct {p0, v9, v10}, Lcom/android/bluetooth/avrcp/Avrcp;->playForSec(Ljava/util/List;I)V

    goto/16 :goto_0

    :cond_f
    const-string/jumbo v9, "Avrcp"

    const-string/jumbo v10, "playItem for other players"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v9}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v9

    const-wide/16 v10, 0x1

    sub-long v10, v6, v10

    invoke-virtual {p0, v10, v11}, Lcom/android/bluetooth/avrcp/Avrcp;->getItem(J)Landroid/media/browse/MediaBrowser$MediaItem;

    move-result-object v10

    invoke-virtual {v10}, Landroid/media/browse/MediaBrowser$MediaItem;->getMediaId()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/media/session/MediaController$TransportControls;->playFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_10
    const-string/jumbo v9, "Avrcp"

    const-string/jumbo v10, "invalid scope!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v9, 0xa

    invoke-direct {p0, v9}, Lcom/android/bluetooth/avrcp/Avrcp;->setPlayItemRspNative(B)Z

    return-void
.end method

.method private newApiSearchMediaItem([BIILjava/lang/String;)V
    .locals 16

    sget-boolean v11, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v11, :cond_0

    const-string/jumbo v11, "Avrcp"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Search "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p4

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v8, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/avrcp/Avrcp;->isBrowsingPlayer()Z

    move-result v11

    if-eqz v11, :cond_2

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mBrowserConnected:Z

    if-eqz v11, :cond_2

    const/16 v11, 0x6a

    move/from16 v0, p2

    if-eq v11, v0, :cond_3

    sget-boolean v11, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v11, :cond_1

    const-string/jumbo v11, "Avrcp"

    const-string/jumbo v14, "search item with invalid parameter"

    invoke-static {v11, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v11, 0x2

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11, v14, v8}, Lcom/android/bluetooth/avrcp/Avrcp;->searchMediaItemRspNative([BBII)Z

    return-void

    :cond_2
    const-string/jumbo v11, "Avrcp"

    const-string/jumbo v14, "activated player does not support browsing"

    invoke-static {v11, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v11, 0x15

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11, v14, v8}, Lcom/android/bluetooth/avrcp/Avrcp;->searchMediaItemRspNative([BBII)Z

    return-void

    :cond_3
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/bluetooth/avrcp/Avrcp;->getItem(J)Landroid/media/browse/MediaBrowser$MediaItem;

    move-result-object v11

    invoke-virtual {v11}, Landroid/media/browse/MediaBrowser$MediaItem;->isBrowsable()Z

    move-result v11

    if-eqz v11, :cond_10

    sget-boolean v11, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v11, :cond_4

    const-string/jumbo v11, "Avrcp"

    const-string/jumbo v14, "search item within all tracks"

    invoke-static {v11, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mPathStack:Ljava/util/Stack;

    if-eqz v11, :cond_5

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mPathStack:Ljava/util/Stack;

    invoke-virtual {v11}, Ljava/util/Stack;->empty()Z

    move-result v11

    if-eqz v11, :cond_7

    :cond_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mSearchDataSet:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v8

    sget-boolean v11, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v11, :cond_6

    const-string/jumbo v11, "Avrcp"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "no of searched items : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/4 v11, 0x4

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11, v14, v8}, Lcom/android/bluetooth/avrcp/Avrcp;->searchMediaItemRspNative([BBII)Z

    return-void

    :cond_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mPathStack:Ljava/util/Stack;

    invoke-virtual {v11}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    sput-object v11, Lcom/android/bluetooth/avrcp/Avrcp;->currentPath:Ljava/lang/String;

    sget-boolean v11, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v11, :cond_8

    const-string/jumbo v11, "Avrcp"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "changed path is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lcom/android/bluetooth/avrcp/Avrcp;->currentPath:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    sget-object v11, Lcom/android/bluetooth/avrcp/Avrcp;->currentPath:Ljava/lang/String;

    const-string/jumbo v14, "Samsung Mobile Phone 0515"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/avrcp/Avrcp;->getItems()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v9

    const-wide/16 v12, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v9, :cond_a

    int-to-long v14, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/bluetooth/avrcp/Avrcp;->getItem(J)Landroid/media/browse/MediaBrowser$MediaItem;

    move-result-object v11

    invoke-virtual {v11}, Landroid/media/browse/MediaBrowser$MediaItem;->getDescription()Landroid/media/MediaDescription;

    move-result-object v11

    invoke-virtual {v11}, Landroid/media/MediaDescription;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_c

    const-string/jumbo v11, "com.google.android.music.browse.bt_folder_type_hint"

    invoke-virtual {v2, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    int-to-byte v3, v11

    const/4 v11, 0x1

    if-ne v3, v11, :cond_c

    sget-boolean v11, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v11, :cond_9

    const-string/jumbo v11, "Avrcp"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "found uid is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    int-to-long v12, v4

    :cond_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/bluetooth/avrcp/Avrcp;->getItem(J)Landroid/media/browse/MediaBrowser$MediaItem;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mPathStack:Ljava/util/Stack;

    invoke-virtual {v5}, Landroid/media/browse/MediaBrowser$MediaItem;->getDescription()Landroid/media/MediaDescription;

    move-result-object v14

    invoke-virtual {v14}, Landroid/media/MediaDescription;->getTitle()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v11, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v11, :cond_b

    const-string/jumbo v11, "Avrcp"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Item is browsable "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Landroid/media/browse/MediaBrowser$MediaItem;->isBrowsable()Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    invoke-virtual {v5}, Landroid/media/browse/MediaBrowser$MediaItem;->isBrowsable()Z

    move-result v11

    if-eqz v11, :cond_5

    const/4 v4, 0x0

    :goto_1
    const/4 v11, 0x6

    if-ge v4, v11, :cond_d

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mBrowsingAddr:[B

    aget-byte v14, p1, v4

    aput-byte v14, v11, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_d
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/bluetooth/avrcp/Avrcp;->mSearchString:Ljava/lang/String;

    const/4 v11, 0x1

    sput-boolean v11, Lcom/android/bluetooth/avrcp/Avrcp;->mSearchBrowsing:Z

    invoke-virtual {v5}, Landroid/media/browse/MediaBrowser$MediaItem;->getMediaId()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/bluetooth/avrcp/Avrcp;->browseChild(Ljava/lang/String;)V

    return-void

    :cond_e
    sget-boolean v11, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v11, :cond_f

    const-string/jumbo v11, "Avrcp"

    const-string/jumbo v14, "invalid scope for search"

    invoke-static {v11, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    const/16 v11, 0xa

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11, v14, v8}, Lcom/android/bluetooth/avrcp/Avrcp;->searchMediaItemRspNative([BBII)Z

    return-void

    :cond_10
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mSearchDataSet:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mDataSet:Ljava/util/List;

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_11
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/browse/MediaBrowser$MediaItem;

    invoke-virtual {v6}, Landroid/media/browse/MediaBrowser$MediaItem;->getDescription()Landroid/media/MediaDescription;

    move-result-object v11

    invoke-virtual {v11}, Landroid/media/MediaDescription;->getTitle()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_11

    sget-boolean v11, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v11, :cond_12

    const-string/jumbo v11, "Avrcp"

    const-string/jumbo v14, "found search item"

    invoke-static {v11, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mSearchDataSet:Ljava/util/List;

    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private newApiSetBrowsedPlayer([BIZ)V
    .locals 26

    sget-boolean v2, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "Avrcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setBrowsedPlayer::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", isDelayed::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v23, 0x0

    const/16 v20, 0x0

    const/16 v19, 0x0

    const/4 v13, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-byte v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentScope:B

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mSearchMap:Ljava/util/HashMap;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mSearchMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaPlayers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaPlayers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :cond_2
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;

    invoke-virtual/range {v17 .. v17}, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->RetrievePlayerId()S

    move-result v2

    move/from16 v0, p2

    if-ne v2, v0, :cond_2

    invoke-virtual/range {v17 .. v17}, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->RetrievePlayerPackageName()Ljava/lang/String;

    move-result-object v23

    const/16 v20, 0x1

    const-string/jumbo v2, "com.google.android.music"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/bluetooth/avrcp/Avrcp;->isSamsungNativePlayer(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    const/16 v19, 0x1

    :cond_4
    if-nez v20, :cond_5

    const-string/jumbo v2, "Avrcp"

    const-string/jumbo v3, " PlayerId not found"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x11

    const/4 v5, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/bluetooth/avrcp/Avrcp;->setBrowsedPlayerRspNative([BBIIB[Ljava/lang/String;)Z

    return-void

    :cond_5
    if-nez v19, :cond_6

    const-string/jumbo v2, "Avrcp"

    const-string/jumbo v3, " Player not browsable"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x12

    const/4 v5, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/bluetooth/avrcp/Avrcp;->setBrowsedPlayerRspNative([BBIIB[Ljava/lang/String;)Z

    return-void

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    const/16 v3, 0xe6

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    const/16 v3, 0xe6

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->removeMessages(I)V

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mBrowserConnected:Z

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mBrowserConnected:Z

    if-eqz v2, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/avrcp/Avrcp;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_9

    :cond_8
    if-eqz p3, :cond_d

    :cond_9
    if-eqz v23, :cond_17

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mPathStack:Ljava/util/Stack;

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mPathStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->empty()Z

    move-result v2

    if-nez v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mPathStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    sget-boolean v2, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v2, :cond_a

    const-string/jumbo v2, "Avrcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "currentpath is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    const-string/jumbo v2, "Samsung Mobile Phone 0515"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/avrcp/Avrcp;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    const/4 v7, 0x0

    sget-boolean v2, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v2, :cond_b

    const-string/jumbo v2, "Avrcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "set Browse with player id::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " no_of_folders::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " folder_depth::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    const/4 v11, 0x4

    const/4 v12, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move v14, v7

    move-object v15, v8

    invoke-direct/range {v9 .. v15}, Lcom/android/bluetooth/avrcp/Avrcp;->setBrowsedPlayerRspNative([BBIIB[Ljava/lang/String;)Z

    :cond_c
    :goto_0
    return-void

    :cond_d
    const-string/jumbo v2, "Avrcp"

    const-string/jumbo v3, "Browser not connected yet"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v18, 0x0

    :goto_1
    const/4 v2, 0x6

    move/from16 v0, v18

    if-ge v0, v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mBrowsingAddr:[B

    aget-byte v3, p1, v18

    aput-byte v3, v2, v18

    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    :cond_e
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/bluetooth/avrcp/Avrcp;->mRequestedPlayerId:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    const/16 v3, 0xe6

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    const-wide/16 v4, 0x1f4

    move-object/from16 v0, v22

    invoke-virtual {v2, v0, v4, v5}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_f
    new-instance v21, Ljava/util/Stack;

    invoke-direct/range {v21 .. v21}, Ljava/util/Stack;-><init>()V

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mPathStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->empty()Z

    move-result v2

    if-nez v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mPathStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    sget-boolean v2, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v2, :cond_10

    const-string/jumbo v2, "Avrcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "tempPath is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", folder depth is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    const-string/jumbo v2, "Samsung Mobile Phone 0515"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    const/16 v2, 0x14

    if-le v7, v2, :cond_13

    :cond_11
    new-array v8, v7, [Ljava/lang/String;

    const/16 v18, 0x0

    :goto_3
    move/from16 v0, v18

    if-ge v0, v7, :cond_12

    invoke-virtual/range {v21 .. v21}, Ljava/util/Stack;->empty()Z

    move-result v2

    if-eqz v2, :cond_14

    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/avrcp/Avrcp;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    const/4 v11, 0x4

    const/4 v12, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move v14, v7

    move-object v15, v8

    invoke-direct/range {v9 .. v15}, Lcom/android/bluetooth/avrcp/Avrcp;->setBrowsedPlayerRspNative([BBIIB[Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_13
    add-int/lit8 v2, v7, 0x1

    int-to-byte v7, v2

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mPathStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto/16 :goto_2

    :cond_14
    invoke-virtual/range {v21 .. v21}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v8, v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mPathStack:Ljava/util/Stack;

    aget-object v3, v8, v18

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {v21 .. v21}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mPathStack:Ljava/util/Stack;

    const-string/jumbo v3, "Samsung Mobile Phone 0515"

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v13, 0x1

    const/4 v7, 0x0

    sget-boolean v2, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v2, :cond_16

    const-string/jumbo v2, "Avrcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "set Browse with player id::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " no_of_folders::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " folder_depth::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    const/4 v11, 0x4

    const/4 v12, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move v14, v7

    move-object v15, v8

    invoke-direct/range {v9 .. v15}, Lcom/android/bluetooth/avrcp/Avrcp;->setBrowsedPlayerRspNative([BBIIB[Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_17
    sget-boolean v2, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v2, :cond_18

    const-string/jumbo v2, "Avrcp"

    const-string/jumbo v3, "Error: No such media player available, hence can not be browsed"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    const/16 v4, 0x11

    const/4 v5, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/bluetooth/avrcp/Avrcp;->setBrowsedPlayerRspNative([BBIIB[Ljava/lang/String;)Z

    goto/16 :goto_0
.end method

.method private notifyActivatedMediaPlayer(Ljava/lang/String;)V
    .locals 11

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    sget-boolean v7, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string/jumbo v7, "Avrcp"

    const-string/jumbo v8, "notifyActivatedMediaPlayer"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/Avrcp;->resetPathStack()V

    sget-boolean v7, Lcom/android/bluetooth/avrcp/Avrcp;->playerQueryResult:Z

    if-nez v7, :cond_1

    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/Avrcp;->retryMediaPlayerQuery()V

    :cond_1
    sget-object v7, Lcom/android/bluetooth/avrcp/Avrcp;->disallowBrowsingCarkitAddr:Ljava/lang/String;

    if-eqz v7, :cond_2

    const-string/jumbo p1, "tempPackage"

    sget-object v7, Lcom/android/bluetooth/avrcp/Avrcp;->disallowBrowsingCarkitAddr:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/bluetooth/avrcp/Avrcp;->getOtherDeviceAddr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6

    const-string/jumbo v7, "Avrcp"

    const-string/jumbo v8, "ignoreAddressedEvent"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    :cond_2
    :goto_0
    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaPlayers:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_9

    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaPlayers:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->getPlayerPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    sget-boolean v7, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v7, :cond_4

    const-string/jumbo v7, "Avrcp"

    const-string/jumbo v8, "published player is current activated Package"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->SetPlayerPublishability(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->getPlayerId()S

    move-result v7

    iput v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAddressedPlayerId:I

    sget-boolean v7, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v7, :cond_5

    const-string/jumbo v7, "Avrcp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "update "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->getPlayerPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " playbackState as: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPlayState:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPlayState:I

    int-to-byte v7, v7

    invoke-virtual {v0, v7}, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->SetPlayState(B)V

    :goto_2
    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->getPlayerPackageName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "tempPackage"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    if-nez v1, :cond_3

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->SetPlayerPublishability(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->getPlayerId()S

    move-result v7

    iput v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAddressedPlayerId:I

    iget v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPlayState:I

    int-to-byte v7, v7

    invoke-virtual {v0, v7}, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->SetPlayState(B)V

    sget-boolean v7, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v7, :cond_3

    const-string/jumbo v7, "Avrcp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "3rd party app is playing : update "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->getPlayerPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " playbackState as: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPlayState:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_6
    const-string/jumbo v7, "Avrcp"

    const-string/jumbo v8, "AddressedChanged Event only sent to the other Device"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->SetPlayerPublishability(Z)V

    sget-boolean v7, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v7, :cond_8

    const-string/jumbo v7, "Avrcp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "update "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->getPlayerPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " playbackState as: Paused"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->SetPlayState(B)V

    goto/16 :goto_2

    :cond_9
    if-nez v1, :cond_a

    iget v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mTempMediaPlayerId:I

    iput v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAddressedPlayerId:I

    :cond_a
    iget v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPublishedPlayerID:I

    iget v8, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAddressedPlayerId:I

    if-ne v7, v8, :cond_c

    sget-boolean v7, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v7, :cond_b

    const-string/jumbo v7, "Avrcp"

    const-string/jumbo v8, "changed to same player"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return-void

    :cond_c
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-nez v2, :cond_11

    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mDeviceEventController:Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    const/4 v8, 0x6

    const/4 v9, 0x0

    invoke-virtual {v7, v4, v8, v9}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->compareEventFlag(Ljava/lang/String;II)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_e

    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mDeviceEventController:Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    const/4 v8, 0x6

    const/4 v9, 0x1

    invoke-virtual {v7, v3, v8, v9}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->setDeviceEvent(Ljava/util/ArrayList;II)V

    sget-boolean v7, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v7, :cond_d

    const-string/jumbo v7, "Avrcp"

    const-string/jumbo v8, "send AvailableMediaPlayersChanged"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mDeviceEventController:Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    const/4 v8, 0x6

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v7, v3, v8, v9, v10}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->sendNotificationRsp(Ljava/util/ArrayList;IILandroid/os/Bundle;)V

    :cond_e
    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mDeviceEventController:Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    const/4 v8, 0x7

    const/4 v9, 0x0

    invoke-virtual {v7, v4, v8, v9}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->compareEventFlag(Ljava/lang/String;II)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_10

    sget-boolean v7, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v7, :cond_f

    const-string/jumbo v7, "Avrcp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "send AddressedPlayerChanged, activated playerId is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAddressedPlayerId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mDeviceEventController:Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    const/4 v8, 0x7

    const/4 v9, 0x1

    invoke-virtual {v7, v3, v8, v9}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->setDeviceEvent(Ljava/util/ArrayList;II)V

    const-string/jumbo v7, "ADDRESSED_PLAYER_CHANGED"

    iget v8, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAddressedPlayerId:I

    invoke-virtual {v5, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAddressedPlayerId:I

    iput v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPublishedPlayerID:I

    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mDeviceEventController:Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    const/4 v8, 0x7

    const/4 v9, 0x1

    invoke-virtual {v7, v3, v8, v9, v5}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->sendNotificationRsp(Ljava/util/ArrayList;IILandroid/os/Bundle;)V

    :cond_10
    :goto_3
    return-void

    :cond_11
    const-string/jumbo v7, "Avrcp"

    const-string/jumbo v8, "Do not update ADDRESSED_PLAYER_CHANGED"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private notifyVolumeChanged(I)V
    .locals 5

    const/16 v4, 0x41

    const/4 v3, 0x3

    sget-boolean v0, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Avrcp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyVolumeChanged volume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mIsFineVolume:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3, p1, v4}, Landroid/media/AudioManager;->semSetFineVolume(III)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3, p1, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0
.end method

.method private oldApiChangePath([BIB[B)V
    .locals 10

    sget-boolean v7, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string/jumbo v7, "Avrcp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "changePath uid counter:: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "  direction::"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "folderUid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    const/4 v6, 0x0

    invoke-static {p4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v7, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    sget-boolean v7, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v7, :cond_1

    const-string/jumbo v7, "Avrcp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Received folder uid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPathStack:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, -0x1

    const/4 v7, 0x1

    if-ne p3, v7, :cond_e

    const-string/jumbo v7, "Samsung Mobile Phone 0515"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const-wide/16 v8, 0x2

    cmp-long v7, v4, v8

    if-nez v7, :cond_5

    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaBrowser:Lcom/samsung/bt/avrcp/BluetoothMediaBrowser;

    const-string/jumbo v8, "SONGS"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/samsung/bt/avrcp/BluetoothMediaBrowser;->getMediaElementsUid(Ljava/lang/String;Ljava/lang/String;)[J

    move-result-object v7

    iput-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mVirtualFileSystemList:[J

    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mVirtualFileSystemList:[J

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mVirtualFileSystemList:[J

    array-length v2, v7

    sget-boolean v7, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v7, :cond_2

    const-string/jumbo v7, "Avrcp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, " mVirtualFileSystemList.length = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mVirtualFileSystemList:[J

    array-length v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPathStack:Ljava/util/Stack;

    const-string/jumbo v8, "SONGS"

    invoke-virtual {v7, v8}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    const/4 v7, -0x1

    if-ne v2, v7, :cond_14

    const/4 v7, 0x7

    invoke-direct {p0, p1, v7, v6}, Lcom/android/bluetooth/avrcp/Avrcp;->setChangePathRspNative([BBI)Z

    :goto_2
    return-void

    :cond_4
    const-string/jumbo v7, "Avrcp"

    const-string/jumbo v8, "mVirtualFileSystemList is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_0

    :cond_5
    const-wide/16 v8, 0x1

    cmp-long v7, v4, v8

    if-nez v7, :cond_6

    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaBrowser:Lcom/samsung/bt/avrcp/BluetoothMediaBrowser;

    invoke-virtual {v7}, Lcom/samsung/bt/avrcp/BluetoothMediaBrowser;->getAlbumsCount()I

    move-result v2

    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPathStack:Ljava/util/Stack;

    const-string/jumbo v8, "ALBUMS"

    invoke-virtual {v7, v8}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_6
    const-wide/16 v8, 0x3

    cmp-long v7, v4, v8

    if-nez v7, :cond_7

    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaBrowser:Lcom/samsung/bt/avrcp/BluetoothMediaBrowser;

    invoke-virtual {v7}, Lcom/samsung/bt/avrcp/BluetoothMediaBrowser;->getArtistsCount()I

    move-result v2

    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPathStack:Ljava/util/Stack;

    const-string/jumbo v8, "ARTISTS"

    invoke-virtual {v7, v8}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_7
    const-string/jumbo v7, "Avrcp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "UID does not exist "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v7, 0x9

    invoke-direct {p0, p1, v7, v6}, Lcom/android/bluetooth/avrcp/Avrcp;->setChangePathRspNative([BBI)Z

    return-void

    :cond_8
    const-string/jumbo v7, "ALBUMS"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaBrowser:Lcom/samsung/bt/avrcp/BluetoothMediaBrowser;

    const-string/jumbo v8, "ALBUMS"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/samsung/bt/avrcp/BluetoothMediaBrowser;->getMediaElementsUid(Ljava/lang/String;Ljava/lang/String;)[J

    move-result-object v7

    iput-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mVirtualFileSystemList:[J

    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mVirtualFileSystemList:[J

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mVirtualFileSystemList:[J

    array-length v2, v7

    sget-boolean v7, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v7, :cond_9

    const-string/jumbo v7, "Avrcp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, " mVirtualFileSystemList.length = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mVirtualFileSystemList:[J

    array-length v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_3
    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPathStack:Ljava/util/Stack;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "ALBUMS:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_a
    const-string/jumbo v7, "Avrcp"

    const-string/jumbo v8, "mVirtualFileSystemList is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_3

    :cond_b
    const-string/jumbo v7, "ARTISTS"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaBrowser:Lcom/samsung/bt/avrcp/BluetoothMediaBrowser;

    const-string/jumbo v8, "ARTISTS"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/samsung/bt/avrcp/BluetoothMediaBrowser;->getMediaElementsUid(Ljava/lang/String;Ljava/lang/String;)[J

    move-result-object v7

    iput-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mVirtualFileSystemList:[J

    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mVirtualFileSystemList:[J

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mVirtualFileSystemList:[J

    array-length v2, v7

    sget-boolean v7, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v7, :cond_c

    const-string/jumbo v7, "Avrcp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, " mVirtualFileSystemList.length = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mVirtualFileSystemList:[J

    array-length v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :goto_4
    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPathStack:Ljava/util/Stack;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "ARTISTS:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_d
    const-string/jumbo v7, "Avrcp"

    const-string/jumbo v8, "mVirtualFileSystemList is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_4

    :cond_e
    if-nez p3, :cond_13

    const-string/jumbo v7, "ALBUMS"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f

    const-string/jumbo v7, "SONGS"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f

    const-string/jumbo v7, "ARTISTS"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    :cond_f
    const/4 v2, 0x3

    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPathStack:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto/16 :goto_1

    :cond_10
    const-string/jumbo v7, "ALBUMS"

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_11

    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaBrowser:Lcom/samsung/bt/avrcp/BluetoothMediaBrowser;

    invoke-virtual {v7}, Lcom/samsung/bt/avrcp/BluetoothMediaBrowser;->getAlbumsCount()I

    move-result v2

    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPathStack:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto/16 :goto_1

    :cond_11
    const-string/jumbo v7, "ARTISTS"

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_12

    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaBrowser:Lcom/samsung/bt/avrcp/BluetoothMediaBrowser;

    invoke-virtual {v7}, Lcom/samsung/bt/avrcp/BluetoothMediaBrowser;->getArtistsCount()I

    move-result v2

    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPathStack:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto/16 :goto_1

    :cond_12
    const-string/jumbo v7, "Avrcp"

    const-string/jumbo v8, "Invalid direction"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x7

    invoke-direct {p0, p1, v7, v6}, Lcom/android/bluetooth/avrcp/Avrcp;->setChangePathRspNative([BBI)Z

    return-void

    :cond_13
    const-string/jumbo v7, "Avrcp"

    const-string/jumbo v8, "Invalid direction"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x7

    invoke-direct {p0, p1, v7, v6}, Lcom/android/bluetooth/avrcp/Avrcp;->setChangePathRspNative([BBI)Z

    return-void

    :cond_14
    const/4 v7, 0x4

    invoke-direct {p0, p1, v7, v2}, Lcom/android/bluetooth/avrcp/Avrcp;->setChangePathRspNative([BBI)Z

    goto/16 :goto_2
.end method

.method private oldApiGetFolderItemsNowPlaying([BJJI[BB[I)V
    .locals 32

    const/4 v2, 0x1

    new-array v8, v2, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v2, v8, v3

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->semGetAudioFocusedPackageName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/bluetooth/avrcp/Avrcp;->isSamsungNativePlayer(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v4, 0x15

    const/4 v5, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v7, p7

    invoke-direct/range {v2 .. v8}, Lcom/android/bluetooth/avrcp/Avrcp;->getFolderItemsRspNative([BBII[B[I)Z

    return-void

    :cond_0
    const/16 v24, 0x0

    const/16 v18, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mNowPlayingList:[J

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mNowPlayingMediaElms:Ljava/util/List;

    if-nez v2, :cond_1

    const-string/jumbo v2, "Avrcp"

    const-string/jumbo v3, "mNowPlayingMediaElms == null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x14

    const/4 v5, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v7, p7

    invoke-direct/range {v2 .. v8}, Lcom/android/bluetooth/avrcp/Avrcp;->getFolderItemsRspNative([BBII[B[I)Z

    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mNowPlayingMediaElms:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "Avrcp"

    const-string/jumbo v3, "mNowPlayingMediaElms.size() is zero"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x14

    const/4 v5, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v7, p7

    invoke-direct/range {v2 .. v8}, Lcom/android/bluetooth/avrcp/Avrcp;->getFolderItemsRspNative([BBII[B[I)Z

    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mNowPlayingMediaElms:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, p2, v2

    if-ltz v2, :cond_3

    const-string/jumbo v2, "Avrcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "start index is greater than available entries mNowPlayingMediaElms.size() ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mNowPlayingMediaElms:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0xb

    const/4 v5, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v7, p7

    invoke-direct/range {v2 .. v8}, Lcom/android/bluetooth/avrcp/Avrcp;->getFolderItemsRspNative([BBII[B[I)Z

    return-void

    :cond_3
    sub-long v2, p4, p2

    const-wide/16 v4, 0x1

    add-long v30, v2, v4

    new-instance v24, Ljava/util/ArrayList;

    move-wide/from16 v0, v30

    long-to-int v2, v0

    move-object/from16 v0, v24

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-wide/from16 v20, p2

    const-wide/16 v22, 0x0

    :goto_0
    cmp-long v2, v22, v30

    if-gez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mNowPlayingMediaElms:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v20, v2

    if-gez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mAvrcpHelper:Lcom/android/bluetooth/avrcp/AvrcpHelper;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mNowPlayingMediaElms:Ljava/util/List;

    move-wide/from16 v0, v20

    long-to-int v4, v0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move/from16 v0, p8

    move-object/from16 v1, p9

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/bluetooth/avrcp/AvrcpHelper;->createMediaElement(Ljava/lang/Object;I[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 v2, 0x1

    add-long v20, v20, v2

    const-wide/16 v2, 0x1

    add-long v22, v22, v2

    goto :goto_0

    :cond_4
    const-string/jumbo v2, "Avrcp"

    const-string/jumbo v3, "mNowPlayingList is null so, return"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x14

    const/4 v5, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v7, p7

    invoke-direct/range {v2 .. v8}, Lcom/android/bluetooth/avrcp/Avrcp;->getFolderItemsRspNative([BBII[B[I)Z

    return-void

    :cond_5
    if-eqz v24, :cond_6

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_7

    :cond_6
    const-string/jumbo v2, "Avrcp"

    const-string/jumbo v3, "mediaElmList is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    new-array v15, v2, [I

    const/16 v11, 0x14

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v14, p7

    invoke-direct/range {v9 .. v15}, Lcom/android/bluetooth/avrcp/Avrcp;->getFolderItemsRspNative([BBII[B[I)Z

    return-void

    :cond_7
    const/4 v13, 0x0

    move/from16 v17, p6

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v2

    new-array v15, v2, [I

    sub-long v2, p4, p2

    const-wide/16 v4, 0x1

    add-long v30, v2, v4

    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :goto_1
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v19, v27

    check-cast v19, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;

    invoke-virtual/range {v19 .. v19}, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->getEntryLength()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    move/from16 v0, v17

    if-ge v2, v0, :cond_8

    int-to-long v2, v13

    cmp-long v2, v2, v30

    if-nez v2, :cond_a

    :cond_8
    sget-boolean v2, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v2, :cond_9

    const-string/jumbo v2, "Avrcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Filled number of items "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    const/4 v11, 0x4

    const/4 v12, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v14, p7

    invoke-direct/range {v9 .. v15}, Lcom/android/bluetooth/avrcp/Avrcp;->getFolderItemsRspNative([BBII[B[I)Z

    return-void

    :cond_a
    add-int/lit8 v26, v13, 0x1

    invoke-virtual/range {v19 .. v19}, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->getEntryLength()I

    move-result v2

    aput v2, v15, v13

    invoke-virtual/range {v19 .. v19}, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->retrieveMediaItemEntry()[B

    move-result-object v25

    const/16 v18, 0x0

    :goto_2
    move-object/from16 v0, v25

    array-length v2, v0

    move/from16 v0, v18

    if-ge v0, v2, :cond_b

    add-int v2, v29, v18

    aget-byte v3, v25, v18

    aput-byte v3, p7, v2

    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    :cond_b
    move-object/from16 v0, v25

    array-length v2, v0

    add-int v29, v29, v2

    move-object/from16 v0, v25

    array-length v2, v0

    add-int/lit8 v2, v2, 0x2

    sub-int v17, v17, v2

    move/from16 v13, v26

    goto :goto_1
.end method

.method private oldApiGetFolderItemsSearch([BJJI[BB[I)V
    .locals 34

    const/4 v2, 0x1

    new-array v8, v2, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v2, v8, v3

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->semGetAudioFocusedPackageName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/bluetooth/avrcp/Avrcp;->isSamsungNativePlayer(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v4, 0x15

    const/4 v5, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v7, p7

    invoke-direct/range {v2 .. v8}, Lcom/android/bluetooth/avrcp/Avrcp;->getFolderItemsRspNative([BBII[B[I)Z

    return-void

    :cond_0
    const/16 v25, 0x0

    const/16 v32, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaBrowser:Lcom/samsung/bt/avrcp/BluetoothMediaBrowser;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mSearchString:Ljava/lang/String;

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v22, 0x0

    move-wide/from16 v16, p2

    move-wide/from16 v18, p4

    move/from16 v20, p8

    move-object/from16 v21, p9

    invoke-virtual/range {v10 .. v22}, Lcom/samsung/bt/avrcp/BluetoothMediaBrowser;->getMediaElementItems(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJI[I[J)Ljava/util/List;

    move-result-object v27

    if-eqz v27, :cond_1

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, p2, v2

    if-lez v2, :cond_2

    :cond_1
    const/16 v4, 0xb

    const/4 v5, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v7, p7

    invoke-direct/range {v2 .. v8}, Lcom/android/bluetooth/avrcp/Avrcp;->getFolderItemsRspNative([BBII[B[I)Z

    return-void

    :cond_2
    const/4 v13, 0x0

    move/from16 v24, p6

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v2

    new-array v15, v2, [I

    invoke-interface/range {v27 .. v27}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v31

    :goto_0
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v26, v30

    check-cast v26, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;

    invoke-virtual/range {v26 .. v26}, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->getEntryLength()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    move/from16 v0, v24

    if-ge v2, v0, :cond_5

    sget-boolean v2, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string/jumbo v2, "Avrcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Adding item "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    add-int/lit8 v29, v13, 0x1

    invoke-virtual/range {v26 .. v26}, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->getEntryLength()I

    move-result v2

    aput v2, v15, v13

    invoke-virtual/range {v26 .. v26}, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->retrieveMediaItemEntry()[B

    move-result-object v28

    const/16 v25, 0x0

    :goto_1
    move-object/from16 v0, v28

    array-length v2, v0

    move/from16 v0, v25

    if-ge v0, v2, :cond_4

    add-int v2, v32, v25

    aget-byte v3, v28, v25

    aput-byte v3, p7, v2

    add-int/lit8 v25, v25, 0x1

    goto :goto_1

    :cond_4
    move-object/from16 v0, v28

    array-length v2, v0

    add-int v32, v32, v2

    move-object/from16 v0, v28

    array-length v2, v0

    add-int/lit8 v2, v2, 0x2

    sub-int v24, v24, v2

    move/from16 v13, v29

    goto :goto_0

    :cond_5
    sget-boolean v2, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v2, :cond_6

    const-string/jumbo v2, "Avrcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Filled number of items "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/4 v11, 0x4

    const/4 v12, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v14, p7

    invoke-direct/range {v9 .. v15}, Lcom/android/bluetooth/avrcp/Avrcp;->getFolderItemsRspNative([BBII[B[I)Z

    return-void
.end method

.method private oldApiGetFolderItemsVirtualFileSystem([BJJI[BB[I)V
    .locals 56

    const/4 v4, 0x1

    new-array v10, v4, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v4, v10, v5

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->semGetAudioFocusedPackageName()Ljava/lang/String;

    move-result-object v39

    if-eqz v39, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-direct {v0, v1}, Lcom/android/bluetooth/avrcp/Avrcp;->isSamsungNativePlayer(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    const/16 v41, 0x0

    const/16 v52, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mPathStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    sput-object v4, Lcom/android/bluetooth/avrcp/Avrcp;->currentPath:Ljava/lang/String;

    sget-boolean v4, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string/jumbo v4, "Avrcp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Currentpath is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/bluetooth/avrcp/Avrcp;->currentPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v4, Lcom/android/bluetooth/avrcp/Avrcp;->currentPath:Ljava/lang/String;

    const-string/jumbo v5, "Samsung Mobile Phone 0515"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/16 v49, 0x0

    const/4 v4, 0x3

    new-array v0, v4, [Lcom/android/bluetooth/avrcp/Avrcp$Folder;

    move-object/from16 v45, v0

    new-instance v12, Lcom/android/bluetooth/avrcp/Avrcp$Folder;

    const-string/jumbo v17, "SONGS"

    const-wide/16 v14, 0x2

    const/16 v16, 0x1

    move-object/from16 v13, p0

    invoke-direct/range {v12 .. v17}, Lcom/android/bluetooth/avrcp/Avrcp$Folder;-><init>(Lcom/android/bluetooth/avrcp/Avrcp;JBLjava/lang/String;)V

    const/4 v4, 0x0

    aput-object v12, v45, v4

    new-instance v12, Lcom/android/bluetooth/avrcp/Avrcp$Folder;

    const-string/jumbo v17, "ARTISTS"

    const-wide/16 v14, 0x3

    const/16 v16, 0x3

    move-object/from16 v13, p0

    invoke-direct/range {v12 .. v17}, Lcom/android/bluetooth/avrcp/Avrcp$Folder;-><init>(Lcom/android/bluetooth/avrcp/Avrcp;JBLjava/lang/String;)V

    const/4 v4, 0x1

    aput-object v12, v45, v4

    new-instance v12, Lcom/android/bluetooth/avrcp/Avrcp$Folder;

    const-string/jumbo v17, "ALBUMS"

    const-wide/16 v14, 0x1

    const/16 v16, 0x2

    move-object/from16 v13, p0

    invoke-direct/range {v12 .. v17}, Lcom/android/bluetooth/avrcp/Avrcp$Folder;-><init>(Lcom/android/bluetooth/avrcp/Avrcp;JBLjava/lang/String;)V

    const/4 v4, 0x2

    aput-object v12, v45, v4

    move-object/from16 v0, v45

    array-length v4, v0

    new-array v0, v4, [I

    move-object/from16 v17, v0

    move-object/from16 v0, v45

    array-length v4, v0

    int-to-long v4, v4

    cmp-long v4, p2, v4

    if-ltz v4, :cond_3

    const/4 v4, 0x1

    new-array v0, v4, [I

    move-object/from16 v17, v0

    const/16 v13, 0xb

    const/4 v14, 0x0

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move/from16 v15, v49

    move-object/from16 v16, p7

    invoke-direct/range {v11 .. v17}, Lcom/android/bluetooth/avrcp/Avrcp;->getFolderItemsRspNative([BBII[B[I)Z

    return-void

    :cond_2
    const/16 v6, 0x15

    const/4 v7, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v9, p7

    invoke-direct/range {v4 .. v10}, Lcom/android/bluetooth/avrcp/Avrcp;->getFolderItemsRspNative([BBII[B[I)Z

    return-void

    :cond_3
    sget-boolean v4, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v4, :cond_2e

    const-string/jumbo v4, "Avrcp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "end::"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p4

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "  start::"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v15, v49

    :cond_4
    :goto_0
    int-to-long v4, v15

    sub-long v6, p4, p2

    cmp-long v4, v4, v6

    if-gtz v4, :cond_6

    move-object/from16 v0, v45

    array-length v4, v0

    move-wide/from16 v0, p2

    long-to-int v5, v0

    sub-int/2addr v4, v5

    if-ge v15, v4, :cond_6

    move-wide/from16 v0, p2

    long-to-int v4, v0

    add-int/2addr v4, v15

    aget-object v4, v45, v4

    invoke-virtual {v4}, Lcom/android/bluetooth/avrcp/Avrcp$Folder;->getEntryLength()I

    move-result v4

    aput v4, v17, v15

    move-wide/from16 v0, p2

    long-to-int v4, v0

    add-int/2addr v4, v15

    aget-object v4, v45, v4

    invoke-virtual {v4}, Lcom/android/bluetooth/avrcp/Avrcp$Folder;->retrieveFolderItemEntry()[B

    move-result-object v43

    const/16 v41, 0x0

    :goto_1
    move-object/from16 v0, v43

    array-length v4, v0

    move/from16 v0, v41

    if-ge v0, v4, :cond_5

    add-int v4, v52, v41

    aget-byte v5, v43, v41

    aput-byte v5, p7, v4

    add-int/lit8 v41, v41, 0x1

    goto :goto_1

    :cond_5
    move-object/from16 v0, v43

    array-length v4, v0

    add-int v52, v52, v4

    add-int/lit8 v15, v15, 0x1

    sget-boolean v4, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v4, :cond_4

    const-string/jumbo v4, "Avrcp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Added item "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    const/4 v13, 0x4

    const/4 v14, 0x0

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v16, p7

    invoke-direct/range {v11 .. v17}, Lcom/android/bluetooth/avrcp/Avrcp;->getFolderItemsRspNative([BBII[B[I)Z

    :cond_7
    :goto_2
    return-void

    :cond_8
    sget-object v4, Lcom/android/bluetooth/avrcp/Avrcp;->currentPath:Ljava/lang/String;

    const-string/jumbo v5, "SONGS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/16 v52, 0x0

    const/16 v47, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaBrowser:Lcom/samsung/bt/avrcp/BluetoothMediaBrowser;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v30, 0x0

    move-wide/from16 v24, p2

    move-wide/from16 v26, p4

    move/from16 v28, p8

    move-object/from16 v29, p9

    invoke-virtual/range {v18 .. v30}, Lcom/samsung/bt/avrcp/BluetoothMediaBrowser;->getMediaElementItems(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJI[I[J)Ljava/util/List;

    move-result-object v47

    if-eqz v47, :cond_9

    invoke-interface/range {v47 .. v47}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_a

    :cond_9
    const/16 v6, 0xb

    const/4 v7, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v9, p7

    invoke-direct/range {v4 .. v10}, Lcom/android/bluetooth/avrcp/Avrcp;->getFolderItemsRspNative([BBII[B[I)Z

    return-void

    :cond_a
    const/4 v15, 0x0

    move/from16 v40, p6

    invoke-interface/range {v47 .. v47}, Ljava/util/List;->size()I

    move-result v4

    new-array v0, v4, [I

    move-object/from16 v24, v0

    invoke-interface/range {v47 .. v47}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v51

    :goto_3
    invoke-interface/range {v51 .. v51}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface/range {v51 .. v51}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v50

    move-object/from16 v46, v50

    check-cast v46, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;

    invoke-virtual/range {v46 .. v46}, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->getEntryLength()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    move/from16 v0, v40

    if-ge v4, v0, :cond_d

    sget-boolean v4, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v4, :cond_b

    const-string/jumbo v4, "Avrcp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Adding item "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    add-int/lit8 v49, v15, 0x1

    invoke-virtual/range {v46 .. v46}, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->getEntryLength()I

    move-result v4

    aput v4, v24, v15

    invoke-virtual/range {v46 .. v46}, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->retrieveMediaItemEntry()[B

    move-result-object v48

    const/16 v41, 0x0

    :goto_4
    move-object/from16 v0, v48

    array-length v4, v0

    move/from16 v0, v41

    if-ge v0, v4, :cond_c

    add-int v4, v52, v41

    aget-byte v5, v48, v41

    aput-byte v5, p7, v4

    add-int/lit8 v41, v41, 0x1

    goto :goto_4

    :cond_c
    move-object/from16 v0, v48

    array-length v4, v0

    add-int v52, v52, v4

    move-object/from16 v0, v48

    array-length v4, v0

    add-int/lit8 v4, v4, 0x2

    sub-int v40, v40, v4

    move/from16 v15, v49

    goto :goto_3

    :cond_d
    sget-boolean v4, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v4, :cond_e

    const-string/jumbo v4, "Avrcp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Filled number of items "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    const/16 v20, 0x4

    const/16 v21, 0x0

    move-object/from16 v18, p0

    move-object/from16 v19, p1

    move/from16 v22, v15

    move-object/from16 v23, p7

    invoke-direct/range {v18 .. v24}, Lcom/android/bluetooth/avrcp/Avrcp;->getFolderItemsRspNative([BBII[B[I)Z

    goto/16 :goto_2

    :cond_f
    sget-object v4, Lcom/android/bluetooth/avrcp/Avrcp;->currentPath:Ljava/lang/String;

    const-string/jumbo v5, "ALBUMS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    const/16 v52, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaBrowser:Lcom/samsung/bt/avrcp/BluetoothMediaBrowser;

    move-wide/from16 v0, p2

    move-wide/from16 v2, p4

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/samsung/bt/avrcp/BluetoothMediaBrowser;->getAlbumList(JJ)Ljava/util/List;

    move-result-object v44

    if-nez v44, :cond_10

    const/16 v6, 0xb

    const/4 v7, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v9, p7

    invoke-direct/range {v4 .. v10}, Lcom/android/bluetooth/avrcp/Avrcp;->getFolderItemsRspNative([BBII[B[I)Z

    return-void

    :cond_10
    const/4 v15, 0x0

    move/from16 v40, p6

    invoke-interface/range {v44 .. v44}, Ljava/util/List;->size()I

    move-result v4

    new-array v0, v4, [I

    move-object/from16 v17, v0

    invoke-interface/range {v44 .. v44}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v51

    :goto_5
    invoke-interface/range {v51 .. v51}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface/range {v51 .. v51}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v50

    move-object/from16 v42, v50

    check-cast v42, Lcom/android/bluetooth/avrcp/Avrcp$Folder;

    invoke-virtual/range {v42 .. v42}, Lcom/android/bluetooth/avrcp/Avrcp$Folder;->getEntryLength()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    move/from16 v0, v40

    if-ge v4, v0, :cond_13

    sget-boolean v4, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v4, :cond_11

    const-string/jumbo v4, "Avrcp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Adding item "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    add-int/lit8 v49, v15, 0x1

    invoke-virtual/range {v42 .. v42}, Lcom/android/bluetooth/avrcp/Avrcp$Folder;->getEntryLength()I

    move-result v4

    aput v4, v17, v15

    invoke-virtual/range {v42 .. v42}, Lcom/android/bluetooth/avrcp/Avrcp$Folder;->retrieveFolderItemEntry()[B

    move-result-object v43

    const/16 v41, 0x0

    :goto_6
    move-object/from16 v0, v43

    array-length v4, v0

    move/from16 v0, v41

    if-ge v0, v4, :cond_12

    add-int v4, v52, v41

    aget-byte v5, v43, v41

    aput-byte v5, p7, v4

    add-int/lit8 v41, v41, 0x1

    goto :goto_6

    :cond_12
    move-object/from16 v0, v43

    array-length v4, v0

    add-int v52, v52, v4

    move-object/from16 v0, v43

    array-length v4, v0

    add-int/lit8 v4, v4, 0x2

    sub-int v40, v40, v4

    move/from16 v15, v49

    goto :goto_5

    :cond_13
    sget-boolean v4, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v4, :cond_14

    const-string/jumbo v4, "Avrcp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Filled number of items "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    const/4 v13, 0x4

    const/4 v14, 0x0

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v16, p7

    invoke-direct/range {v11 .. v17}, Lcom/android/bluetooth/avrcp/Avrcp;->getFolderItemsRspNative([BBII[B[I)Z

    goto/16 :goto_2

    :cond_15
    sget-object v4, Lcom/android/bluetooth/avrcp/Avrcp;->currentPath:Ljava/lang/String;

    const-string/jumbo v5, "ALBUMS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1e

    sget-object v4, Lcom/android/bluetooth/avrcp/Avrcp;->currentPath:Ljava/lang/String;

    const-string/jumbo v5, "ALBUMS"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    sget-object v6, Lcom/android/bluetooth/avrcp/Avrcp;->currentPath:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v53

    sget-boolean v4, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v4, :cond_16

    const-string/jumbo v4, "Avrcp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "uid string is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v53

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    invoke-static/range {v53 .. v53}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v54

    sget-boolean v4, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v4, :cond_17

    const-string/jumbo v4, "Avrcp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "uid  is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v54

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    const/16 v52, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaBrowser:Lcom/samsung/bt/avrcp/BluetoothMediaBrowser;

    move-object/from16 v26, v0

    invoke-static/range {v54 .. v55}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v28

    const/16 v27, 0x1

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v38, 0x0

    move-wide/from16 v32, p2

    move-wide/from16 v34, p4

    move/from16 v36, p8

    move-object/from16 v37, p9

    invoke-virtual/range {v26 .. v38}, Lcom/samsung/bt/avrcp/BluetoothMediaBrowser;->getMediaElementItems(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJI[I[J)Ljava/util/List;

    move-result-object v47

    if-eqz v47, :cond_18

    invoke-interface/range {v47 .. v47}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_19

    :cond_18
    const/16 v6, 0xb

    const/4 v7, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v9, p7

    invoke-direct/range {v4 .. v10}, Lcom/android/bluetooth/avrcp/Avrcp;->getFolderItemsRspNative([BBII[B[I)Z

    return-void

    :cond_19
    const/4 v15, 0x0

    move/from16 v40, p6

    invoke-interface/range {v47 .. v47}, Ljava/util/List;->size()I

    move-result v4

    new-array v0, v4, [I

    move-object/from16 v24, v0

    invoke-interface/range {v47 .. v47}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v51

    :goto_7
    invoke-interface/range {v51 .. v51}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-interface/range {v51 .. v51}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v50

    move-object/from16 v46, v50

    check-cast v46, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;

    invoke-virtual/range {v46 .. v46}, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->getEntryLength()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    move/from16 v0, v40

    if-ge v4, v0, :cond_1c

    sget-boolean v4, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v4, :cond_1a

    const-string/jumbo v4, "Avrcp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Adding item "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    add-int/lit8 v49, v15, 0x1

    invoke-virtual/range {v46 .. v46}, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->getEntryLength()I

    move-result v4

    aput v4, v24, v15

    invoke-virtual/range {v46 .. v46}, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->retrieveMediaItemEntry()[B

    move-result-object v48

    const/16 v41, 0x0

    :goto_8
    move-object/from16 v0, v48

    array-length v4, v0

    move/from16 v0, v41

    if-ge v0, v4, :cond_1b

    add-int v4, v52, v41

    aget-byte v5, v48, v41

    aput-byte v5, p7, v4

    add-int/lit8 v41, v41, 0x1

    goto :goto_8

    :cond_1b
    move-object/from16 v0, v48

    array-length v4, v0

    add-int v52, v52, v4

    move-object/from16 v0, v48

    array-length v4, v0

    add-int/lit8 v4, v4, 0x2

    sub-int v40, v40, v4

    move/from16 v15, v49

    goto :goto_7

    :cond_1c
    sget-boolean v4, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v4, :cond_1d

    const-string/jumbo v4, "Avrcp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Filled number of items "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    const/16 v20, 0x4

    const/16 v21, 0x0

    move-object/from16 v18, p0

    move-object/from16 v19, p1

    move/from16 v22, v15

    move-object/from16 v23, p7

    invoke-direct/range {v18 .. v24}, Lcom/android/bluetooth/avrcp/Avrcp;->getFolderItemsRspNative([BBII[B[I)Z

    goto/16 :goto_2

    :cond_1e
    sget-object v4, Lcom/android/bluetooth/avrcp/Avrcp;->currentPath:Ljava/lang/String;

    const-string/jumbo v5, "ARTISTS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    sget-boolean v4, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v4, :cond_1f

    const-string/jumbo v4, "Avrcp"

    const-string/jumbo v5, "Sending Artist List"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    const/16 v52, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaBrowser:Lcom/samsung/bt/avrcp/BluetoothMediaBrowser;

    move-wide/from16 v0, p2

    move-wide/from16 v2, p4

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/samsung/bt/avrcp/BluetoothMediaBrowser;->getArtistList(JJ)Ljava/util/List;

    move-result-object v44

    if-nez v44, :cond_20

    const/16 v6, 0xb

    const/4 v7, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v9, p7

    invoke-direct/range {v4 .. v10}, Lcom/android/bluetooth/avrcp/Avrcp;->getFolderItemsRspNative([BBII[B[I)Z

    return-void

    :cond_20
    const/4 v15, 0x0

    move/from16 v40, p6

    invoke-interface/range {v44 .. v44}, Ljava/util/List;->size()I

    move-result v4

    new-array v0, v4, [I

    move-object/from16 v17, v0

    invoke-interface/range {v44 .. v44}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v51

    :goto_9
    invoke-interface/range {v51 .. v51}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-interface/range {v51 .. v51}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v50

    move-object/from16 v42, v50

    check-cast v42, Lcom/android/bluetooth/avrcp/Avrcp$Folder;

    invoke-virtual/range {v42 .. v42}, Lcom/android/bluetooth/avrcp/Avrcp$Folder;->getEntryLength()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    move/from16 v0, v40

    if-ge v4, v0, :cond_23

    sget-boolean v4, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v4, :cond_21

    const-string/jumbo v4, "Avrcp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Adding item "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    add-int/lit8 v49, v15, 0x1

    invoke-virtual/range {v42 .. v42}, Lcom/android/bluetooth/avrcp/Avrcp$Folder;->getEntryLength()I

    move-result v4

    aput v4, v17, v15

    invoke-virtual/range {v42 .. v42}, Lcom/android/bluetooth/avrcp/Avrcp$Folder;->retrieveFolderItemEntry()[B

    move-result-object v43

    const/16 v41, 0x0

    :goto_a
    move-object/from16 v0, v43

    array-length v4, v0

    move/from16 v0, v41

    if-ge v0, v4, :cond_22

    add-int v4, v52, v41

    aget-byte v5, v43, v41

    aput-byte v5, p7, v4

    add-int/lit8 v41, v41, 0x1

    goto :goto_a

    :cond_22
    move-object/from16 v0, v43

    array-length v4, v0

    add-int v52, v52, v4

    move-object/from16 v0, v43

    array-length v4, v0

    add-int/lit8 v4, v4, 0x2

    sub-int v40, v40, v4

    move/from16 v15, v49

    goto :goto_9

    :cond_23
    sget-boolean v4, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v4, :cond_24

    const-string/jumbo v4, "Avrcp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Filled number of items "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    const/4 v13, 0x4

    const/4 v14, 0x0

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v16, p7

    invoke-direct/range {v11 .. v17}, Lcom/android/bluetooth/avrcp/Avrcp;->getFolderItemsRspNative([BBII[B[I)Z

    goto/16 :goto_2

    :cond_25
    sget-object v4, Lcom/android/bluetooth/avrcp/Avrcp;->currentPath:Ljava/lang/String;

    const-string/jumbo v5, "ARTISTS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    sget-object v4, Lcom/android/bluetooth/avrcp/Avrcp;->currentPath:Ljava/lang/String;

    const-string/jumbo v5, "ARTISTS"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    sget-object v6, Lcom/android/bluetooth/avrcp/Avrcp;->currentPath:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v53

    sget-boolean v4, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v4, :cond_26

    const-string/jumbo v4, "Avrcp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "uid string is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v53

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    invoke-static/range {v53 .. v53}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v54

    sget-boolean v4, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v4, :cond_27

    const-string/jumbo v4, "Avrcp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "uid  is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v54

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    const/16 v52, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaBrowser:Lcom/samsung/bt/avrcp/BluetoothMediaBrowser;

    move-object/from16 v26, v0

    invoke-static/range {v54 .. v55}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v29

    const/16 v27, 0x1

    const/16 v28, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v38, 0x0

    move-wide/from16 v32, p2

    move-wide/from16 v34, p4

    move/from16 v36, p8

    move-object/from16 v37, p9

    invoke-virtual/range {v26 .. v38}, Lcom/samsung/bt/avrcp/BluetoothMediaBrowser;->getMediaElementItems(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJI[I[J)Ljava/util/List;

    move-result-object v47

    if-eqz v47, :cond_28

    invoke-interface/range {v47 .. v47}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_29

    :cond_28
    const/16 v6, 0xb

    const/4 v7, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v9, p7

    invoke-direct/range {v4 .. v10}, Lcom/android/bluetooth/avrcp/Avrcp;->getFolderItemsRspNative([BBII[B[I)Z

    return-void

    :cond_29
    const/4 v15, 0x0

    move/from16 v40, p6

    invoke-interface/range {v47 .. v47}, Ljava/util/List;->size()I

    move-result v4

    new-array v0, v4, [I

    move-object/from16 v24, v0

    invoke-interface/range {v47 .. v47}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v51

    :goto_b
    invoke-interface/range {v51 .. v51}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2c

    invoke-interface/range {v51 .. v51}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v50

    move-object/from16 v46, v50

    check-cast v46, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;

    invoke-virtual/range {v46 .. v46}, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->getEntryLength()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    move/from16 v0, v40

    if-ge v4, v0, :cond_2c

    sget-boolean v4, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v4, :cond_2a

    const-string/jumbo v4, "Avrcp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Adding item "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    add-int/lit8 v49, v15, 0x1

    invoke-virtual/range {v46 .. v46}, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->getEntryLength()I

    move-result v4

    aput v4, v24, v15

    invoke-virtual/range {v46 .. v46}, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->retrieveMediaItemEntry()[B

    move-result-object v48

    const/16 v41, 0x0

    :goto_c
    move-object/from16 v0, v48

    array-length v4, v0

    move/from16 v0, v41

    if-ge v0, v4, :cond_2b

    add-int v4, v52, v41

    aget-byte v5, v48, v41

    aput-byte v5, p7, v4

    add-int/lit8 v41, v41, 0x1

    goto :goto_c

    :cond_2b
    move-object/from16 v0, v48

    array-length v4, v0

    add-int v52, v52, v4

    move-object/from16 v0, v48

    array-length v4, v0

    add-int/lit8 v4, v4, 0x2

    sub-int v40, v40, v4

    move/from16 v15, v49

    goto :goto_b

    :cond_2c
    sget-boolean v4, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v4, :cond_2d

    const-string/jumbo v4, "Avrcp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Filled number of items "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    const/16 v20, 0x4

    const/16 v21, 0x0

    move-object/from16 v18, p0

    move-object/from16 v19, p1

    move/from16 v22, v15

    move-object/from16 v23, p7

    invoke-direct/range {v18 .. v24}, Lcom/android/bluetooth/avrcp/Avrcp;->getFolderItemsRspNative([BBII[B[I)Z

    goto/16 :goto_2

    :cond_2e
    move/from16 v15, v49

    goto/16 :goto_0
.end method

.method private oldApiGetItemAttributes([BBJIB[I)V
    .locals 33

    sget-boolean v2, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "Avrcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " getItemAttributes scope::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v2, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "Avrcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " getItemAttributes trackid::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-boolean v2, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "Avrcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " getItemAttributes uidCounter::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-boolean v2, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string/jumbo v2, "Avrcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " getItemAttributes attribute count::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v5, 0x1

    const/4 v2, 0x1

    new-array v6, v2, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v2, v6, v3

    const/16 v26, 0x0

    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "Not Available"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v2, v7, v3

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-byte v0, v1, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentScope:B

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->semGetAudioFocusedPackageName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/bluetooth/avrcp/Avrcp;->isSamsungNativePlayer(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "Avrcp"

    const-string/jumbo v3, "activated player does not support browsing"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x15

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/bluetooth/avrcp/Avrcp;->setGetItemAttributesRspNative([BBB[I[Ljava/lang/String;)Z

    return-void

    :cond_4
    const-wide/16 v2, 0x1

    cmp-long v2, p3, v2

    if-gez v2, :cond_7

    const/4 v2, 0x3

    move/from16 v0, p2

    if-eq v0, v2, :cond_7

    :cond_5
    sget-boolean v2, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v2, :cond_6

    const-string/jumbo v2, "Avrcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " uid is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/16 v4, 0x9

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/bluetooth/avrcp/Avrcp;->setGetItemAttributesRspNative([BBB[I[Ljava/lang/String;)Z

    return-void

    :cond_7
    const-wide/16 v2, -0x1

    cmp-long v2, p3, v2

    if-eqz v2, :cond_5

    const/4 v2, 0x2

    move/from16 v0, p2

    if-ne v0, v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mSearchMap:Ljava/util/HashMap;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mSearchMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    const-string/jumbo v2, "Avrcp"

    const-string/jumbo v3, "search map is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    new-array v12, v2, [I

    const/16 v10, 0x9

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move v11, v5

    move-object v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/android/bluetooth/avrcp/Avrcp;->setGetItemAttributesRspNative([BBB[I[Ljava/lang/String;)Z

    return-void

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mSearchMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :cond_a
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/Map$Entry;

    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Long;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, p3

    if-nez v2, :cond_a

    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Long;

    sget-boolean v2, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v2, :cond_b

    const-string/jumbo v2, "Avrcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Track uid is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " for uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_0
    const-wide/16 v30, 0x0

    if-eqz v26, :cond_1b

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v30

    const/16 v28, 0x0

    const/4 v2, 0x3

    move/from16 v0, p2

    if-ne v0, v2, :cond_1c

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaBrowser:Lcom/samsung/bt/avrcp/BluetoothMediaBrowser;

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v20, 0x0

    move/from16 v18, p6

    move-object/from16 v19, p7

    invoke-virtual/range {v8 .. v20}, Lcom/samsung/bt/avrcp/BluetoothMediaBrowser;->getMediaElementItems(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJI[I[J)Ljava/util/List;

    move-result-object v28

    :goto_1
    if-eqz v28, :cond_1e

    const/4 v2, 0x0

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;

    const/16 v23, 0x0

    const/16 v29, 0x0

    sget-boolean v2, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v2, :cond_c

    const-string/jumbo v2, "Avrcp"

    const-string/jumbo v3, "Check for totalMedia COunt att"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    const/16 v24, 0x0

    :goto_2
    move-object/from16 v0, v27

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->mAttrIds:[I

    array-length v2, v2

    move/from16 v0, v24

    if-ge v0, v2, :cond_e

    move-object/from16 v0, v27

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->mAttrIds:[I

    aget v2, v2, v24

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1d

    const/16 v23, 0x1

    sget-boolean v2, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v2, :cond_d

    const-string/jumbo v2, "Avrcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Found request for totalMedia COunt att "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    move/from16 v29, v24

    :cond_e
    if-eqz v23, :cond_f

    move-object/from16 v0, v27

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->mAttrVal:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mMetadata:Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    invoke-static {v3}, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->-get3(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v29

    :cond_f
    move-object/from16 v0, v27

    iget-byte v11, v0, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->mNumAttrs:B

    move-object/from16 v0, v27

    iget-object v12, v0, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->mAttrIds:[I

    move-object/from16 v0, v27

    iget-object v13, v0, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->mAttrVal:[Ljava/lang/String;

    const/4 v10, 0x4

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-direct/range {v8 .. v13}, Lcom/android/bluetooth/avrcp/Avrcp;->setGetItemAttributesRspNative([BBB[I[Ljava/lang/String;)Z

    :goto_3
    return-void

    :cond_10
    const/4 v2, 0x3

    move/from16 v0, p2

    if-ne v0, v2, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mNowPlayingList:[J

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mNowPlayingList:[J

    array-length v2, v2

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mNowPlayingList:[J

    array-length v2, v2

    int-to-long v2, v2

    cmp-long v2, p3, v2

    if-gtz v2, :cond_17

    sget-boolean v2, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v2, :cond_11

    const-string/jumbo v2, "Avrcp"

    const-string/jumbo v3, " getItemAttributes mNowPlayingList "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-nez v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mMetadata:Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->-get4(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;)J

    move-result-wide v2

    const-wide/16 v8, 0x0

    cmp-long v2, v2, v8

    if-eqz v2, :cond_13

    sget-boolean v2, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v2, :cond_12

    const-string/jumbo v2, "Avrcp"

    const-string/jumbo v3, " getItemAttributes is 0 , send now song "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mNowPlayingList:[J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mMetadata:Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    invoke-static {v3}, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->-get4(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;)J

    move-result-wide v8

    long-to-int v3, v8

    add-int/lit8 v3, v3, -0x1

    aget-wide v2, v2, v3

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    goto/16 :goto_0

    :cond_13
    sget-boolean v2, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v2, :cond_14

    const-string/jumbo v2, "Avrcp"

    const-string/jumbo v3, " getItemAttributes is 0 , But now song is 0 "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    const/16 v4, 0x9

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/bluetooth/avrcp/Avrcp;->setGetItemAttributesRspNative([BBB[I[Ljava/lang/String;)Z

    return-void

    :cond_15
    sget-boolean v2, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v2, :cond_16

    const-string/jumbo v2, "Avrcp"

    const-string/jumbo v3, " getItemAttributes is not null send meta of uid "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mNowPlayingList:[J

    move-wide/from16 v0, p3

    long-to-int v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-wide v2, v2, v3

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    goto/16 :goto_0

    :cond_17
    sget-boolean v2, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v2, :cond_18

    const-string/jumbo v2, "Avrcp"

    const-string/jumbo v3, " getItemAttributes is 0 , But mNowPlayingList is Null!! "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    const/16 v4, 0x9

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/bluetooth/avrcp/Avrcp;->setGetItemAttributesRspNative([BBB[I[Ljava/lang/String;)Z

    return-void

    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mVirtualFileSystemList:[J

    if-eqz v2, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mVirtualFileSystemList:[J

    array-length v2, v2

    if-eqz v2, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mVirtualFileSystemList:[J

    array-length v2, v2

    int-to-long v2, v2

    cmp-long v2, p3, v2

    if-gtz v2, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mVirtualFileSystemList:[J

    move-wide/from16 v0, p3

    long-to-int v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-wide v2, v2, v3

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    goto/16 :goto_0

    :cond_1a
    const/16 v4, 0x9

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/bluetooth/avrcp/Avrcp;->setGetItemAttributesRspNative([BBB[I[Ljava/lang/String;)Z

    return-void

    :cond_1b
    const-string/jumbo v2, "Avrcp"

    const-string/jumbo v3, "uid is null from hashmap"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    new-array v12, v2, [I

    const/16 v10, 0x9

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move v11, v5

    move-object v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/android/bluetooth/avrcp/Avrcp;->setGetItemAttributesRspNative([BBB[I[Ljava/lang/String;)Z

    return-void

    :cond_1c
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaBrowser:Lcom/samsung/bt/avrcp/BluetoothMediaBrowser;

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v20, 0x0

    move/from16 v18, p6

    move-object/from16 v19, p7

    invoke-virtual/range {v8 .. v20}, Lcom/samsung/bt/avrcp/BluetoothMediaBrowser;->getMediaElementItems(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJI[I[J)Ljava/util/List;

    move-result-object v28

    goto/16 :goto_1

    :cond_1d
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_2

    :cond_1e
    const-string/jumbo v2, "Avrcp"

    const-string/jumbo v3, "media element is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x9

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/bluetooth/avrcp/Avrcp;->setGetItemAttributesRspNative([BBB[I[Ljava/lang/String;)Z

    goto/16 :goto_3
.end method

.method private oldApiPlayItem(B[BI)V
    .locals 22

    sget-boolean v17, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v17, :cond_0

    const-string/jumbo v17, "Avrcp"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "playItem uid counter:: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "  scope::"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-wide/16 v6, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    invoke-static/range {p2 .. p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v16

    sget-object v17, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual/range {v16 .. v17}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual/range {v16 .. v16}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v6

    const/16 v17, 0x3

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mNowPlayingList:[J

    :goto_0
    if-eqz v10, :cond_9

    sget-boolean v17, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v17, :cond_1

    const-string/jumbo v17, "Avrcp"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "playItemList.length = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    array-length v0, v10

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ", id = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    array-length v0, v10

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    cmp-long v17, v18, v6

    if-ltz v17, :cond_2

    const-wide/16 v18, 0x0

    cmp-long v17, v6, v18

    if-gtz v17, :cond_4

    :cond_2
    const-string/jumbo v17, "Avrcp"

    const-string/jumbo v18, "tracknum is not exist in playItemList"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v17, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/bluetooth/avrcp/Avrcp;->setPlayItemRspNative(B)Z

    return-void

    :cond_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mVirtualFileSystemList:[J

    goto :goto_0

    :cond_4
    long-to-int v0, v6

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    aget-wide v18, v10, v17

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    sget-boolean v17, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v17, :cond_5

    const-string/jumbo v17, "Avrcp"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, " playItem id = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ", lUid = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const-wide/16 v14, 0x0

    if-eqz v8, :cond_d

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const/4 v4, 0x0

    const/16 v17, 0x0

    array-length v0, v10

    move/from16 v18, v0

    :goto_1
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_7

    aget-wide v12, v10, v17

    sget-boolean v19, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v19, :cond_6

    const-string/jumbo v19, "Avrcp"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, " playItem u = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ", uid = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    cmp-long v19, v12, v14

    if-nez v19, :cond_a

    :cond_7
    sput v4, Lcom/android/bluetooth/avrcp/Avrcp;->POSITION:I

    sget-boolean v17, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v17, :cond_8

    const-string/jumbo v17, "Avrcp"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "updated list by "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " Song index is "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    move-object/from16 v17, v0

    if-eqz v17, :cond_c

    array-length v0, v10

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v11, v0, [J

    const/4 v5, 0x0

    :goto_2
    array-length v0, v10

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v5, v0, :cond_b

    aget-wide v18, v10, v5

    aput-wide v18, v11, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_9
    const/16 v17, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/bluetooth/avrcp/Avrcp;->setPlayItemRspNative(B)Z

    const-string/jumbo v17, "Avrcp"

    const-string/jumbo v18, "mVirtualFileSystemList or mNowPlayingList is null!!!"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_1

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    move-object/from16 v17, v0

    sget v18, Lcom/android/bluetooth/avrcp/Avrcp;->POSITION:I

    const/16 v19, 0xc9

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v18

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v11}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_c
    const/16 v17, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/bluetooth/avrcp/Avrcp;->setPlayItemRspNative(B)Z

    :cond_d
    return-void
.end method

.method private oldApiSearchMediaItem([BIILjava/lang/String;)V
    .locals 26

    sget-boolean v4, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "Avrcp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Search "

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "title like ? and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "is_music=1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v8, v5

    const-string/jumbo v9, "title_key"

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/bluetooth/avrcp/Avrcp;->mSearchString:Ljava/lang/String;

    const/16 v16, 0x0

    const/4 v11, 0x0

    const/4 v4, 0x6

    new-array v6, v4, [Ljava/lang/String;

    const-string/jumbo v4, "_id"

    const/4 v5, 0x0

    aput-object v4, v6, v5

    const-string/jumbo v4, "title"

    const/4 v5, 0x1

    aput-object v4, v6, v5

    const-string/jumbo v4, "album"

    const/4 v5, 0x2

    aput-object v4, v6, v5

    const-string/jumbo v4, "artist"

    const/4 v5, 0x3

    aput-object v4, v6, v5

    const-string/jumbo v4, "album_id"

    const/4 v5, 0x4

    aput-object v4, v6, v5

    const-string/jumbo v4, "duration"

    const/4 v5, 0x5

    aput-object v4, v6, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mPathStack:Ljava/util/Stack;

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mPathStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->empty()Z

    move-result v4

    if-nez v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mPathStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    sget-boolean v4, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string/jumbo v4, "Avrcp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "currentpath search path is "

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v11, :cond_4

    const-string/jumbo v4, "SONGS"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "Samsung Mobile Phone 0515"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "ALBUMS"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "ARTISTS"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    sget-boolean v4, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v4, :cond_3

    const-string/jumbo v4, "Avrcp"

    const-string/jumbo v5, "Filling virtual list on addressedPlayer changed"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaBrowser:Lcom/samsung/bt/avrcp/BluetoothMediaBrowser;

    const-string/jumbo v5, "SONGS"

    const/16 v22, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v4, v5, v0}, Lcom/samsung/bt/avrcp/BluetoothMediaBrowser;->getMediaElementsUid(Ljava/lang/String;Ljava/lang/String;)[J

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mVirtualFileSystemList:[J

    :cond_4
    const/16 v4, 0x6a

    move/from16 v0, p2

    if-eq v4, v0, :cond_6

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-direct {v0, v1, v4, v5, v2}, Lcom/android/bluetooth/avrcp/Avrcp;->searchMediaItemRspNative([BBII)Z

    :cond_5
    :goto_0
    return-void

    :cond_6
    const/4 v13, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    if-nez v13, :cond_7

    const-string/jumbo v4, "Avrcp"

    const-string/jumbo v5, "Error!!! external Cursor NULL"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-direct {v0, v1, v4, v5, v2}, Lcom/android/bluetooth/avrcp/Avrcp;->searchMediaItemRspNative([BBII)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    if-eqz v13, :cond_5

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :goto_2
    const/4 v13, 0x0

    goto :goto_0

    :cond_7
    :try_start_1
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v16

    sget-boolean v4, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v4, :cond_8

    const-string/jumbo v4, "Avrcp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Total number of items in the list "

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v22, " with search string "

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    if-lez v16, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mSearchMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mSearchMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    :cond_9
    const-wide/16 v14, 0x1

    const-wide/16 v20, 0x0

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_a
    const-string/jumbo v4, "_id"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mVirtualFileSystemList:[J

    const/4 v4, 0x0

    array-length v0, v5

    move/from16 v22, v0

    :goto_3
    move/from16 v0, v22

    if-ge v4, v0, :cond_d

    aget-wide v18, v5, v4

    sget-boolean v23, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v23, :cond_b

    const-string/jumbo v23, "Avrcp"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, " searchMediaItem u = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, ", uid = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    cmp-long v23, v18, v20

    if-nez v23, :cond_10

    sget-boolean v4, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v4, :cond_c

    const-string/jumbo v4, "Avrcp"

    const-string/jumbo v5, " uid found in search list"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mSearchMap:Ljava/util/HashMap;

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v4, 0x1

    add-long/2addr v14, v4

    :cond_d
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mSearchMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v16

    :cond_e
    sget-boolean v4, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v4, :cond_f

    const-string/jumbo v4, "Avrcp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Final number of items added in the list: "

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-direct {v0, v1, v4, v5, v2}, Lcom/android/bluetooth/avrcp/Avrcp;->searchMediaItemRspNative([BBII)Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    :catch_0
    move-exception v17

    :try_start_2
    const-string/jumbo v4, "Avrcp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Catching SecurityException : "

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v13, :cond_5

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    :cond_10
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    :catch_1
    move-exception v10

    :try_start_3
    const-string/jumbo v4, "Avrcp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "CursorIndexOutOfBoundsException"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v13, :cond_5

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    :catch_2
    move-exception v12

    :try_start_4
    const-string/jumbo v4, "Avrcp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "CursorWindowAllocationException"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v13, :cond_5

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    :catchall_0
    move-exception v4

    if-eqz v13, :cond_11

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    const/4 v13, 0x0

    :cond_11
    throw v4
.end method

.method private oldApiSetBrowsedPlayer([BI)V
    .locals 26

    sget-boolean v2, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "Avrcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setBrowsedPlayer::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v23, 0x0

    const/16 v21, 0x0

    const/16 v20, 0x0

    const/4 v13, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x3

    new-array v8, v2, [Ljava/lang/String;

    const-string/jumbo v2, "ALBUMS"

    const/4 v3, 0x0

    aput-object v2, v8, v3

    const-string/jumbo v2, "SONGS"

    const/4 v3, 0x1

    aput-object v2, v8, v3

    const-string/jumbo v2, "ARTISTS"

    const/4 v3, 0x2

    aput-object v2, v8, v3

    const/4 v7, 0x0

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-byte v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentScope:B

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mSearchMap:Ljava/util/HashMap;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mSearchMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaPlayers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaPlayers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :cond_2
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;

    invoke-virtual/range {v19 .. v19}, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->RetrievePlayerId()S

    move-result v2

    move/from16 v0, p2

    if-ne v2, v0, :cond_2

    invoke-virtual/range {v19 .. v19}, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->RetrievePlayerPackageName()Ljava/lang/String;

    move-result-object v23

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/bluetooth/avrcp/Avrcp;->isSamsungNativePlayer(Ljava/lang/String;)Z

    move-result v20

    :cond_3
    const-string/jumbo v2, "Avrcp"

    const-string/jumbo v3, " Updating now playing list upon setBrowedPlayer"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    const/16 v3, 0xcd

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->sendMessage(Landroid/os/Message;)Z

    if-nez v21, :cond_4

    const-string/jumbo v2, "Avrcp"

    const-string/jumbo v3, " PlayerId not found"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x11

    const/4 v5, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/bluetooth/avrcp/Avrcp;->setBrowsedPlayerRspNative([BBIIB[Ljava/lang/String;)Z

    return-void

    :cond_4
    if-nez v20, :cond_5

    const-string/jumbo v2, "Avrcp"

    const-string/jumbo v3, " Player not browsable"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x12

    const/4 v5, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/bluetooth/avrcp/Avrcp;->setBrowsedPlayerRspNative([BBIIB[Ljava/lang/String;)Z

    return-void

    :cond_5
    if-eqz v23, :cond_17

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mPathStack:Ljava/util/Stack;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mPathStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->empty()Z

    move-result v2

    if-nez v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mPathStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    sget-boolean v2, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v2, :cond_6

    const-string/jumbo v2, "Avrcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "currentpath is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_0
    if-eqz v18, :cond_7

    const-string/jumbo v2, "Samsung Mobile Phone 0515"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_7
    :goto_1
    sget-boolean v2, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v2, :cond_8

    const-string/jumbo v2, "Avrcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "set Browse with player id::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " no_of_folders::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " folder_depth::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const/4 v11, 0x4

    const/4 v12, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move v14, v7

    move-object v15, v8

    invoke-direct/range {v9 .. v15}, Lcom/android/bluetooth/avrcp/Avrcp;->setBrowsedPlayerRspNative([BBIIB[Ljava/lang/String;)Z

    :goto_2
    return-void

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mPathStack:Ljava/util/Stack;

    const-string/jumbo v3, "Samsung Mobile Phone 0515"

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_a
    const-string/jumbo v2, "SONGS"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    sget-boolean v2, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v2, :cond_b

    const-string/jumbo v2, "Avrcp"

    const-string/jumbo v3, "changing response for path_songs"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    const/4 v7, 0x1

    const/4 v2, 0x1

    new-array v8, v2, [Ljava/lang/String;

    const-string/jumbo v2, "SONGS"

    const/4 v3, 0x0

    aput-object v2, v8, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mVirtualFileSystemList:[J

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mVirtualFileSystemList:[J

    array-length v13, v2

    goto :goto_1

    :cond_c
    const/4 v13, 0x0

    goto :goto_1

    :cond_d
    const-string/jumbo v2, "ALBUMS"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    sget-boolean v2, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v2, :cond_e

    const-string/jumbo v2, "Avrcp"

    const-string/jumbo v3, "changing response for path_songs"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    const/4 v7, 0x1

    const/4 v2, 0x1

    new-array v8, v2, [Ljava/lang/String;

    const-string/jumbo v2, "ALBUMS"

    const/4 v3, 0x0

    aput-object v2, v8, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaBrowser:Lcom/samsung/bt/avrcp/BluetoothMediaBrowser;

    invoke-virtual {v2}, Lcom/samsung/bt/avrcp/BluetoothMediaBrowser;->getAlbumsCount()I

    move-result v13

    goto/16 :goto_1

    :cond_f
    const-string/jumbo v2, "ALBUMS"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    sget-boolean v2, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v2, :cond_10

    const-string/jumbo v2, "Avrcp"

    const-string/jumbo v3, "changing response for path_songs"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    const-string/jumbo v2, "ALBUMS"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    sget-boolean v2, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v2, :cond_11

    const-string/jumbo v2, "Avrcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "uid string is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaBrowser:Lcom/samsung/bt/avrcp/BluetoothMediaBrowser;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Lcom/samsung/bt/avrcp/BluetoothMediaBrowser;->getMediaCountOfAlbum(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaBrowser:Lcom/samsung/bt/avrcp/BluetoothMediaBrowser;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Lcom/samsung/bt/avrcp/BluetoothMediaBrowser;->getAlbumName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const/4 v7, 0x2

    const/4 v2, 0x2

    new-array v8, v2, [Ljava/lang/String;

    const-string/jumbo v2, "ALBUMS"

    const/4 v3, 0x0

    aput-object v2, v8, v3

    const/4 v2, 0x1

    aput-object v16, v8, v2

    goto/16 :goto_1

    :cond_12
    const-string/jumbo v2, "ARTISTS"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    sget-boolean v2, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v2, :cond_13

    const-string/jumbo v2, "Avrcp"

    const-string/jumbo v3, "changing response for path_songs"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    const/4 v7, 0x1

    const/4 v2, 0x1

    new-array v8, v2, [Ljava/lang/String;

    const-string/jumbo v2, "ARTISTS"

    const/4 v3, 0x0

    aput-object v2, v8, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaBrowser:Lcom/samsung/bt/avrcp/BluetoothMediaBrowser;

    invoke-virtual {v2}, Lcom/samsung/bt/avrcp/BluetoothMediaBrowser;->getArtistsCount()I

    move-result v13

    goto/16 :goto_1

    :cond_14
    const-string/jumbo v2, "ARTISTS"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-boolean v2, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v2, :cond_15

    const-string/jumbo v2, "Avrcp"

    const-string/jumbo v3, "changing response for path_songs"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    const-string/jumbo v2, "ARTISTS"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    sget-boolean v2, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v2, :cond_16

    const-string/jumbo v2, "Avrcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "uid string is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaBrowser:Lcom/samsung/bt/avrcp/BluetoothMediaBrowser;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Lcom/samsung/bt/avrcp/BluetoothMediaBrowser;->getMediaCountOfArtist(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaBrowser:Lcom/samsung/bt/avrcp/BluetoothMediaBrowser;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Lcom/samsung/bt/avrcp/BluetoothMediaBrowser;->getArtistName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const/4 v7, 0x2

    const/4 v2, 0x2

    new-array v8, v2, [Ljava/lang/String;

    const-string/jumbo v2, "ARTISTS"

    const/4 v3, 0x0

    aput-object v2, v8, v3

    const/4 v2, 0x1

    aput-object v17, v8, v2

    goto/16 :goto_1

    :cond_17
    sget-boolean v2, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v2, :cond_18

    const-string/jumbo v2, "Avrcp"

    const-string/jumbo v3, "Error: No such media player available, hence can not be browsed"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    const/16 v4, 0x11

    const/4 v5, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/bluetooth/avrcp/Avrcp;->setBrowsedPlayerRspNative([BBIIB[Ljava/lang/String;)Z

    goto/16 :goto_2
.end method

.method private pickActiveMediaController(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaController;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x6

    const/4 v5, 0x3

    const-string/jumbo v2, "Avrcp"

    const-string/jumbo v3, "pick active media Controller"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcp/Avrcp;->getActivatedController(Ljava/util/List;)Landroid/media/session/MediaController;

    move-result-object v0

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v3}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/session/MediaSession$Token;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "Avrcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pick MediaController but it is same. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mMediaController"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v4}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    if-eqz v0, :cond_9

    :try_start_1
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mActivatedPackage:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mBrowseServiceMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mActivatedPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_3

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mActivatedPackage:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/bluetooth/avrcp/Avrcp;->isSamsungNativePlayer(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "com.google.android.music"

    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mActivatedPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const-string/jumbo v2, "Avrcp"

    const-string/jumbo v3, "Browsing player is installed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/Avrcp;->retryMediaPlayerQuery()V

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/android/bluetooth/avrcp/Avrcp;->composeBrowsingServiceCandidate(Landroid/content/Context;)V

    :cond_3
    sget-boolean v2, Lcom/android/bluetooth/avrcp/Avrcp;->isSamsungMediaBrowser:Z

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mActivatedPackage:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/bluetooth/avrcp/Avrcp;->isSamsungNativePlayer(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/bluetooth/avrcp/Avrcp;->isOldSamsungMusic:Z

    :goto_0
    sget-boolean v2, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string/jumbo v2, "Avrcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isOldSamsungMusic: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/bluetooth/avrcp/Avrcp;->isOldSamsungMusic:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPrevPlayStatus:I

    if-eq v2, v5, :cond_5

    iget v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPrevPlayStatus:I

    if-ne v2, v6, :cond_6

    :cond_5
    const-string/jumbo v2, "Avrcp"

    const-string/jumbo v3, "Media player is changed, reset playback state to pause previously"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/Avrcp;->getPlayPosition()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-direct {p0, v4, v5, v2, v3}, Lcom/android/bluetooth/avrcp/Avrcp;->updatePlayPauseState([BIJ)V

    :cond_6
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mActivatedPackage:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/bluetooth/avrcp/Avrcp;->createAndConnectWithMediaBrowser(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mActivatedPackage:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/bluetooth/avrcp/Avrcp;->notifyActivatedMediaPlayer(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/bluetooth/avrcp/Avrcp;->setUpMediaController(Landroid/media/session/MediaController;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_7
    :goto_1
    monitor-exit p0

    return-void

    :cond_8
    const/4 v2, 0x0

    :try_start_2
    sput-boolean v2, Lcom/android/bluetooth/avrcp/Avrcp;->isOldSamsungMusic:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_9
    :try_start_3
    sget-boolean v2, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v2, :cond_a

    const-string/jumbo v2, "Avrcp"

    const-string/jumbo v3, "mc is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaController:Landroid/media/session/MediaController;

    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaControllerCallbackHandler:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v2, v3}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaController:Landroid/media/session/MediaController;

    :cond_b
    iget-boolean v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->isA2dpPlaying:Z

    if-nez v2, :cond_7

    iget v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPlayState:I

    if-eq v2, v5, :cond_c

    iget v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPlayState:I

    if-ne v2, v6, :cond_7

    :cond_c
    sget-boolean v2, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v2, :cond_d

    const-string/jumbo v2, "Avrcp"

    const-string/jumbo v3, "PlaybackState reset to PAUSE"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/Avrcp;->getPlayPosition()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-direct {p0, v4, v5, v2, v3}, Lcom/android/bluetooth/avrcp/Avrcp;->updatePlayPauseState([BIJ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private playForSec(Ljava/util/List;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;I)V"
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v6, "base_uri"

    sget-object v7, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    new-array v3, v6, [J

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/browse/MediaBrowser$MediaItem;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v4}, Landroid/media/browse/MediaBrowser$MediaItem;->getMediaId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    aput-wide v6, v3, v1

    move v1, v2

    goto :goto_0

    :cond_0
    const-string/jumbo v6, "list"

    invoke-virtual {v0, v6, v3}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    const-string/jumbo v6, "listPosition"

    invoke-virtual {v0, v6, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v6, "Avrcp"

    const-string/jumbo v7, "sendCommand ACTION_PLAY_CONTENTS "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v6}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v6

    const-string/jumbo v7, "com.samsung.musicplus.intent.action.PLAY_CONTENTS"

    invoke-virtual {v6, v7, v0}, Landroid/media/session/MediaController$TransportControls;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method private playItem(B[BI)V
    .locals 1

    sget-boolean v0, Lcom/android/bluetooth/avrcp/Avrcp;->isOldSamsungMusic:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/avrcp/Avrcp;->oldApiPlayItem(B[BI)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/avrcp/Avrcp;->newApiPlayItem(B[BI)V

    goto :goto_0
.end method

.method private processRegisterNotification([BII)V
    .locals 16

    invoke-static/range {p1 .. p1}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v12, v5}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    packed-switch p2, :pswitch_data_0

    :pswitch_0
    sget-boolean v12, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v12, :cond_0

    const-string/jumbo v12, "Avrcp"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "processRegisterNotification: Unhandled Type: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_2
    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const-string/jumbo v12, "Avrcp"

    const-string/jumbo v13, "null addr is returned"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mDeviceEventController:Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-virtual {v12, v4, v13, v14}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->setDeviceEvent(Ljava/util/ArrayList;II)V

    const-string/jumbo v12, "PLAYBACK_STATUS_CHANGED"

    sget v13, Lcom/android/bluetooth/avrcp/Avrcp;->tempPlayStatus:I

    invoke-virtual {v7, v12, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mDeviceEventController:Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-virtual {v12, v4, v13, v14, v7}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->sendNotificationRsp(Ljava/util/ArrayList;IILandroid/os/Bundle;)V

    sget v12, Lcom/android/bluetooth/avrcp/Avrcp;->tempPlayStatus:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPlayState:I

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/bluetooth/avrcp/Avrcp;->convertPlayStateToPlayStatus(I)I

    move-result v13

    if-eq v12, v13, :cond_0

    sget-boolean v12, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v12, :cond_3

    const-string/jumbo v12, "Avrcp"

    const-string/jumbo v13, "CHANGED and INTERIM status are different"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mDeviceEventController:Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-virtual {v12, v4, v13, v14}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->setDeviceEvent(Ljava/util/ArrayList;II)V

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPlayState:I

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/bluetooth/avrcp/Avrcp;->convertPlayStateToPlayStatus(I)I

    move-result v12

    sput v12, Lcom/android/bluetooth/avrcp/Avrcp;->tempPlayStatus:I

    const-string/jumbo v12, "PLAYBACK_STATUS_CHANGED"

    sget v13, Lcom/android/bluetooth/avrcp/Avrcp;->tempPlayStatus:I

    invoke-virtual {v7, v12, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mDeviceEventController:Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-virtual {v12, v4, v13, v14, v7}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->sendNotificationRsp(Ljava/util/ArrayList;IILandroid/os/Bundle;)V

    goto :goto_2

    :pswitch_2
    sget-boolean v12, Lcom/android/bluetooth/avrcp/Avrcp;->playerQueryResult:Z

    if-nez v12, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/avrcp/Avrcp;->retryMediaPlayerQuery()V

    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaPlayers:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_6

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mAddressedPlayerId:I

    if-nez v12, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaPlayers:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;

    invoke-virtual {v3}, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->getPlayerPackageName()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mActivatedPackage:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-virtual {v3}, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->getPlayerId()S

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mAddressedPlayerId:I

    sget-boolean v12, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v12, :cond_6

    const-string/jumbo v12, "Avrcp"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "setting addressed player first time Player ID"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mAddressedPlayerId:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/4 v8, 0x0

    sget-object v12, Lcom/android/bluetooth/avrcp/Avrcp;->disallowBrowsingCarkitAddr:Ljava/lang/String;

    if-eqz v12, :cond_8

    sget-object v12, Lcom/android/bluetooth/avrcp/Avrcp;->disallowBrowsingCarkitAddr:Ljava/lang/String;

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mTempMediaPlayerId:I

    :goto_3
    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mPublishedPlayerID:I

    sget-boolean v12, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v12, :cond_7

    const-string/jumbo v12, "Avrcp"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Process EVT_ADDRESSED_PLAYER_CHANGED Interim: Player ID: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mDeviceEventController:Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    const/4 v13, 0x7

    const/4 v14, 0x0

    invoke-virtual {v12, v4, v13, v14}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->setDeviceEvent(Ljava/util/ArrayList;II)V

    const-string/jumbo v12, "ADDRESSED_PLAYER_CHANGED"

    invoke-virtual {v7, v12, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mDeviceEventController:Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    const/4 v13, 0x7

    const/4 v14, 0x0

    invoke-virtual {v12, v4, v13, v14, v7}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->sendNotificationRsp(Ljava/util/ArrayList;IILandroid/os/Bundle;)V

    goto/16 :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mAddressedPlayerId:I

    goto :goto_3

    :pswitch_3
    sget-boolean v12, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v12, :cond_9

    const-string/jumbo v12, "Avrcp"

    const-string/jumbo v13, "Process EVT_AVAILABLE_PLAYERS_CHANGED Interim"

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mDeviceEventController:Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    const/4 v13, 0x6

    const/4 v14, 0x0

    invoke-virtual {v12, v4, v13, v14}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->setDeviceEvent(Ljava/util/ArrayList;II)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mDeviceEventController:Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    const/4 v13, 0x6

    const/4 v14, 0x0

    invoke-virtual {v12, v4, v13, v14, v7}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->sendNotificationRsp(Ljava/util/ArrayList;IILandroid/os/Bundle;)V

    goto/16 :goto_2

    :pswitch_4
    sget-boolean v12, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v12, :cond_a

    const-string/jumbo v12, "Avrcp"

    const-string/jumbo v13, "Process EVT_NOW_PLAYING_CONTENT_CHANGED Interim"

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mDeviceEventController:Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    const/4 v13, 0x5

    const/4 v14, 0x0

    invoke-virtual {v12, v4, v13, v14}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->setDeviceEvent(Ljava/util/ArrayList;II)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mDeviceEventController:Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    const/4 v13, 0x5

    const/4 v14, 0x0

    invoke-virtual {v12, v4, v13, v14, v7}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->sendNotificationRsp(Ljava/util/ArrayList;IILandroid/os/Bundle;)V

    goto/16 :goto_2

    :pswitch_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mDeviceEventController:Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    const/4 v13, 0x2

    const/4 v14, 0x0

    invoke-virtual {v12, v4, v13, v14}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->setDeviceEvent(Ljava/util/ArrayList;II)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mMetadata:Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    invoke-static {v12}, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->-get4(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;)J

    move-result-wide v12

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v12, v13}, Lcom/android/bluetooth/avrcp/Avrcp;->sendTrackChangedRsp([BLjava/util/ArrayList;J)V

    goto/16 :goto_2

    :pswitch_6
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/avrcp/Avrcp;->getPlayPosition()J

    move-result-wide v10

    move/from16 v0, p3

    int-to-long v12, v0

    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mPlaybackIntervalMs:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPosMs:J

    const-wide/16 v14, -0x1

    cmp-long v12, v12, v14

    if-eqz v12, :cond_c

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mPlaybackIntervalMs:J

    add-long/2addr v12, v10

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mNextPosMs:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mPlaybackIntervalMs:J

    sub-long v12, v10, v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mPrevPosMs:J

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPlayState:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_c

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/bluetooth/avrcp/Avrcp;->isA2dpPlaying:Z

    if-nez v12, :cond_b

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v12}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v12

    if-eqz v12, :cond_c

    :cond_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    const/4 v13, 0x5

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v12, v13, v14, v15, v0}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mPlaybackIntervalMs:J

    invoke-virtual {v12, v6, v14, v15}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mDeviceEventController:Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    const/4 v13, 0x3

    const/4 v14, 0x0

    invoke-virtual {v12, v4, v13, v14}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->setDeviceEvent(Ljava/util/ArrayList;II)V

    const-string/jumbo v12, "PLAYBACK_POS_CHANGED"

    invoke-virtual {v7, v12, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mDeviceEventController:Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    const/4 v13, 0x3

    const/4 v14, 0x0

    invoke-virtual {v12, v4, v13, v14, v7}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->sendNotificationRsp(Ljava/util/ArrayList;IILandroid/os/Bundle;)V

    goto/16 :goto_2

    :pswitch_7
    sget-boolean v12, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v12, :cond_d

    const-string/jumbo v12, "Avrcp"

    const-string/jumbo v13, "processRegisterNotification : EVT_APP_SETTINGS_CHANGED"

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mDeviceEventController:Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    const/4 v13, 0x4

    const/4 v14, 0x0

    invoke-virtual {v12, v4, v13, v14}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->setDeviceEvent(Ljava/util/ArrayList;II)V

    const-string/jumbo v12, "repeat"

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mRepeat:I

    invoke-virtual {v7, v12, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v12, "shuffle"

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mShuffle:I

    invoke-virtual {v7, v12, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mDeviceEventController:Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    const/4 v13, 0x4

    const/4 v14, 0x0

    invoke-virtual {v12, v4, v13, v14, v7}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->sendNotificationRsp(Ljava/util/ArrayList;IILandroid/os/Bundle;)V

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private registerMediaPlayers()V
    .locals 41

    sget-boolean v2, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "Avrcp"

    const-string/jumbo v3, "++registerMediaPlayers++"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/bluetooth/avrcp/Avrcp;->playerQueryResult:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaPlayers:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    const-string/jumbo v2, "Avrcp"

    const-string/jumbo v3, "mMediaPlayers is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaPlayers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/16 v2, 0x10

    new-array v12, v2, [I

    fill-array-data v12, :array_0

    const/4 v2, 0x5

    aget v2, v12, v2

    or-int/lit8 v2, v2, 0x1

    const/4 v3, 0x5

    aput v2, v12, v3

    const/4 v2, 0x5

    aget v2, v12, v2

    or-int/lit8 v2, v2, 0x4

    const/4 v3, 0x5

    aput v2, v12, v3

    const/4 v2, 0x5

    aget v2, v12, v2

    or-int/lit8 v2, v2, 0x2

    const/4 v3, 0x5

    aput v2, v12, v3

    const/4 v2, 0x5

    aget v2, v12, v2

    or-int/lit8 v2, v2, 0x10

    const/4 v3, 0x5

    aput v2, v12, v3

    const/4 v2, 0x5

    aget v2, v12, v2

    or-int/lit8 v2, v2, 0x20

    const/4 v3, 0x5

    aput v2, v12, v3

    const/4 v2, 0x7

    aget v2, v12, v2

    or-int/lit8 v2, v2, 0x4

    const/4 v3, 0x7

    aput v2, v12, v3

    const/4 v2, 0x5

    aget v2, v12, v2

    or-int/lit16 v2, v2, 0x80

    const/4 v3, 0x5

    aput v2, v12, v3

    const/4 v2, 0x6

    aget v2, v12, v2

    or-int/lit8 v2, v2, 0x1

    const/4 v3, 0x6

    aput v2, v12, v3

    array-length v2, v12

    new-array v0, v2, [I

    move-object/from16 v23, v0

    array-length v2, v12

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-static {v12, v3, v0, v4, v2}, Ljava/lang/System;->arraycopy([II[III)V

    const/4 v2, 0x7

    aget v2, v12, v2

    or-int/lit8 v2, v2, 0x8

    const/4 v3, 0x7

    aput v2, v12, v3

    const/16 v2, 0x8

    aget v2, v12, v2

    or-int/lit8 v2, v2, 0x2

    const/16 v3, 0x8

    aput v2, v12, v3

    new-instance v29, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MUSIC_PLAYER"

    move-object/from16 v0, v29

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v36

    const/16 v32, 0x0

    if-eqz v36, :cond_7

    invoke-interface/range {v36 .. v36}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_7

    const-string/jumbo v2, "Avrcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No of Audio players :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v36 .. v36}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface/range {v36 .. v36}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v33, v2, -0x1

    :goto_0
    if-ltz v33, :cond_7

    move-object/from16 v0, v36

    move/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v35

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v34, v0

    sget-boolean v2, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string/jumbo v2, "Avrcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "App Package name is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    new-instance v25, Ljava/lang/String;

    const-string/jumbo v2, "Default Player"

    move-object/from16 v0, v25

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    move-object/from16 v0, v35

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v24

    sget-boolean v2, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "Avrcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "App pkg name is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v25

    sget-boolean v2, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string/jumbo v2, "Avrcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Name::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/bluetooth/avrcp/Avrcp;->isSamsungNativePlayer(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;

    add-int/lit8 v32, v32, 0x1

    move/from16 v0, v32

    int-to-short v4, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    int-to-short v9, v3

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    move-object/from16 v0, v35

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/16 v8, 0x6a

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v12}, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;-><init>(Lcom/android/bluetooth/avrcp/Avrcp;SBIBSS[BLjava/lang/String;[I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->browsingMediaPlayer:Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaPlayers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/avrcp/Avrcp;->browsingMediaPlayer:Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v33, v33, -0x1

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v2, "Avrcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "App Package name is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/bluetooth/avrcp/Avrcp;->convertPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :catch_0
    move-exception v27

    const-string/jumbo v2, "Avrcp"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    const-string/jumbo v2, "com.google.android.music"

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;

    add-int/lit8 v32, v32, 0x1

    move/from16 v0, v32

    int-to-short v4, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    int-to-short v9, v3

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    move-object/from16 v0, v35

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/16 v8, 0x6a

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v12}, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;-><init>(Lcom/android/bluetooth/avrcp/Avrcp;SBIBSS[BLjava/lang/String;[I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->browsingMediaPlayer:Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaPlayers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/avrcp/Avrcp;->browsingMediaPlayer:Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    new-instance v13, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;

    add-int/lit8 v32, v32, 0x1

    move/from16 v0, v32

    int-to-short v15, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    int-to-short v0, v2

    move/from16 v20, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, v35

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v16, 0x1

    const/16 v17, 0x1

    const/16 v18, 0x2

    const/16 v19, 0x6a

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v23}, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;-><init>(Lcom/android/bluetooth/avrcp/Avrcp;SBIBSS[BLjava/lang/String;[I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/bluetooth/avrcp/Avrcp;->thirdPartyMediaPlayer:Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaPlayers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/avrcp/Avrcp;->thirdPartyMediaPlayer:Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_7
    new-instance v30, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    move-object/from16 v0, v30

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/provider/MediaStore$Video$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, "1"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v39

    move-object/from16 v0, v30

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string/jumbo v2, "video/*"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v40

    if-eqz v40, :cond_b

    invoke-interface/range {v40 .. v40}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_b

    const-string/jumbo v2, "Avrcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No of Video players :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v40 .. v40}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface/range {v40 .. v40}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v33, v2, -0x1

    :goto_4
    if-ltz v33, :cond_b

    move-object/from16 v0, v40

    move/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v35

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v34, v0

    sget-boolean v2, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v2, :cond_a

    const-string/jumbo v2, "Avrcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Video App Package name is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    new-instance v25, Ljava/lang/String;

    const-string/jumbo v2, "Video Player"

    move-object/from16 v0, v25

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    move-object/from16 v0, v35

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v24

    sget-boolean v2, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v2, :cond_8

    const-string/jumbo v2, "Avrcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Video App pkg name is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v25

    sget-boolean v2, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v2, :cond_9

    const-string/jumbo v2, "Avrcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Name::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_9
    :goto_6
    new-instance v13, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;

    add-int/lit8 v32, v32, 0x1

    move/from16 v0, v32

    int-to-short v15, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    int-to-short v0, v2

    move/from16 v20, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, v35

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v16, 0x2

    const/16 v17, 0x0

    const/16 v18, 0x2

    const/16 v19, 0x6a

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v23}, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;-><init>(Lcom/android/bluetooth/avrcp/Avrcp;SBIBSS[BLjava/lang/String;[I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/bluetooth/avrcp/Avrcp;->thirdPartyMediaPlayer:Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaPlayers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/avrcp/Avrcp;->thirdPartyMediaPlayer:Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v33, v33, -0x1

    goto/16 :goto_4

    :cond_a
    const-string/jumbo v2, "Avrcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Video App Package name is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/bluetooth/avrcp/Avrcp;->convertPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :catch_1
    move-exception v27

    const-string/jumbo v2, "Avrcp"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_b
    const-string/jumbo v2, "Avrcp"

    const-string/jumbo v3, "Add tempPlayer"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v38, Ljava/lang/String;

    const-string/jumbo v2, "Media Player"

    move-object/from16 v0, v38

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    add-int/lit8 v2, v32, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mTempMediaPlayerId:I

    new-instance v13, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;

    add-int/lit8 v32, v32, 0x1

    move/from16 v0, v32

    int-to-short v15, v0

    invoke-virtual/range {v38 .. v38}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    int-to-short v0, v2

    move/from16 v20, v0

    invoke-virtual/range {v38 .. v38}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    const-string/jumbo v22, "tempPackage"

    const/16 v16, 0x1

    const/16 v17, 0x1

    const/16 v18, 0x2

    const/16 v19, 0x6a

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v23}, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;-><init>(Lcom/android/bluetooth/avrcp/Avrcp;SBIBSS[BLjava/lang/String;[I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/bluetooth/avrcp/Avrcp;->tempMediaPlayer:Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaPlayers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/avrcp/Avrcp;->tempMediaPlayer:Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sput v32, Lcom/android/bluetooth/avrcp/Avrcp;->noOfPlayers:I

    const-string/jumbo v2, "Avrcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "no_of_players : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaPlayers:Ljava/util/ArrayList;

    if-eqz v2, :cond_13

    const-string/jumbo v2, "Avrcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Total no of players: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaPlayers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaPlayers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaPlayers:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->-get1(Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/bluetooth/avrcp/Avrcp;->isSamsungNativePlayer(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaPlayers:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->-get1(Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "com.google.android.music"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_c
    const-string/jumbo v2, "Avrcp"

    const-string/jumbo v3, "Samsung player is the 1st player"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/avrcp/Avrcp;->updatePlayerPublishability()V

    :goto_8
    return-void

    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaPlayers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v31

    const/16 v28, 0x0

    :cond_f
    :goto_9
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;

    invoke-virtual/range {v26 .. v26}, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->getPlayerPackageName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/bluetooth/avrcp/Avrcp;->isSamsungNativePlayer(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    invoke-virtual/range {v26 .. v26}, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->getPlayerPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "com.google.android.music"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_10
    const-string/jumbo v2, "Avrcp"

    const-string/jumbo v3, "swapping the browsing player with 1st player"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaPlayers:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->-get0(Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;)S

    move-result v37

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaPlayers:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaPlayers:Ljava/util/ArrayList;

    move/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;

    invoke-static {v3}, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->-get0(Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;)S

    move-result v3

    invoke-static {v2, v3}, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->-set0(Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;S)S

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaPlayers:Ljava/util/ArrayList;

    move/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;

    move/from16 v0, v37

    invoke-static {v2, v0}, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->-set0(Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;S)S

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaPlayers:Ljava/util/ArrayList;

    const/4 v3, 0x0

    move/from16 v0, v28

    invoke-static {v2, v3, v0}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    goto/16 :goto_7

    :cond_11
    add-int/lit8 v28, v28, 0x1

    invoke-virtual/range {v26 .. v26}, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->getPlayerPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "tempPackage"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual/range {v26 .. v26}, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->getPlayerId()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_f

    const-string/jumbo v2, "Avrcp"

    const-string/jumbo v3, "player query error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/bluetooth/avrcp/Avrcp;->playerQueryResult:Z

    goto/16 :goto_9

    :cond_12
    const-string/jumbo v2, "Avrcp"

    const-string/jumbo v3, "the size of mMediaPlayers is 0. maybe Ultra power saving mode or something"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_13
    const-string/jumbo v2, "Avrcp"

    const-string/jumbo v3, "mMediaPlayers is NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private registerNotification([BII)V
    .locals 5

    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4, p2, p3}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "BdAddress"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    invoke-virtual {v3, v2}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private native registerNotificationRspAddressedPlayerChangedNative([BII)Z
.end method

.method private native registerNotificationRspAvailablePlayersChangedNative([BI)Z
.end method

.method private native registerNotificationRspNowPlayingContentChangedNative([BI)Z
.end method

.method private native registerNotificationRspPlayPosNative([BIJ)Z
.end method

.method private native registerNotificationRspPlayStatusNative([BII)Z
.end method

.method private native registerNotificationRspPlayerSettingNative([BIII)Z
.end method

.method private native registerNotificationRspTrackChangeNative([BI[B)Z
.end method

.method private resetAndSendPlayerStatusReject(Ljava/lang/String;)V
    .locals 10

    const/4 v5, 0x1

    const/4 v9, 0x5

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x2

    sget-boolean v3, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "Avrcp"

    const-string/jumbo v4, "resetAndSendPlayerStatusReject"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mDeviceEventController:Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    invoke-virtual {v3, p1, v5, v7}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->compareEventFlag(Ljava/lang/String;II)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-boolean v3, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "Avrcp"

    const-string/jumbo v4, "send Play Status reject to stack"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mDeviceEventController:Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    invoke-virtual {v3, v0, v5, v6}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->setDeviceEvent(Ljava/util/ArrayList;II)V

    const-string/jumbo v3, "PLAYBACK_STATUS_CHANGED"

    invoke-virtual {v1, v3, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mDeviceEventController:Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    invoke-virtual {v3, v0, v5, v6, v1}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->sendNotificationRsp(Ljava/util/ArrayList;IILandroid/os/Bundle;)V

    :cond_2
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mDeviceEventController:Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    const/4 v4, 0x3

    invoke-virtual {v3, p1, v4, v7}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->compareEventFlag(Ljava/lang/String;II)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-boolean v3, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string/jumbo v3, "Avrcp"

    const-string/jumbo v4, "send Play Position reject to stack"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string/jumbo v3, "PLAYBACK_POS_CHANGED"

    const-wide/16 v4, -0x1

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mDeviceEventController:Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    const/4 v4, 0x3

    invoke-virtual {v3, v0, v4, v6}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->setDeviceEvent(Ljava/util/ArrayList;II)V

    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mDeviceEventController:Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    const/4 v4, 0x3

    invoke-virtual {v3, v0, v4, v6, v1}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->sendNotificationRsp(Ljava/util/ArrayList;IILandroid/os/Bundle;)V

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPosMs:J

    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    invoke-virtual {v3, v9}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->removeMessages(I)V

    :cond_4
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mDeviceEventController:Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    invoke-virtual {v3, p1, v6, v7}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->compareEventFlag(Ljava/lang/String;II)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_6

    sget-boolean v3, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v3, :cond_5

    const-string/jumbo v3, "Avrcp"

    const-string/jumbo v4, "send Track Changed reject to stack"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mDeviceEventController:Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    invoke-virtual {v3, v0, v6, v6}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->setDeviceEvent(Ljava/util/ArrayList;II)V

    const/16 v3, 0x8

    new-array v2, v3, [B

    const-string/jumbo v3, "TRACK_CHANGED"

    iget-object v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->trackNumber:[B

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mDeviceEventController:Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    invoke-virtual {v3, v0, v6, v6, v1}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->sendNotificationRsp(Ljava/util/ArrayList;IILandroid/os/Bundle;)V

    :cond_6
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mDeviceEventController:Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    const/4 v4, 0x4

    invoke-virtual {v3, p1, v4, v7}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->compareEventFlag(Ljava/lang/String;II)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_8

    sget-boolean v3, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v3, :cond_7

    const-string/jumbo v3, "Avrcp"

    const-string/jumbo v4, "send Player Setting reject to stack"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mDeviceEventController:Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    const/4 v4, 0x4

    invoke-virtual {v3, v0, v4, v6}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->setDeviceEvent(Ljava/util/ArrayList;II)V

    const-string/jumbo v3, "repeat"

    iget v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mRepeat:I

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "shuffle"

    iget v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mShuffle:I

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mDeviceEventController:Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    const/4 v4, 0x4

    invoke-virtual {v3, v0, v4, v6, v1}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->sendNotificationRsp(Ljava/util/ArrayList;IILandroid/os/Bundle;)V

    :cond_8
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mDeviceEventController:Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    invoke-virtual {v3, p1, v9, v7}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->compareEventFlag(Ljava/lang/String;II)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_a

    sget-boolean v3, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v3, :cond_9

    const-string/jumbo v3, "Avrcp"

    const-string/jumbo v4, "send Now Playing Content reject to stack"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mDeviceEventController:Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    invoke-virtual {v3, v0, v9, v6}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->setDeviceEvent(Ljava/util/ArrayList;II)V

    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mDeviceEventController:Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    invoke-virtual {v3, v0, v9, v6, v8}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->sendNotificationRsp(Ljava/util/ArrayList;IILandroid/os/Bundle;)V

    :cond_a
    return-void
.end method

.method private resetBrowseStack()V
    .locals 4

    const/4 v3, 0x0

    sget-boolean v1, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "Avrcp"

    const-string/jumbo v2, "resetBrowseStack"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/Avrcp;->resetPathStack()V

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->clear()V

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mBrowser:Landroid/media/browse/MediaBrowser;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mBrowser:Landroid/media/browse/MediaBrowser;

    invoke-virtual {v1}, Landroid/media/browse/MediaBrowser;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mBrowserConnected:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mLastParentId:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mBrowser:Landroid/media/browse/MediaBrowser;

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mLastParentId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/media/browse/MediaBrowser;->unsubscribe(Ljava/lang/String;)V

    :cond_1
    iput-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mLastParentId:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mBrowser:Landroid/media/browse/MediaBrowser;

    invoke-virtual {v1}, Landroid/media/browse/MediaBrowser;->getRoot()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Avrcp"

    const-string/jumbo v2, "subscribe"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/android/bluetooth/avrcp/Avrcp;->browseChild(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    sget-boolean v1, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "Avrcp"

    const-string/jumbo v2, "Browser not connected"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private resetPathStack()V
    .locals 2

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPathStack:Ljava/util/Stack;

    if-eqz v0, :cond_2

    :goto_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPathStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPathStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPathStack:Ljava/util/Stack;

    const-string/jumbo v1, "Samsung Mobile Phone 0515"

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_1
    return-void

    :cond_2
    sget-boolean v0, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "Avrcp"

    const-string/jumbo v1, "mPathStack is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPathStack:Ljava/util/Stack;

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPathStack:Ljava/util/Stack;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPathStack:Ljava/util/Stack;

    const-string/jumbo v1, "Samsung Mobile Phone 0515"

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private retryMediaPlayerQuery()V
    .locals 2

    const-string/jumbo v0, "Avrcp"

    const-string/jumbo v1, "retryMediaPlayerQuery"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaPlayers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaPlayers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/Avrcp;->registerMediaPlayers()V

    return-void
.end method

.method private rewind([BI)V
    .locals 5

    const/4 v0, 0x0

    const/4 v3, 0x1

    if-ne p2, v3, :cond_0

    const/16 v0, 0x12f

    :goto_0
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, p2, v4}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "BdAddress"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-virtual {v2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    invoke-virtual {v3, v2}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    const/16 v0, 0x130

    goto :goto_0
.end method

.method private searchMediaItem([BIILjava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/bluetooth/avrcp/Avrcp;->isOldSamsungMusic:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/bluetooth/avrcp/Avrcp;->oldApiSearchMediaItem([BIILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/bluetooth/avrcp/Avrcp;->newApiSearchMediaItem([BIILjava/lang/String;)V

    goto :goto_0
.end method

.method private native searchMediaItemRspNative([BBII)Z
.end method

.method private native sendPassThroughCommandNative(II)Z
.end method

.method private sendTrackChangedRsp([BLjava/util/ArrayList;J)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;J)V"
        }
    .end annotation

    invoke-static/range {p1 .. p1}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v8

    const/16 v11, 0x8

    new-array v10, v11, [B

    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    sget-boolean v11, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v11, :cond_0

    const-string/jumbo v11, "Avrcp"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "mTrackNum = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-wide/from16 v0, p3

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v6, 0x0

    :goto_0
    const/16 v11, 0x8

    if-ge v6, v11, :cond_1

    mul-int/lit8 v11, v6, 0x8

    rsub-int/lit8 v11, v11, 0x38

    shr-long v12, p3, v11

    long-to-int v11, v12

    int-to-byte v11, v11

    aput-byte v11, v10, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    iput-object v10, p0, Lcom/android/bluetooth/avrcp/Avrcp;->trackNumber:[B

    const-string/jumbo v11, "TRACK_CHANGED"

    invoke-virtual {v9, v11, v10}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    iget-object v11, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mDeviceEventController:Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    iget-object v12, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mDeviceEventController:Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    const/4 v13, 0x2

    invoke-virtual {v12, v8, v13}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->getDeviceEvent(Ljava/lang/String;I)I

    move-result v12

    const/4 v13, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v11, v0, v13, v12, v9}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->sendNotificationRsp(Ljava/util/ArrayList;IILandroid/os/Bundle;)V

    iget-object v11, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mDeviceEventController:Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-virtual {v11, v8, v12, v13}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->compareEventFlag(Ljava/lang/String;II)Ljava/util/ArrayList;

    move-result-object v7

    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/Avrcp;->isBMWCarkitForBrowsing()Z

    move-result v11

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    const/16 v12, 0xd3

    invoke-virtual {v11, v12}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->hasMessages(I)Z

    move-result v11

    if-eqz v11, :cond_3

    if-eqz v7, :cond_3

    sget-boolean v11, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v11, :cond_2

    const-string/jumbo v11, "Avrcp"

    const-string/jumbo v12, "Update PLAYSTATE now"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v11, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    const/16 v12, 0xd3

    invoke-virtual {v11, v12}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->removeMessages(I)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v12, p0, Lcom/android/bluetooth/avrcp/Avrcp;->currentTimeUpdateState:J

    sub-long v4, v2, v12

    iget-wide v12, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPendingPosition:J

    add-long/2addr v12, v4

    iput-wide v12, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPendingPosition:J

    iget-wide v12, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPendingPosition:J

    const/4 v11, 0x3

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v11, v12, v13}, Lcom/android/bluetooth/avrcp/Avrcp;->updatePlayPauseState([BIJ)V

    :cond_3
    return-void
.end method

.method private native setAddToNowPlayingRspNative(B)Z
.end method

.method private setAddressedPlayer(I)V
    .locals 6

    sget-boolean v4, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "Avrcp"

    const-string/jumbo v5, "setAddressedPlayer"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaPlayers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    iget-object v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaPlayers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->RetrievePlayerId()S

    move-result v4

    if-ne v4, p1, :cond_1

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->RetrievePlayerPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mActivatedPackage:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "tempPackage"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    iput p1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAddressedPlayerId:I

    const/4 v2, 0x1

    :cond_3
    if-eqz v2, :cond_4

    const/4 v4, 0x4

    invoke-direct {p0, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->setAdressedPlayerRspNative(B)Z

    return-void

    :cond_4
    if-eqz v1, :cond_5

    const/16 v4, 0x13

    invoke-direct {p0, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->setAdressedPlayerRspNative(B)Z

    return-void

    :cond_5
    const-string/jumbo v4, "Avrcp"

    const-string/jumbo v5, "Error: No such media player available, hence can not be addressed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x11

    invoke-direct {p0, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->setAdressedPlayerRspNative(B)Z

    return-void
.end method

.method private native setAdressedPlayerRspNative(B)Z
.end method

.method private setBrowsedPlayer([BI)V
    .locals 2

    sget-boolean v1, Lcom/android/bluetooth/avrcp/Avrcp;->isOldSamsungMusic:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/avrcp/Avrcp;->oldApiSetBrowsedPlayer([BI)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/bluetooth/avrcp/Avrcp;->newApiSetBrowsedPlayer([BIZ)V

    goto :goto_0
.end method

.method private native setBrowsedPlayerRspNative([BBIIB[Ljava/lang/String;)Z
.end method

.method private native setChangePathRspNative([BBI)Z
.end method

.method private native setGetItemAttributesRspNative([BBB[I[Ljava/lang/String;)Z
.end method

.method private native setPlayItemRspNative(B)Z
.end method

.method private setUpMediaController(Landroid/media/session/MediaController;)V
    .locals 13

    const/4 v12, 0x0

    const-string/jumbo v7, "Avrcp"

    const-string/jumbo v8, " Set up Media Controller"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaController:Landroid/media/session/MediaController;

    iget-object v8, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaControllerCallbackHandler:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v7, v8}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    :cond_0
    iput-object p1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaController:Landroid/media/session/MediaController;

    new-instance v7, Lcom/android/bluetooth/avrcp/Avrcp$MediaControllerCallbackHandler;

    iget-object v8, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    invoke-direct {v7, p0, v8}, Lcom/android/bluetooth/avrcp/Avrcp$MediaControllerCallbackHandler;-><init>(Lcom/android/bluetooth/avrcp/Avrcp;Landroid/os/Handler;)V

    iput-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaControllerCallbackHandler:Landroid/media/session/MediaController$Callback;

    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaController:Landroid/media/session/MediaController;

    iget-object v8, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaControllerCallbackHandler:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v7, v8}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;)V

    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v7}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v2

    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    if-eqz v7, :cond_1

    if-eqz v2, :cond_1

    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    const/16 v8, 0x65

    invoke-virtual {v7, v8, v12, v12, v2}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v7}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v6

    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    if-eqz v7, :cond_2

    if-eqz v6, :cond_2

    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    invoke-virtual {v6}, Landroid/media/session/PlaybackState;->getState()I

    move-result v8

    new-instance v9, Ljava/lang/Long;

    invoke-virtual {v6}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v10

    invoke-direct {v9, v10, v11}, Ljava/lang/Long;-><init>(J)V

    const/16 v10, 0x64

    invoke-virtual {v7, v10, v12, v8, v9}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    invoke-direct {p0, v6}, Lcom/android/bluetooth/avrcp/Avrcp;->updateSupportedActions(Landroid/media/session/PlaybackState;)V

    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v7}, Landroid/media/session/MediaController;->getQueue()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/avrcp/Avrcp;->setNPLData(Ljava/util/List;)V

    :cond_3
    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v7}, Landroid/media/session/MediaController;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string/jumbo v7, "com.sec.android.app.music.EXTRA_REPEAT"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v7, "com.sec.android.app.music.EXTRA_SHUFFLE"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v7, "repeat"

    invoke-virtual {v1, v7, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v7, "shuffle"

    invoke-virtual {v1, v7, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-boolean v7, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v7, :cond_4

    const-string/jumbo v7, "Avrcp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "send initial values  repeat:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " shuffle:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    const/16 v8, 0x10

    invoke-virtual {v7, v8, v12, v12, v1}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    :cond_5
    return-void
.end method

.method private native setVolumeNative([BI)Z
.end method

.method private setupMediaControllerWithMediaBrowser()V
    .locals 3

    new-instance v1, Lcom/android/bluetooth/avrcp/Avrcp$4;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/avrcp/Avrcp$4;-><init>(Lcom/android/bluetooth/avrcp/Avrcp;)V

    iput-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mConnectionCallbacks:Landroid/media/browse/MediaBrowser$ConnectionCallback;

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mActiveSessionListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "media_session"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSessionManager;

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mActiveSessionListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSessionManager;->removeOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;)V

    :cond_0
    new-instance v1, Lcom/android/bluetooth/avrcp/Avrcp$5;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/avrcp/Avrcp$5;-><init>(Lcom/android/bluetooth/avrcp/Avrcp;)V

    iput-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mActiveSessionListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/bluetooth/avrcp/Avrcp;->composeBrowsingServiceCandidate(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/Avrcp;->initializeMediaController()V

    return-void
.end method

.method private skipRejectEvt(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getIOPDeviceList()Lcom/android/bluetooth/btservice/AdapterService$checkAddrForIOP;

    move-result-object v0

    sget-boolean v1, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "Avrcp"

    const-string/jumbo v2, "Check skipRejectEvt "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Lcom/android/bluetooth/btservice/AdapterService$checkAddrForIOP;->isBlacklistDevice(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "Avrcp"

    const-string/jumbo v2, "skip reject evt"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x1

    return v1

    :cond_2
    return v3

    :cond_3
    sget-boolean v1, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string/jumbo v1, "Avrcp"

    const-string/jumbo v2, "skipRejectEvt, CurrentA2dpDevice or IopDevice is Null!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v3
.end method

.method private start()V
    .locals 9

    const/4 v8, 0x0

    sget-boolean v5, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string/jumbo v5, "Avrcp"

    const-string/jumbo v6, "start"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpService;->getA2dpService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v5

    iput-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mA2dpService:Lcom/android/bluetooth/a2dp/A2dpService;

    new-instance v4, Landroid/os/HandlerThread;

    const-string/jumbo v5, "BluetoothAvrcpHandler"

    invoke-direct {v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    new-instance v5, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    invoke-direct {v5, p0, v3, v8}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;-><init>(Lcom/android/bluetooth/avrcp/Avrcp;Landroid/os/Looper;Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;)V

    iput-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v5, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v5, "com.samsung.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :try_start_0
    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAvrcpReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v5, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v6, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mObserver:Landroid/database/ContentObserver;

    const/4 v7, 0x1

    invoke-virtual {v0, v5, v7, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance v5, Lcom/android/bluetooth/avrcp/Avrcp$SupportActionState;

    invoke-direct {v5, v8}, Lcom/android/bluetooth/avrcp/Avrcp$SupportActionState;-><init>(Lcom/android/bluetooth/avrcp/Avrcp$SupportActionState;)V

    iput-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mSupportAction:Lcom/android/bluetooth/avrcp/Avrcp$SupportActionState;

    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/Avrcp;->registerMediaPlayers()V

    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/Avrcp;->setupMediaControllerWithMediaBrowser()V

    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v5, "Avrcp"

    const-string/jumbo v6, "Unable to register avrcp intent receiver"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private updateA2dpAudioState([BI)V
    .locals 6

    const/4 v2, 0x0

    const/16 v1, 0xa

    if-ne p2, v1, :cond_3

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->isA2dpPlaying:Z

    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/Avrcp;->getActiveStreamDevice()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAudioManager:Landroid/media/AudioManager;

    invoke-direct {p0, v0}, Lcom/android/bluetooth/avrcp/Avrcp;->isAVCSupported(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v0, v3}, Landroid/media/AudioManager;->avrcpSupportsAbsoluteVolume(Ljava/lang/String;Z)V

    sget-boolean v1, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "Avrcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateA2dpAudioState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->isA2dpPlaying:Z

    iget v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPlayState:I

    invoke-direct {p0, v3}, Lcom/android/bluetooth/avrcp/Avrcp;->isPlayingState(I)Z

    move-result v3

    if-eq v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->isA2dpPlaying:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x3

    :goto_1
    const-wide/16 v4, -0x2

    invoke-direct {p0, p1, v1, v4, v5}, Lcom/android/bluetooth/avrcp/Avrcp;->updatePlayPauseStateFromA2dp([BIJ)V

    iget-boolean v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mNeedUpdatingPlayState:Z

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "Avrcp"

    const-string/jumbo v3, "don\'t need to update play state later"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    const/16 v3, 0x12

    invoke-virtual {v1, v3}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->removeMessages(I)V

    iput-boolean v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mNeedUpdatingPlayState:Z

    :cond_2
    return-void

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    const/4 v1, 0x2

    goto :goto_1
.end method

.method private updateApplicationSettings(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 12

    const/4 v7, -0x1

    const/4 v11, 0x0

    const/4 v10, 0x4

    const/4 v9, 0x1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x1

    const/4 v4, 0x1

    const-string/jumbo v6, "repeat"

    invoke-virtual {p2, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string/jumbo v6, "shuffle"

    invoke-virtual {p2, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v3, v9, :cond_5

    const/4 v2, 0x2

    :goto_0
    iget v6, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mRepeat:I

    if-eq v2, v6, :cond_0

    iput v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mRepeat:I

    iput-boolean v9, p0, Lcom/android/bluetooth/avrcp/Avrcp;->isChangedAppSettings:Z

    :cond_0
    if-ne v5, v9, :cond_7

    const/4 v4, 0x2

    :goto_1
    iget v6, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mShuffle:I

    if-eq v4, v6, :cond_1

    iput v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mShuffle:I

    iput-boolean v9, p0, Lcom/android/bluetooth/avrcp/Avrcp;->isChangedAppSettings:Z

    :cond_1
    sget-boolean v6, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v6, :cond_2

    const-string/jumbo v6, "Avrcp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "shuffle and repeat is changed : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/bluetooth/avrcp/Avrcp;->isChangedAppSettings:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v6, p0, Lcom/android/bluetooth/avrcp/Avrcp;->isChangedAppSettings:Z

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mDeviceEventController:Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    invoke-virtual {v6, p1, v10, v11}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->compareEventFlag(Ljava/lang/String;II)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v6, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mDeviceEventController:Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    invoke-virtual {v6, v0, v10, v9}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->setDeviceEvent(Ljava/util/ArrayList;II)V

    sget-boolean v6, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v6, :cond_3

    const-string/jumbo v6, "Avrcp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateApplicationSettings:mRepeat = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mRepeat:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " mShuffle = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mShuffle:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string/jumbo v6, "repeat"

    iget v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mRepeat:I

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v6, "shuffle"

    iget v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mShuffle:I

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v6, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mDeviceEventController:Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mDeviceEventController:Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    invoke-virtual {v7, p1, v10}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->getDeviceEvent(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v0, v10, v7, v1}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->sendNotificationRsp(Ljava/util/ArrayList;IILandroid/os/Bundle;)V

    iput-boolean v11, p0, Lcom/android/bluetooth/avrcp/Avrcp;->isChangedAppSettings:Z

    :cond_4
    :goto_2
    return-void

    :cond_5
    const/4 v6, 0x2

    if-ne v3, v6, :cond_6

    const/4 v2, 0x3

    goto/16 :goto_0

    :cond_6
    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_7
    if-nez v5, :cond_8

    const/4 v4, 0x1

    goto/16 :goto_1

    :cond_8
    const-string/jumbo v6, "Avrcp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateApplicationSettings() Unsupported shuffle value received:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_9
    const-string/jumbo v6, "Avrcp"

    const-string/jumbo v7, "Cannot send ApplicationSettings event - NOTIFICATION_TYPE_INTERIM"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private updateMediaElementItems([J)Z
    .locals 22

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/bluetooth/avrcp/Avrcp;->mNowPlayingList:[J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mNowPlayingMediaElms:Ljava/util/List;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mNowPlayingMediaElms:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mNowPlayingList:[J

    if-nez v2, :cond_1

    const/4 v2, 0x0

    return v2

    :cond_1
    const/4 v2, 0x7

    new-array v13, v2, [I

    fill-array-data v13, :array_0

    sget-boolean v2, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "Avrcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateMediaElementItems mNowPlayingList.lenght = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mNowPlayingList:[J

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mNowPlayingMediaElms:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaBrowser:Lcom/samsung/bt/avrcp/BluetoothMediaBrowser;

    const-wide/16 v8, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mNowPlayingList:[J

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    int-to-long v10, v3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mNowPlayingList:[J

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v12, 0x7

    invoke-virtual/range {v2 .. v14}, Lcom/samsung/bt/avrcp/BluetoothMediaBrowser;->getMediaElementItems(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJI[I[J)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mNowPlayingMediaElms:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mNowPlayingMediaElms:Ljava/util/List;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mNowPlayingMediaElms:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_8

    sget-boolean v2, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string/jumbo v2, "Avrcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateMediaElementItems mNowPlayingMediaElms.size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mNowPlayingMediaElms:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-instance v19, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mNowPlayingMediaElms:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mNowPlayingMediaElms:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v15, v16

    check-cast v15, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;

    if-eqz v15, :cond_4

    iget-wide v2, v15, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->mMediaUid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    const-string/jumbo v2, "Avrcp"

    const-string/jumbo v3, "MediaElement is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mNowPlayingList:[J

    const/4 v2, 0x0

    array-length v4, v3

    :goto_1
    if-ge v2, v4, :cond_6

    aget-wide v20, v3, v2

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    if-eqz v18, :cond_7

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->clear()V

    const/16 v18, 0x0

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mNowPlayingMediaElms:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mNowPlayingMediaElms:Ljava/util/List;

    move-object/from16 v0, v19

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_2
    const/4 v2, 0x1

    return v2

    :cond_8
    const-string/jumbo v2, "Avrcp"

    const-string/jumbo v3, "mNowPlayingMediaElms is null or 0"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
    .end array-data
.end method

.method private updateMetadata([BLandroid/media/MediaMetadata;)V
    .locals 12

    const-string/jumbo v7, "Avrcp"

    const-string/jumbo v8, "updateMetadata"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v2

    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMetadata:Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    invoke-virtual {v7}, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->toString()Ljava/lang/String;

    move-result-object v6

    if-nez p2, :cond_0

    const-string/jumbo v7, "Avrcp"

    const-string/jumbo v8, "invalid media metadata received!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMetadata:Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    const-string/jumbo v8, "android.media.metadata.ARTIST"

    invoke-virtual {p2, v8}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->-set1(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;Ljava/lang/String;)Ljava/lang/String;

    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMetadata:Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    const-string/jumbo v8, "android.media.metadata.TITLE"

    invoke-virtual {p2, v8}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->-set5(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;Ljava/lang/String;)Ljava/lang/String;

    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMetadata:Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    const-string/jumbo v8, "android.media.metadata.ALBUM"

    invoke-virtual {p2, v8}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->-set0(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v7, "com.google.android.music.mediasession.METADATA_KEY_QUEUE_POSITION"

    invoke-virtual {p2, v7}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMetadata:Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    const-string/jumbo v8, "com.google.android.music.mediasession.METADATA_KEY_QUEUE_POSITION"

    invoke-virtual {p2, v8}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    invoke-static {v7, v8, v9}, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->-set4(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;J)J

    sget-boolean v7, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v7, :cond_1

    const-string/jumbo v7, "Avrcp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "METADATA_KEY_QUEUE_POSITION num is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMetadata:Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    invoke-static {v9}, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->-get4(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;)J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    const-string/jumbo v7, "com.google.android.music.mediasession.METADATA_KEY_QUEUE_SIZE"

    invoke-virtual {p2, v7}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMetadata:Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    const-string/jumbo v8, "com.google.android.music.mediasession.METADATA_KEY_QUEUE_SIZE"

    invoke-virtual {p2, v8}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->-set3(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;J)J

    sget-boolean v7, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v7, :cond_2

    const-string/jumbo v7, "Avrcp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "METADATA_KEY_QUEUE_SIZE num is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMetadata:Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    invoke-static {v9}, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->-get3(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;)J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMetadata:Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    const-string/jumbo v8, "android.media.metadata.GENRE"

    invoke-virtual {p2, v8}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->-set2(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v7, "android.media.metadata.DURATION"

    invoke-virtual {p2, v7}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mSongLengthMs:J

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/Avrcp;->isBMWCarkit()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-direct {p0, v0}, Lcom/android/bluetooth/avrcp/Avrcp;->isBrowsingSupported(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    :cond_3
    :goto_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMetadata:Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    invoke-virtual {v7}, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_17

    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mDeviceEventController:Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-virtual {v7, v2, v8, v9}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->compareEventFlag(Ljava/lang/String;II)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-direct {p0, v2}, Lcom/android/bluetooth/avrcp/Avrcp;->isBrowsingSupported(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_15

    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/Avrcp;->isBrowsingPlayer()Z

    move-result v7

    if-eqz v7, :cond_15

    sget-boolean v7, Lcom/android/bluetooth/avrcp/Avrcp;->isOldSamsungMusic:Z

    if-eqz v7, :cond_f

    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/Avrcp;->expectNowPlayingListUpdate()Z

    move-result v7

    if-eqz v7, :cond_13

    const-string/jumbo v7, "Avrcp"

    const-string/jumbo v8, " Waiting for now playing list update and delaying track changed notification"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_3
    iget-wide v8, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPosMs:J

    const-wide/16 v10, -0x1

    cmp-long v7, v8, v10

    if-eqz v7, :cond_6

    sget-boolean v7, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v7, :cond_5

    const-string/jumbo v7, "Avrcp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateMetadata, mCurrentPosMs="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPosMs:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPlayState:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPlayStartTimeMs:J

    :cond_6
    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mDeviceEventController:Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-virtual {v7, v2, v8, v9}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->compareEventFlag(Ljava/lang/String;II)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mDeviceEventController:Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    const/4 v8, 0x3

    const/4 v9, 0x1

    invoke-virtual {v7, v1, v8, v9}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->setDeviceEvent(Ljava/util/ArrayList;II)V

    const-string/jumbo v7, "PLAYBACK_POS_CHANGED"

    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/Avrcp;->getPlayPosition()J

    move-result-wide v8

    invoke-virtual {v4, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mDeviceEventController:Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    const/4 v8, 0x3

    const/4 v9, 0x1

    invoke-virtual {v7, v1, v8, v9, v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->sendNotificationRsp(Ljava/util/ArrayList;IILandroid/os/Bundle;)V

    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->removeMessages(I)V

    :cond_7
    :goto_4
    sget-boolean v7, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v7, :cond_8

    const-string/jumbo v7, "Avrcp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mMetadata="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMetadata:Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    invoke-virtual {v9}, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    sget-boolean v7, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v7, :cond_9

    const-string/jumbo v7, "Avrcp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "metadata track number:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMetadata:Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    invoke-static {v9}, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->-get4(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;)J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", total numbers: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMetadata:Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    invoke-static {v9}, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->-get3(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;)J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", duration: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mSongLengthMs:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void

    :cond_a
    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mActivatedPackage:Ljava/lang/String;

    const-string/jumbo v8, "com.google.android.music"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMetadata:Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    const-string/jumbo v8, "android.media.metadata.TRACK_NUMBER"

    invoke-virtual {p2, v8}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    invoke-static {v7, v8, v9}, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->-set4(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;J)J

    goto/16 :goto_0

    :cond_b
    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMetadata:Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    const-string/jumbo v8, "android.media.metadata.TRACK_NUMBER"

    invoke-virtual {p2, v8}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->-set4(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;J)J

    goto/16 :goto_0

    :cond_c
    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mActivatedPackage:Ljava/lang/String;

    const-string/jumbo v8, "com.google.android.music"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMetadata:Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    const-string/jumbo v8, "android.media.metadata.NUM_TRACKS"

    invoke-virtual {p2, v8}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->-set3(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;J)J

    goto/16 :goto_1

    :cond_d
    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMetadata:Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    const-string/jumbo v8, "android.media.metadata.DISC_NUMBER"

    invoke-virtual {p2, v8}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->-set3(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;J)J

    goto/16 :goto_1

    :cond_e
    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMetadata:Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    const-wide/16 v8, 0x0

    invoke-static {v7, v8, v9}, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->-set4(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;J)J

    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMetadata:Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    const-wide/16 v8, 0x0

    invoke-static {v7, v8, v9}, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->-set3(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;J)J

    goto/16 :goto_2

    :cond_f
    sget-boolean v7, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v7, :cond_10

    const-string/jumbo v7, "Avrcp"

    const-string/jumbo v8, "Observe Queue status"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    const/16 v8, 0xce

    invoke-virtual {v7, v8}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->hasMessages(I)Z

    move-result v7

    if-eqz v7, :cond_12

    sget-boolean v7, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v7, :cond_11

    const-string/jumbo v7, "Avrcp"

    const-string/jumbo v8, "remove previous MSG_OBSERVE_QUEUE_NOT_CHANGED"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    const/16 v8, 0xce

    invoke-virtual {v7, v8}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->removeMessages(I)V

    :cond_12
    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    const/16 v8, 0xce

    invoke-virtual {v7, v8}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v7, "BdAddress"

    invoke-virtual {v5, v7, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-virtual {v3, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    const-wide/16 v8, 0x384

    invoke-virtual {v7, v3, v8, v9}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_3

    :cond_13
    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mDeviceEventController:Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    const/4 v8, 0x2

    const/4 v9, 0x1

    invoke-virtual {v7, v1, v8, v9}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->setDeviceEvent(Ljava/util/ArrayList;II)V

    sget-boolean v7, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v7, :cond_14

    const-string/jumbo v7, "Avrcp"

    const-string/jumbo v8, "Track is changed"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMetadata:Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    invoke-static {v7}, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->-get4(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;)J

    move-result-wide v8

    invoke-direct {p0, p1, v1, v8, v9}, Lcom/android/bluetooth/avrcp/Avrcp;->sendTrackChangedRsp([BLjava/util/ArrayList;J)V

    goto/16 :goto_3

    :cond_15
    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mDeviceEventController:Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    const/4 v8, 0x2

    const/4 v9, 0x1

    invoke-virtual {v7, v1, v8, v9}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->setDeviceEvent(Ljava/util/ArrayList;II)V

    sget-boolean v7, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v7, :cond_16

    const-string/jumbo v7, "Avrcp"

    const-string/jumbo v8, "Track is changed"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    iget-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMetadata:Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    invoke-static {v7}, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->-get4(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;)J

    move-result-wide v8

    invoke-direct {p0, p1, v1, v8, v9}, Lcom/android/bluetooth/avrcp/Avrcp;->sendTrackChangedRsp([BLjava/util/ArrayList;J)V

    goto/16 :goto_3

    :cond_17
    sget-boolean v7, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v7, :cond_7

    const-string/jumbo v7, "Avrcp"

    const-string/jumbo v8, "Track is not changed"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4
.end method

.method private updateNowPlayingContentChanged(Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x5

    sget-boolean v1, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "Avrcp"

    const-string/jumbo v2, "updateNowPlayingContentChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mDeviceEventController:Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v3, v2}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->compareEventFlag(Ljava/lang/String;II)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mDeviceEventController:Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    invoke-virtual {v1, v0, v3, v4}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->setDeviceEvent(Ljava/util/ArrayList;II)V

    sget-boolean v1, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "Avrcp"

    const-string/jumbo v2, "send NowPlayingContentChanged to stack"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mDeviceEventController:Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    invoke-virtual {v1, v0, v3, v4, v5}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->sendNotificationRsp(Ljava/util/ArrayList;IILandroid/os/Bundle;)V

    :cond_2
    return-void
.end method

.method private updatePlayPauseState([BIJ)V
    .locals 25

    const-string/jumbo v19, "Avrcp"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "updatePlayPauseState, old="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPlayState:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ", state="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ", currentPosMs="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0x8

    move/from16 v0, p2

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    sget-boolean v19, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v19, :cond_0

    const-string/jumbo v19, "Avrcp"

    const-string/jumbo v20, "keep the previous state"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPosMs:J

    move-wide/from16 v20, v0

    const-wide/16 v22, -0x1

    cmp-long v19, v20, v22

    if-eqz v19, :cond_15

    const/4 v15, 0x1

    :goto_0
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    invoke-static/range {p1 .. p1}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v9

    const/16 v14, 0xff

    const/16 v11, 0xff

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/bluetooth/avrcp/Avrcp;->mPrevPlayStatus:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mStateSeekFWD:Z

    move/from16 v19, v0

    if-eqz v19, :cond_16

    const/16 p2, 0x4

    :cond_2
    :goto_1
    sget-boolean v19, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v19, :cond_3

    const-string/jumbo v19, "Avrcp"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "updatePlayPauseState, chagned state="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " mPrevPlayStatus="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mPrevPlayStatus:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPlayState:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/bluetooth/avrcp/Avrcp;->convertPlayStateToPlayStatus(I)I

    move-result v14

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/bluetooth/avrcp/Avrcp;->convertPlayStateToPlayStatus(I)I

    move-result v11

    const-wide/16 v20, -0x2

    cmp-long v19, p3, v20

    if-eqz v19, :cond_5

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v11, v0, :cond_17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mAutoPlayCarkit:Z

    move/from16 v19, v0

    if-eqz v19, :cond_4

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaRunning:Z

    :cond_4
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaStarted:Z

    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPlayState:I

    move/from16 v19, v0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPlayState:I

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, p2

    if-eq v0, v1, :cond_6

    if-eqz v15, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/avrcp/Avrcp;->getPlayPosition()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPosMs:J

    :cond_6
    const-wide/16 v20, -0x2

    cmp-long v19, p3, v20

    if-eqz v19, :cond_18

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPlayState:I

    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaPlayers:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-lez v19, :cond_9

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaPlayers:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_4
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_9

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;

    invoke-virtual {v6}, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->GetPlayerPublishability()Z

    move-result v19

    if-eqz v19, :cond_1a

    sget-boolean v19, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v19, :cond_8

    const-string/jumbo v19, "Avrcp"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "update "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v6}, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->getPlayerPackageName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " playbackState as: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPlayState:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPlayState:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->SetPlayState(B)V
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v7

    const-string/jumbo v19, "Avrcp"

    const-string/jumbo v20, "updatePlayPauseState ConcurrentModificationException"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    const-wide/16 v20, -0x2

    cmp-long v19, p3, v20

    if-gtz v19, :cond_1e

    const/16 v19, 0x2

    move/from16 v0, p2

    move/from16 v1, v19

    if-ne v0, v1, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v19

    if-eqz v19, :cond_1c

    :goto_5
    const/16 v19, 0x3

    move/from16 v0, p2

    move/from16 v1, v19

    if-eq v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v19

    if-eqz v19, :cond_c

    :cond_a
    const-wide/16 v20, -0x1

    cmp-long v19, p3, v20

    if-nez v19, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPlayState:I

    move/from16 v19, v0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_c

    :cond_b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/bluetooth/avrcp/Avrcp;->mPlayStartTimeMs:J

    :cond_c
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPosMs:J

    move-wide/from16 v20, v0

    const-wide/16 v22, -0x1

    cmp-long v19, v20, v22

    if-eqz v19, :cond_21

    const/4 v12, 0x1

    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/avrcp/Avrcp;->getPlayPosition()J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    move-object/from16 v19, v0

    const/16 v20, 0x5

    invoke-virtual/range {v19 .. v20}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->removeMessages(I)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mDeviceEventController:Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v9, v1, v2}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->compareEventFlag(Ljava/lang/String;II)Ljava/util/ArrayList;

    move-result-object v8

    if-eqz v8, :cond_e

    if-ne v14, v11, :cond_d

    if-eq v15, v12, :cond_22

    :cond_d
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mDeviceEventController:Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    const/16 v21, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v8, v1, v2}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->setDeviceEvent(Ljava/util/ArrayList;II)V

    const-string/jumbo v19, "PLAYBACK_POS_CHANGED"

    move-object/from16 v0, v19

    move-wide/from16 v1, v16

    invoke-virtual {v13, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mDeviceEventController:Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    const/16 v21, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v8, v1, v2, v13}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->sendNotificationRsp(Ljava/util/ArrayList;IILandroid/os/Bundle;)V

    :cond_e
    if-eqz v8, :cond_f

    if-eqz v12, :cond_f

    const/16 v19, 0x3

    move/from16 v0, p2

    move/from16 v1, v19

    if-ne v0, v1, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    move-object/from16 v19, v0

    const/16 v20, 0x5

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move-object/from16 v4, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mNextPosMs:J

    move-wide/from16 v20, v0

    sub-long v20, v20, v16

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-virtual {v0, v10, v1, v2}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_f
    sget-boolean v19, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v19, :cond_10

    const-string/jumbo v19, "Avrcp"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "updatePlayPauseState() :mNeedUpdatingPlayState :"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mNeedUpdatingPlayState:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mDeviceEventController:Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v9, v1, v2}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->compareEventFlag(Ljava/lang/String;II)Ljava/util/ArrayList;

    move-result-object v8

    if-eqz v8, :cond_14

    if-eq v14, v11, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mDeviceEventController:Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    const/16 v21, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v8, v1, v2}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->setDeviceEvent(Ljava/util/ArrayList;II)V

    sput v11, Lcom/android/bluetooth/avrcp/Avrcp;->tempPlayStatus:I

    const-string/jumbo v19, "PLAYBACK_STATUS_CHANGED"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mDeviceEventController:Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    const/16 v21, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v8, v1, v2, v13}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->sendNotificationRsp(Ljava/util/ArrayList;IILandroid/os/Bundle;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/bluetooth/avrcp/Avrcp;->isA2dpPlaying:Z

    move/from16 v19, v0

    if-eqz v19, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPlayState:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPlayState:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_12

    :cond_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mNeedUpdatingPlayState:Z

    move/from16 v19, v0

    if-eqz v19, :cond_23

    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPlayState:I

    move/from16 v19, v0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mNeedUpdatingPlayState:Z

    move/from16 v19, v0

    if-eqz v19, :cond_14

    sget-boolean v19, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v19, :cond_13

    const-string/jumbo v19, "Avrcp"

    const-string/jumbo v20, "don\'t need to update play state later"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    move-object/from16 v19, v0

    const/16 v20, 0x12

    invoke-virtual/range {v19 .. v20}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->removeMessages(I)V

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/bluetooth/avrcp/Avrcp;->mNeedUpdatingPlayState:Z

    :cond_14
    :goto_8
    return-void

    :cond_15
    const/4 v15, 0x0

    goto/16 :goto_0

    :cond_16
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mStateSeekREV:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    const/16 p2, 0x5

    goto/16 :goto_1

    :cond_17
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaStarted:Z

    goto/16 :goto_2

    :cond_18
    const/16 v19, 0x2

    move/from16 v0, p2

    move/from16 v1, v19

    if-ne v0, v1, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v19

    if-nez v19, :cond_7

    :cond_19
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPlayState:I

    goto/16 :goto_3

    :cond_1a
    :try_start_1
    sget-boolean v19, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v19, :cond_1b

    const-string/jumbo v19, "Avrcp"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "update "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v6}, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->getPlayerPackageName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " playbackState as: Paused"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    const/16 v19, 0x2

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->SetPlayState(B)V
    :try_end_1
    .catch Ljava/util/ConcurrentModificationException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    :cond_1c
    sget-boolean v19, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v19, :cond_1d

    const-string/jumbo v19, "Avrcp"

    const-string/jumbo v20, "keep songposition"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/bluetooth/avrcp/Avrcp;->mNeedUpdatePos:Z

    const-wide/16 p3, -0x1

    goto/16 :goto_5

    :cond_1e
    const-wide/16 v20, -0x1

    cmp-long v19, p3, v20

    if-nez v19, :cond_20

    sget-boolean v19, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v19, :cond_1f

    const-string/jumbo v19, "Avrcp"

    const-string/jumbo v20, "reset songposition"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/bluetooth/avrcp/Avrcp;->mNeedUpdatePos:Z

    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPosMs:J

    goto/16 :goto_5

    :cond_20
    move-wide/from16 v0, p3

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPosMs:J

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/bluetooth/avrcp/Avrcp;->mNeedUpdatePos:Z

    goto/16 :goto_5

    :cond_21
    const/4 v12, 0x0

    goto/16 :goto_6

    :cond_22
    if-eqz v12, :cond_e

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mNextPosMs:J

    move-wide/from16 v20, v0

    cmp-long v19, v16, v20

    if-gez v19, :cond_d

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mPrevPosMs:J

    move-wide/from16 v20, v0

    cmp-long v19, v16, v20

    if-gtz v19, :cond_e

    goto/16 :goto_7

    :cond_23
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mRemoteSuspend:Z

    move/from16 v19, v0

    if-nez v19, :cond_14

    sget-boolean v19, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v19, :cond_24

    const-string/jumbo v19, "Avrcp"

    const-string/jumbo v20, "check to update play state later"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/bluetooth/avrcp/Avrcp;->mNeedUpdatingPlayState:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    move-object/from16 v20, v0

    const/16 v21, 0x12

    invoke-virtual/range {v20 .. v21}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v20

    const-wide/16 v22, 0x1388

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_8
.end method

.method private updatePlayPauseStateFromA2dp([BIJ)V
    .locals 7

    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/Avrcp;->ignorePlayStatusFromA2dp()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/android/bluetooth/avrcp/Avrcp;->getOtherDeviceAddr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {v1}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object p1

    :cond_1
    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/Avrcp;->isBMWCarkitForBrowsing()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    const/16 v4, 0xd3

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-boolean v3, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string/jumbo v3, "Avrcp"

    const-string/jumbo v4, "processing playitem"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    const/4 v2, -0x1

    sget-boolean v3, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v3, :cond_4

    const-string/jumbo v3, "Avrcp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updatePlayPauseStateFromA2dp() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move v2, p2

    iget v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPlayState:I

    if-eq v3, p2, :cond_6

    sget-boolean v3, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v3, :cond_5

    const-string/jumbo v3, "Avrcp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updatePlayStateValue() Play state changing from : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPlayState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " --> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/bluetooth/avrcp/Avrcp;->updatePlayPauseState([BIJ)V

    :cond_6
    return-void
.end method

.method private updatePlayerPublishability()V
    .locals 6

    const/4 v5, 0x1

    sget-boolean v2, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "Avrcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "activated player for publishability is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mActivatedPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaPlayers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaPlayers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->getPlayerPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mActivatedPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-boolean v2, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "Avrcp"

    const-string/jumbo v3, "published player is current activated Package"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v0, v5}, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->SetPlayerPublishability(Z)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->getPlayerPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "tempPackage"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v2, :cond_5

    const-string/jumbo v2, "Avrcp"

    const-string/jumbo v3, "published player is temp Player"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {v0, v5}, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->SetPlayerPublishability(Z)V

    goto :goto_0
.end method

.method private updateSupportedActions(Landroid/media/session/PlaybackState;)V
    .locals 10

    const-wide/16 v8, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mSupportAction:Lcom/android/bluetooth/avrcp/Avrcp$SupportActionState;

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getActions()J

    move-result-wide v0

    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mSupportAction:Lcom/android/bluetooth/avrcp/Avrcp$SupportActionState;

    const-wide/16 v6, 0x4

    and-long/2addr v6, v0

    cmp-long v2, v6, v8

    if-eqz v2, :cond_3

    move v2, v3

    :goto_0
    iput-boolean v2, v5, Lcom/android/bluetooth/avrcp/Avrcp$SupportActionState;->play:Z

    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mSupportAction:Lcom/android/bluetooth/avrcp/Avrcp$SupportActionState;

    const-wide/16 v6, 0x2

    and-long/2addr v6, v0

    cmp-long v2, v6, v8

    if-eqz v2, :cond_4

    move v2, v3

    :goto_1
    iput-boolean v2, v5, Lcom/android/bluetooth/avrcp/Avrcp$SupportActionState;->pause:Z

    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mSupportAction:Lcom/android/bluetooth/avrcp/Avrcp$SupportActionState;

    const-wide/16 v6, 0x10

    and-long/2addr v6, v0

    cmp-long v2, v6, v8

    if-eqz v2, :cond_5

    move v2, v3

    :goto_2
    iput-boolean v2, v5, Lcom/android/bluetooth/avrcp/Avrcp$SupportActionState;->prev:Z

    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mSupportAction:Lcom/android/bluetooth/avrcp/Avrcp$SupportActionState;

    const-wide/16 v6, 0x20

    and-long/2addr v6, v0

    cmp-long v2, v6, v8

    if-eqz v2, :cond_6

    move v2, v3

    :goto_3
    iput-boolean v2, v5, Lcom/android/bluetooth/avrcp/Avrcp$SupportActionState;->next:Z

    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mSupportAction:Lcom/android/bluetooth/avrcp/Avrcp$SupportActionState;

    const-wide/16 v6, 0x40

    and-long/2addr v6, v0

    cmp-long v2, v6, v8

    if-eqz v2, :cond_7

    move v2, v3

    :goto_4
    iput-boolean v2, v5, Lcom/android/bluetooth/avrcp/Avrcp$SupportActionState;->ff:Z

    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mSupportAction:Lcom/android/bluetooth/avrcp/Avrcp$SupportActionState;

    const-wide/16 v6, 0x8

    and-long/2addr v6, v0

    cmp-long v2, v6, v8

    if-eqz v2, :cond_8

    move v2, v3

    :goto_5
    iput-boolean v2, v5, Lcom/android/bluetooth/avrcp/Avrcp$SupportActionState;->rew:Z

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mSupportAction:Lcom/android/bluetooth/avrcp/Avrcp$SupportActionState;

    const-wide/16 v6, 0x1000

    and-long/2addr v6, v0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_9

    :goto_6
    iput-boolean v3, v2, Lcom/android/bluetooth/avrcp/Avrcp$SupportActionState;->playFromQueue:Z

    sget-boolean v2, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "Avrcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateSupportedActions play:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mSupportAction:Lcom/android/bluetooth/avrcp/Avrcp$SupportActionState;

    iget-boolean v4, v4, Lcom/android/bluetooth/avrcp/Avrcp$SupportActionState;->play:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " pause:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mSupportAction:Lcom/android/bluetooth/avrcp/Avrcp$SupportActionState;

    iget-boolean v4, v4, Lcom/android/bluetooth/avrcp/Avrcp$SupportActionState;->pause:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " prev:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mSupportAction:Lcom/android/bluetooth/avrcp/Avrcp$SupportActionState;

    iget-boolean v4, v4, Lcom/android/bluetooth/avrcp/Avrcp$SupportActionState;->prev:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " next:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mSupportAction:Lcom/android/bluetooth/avrcp/Avrcp$SupportActionState;

    iget-boolean v4, v4, Lcom/android/bluetooth/avrcp/Avrcp$SupportActionState;->next:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ff:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mSupportAction:Lcom/android/bluetooth/avrcp/Avrcp$SupportActionState;

    iget-boolean v4, v4, Lcom/android/bluetooth/avrcp/Avrcp$SupportActionState;->ff:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " rew:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mSupportAction:Lcom/android/bluetooth/avrcp/Avrcp$SupportActionState;

    iget-boolean v4, v4, Lcom/android/bluetooth/avrcp/Avrcp$SupportActionState;->rew:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " playFromQueue:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mSupportAction:Lcom/android/bluetooth/avrcp/Avrcp$SupportActionState;

    iget-boolean v4, v4, Lcom/android/bluetooth/avrcp/Avrcp$SupportActionState;->playFromQueue:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    move v2, v4

    goto/16 :goto_0

    :cond_4
    move v2, v4

    goto/16 :goto_1

    :cond_5
    move v2, v4

    goto/16 :goto_2

    :cond_6
    move v2, v4

    goto/16 :goto_3

    :cond_7
    move v2, v4

    goto/16 :goto_4

    :cond_8
    move v2, v4

    goto/16 :goto_5

    :cond_9
    move v3, v4

    goto/16 :goto_6
.end method

.method private volumeChangeCallback([BII)V
    .locals 3

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, p2, p3, p1}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public a2dpConnectionState(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 8

    const/4 v7, 0x6

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    iput-object p2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v1, 0x2

    if-ne p1, v1, :cond_5

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mConnectedDevices:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v1}, Lcom/android/bluetooth/avrcp/Avrcp;->isAutoPlayCarkit(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_4

    iput-boolean v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAutoPlayCarkit:Z

    iget-boolean v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaStarted:Z

    if-eqz v1, :cond_1

    iput-boolean v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaRunning:Z

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mConnectedDevices:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mDeviceEventController:Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->addNewDevice(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/android/bluetooth/avrcp/Avrcp;->disallowBrowsingCarkit(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/bluetooth/avrcp/Avrcp;->disallowBrowsingCarkitAddr:Ljava/lang/String;

    :cond_3
    sget-boolean v1, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "Avrcp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Device added Size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mConnectedDevices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iput-boolean v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAutoPlayCarkit:Z

    goto :goto_1

    :cond_5
    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mConnectedDevices:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mConnectedDevices:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mDeviceEventController:Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->remove(Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v1, :cond_6

    const-string/jumbo v1, "Avrcp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Device removed Size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mConnectedDevices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mConnectedDevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v1, v5, :cond_b

    sget-boolean v1, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v1, :cond_7

    const-string/jumbo v1, "Avrcp"

    const-string/jumbo v2, "DUAL_A2DP feature is enabled and we still have a connected device"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mConnectedDevices:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v1}, Lcom/android/bluetooth/avrcp/Avrcp;->isAutoPlayCarkit(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_a

    iput-boolean v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAutoPlayCarkit:Z

    iget-boolean v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaStarted:Z

    if-eqz v1, :cond_8

    iput-boolean v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaRunning:Z

    :cond_8
    :goto_2
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mBrowsingAddr:[B

    invoke-static {v2}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    sget-boolean v1, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v1, :cond_9

    const-string/jumbo v1, "Avrcp"

    const-string/jumbo v2, "browsing device is disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/Avrcp;->resetBrowseStack()V

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v7, :cond_d

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mBrowsingAddr:[B

    aput-byte v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_a
    iput-boolean v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAutoPlayCarkit:Z

    iput-boolean v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaRunning:Z

    goto :goto_2

    :cond_b
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mConnectedDevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mDeviceEventController:Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    invoke-virtual {v1}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->clear()V

    sget-boolean v1, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v1, :cond_c

    const-string/jumbo v1, "Avrcp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Devices cleared Size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mConnectedDevices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    iput-boolean v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaRunning:Z

    iput-boolean v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mRemoteSuspend:Z

    iput-object v6, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    iput-boolean v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mNeedUpdatingPlayState:Z

    iput v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPlayState:I

    iput-boolean v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAutoPlayCarkit:Z

    iput-boolean v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mStateSeekFWD:Z

    iput-boolean v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mStateSeekREV:Z

    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/Avrcp;->resetBrowseStack()V

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v7, :cond_d

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mBrowsingAddr:[B

    aput-byte v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_d
    invoke-direct {p0, p2}, Lcom/android/bluetooth/avrcp/Avrcp;->disallowBrowsingCarkit(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_1

    sput-object v6, Lcom/android/bluetooth/avrcp/Avrcp;->disallowBrowsingCarkitAddr:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method public adjustVolume(I)V
    .locals 4

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method checkNowPlayingList([J)Z
    .locals 12

    sget-boolean v5, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string/jumbo v5, "Avrcp"

    const-string/jumbo v6, " checkNowPlayingList start"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v4, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v4

    :cond_1
    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mNowPlayingList:[J

    if-nez v5, :cond_6

    sget-boolean v5, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string/jumbo v5, "Avrcp"

    const-string/jumbo v6, "needUpdateNowplay set true(null)"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v4, 0x1

    :cond_3
    :goto_0
    if-eqz v4, :cond_4

    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcp/Avrcp;->updateMediaElementItems([J)Z

    move-result v1

    :cond_4
    sget-boolean v5, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v5, :cond_5

    const-string/jumbo v5, "Avrcp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "needUpdateNowplay = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v1

    :cond_6
    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mNowPlayingList:[J

    array-length v5, v5

    array-length v6, p1

    if-eq v5, v6, :cond_8

    sget-boolean v5, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v5, :cond_7

    const-string/jumbo v5, "Avrcp"

    const-string/jumbo v6, "needUpdateNowplay set true(length)"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const/4 v4, 0x1

    goto :goto_0

    :cond_8
    const/4 v0, 0x0

    iget-object v6, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mNowPlayingList:[J

    const/4 v5, 0x0

    array-length v7, v6

    :goto_1
    if-ge v5, v7, :cond_3

    aget-wide v2, v6, v5

    iget-object v8, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mNowPlayingList:[J

    aget-wide v8, v8, v0

    aget-wide v10, p1, v0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_9

    const/4 v4, 0x1

    goto :goto_0

    :cond_9
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method public cleanup()V
    .locals 2

    sget-boolean v0, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Avrcp"

    const-string/jumbo v1, "cleanup"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mConnectedDevices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mDeviceEventController:Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->clear()V

    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/Avrcp;->cleanupNative()V

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mVolumeMapping:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mVolumeMapping:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_1
    return-void
.end method

.method deviceInfo(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public doQuit()V
    .locals 8

    const/4 v7, 0x0

    sget-boolean v5, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string/jumbo v5, "Avrcp"

    const-string/jumbo v6, "doQuit"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    invoke-virtual {v5, v7}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    invoke-virtual {v5}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    :cond_1
    :try_start_0
    sget-boolean v5, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string/jumbo v5, "Avrcp"

    const-string/jumbo v6, "Unregistering previous receiver"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAvrcpReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaPlayers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    :try_start_1
    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mBrowser:Landroid/media/browse/MediaBrowser;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mBrowser:Landroid/media/browse/MediaBrowser;

    invoke-virtual {v5}, Landroid/media/browse/MediaBrowser;->disconnect()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_1
    monitor-enter p0

    :try_start_2
    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaController:Landroid/media/session/MediaController;

    iget-object v6, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaControllerCallbackHandler:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v5, v6}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMediaController:Landroid/media/session/MediaController;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    monitor-exit p0

    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mObserver:Landroid/database/ContentObserver;

    if-eqz v5, :cond_5

    const-string/jumbo v5, "Avrcp"

    const-string/jumbo v6, "unregisterContentObserver"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v5}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-object v7, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mObserver:Landroid/database/ContentObserver;

    :cond_5
    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mActiveSessionListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    if-eqz v5, :cond_6

    const-string/jumbo v5, "Avrcp"

    const-string/jumbo v6, "removeOnActiveSessionsChangedListener"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "media_session"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/session/MediaSessionManager;

    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mActiveSessionListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    invoke-virtual {v3, v5}, Landroid/media/session/MediaSessionManager;->removeOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;)V

    :cond_6
    return-void

    :catch_0
    move-exception v4

    const-string/jumbo v5, "Avrcp"

    const-string/jumbo v6, "Unable to unregister receiver"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v1

    const-string/jumbo v5, "Avrcp"

    const-string/jumbo v6, "Catching IllegalArgumentException : "

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public dump(Ljava/lang/StringBuilder;)V
    .locals 4

    const-string/jumbo v0, "AVRCP:\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mMetadata: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mMetadata:Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mTransportControlFlags: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mTransportControlFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentPlayState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPlayState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentPosMs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mCurrentPosMs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPlayStartTimeMs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPlayStartTimeMs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mSongLengthMs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mSongLengthMs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPlaybackIntervalMs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPlaybackIntervalMs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mNextPosMs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mNextPosMs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPrevPosMs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mPrevPosMs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mSkipStartTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mSkipStartTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mLastDirection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mLastDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mVolumeStep: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mVolumeStep:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAudioStreamMax: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAudioStreamMax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mVolCmdInProgress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mVolCmdInProgress:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAbsVolRetryTimes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAbsVolRetryTimes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mSkipAmount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mSkipAmount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method

.method public getItem(J)Landroid/media/browse/MediaBrowser$MediaItem;
    .locals 3

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mDataSet:Ljava/util/List;

    long-to-int v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/browse/MediaBrowser$MediaItem;

    return-object v0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mDataSet:Ljava/util/List;

    return-object v0
.end method

.method public getNPLItem(J)Landroid/media/session/MediaSession$QueueItem;
    .locals 3

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mQueue:Ljava/util/List;

    long-to-int v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession$QueueItem;

    return-object v0
.end method

.method public getNPLItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mQueue:Ljava/util/List;

    return-object v0
.end method

.method public getRepeatMode()I
    .locals 3

    sget-boolean v0, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Avrcp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getRepeatMode() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mRepeat:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mRepeat:I

    return v0
.end method

.method public getShuffleMode()I
    .locals 3

    sget-boolean v0, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Avrcp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getShuffleMode() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mShuffle:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mShuffle:I

    return v0
.end method

.method public isAbsoluteVolumeControl()Z
    .locals 5

    const/4 v4, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "bluetooth_avc_mode"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_0

    const/4 v1, 0x1

    :cond_0
    sget-boolean v2, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "Avrcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isAbsoluteVolumeControl : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1
.end method

.method public isAbsoluteVolumeDeviceActive()Z
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/Avrcp;->getActiveStreamDevice()Ljava/lang/String;

    move-result-object v0

    sget-boolean v2, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "Avrcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isAbsoluteVolumeDeviceActive :: active device = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mDeviceEventController:Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    const/16 v3, 0x8

    invoke-virtual {v2, v0, v3}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->getDeviceEvent(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    const-string/jumbo v2, "Avrcp"

    const-string/jumbo v3, "isAbsoluteVolumeDeviceActive :: remote device rejected AVC feature"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mDeviceEventController:Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    const/4 v3, 0x2

    invoke-virtual {v2, v0, v5, v3}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->compareEventFlag(Ljava/lang/String;II)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    const-string/jumbo v2, "Avrcp"

    const-string/jumbo v3, "isAbsoluteVolumeDeviceActive :: true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    return v2

    :cond_2
    const-string/jumbo v2, "Avrcp"

    const-string/jumbo v3, "isAbsoluteVolumeDeviceActive :: false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5
.end method

.method public isAbsoluteVolumeSupported()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/Avrcp;->getActiveStreamDevice()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/avrcp/Avrcp;->isAVCSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public resetBlackList(Ljava/lang/String;)V
    .locals 5

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "absolute_volume_blacklist"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public sendBigdata(Ljava/lang/String;Ljava/lang/String;)V
    .locals 15

    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v2, "app_id"

    const-string/jumbo v3, "com.android.bluetooth"

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "feature"

    move-object/from16 v0, p1

    invoke-virtual {v13, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "extra"

    invoke-virtual {v13, v2, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v2, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "Avrcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "insertLog() : app_id : com.android.bluetooth, feature : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", extra : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v12, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "data"

    invoke-virtual {v12, v2, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.providers.context"

    invoke-virtual {v12, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "HqmManagerService"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/SemHqmManager;

    if-eqz v1, :cond_1

    const-string/jumbo v3, "Bluetooth"

    const-string/jumbo v5, "ph"

    const-string/jumbo v6, "0.0"

    const-string/jumbo v7, "sec"

    const-string/jumbo v8, ""

    const-string/jumbo v10, ""

    const-string/jumbo v11, "com.android.bluetooth"

    const/4 v2, 0x0

    move-object/from16 v4, p1

    move-object/from16 v9, p2

    invoke-virtual/range {v1 .. v11}, Landroid/os/SemHqmManager;->sendHWParamToHQMwithAppId(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v2, "Avrcp"

    const-string/jumbo v3, "Failed to call QmBigDataModule API"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setA2dpAudioState(I)V
    .locals 4

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    const/16 v2, 0xd

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setAbsoluteVolume(I)V
    .locals 4

    iget v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mLocalVolume:I

    if-ne p1, v1, :cond_1

    sget-boolean v1, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "Avrcp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAbsoluteVolume is setting same index, ignore "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setAbsoluteVolumeControl(Z)Z
    .locals 11

    const/16 v9, 0x9

    const/4 v8, 0x0

    const/4 v10, 0x1

    const-string/jumbo v5, "Avrcp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setAbsoluteVolumeControl : enable = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    const/4 v3, 0x1

    :goto_0
    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/Avrcp;->getActiveStreamDevice()Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "bluetooth_avc_mode"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-ne v3, v10, :cond_2

    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mA2dpService:Lcom/android/bluetooth/a2dp/A2dpService;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mA2dpService:Lcom/android/bluetooth/a2dp/A2dpService;

    invoke-virtual {v5}, Lcom/android/bluetooth/a2dp/A2dpService;->isDualPlayEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mA2dpService:Lcom/android/bluetooth/a2dp/A2dpService;

    invoke-virtual {v5, v8}, Lcom/android/bluetooth/a2dp/A2dpService;->setDualPlayMode(Z)Z

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/bluetooth/avrcp/Avrcp;->isAVCSupportedRegardlessDualPlay(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mDeviceEventController:Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;

    invoke-virtual {v5, v0, v9}, Lcom/android/bluetooth/avrcp/Avrcp$DeviceEventController;->getDeviceEvent(Ljava/lang/String;I)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/bluetooth/avrcp/Avrcp;->convertToAudioStreamVolume(I)I

    move-result v4

    const-string/jumbo v5, "Avrcp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setAbsoluteVolumeControl : update initial local vol: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mBaseVolume:I

    if-gt v4, v5, :cond_4

    if-ltz v4, :cond_4

    iput v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mLocalVolume:I

    invoke-direct {p0, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->notifyVolumeChanged(I)V

    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->disableSafeMediaVolume()V

    :cond_2
    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAudioManager:Landroid/media/AudioManager;

    invoke-direct {p0, v0}, Lcom/android/bluetooth/avrcp/Avrcp;->isAVCSupportedRegardlessDualPlay(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v5, v0, v6}, Landroid/media/AudioManager;->avrcpSupportsAbsoluteVolume(Ljava/lang/String;Z)V

    return v10

    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_1

    iget v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mBaseVolume:I

    invoke-direct {p0, v5}, Lcom/android/bluetooth/avrcp/Avrcp;->convertToAvrcpVolume(I)I

    move-result v1

    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    const/4 v6, 0x7

    invoke-virtual {v5, v6}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->removeMessages(I)V

    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->removeMessages(I)V

    invoke-static {v0}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v2, :cond_5

    const/16 v5, 0x7f

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-direct {p0, v2, v5}, Lcom/android/bluetooth/avrcp/Avrcp;->setVolumeNative([BI)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    iget-object v6, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    invoke-virtual {v6, v9}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v8, 0x7d0

    invoke-virtual {v5, v6, v8, v9}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iput-boolean v10, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mVolCmdSetInProgress:Z

    iput v1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mLastRemoteVolume:I

    iget v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mBaseVolume:I

    iput v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mLastLocalVolume:I

    iput-boolean v10, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mEarShockSetInProgress:Z

    goto :goto_1

    :cond_5
    sget-boolean v5, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string/jumbo v5, "Avrcp"

    const-string/jumbo v6, "setVolumeNative failed"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setAudioDeviceChanged(Landroid/bluetooth/BluetoothDevice;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/bluetooth/avrcp/Avrcp;->isAVCSupported(Ljava/lang/String;)Z

    move-result v1

    const-string/jumbo v2, "Avrcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAudioDeviceChanged: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/android/bluetooth/Utils;->getAddressForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v0, v1}, Landroid/media/AudioManager;->avrcpSupportsAbsoluteVolume(Ljava/lang/String;Z)V

    if-eqz v1, :cond_3

    iget-boolean v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mUpdateLocalVolumeInProgress:Z

    if-eqz v2, :cond_3

    sget-boolean v2, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "Avrcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAudioDeviceChanged update local volume, mLocalVolume "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mLocalVolume:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-boolean v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mUpdateLocalVolumeInProgress:Z

    iget v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mLocalVolume:I

    if-ltz v2, :cond_2

    iget v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mLocalVolume:I

    invoke-direct {p0, v2}, Lcom/android/bluetooth/avrcp/Avrcp;->notifyVolumeChanged(I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iput-boolean v5, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mUpdateLocalVolumeInProgress:Z

    goto :goto_0
.end method

.method public setData(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "Avrcp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setData "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mDataSet:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mDataSet:Ljava/util/List;

    return-void
.end method

.method public setNPLData(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "Avrcp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setNPLData "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mQueue:Ljava/util/List;

    return-void
.end method

.method public setRemoteSuspend(Z)V
    .locals 3

    sget-boolean v0, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Avrcp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRemoteSuspend() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean p1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mRemoteSuspend:Z

    return-void
.end method

.method public setRepeatMode(I)V
    .locals 6

    const/4 v5, 0x0

    const/4 v1, -0x1

    iput p1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mRepeat:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->isChangedAppSettings:Z

    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcp/Avrcp;->convertRepeatMode(I)I

    move-result v1

    sget-boolean v2, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "Avrcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setRepeatMode() repeat: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v1}, Ljava/lang/Integer;-><init>(I)V

    const/16 v4, 0xe

    invoke-virtual {v2, v4, v5, v5, v3}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    invoke-virtual {v2, v0}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setShuffleMode(I)V
    .locals 6

    const/4 v5, 0x0

    const/4 v1, -0x1

    iput p1, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mShuffle:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->isChangedAppSettings:Z

    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcp/Avrcp;->convertShuffleMode(I)I

    move-result v1

    sget-boolean v2, Lcom/android/bluetooth/avrcp/Avrcp;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "Avrcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setShuffleMode() shuffle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v1}, Ljava/lang/Integer;-><init>(I)V

    const/16 v4, 0xf

    invoke-virtual {v2, v4, v5, v5, v3}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp;->mHandler:Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    invoke-virtual {v2, v0}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
