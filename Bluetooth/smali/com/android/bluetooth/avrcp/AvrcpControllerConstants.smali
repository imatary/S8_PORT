.class final Lcom/android/bluetooth/avrcp/AvrcpControllerConstants;
.super Ljava/lang/Object;
.source "AvrcpControllerConstants.java"


# static fields
.field static final ABS_VOL_BASE:I = 0x7f

.field public static final ALBUM_NAME_INVALID:Ljava/lang/String; = "NOT_SUPPORTED"

.field public static final ARTIST_NAME_INVALID:Ljava/lang/String; = "NOT_SUPPORTED"

.field public static final ATTRIB_EQUALIZER_STATUS:B = 0x1t

.field public static final ATTRIB_REPEAT_STATUS:B = 0x2t

.field public static final ATTRIB_SCAN_STATUS:B = 0x4t

.field public static final ATTRIB_SHUFFLE_STATUS:B = 0x3t

.field public static final AVRCP_SCOPE_NOW_PLAYING:I = 0x0

.field public static final AVRCP_SCOPE_VFS:I = 0x1

.field public static final BATTERY_STATUS_INVALID:Ljava/lang/String; = "NOT_SUPPORTED"

.field public static final BATT_POWER_CRITICAL:I = 0x2

.field public static final BATT_POWER_EXTERNAL:I = 0x3

.field public static final BATT_POWER_FULL_CHARGE:I = 0x4

.field public static final BATT_POWER_NORMAL:I = 0x0

.field public static final BATT_POWER_UNDEFINED:I = 0xff

.field public static final BATT_POWER_WARNING:I = 0x1

.field public static final BTRC_FEAT_ABSOLUTE_VOLUME:B = 0x2t

.field public static final BTRC_FEAT_BROWSE:B = 0x4t

.field public static final BTRC_FEAT_METADATA:B = 0x1t

.field public static final BTRC_FEAT_NONE:B = 0x0t

.field public static final DBG:Z = true

.field public static final DEFER_VOLUME_CHANGE_RSP:I = 0x1

.field public static final EQUALIZER_STATUS_INVALID:Ljava/lang/String; = "NOT_SUPPORTED"

.field public static final EQUALIZER_STATUS_OFF:B = 0x1t

.field public static final EQUALIZER_STATUS_ON:B = 0x2t

.field public static final GENRE_INVALID:Ljava/lang/String; = "NOT_SUPPORTED"

.field public static final MEDIA_ATTRIBUTE_ALBUM_NAME:I = 0x3

.field public static final MEDIA_ATTRIBUTE_ARTIST_NAME:I = 0x2

.field public static final MEDIA_ATTRIBUTE_GENRE:I = 0x6

.field public static final MEDIA_ATTRIBUTE_PLAYING_TIME:I = 0x7

.field public static final MEDIA_ATTRIBUTE_TITLE:I = 0x1

.field public static final MEDIA_ATTRIBUTE_TOTAL_TRACK_NUMBER:I = 0x5

.field public static final MEDIA_ATTRIBUTE_TRACK_NUMBER:I = 0x4

.field public static final MESSAGE_PROCESS_CONNECTION_CHANGE:I = 0x4b0

.field public static final MESSAGE_PROCESS_PLAYER_APP_SETTING_CHANGED:I = 0x66

.field public static final MESSAGE_PROCESS_PLAY_POS_CHANGED:I = 0x6a

.field public static final MESSAGE_PROCESS_PLAY_STATUS_CHANGED:I = 0x6b

.field public static final MESSAGE_PROCESS_RC_FEATURES:I = 0x44c

.field public static final MESSAGE_PROCESS_REGISTER_ABS_VOL_NOTIFICATION:I = 0x68

.field public static final MESSAGE_PROCESS_SET_ABS_VOL_CMD:I = 0x67

.field public static final MESSAGE_PROCESS_SUPPORTED_PLAYER_APP_SETTING:I = 0x65

.field public static final MESSAGE_PROCESS_TRACK_CHANGED:I = 0x69

.field public static final MESSAGE_SEND_GROUP_NAVIGATION_CMD:I = 0x3

.field public static final MESSAGE_SEND_PASS_THROUGH_CMD:I = 0x1

.field public static final MESSAGE_SEND_SET_CURRENT_PLAYER_APPLICATION_SETTINGS:I = 0x2

.field public static final MESSAGE_START_METADATA_BROADCASTS:I = 0xca

.field public static final MESSAGE_STOP_METADATA_BROADCASTS:I = 0xc9

.field public static final NOTIFICATION_RSP_TYPE_CHANGED:I = 0x1

.field public static final NOTIFICATION_RSP_TYPE_INTERIM:I = 0x0

.field public static final PLAYING_TIME_INVALID:I = 0xff

.field public static final PLAY_STATUS_ERROR:I = 0xff

.field public static final PLAY_STATUS_FWD_SEEK:I = 0x3

.field public static final PLAY_STATUS_PAUSED:I = 0x2

.field public static final PLAY_STATUS_PLAYING:I = 0x1

.field public static final PLAY_STATUS_REV_SEEK:I = 0x4

.field public static final PLAY_STATUS_STOPPED:I = 0x0

.field public static final REPEAT_STATUS_ALL_TRACK_REPEAT:B = 0x3t

.field public static final REPEAT_STATUS_GROUP_REPEAT:B = 0x4t

.field public static final REPEAT_STATUS_INVALID:Ljava/lang/String; = "NOT_SUPPORTED"

.field public static final REPEAT_STATUS_OFF:B = 0x1t

.field public static final REPEAT_STATUS_SINGLE_TRACK_REPEAT:B = 0x2t

.field public static final SCAN_STATUS_ALL_TRACK_SCAN:B = 0x2t

.field public static final SCAN_STATUS_GROUP_SCAN:B = 0x3t

.field public static final SCAN_STATUS_INVALID:Ljava/lang/String; = "NOT_SUPPORTED"

.field public static final SCAN_STATUS_OFF:B = 0x1t

.field public static final SEND_VOLUME_CHANGE_RSP:I = 0x0

.field public static final SHUFFLE_STATUS_ALL_TRACK_SHUFFLE:B = 0x2t

.field public static final SHUFFLE_STATUS_GROUP_SHUFFLE:B = 0x3t

.field public static final SHUFFLE_STATUS_INVALID:Ljava/lang/String; = "NOT_SUPPORTED"

.field public static final SHUFFLE_STATUS_OFF:B = 0x1t

.field public static final START_METADATA_BROADCASTS:I = 0x0

.field public static final STATUS_INVALID:I = 0xff

.field public static final STOP_METADATA_BROADCASTS:I = 0x1

.field public static final SYSTEM_POWER_OFF:I = 0x1

.field public static final SYSTEM_POWER_ON:I = 0x0

.field public static final SYSTEM_STATUS_INVALID:Ljava/lang/String; = "NOT_SUPPORTED"

.field public static final SYSTEM_STATUS_UNDEFINED:I = 0xff

.field public static final SYSTEM_UNPLUGGED:I = 0x2

.field public static final TITLE_INVALID:Ljava/lang/String; = "NOT_SUPPORTED"

.field public static final TOTAL_TRACKS_INVALID:I = -0x1

.field public static final TOTAL_TRACK_TIME_INVALID:I = 0xff

.field public static final TRACK_NUM_INVALID:I = 0xff

.field public static final VDBG:Z = true

.field public static final VOLUME_LABEL_UNDEFINED:I = 0xff


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dumpMessageString(I)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "UNKNOWN"

    sparse-switch p0, :sswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :sswitch_0
    const-string/jumbo v0, "REQ_PASS_THROUGH_CMD"

    goto :goto_0

    :sswitch_1
    const-string/jumbo v0, "REQ_SET_PLAYER_APP_SETTING"

    goto :goto_0

    :sswitch_2
    const-string/jumbo v0, "REQ_GRP_NAV_CMD"

    goto :goto_0

    :sswitch_3
    const-string/jumbo v0, "CB_SUPPORTED_PLAYER_APP_SETTING"

    goto :goto_0

    :sswitch_4
    const-string/jumbo v0, "CB_PLAYER_APP_SETTING_CHANGED"

    goto :goto_0

    :sswitch_5
    const-string/jumbo v0, "CB_SET_ABS_VOL_CMD"

    goto :goto_0

    :sswitch_6
    const-string/jumbo v0, "CB_REGISTER_ABS_VOL"

    goto :goto_0

    :sswitch_7
    const-string/jumbo v0, "CB_TRACK_CHANGED"

    goto :goto_0

    :sswitch_8
    const-string/jumbo v0, "CB_PLAY_POS_CHANGED"

    goto :goto_0

    :sswitch_9
    const-string/jumbo v0, "CB_PLAY_STATUS_CHANGED"

    goto :goto_0

    :sswitch_a
    const-string/jumbo v0, "CB_RC_FEATURES"

    goto :goto_0

    :sswitch_b
    const-string/jumbo v0, "CB_CONN_CHANGED"

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x65 -> :sswitch_3
        0x66 -> :sswitch_4
        0x67 -> :sswitch_5
        0x68 -> :sswitch_6
        0x69 -> :sswitch_7
        0x6a -> :sswitch_8
        0x6b -> :sswitch_9
        0x44c -> :sswitch_a
        0x4b0 -> :sswitch_b
    .end sparse-switch
.end method
