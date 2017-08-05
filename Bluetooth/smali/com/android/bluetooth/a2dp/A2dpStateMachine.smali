.class final Lcom/android/bluetooth/a2dp/A2dpStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "A2dpStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataEvent;,
        Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo;,
        Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;,
        Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;,
        Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;,
        Lcom/android/bluetooth/a2dp/A2dpStateMachine$IntentBroadcastHandler;,
        Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;,
        Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;,
        Lcom/android/bluetooth/a2dp/A2dpStateMachine$commandForApps;
    }
.end annotation


# static fields
.field private static final A2DP_PACKAGE:Ljava/lang/String; = "com.android.bluetooth.a2dp"

.field private static final ACTION_NOTIFY_SCMST_UPDATE:Ljava/lang/String; = "com.samsung.bluetooth.btservice.action.ACTION_NOTIFY_SCMST_UPDATE"

.field private static final ALL_TYPES_TIME:I = 0x4

.field private static final APP_ID:Ljava/lang/String; = "com.android.bluetooth"

.field static final AUDIO_DEVICE_CHANGED:I = 0x3

.field static final AUDIO_STATE_REMOTE_SUSPEND:I = 0x0

.field static final AUDIO_STATE_STARTED:I = 0x2

.field static final AUDIO_STATE_STOPPED:I = 0x1

.field private static final BDUMP_TAG:Ljava/lang/String; = "A2DPSM-"

.field private static final BIG_DATA_EVENT:I = 0x66

.field private static final BLUETOOTH_A2DP_DUAL_PLAY_MODE:Ljava/lang/String; = "bluetooth_a2dp_dual_play_mode"

.field private static final BLUETOOTH_A2DP_UHQA_MODE:Ljava/lang/String; = "bluetooth_a2dp_uhqa_mode"

.field private static final BLUETOOTH_A2DP_UHQA_SUPPORT:Ljava/lang/String; = "bluetooth_a2dp_uhqa_support"

.field private static final BLUTOOTH_HOTPLUG_STATE:Ljava/lang/String; = "bluetooth.hotplug.state"

.field private static final CLEAR_SUSPEND_FLAG:I = 0xca

.field private static final CLUSTER0_CORE_HOTPLUG_IN:Ljava/lang/String; = "/sys/power/cluster0_core_hotplug_in"

.field private static final CODEC_ALL:I = 0xffff

.field private static final CODEC_APTX:I = 0x8

.field private static final CODEC_APTX_HD:I = 0x20

.field private static final CODEC_APTX_LL:I = 0x10

.field private static final CODEC_ATRAC:I = 0x4

.field private static final CODEC_ID_APTX:I = 0x6

.field private static final CODEC_ID_NONE:I = 0xff

.field private static final CODEC_ID_SBC:I = 0x0

.field private static final CODEC_ID_SSHD:I = 0x7

.field private static final CODEC_ID_SSHD2:I = 0x8

.field private static final CODEC_ID_UHQA:I = 0x10

.field private static final CODEC_ID_UHQA2:I = 0x11

.field private static final CODEC_M12:I = 0x1

.field private static final CODEC_M24:I = 0x2

.field private static final CODEC_SBC:I = 0x0

.field private static final CODEC_SSHD:I = 0x80

.field private static final CODEC_SSHD1:I = 0x40

.field private static final CODEC_SSHD2:I = 0x400

.field private static final CODEC_UHQA:I = 0x100

.field private static final CODEC_UHQA2:I = 0x800

.field private static final CODEC_UNKNOWN:I = 0x200

.field static final CONNECT:I = 0x1

.field static final CONNECTION_STATE_CONNECTED:I = 0x2

.field static final CONNECTION_STATE_CONNECTING:I = 0x1

.field static final CONNECTION_STATE_DISCONNECTED:I = 0x0

.field static final CONNECTION_STATE_DISCONNECTING:I = 0x3

.field private static final CONNECT_TIMEOUT:I = 0xc9

.field private static final DBG:Z

.field private static final DEFAULT_ADDRESS:Ljava/lang/String; = "00:00:00:00:00:00"

.field static final DISCONNECT:I = 0x2

.field private static final DUAL_A2DP_CONNECTION:Ljava/lang/String; = "A2DP_2"

.field private static final DUAL_AUDIO_ON_TIME:I = 0x3

.field private static final DUAL_PLAY_MODE_OFF:I = 0x0

.field private static final DUAL_PLAY_MODE_ON:I = 0x1

.field private static final EVENT_TYPE_AUDIO_DELAY_REPORTED:I = 0x4

.field private static final EVENT_TYPE_AUDIO_STATE_CHANGED:I = 0x2

.field private static final EVENT_TYPE_AVRCP_CONNECTION_STATE_CHANGED:I = 0x8

.field private static final EVENT_TYPE_BIG_DATA_NONE:I = 0x0

.field private static final EVENT_TYPE_BIG_DATA_OVERFLOW:I = 0x1

.field private static final EVENT_TYPE_CODEC_INFO_UPDATE:I = 0x6

.field private static final EVENT_TYPE_CONNECTION_STATE_CHANGED:I = 0x1

.field private static final EVENT_TYPE_HEADSET_SCMST_SUPPORT:I = 0x3

.field private static final EVENT_TYPE_NONE:I = 0x0

.field private static final EVENT_TYPE_SELECT_STREAM_BY_PLAY:I = 0x7

.field private static final FEATURE_ACFR:Ljava/lang/String; = "ACFR"

.field private static final FEATURE_BMAC:Ljava/lang/String; = "BMAC"

.field private static final FEATURE_CINF:Ljava/lang/String; = "CINF"

.field private static final FEATURE_CONNECTION_STATE:I = 0x5

.field private static final FEATURE_CUR_CODEC:I = 0x0

.field private static final FEATURE_DELAY_DISCONNECTED_BROADCAST:I = 0x4

.field private static final FEATURE_DELAY_REPORT:I = 0x6

.field private static final FEATURE_DUAU:Ljava/lang/String; = "DUAU"

.field private static final FEATURE_PEER_CODECS:I = 0x1

.field private static final FEATURE_SCMST:I = 0x2

.field private static final FEATURE_TIMEOUT:I = 0x3

.field private static final HOTPLUG_DEFAULT:Ljava/lang/String; = "default"

.field private static final HOTPLUG_OFF:Ljava/lang/String; = "0"

.field private static final HOTPLUG_ON:Ljava/lang/String; = "1"

.field public static final HQM_KEY_COMP_ID:Ljava/lang/String; = "Bluetooth"

.field public static final HQM_KEY_COMP_MANUFACTURE:Ljava/lang/String; = "sec"

.field public static final HQM_KEY_COMP_VER:Ljava/lang/String; = "0.0"

.field public static final HQM_KEY_HIT_TYPE:Ljava/lang/String; = "ph"

.field public static final HQM_KEY_TYPE:I = 0x0

.field private static final JSON_BMAC:Ljava/lang/String; = "MACC"

.field private static final JSON_BSLV:Ljava/lang/String; = "BSLV"

.field private static final JSON_BTRT:Ljava/lang/String; = "BTRT"

.field private static final JSON_CCOD:Ljava/lang/String; = "CCOD"

.field private static final JSON_CMD_CDIF:Ljava/lang/String; = "CDIF"

.field private static final JSON_CNUM:Ljava/lang/String; = "CNUM"

.field private static final JSON_CODU:Ljava/lang/String; = "CODU"

.field private static final JSON_CODU_I:Ljava/lang/String; = "CODU_I"

.field private static final JSON_CONF:Ljava/lang/String; = "CONF"

.field private static final JSON_CONF_I:Ljava/lang/String; = "CONF_I"

.field private static final JSON_DADU:Ljava/lang/String; = "DADU"

.field private static final JSON_DADU_I:Ljava/lang/String; = "DADU_I"

.field private static final JSON_ENLF:Ljava/lang/String; = "ENLF"

.field private static final JSON_FAIL:Ljava/lang/String; = "FAIL"

.field private static final JSON_FVER:Ljava/lang/String; = "FVER"

.field private static final JSON_JVER:Ljava/lang/String; = "JVER"

.field private static final JSON_LFIF:Ljava/lang/String; = "LFIF"

.field private static final JSON_MODE:Ljava/lang/String; = "MODE"

.field private static final JSON_MPDU:Ljava/lang/String; = "MPDU"

.field private static final JSON_MPDU_I:Ljava/lang/String; = "MPDU_I"

.field private static final JSON_NAME:Ljava/lang/String; = "NAME"

.field private static final JSON_NAME2:Ljava/lang/String; = "NAME2"

.field private static final JSON_OFCN:Ljava/lang/String; = "OFCN"

.field private static final JSON_OFCN_I:Ljava/lang/String; = "OFCN_I"

.field private static final JSON_OFDU:Ljava/lang/String; = "OFDU"

.field private static final JSON_OFDU_I:Ljava/lang/String; = "OFDU_I"

.field private static final JSON_PCOD:Ljava/lang/String; = "PCOD"

.field private static final JSON_POUI:Ljava/lang/String; = "POUI"

.field private static final JSON_POUI2:Ljava/lang/String; = "POUI2"

.field private static final JSON_RCOD:Ljava/lang/String; = "RCOD"

.field private static final JSON_RCOD2:Ljava/lang/String; = "RCOD2"

.field private static final JSON_STDU:Ljava/lang/String; = "STDU"

.field private static final JSON_STDU_I:Ljava/lang/String; = "STDU_I"

.field private static final JSON_TPDU:Ljava/lang/String; = "TPDU"

.field private static final JSON_TPDU_I:Ljava/lang/String; = "TPDU_I"

.field private static final JSON_UHDU:Ljava/lang/String; = "UHDU"

.field private static final JSON_UHDU_I:Ljava/lang/String; = "UHDU_I"

.field private static final JVER_ACFR:Ljava/lang/String; = "1.13"

.field private static final JVER_BMAC:Ljava/lang/String; = "1.0"

.field private static final JVER_CINF:Ljava/lang/String; = "1.12"

.field private static final JVER_DUAU:Ljava/lang/String; = "1.0"

.field private static final KEY_BLUETOOTH_DUAL_PLAY_NOTIFICATION:Ljava/lang/String; = "bluetooth_dual_play_notification"

.field private static final KEY_UHQ_UPSCALER:Ljava/lang/String; = "k2hd_effect"

.field private static MAX_AVDTP_CONNECTIONS:I = 0x0

.field private static final MAX_SEC_YEAR:J = 0x1e13380L

.field private static final MODE_BIG_DATA:I = 0x0

.field private static final MODE_HQM:I = 0x1

.field private static final MODE_OFF:I = 0x0

.field private static final MODE_ON:I = 0x2

.field private static final MSG_CMD_FOR_MONITORING:I = 0x2

.field private static final MSG_CONNECTION_STATE_CHANGED:I = 0x0

.field private static final MSG_WIFI_STATE_CHANGED:I = 0x1

.field private static final MULTI_PLAYING_TIME:I = 0x1

.field static final REGISTER_DEVCALLBACK_EVENT:I = 0x4

.field private static final SA_PACKAGE:Ljava/lang/String; = "com.sec.android.app.soundalive"

.field static final SELECT_STREAM:I = 0x3

.field static final SET_DUAL_PLAY_MODE:I = 0x6

.field private static final SET_FALSE:I = 0x0

.field private static final SET_TRUE:I = 0x1

.field private static final SM_INIT_CMD:I = -0x2

.field private static final STACK_EVENT:I = 0x65

.field private static final SUPPORT_DUAL_PLAY:Z = true

.field private static final TAG:Ljava/lang/String; = "A2dpStateMachine"

.field private static final TOTAL_PLAYING_TIME:I = 0x2

.field private static final TURNING_OFF:I = 0x3

.field private static final TURNING_ON:I = 0x1

.field private static final UHQA_MODE_OFF:I = 0x0

.field private static final UHQA_MODE_ON:I = 0x1

.field private static final UHQA_NOT_SUPPORT:I = 0x0

.field private static final UHQA_SUPPORT:I = 0x1

.field static final UNREGISTER_DEVCALLBACK_EVENT:I = 0x5

.field private static mHeadsetScmstSupport:I

.field private static mRegisterDevCallBack:Z

.field private static mUhqMode:I

.field private static mUhqSupport:I


# instance fields
.field private m2ndPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

.field private mActiveStreamDevice:Landroid/bluetooth/BluetoothDevice;

.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mAudioDeviceChanged:Z

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mBigDataInfo:Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo;

.field private mConnected:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;

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

.field private mContext:Landroid/content/Context;

.field private mDeviceInfo:Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;

.field private mDisconnected:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;

.field private mIncomingDevice:Landroid/bluetooth/BluetoothDevice;

.field private mIntentBroadcastHandler:Lcom/android/bluetooth/a2dp/A2dpStateMachine$IntentBroadcastHandler;

.field private mNeedNotification:Z

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mPending:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;

.field private mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

.field mSemDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;

.field private mService:Lcom/android/bluetooth/a2dp/A2dpService;

.field private mTargetDevice:Landroid/bluetooth/BluetoothDevice;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->DBG:Z

    return v0
.end method

.method static synthetic -get1()I
    .locals 1

    sget v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->MAX_AVDTP_CONNECTIONS:I

    return v0
.end method

.method static synthetic -get10(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mDeviceInfo:Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mDisconnected:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$IntentBroadcastHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mIntentBroadcastHandler:Lcom/android/bluetooth/a2dp/A2dpStateMachine$IntentBroadcastHandler;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mNeedNotification:Z

    return v0
.end method

.method static synthetic -get16(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/app/NotificationManager;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic -get17(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mPending:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;

    return-object v0
.end method

.method static synthetic -get18(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic -get19(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpService;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mService:Lcom/android/bluetooth/a2dp/A2dpService;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->m2ndPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic -get20(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic -get21()I
    .locals 1

    sget v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mUhqSupport:I

    return v0
.end method

.method static synthetic -get22(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mActiveStreamDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mAudioDeviceChanged:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mBigDataInfo:Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mConnected:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mConnectedDevices:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->m2ndPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mActiveStreamDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mAudioDeviceChanged:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mNeedNotification:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic -set6(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/bluetooth/a2dp/A2dpStateMachine;[B)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/os/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap10(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->codecInfoToMonitoring()V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/os/Message;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->enableLinkFeedback(Z)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->logi(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap17(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->logw(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap18(Lcom/android/bluetooth/a2dp/A2dpStateMachine;I[B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->onConnectionStateChanged(I[B)V

    return-void
.end method

.method static synthetic -wrap19(Lcom/android/bluetooth/a2dp/A2dpStateMachine;IILandroid/bluetooth/BluetoothDevice;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->processAvrcpConnectionState(IILandroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/bluetooth/a2dp/A2dpStateMachine;[B)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->connectA2dpNative([B)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap20(Lcom/android/bluetooth/a2dp/A2dpStateMachine;IILandroid/bluetooth/BluetoothDevice;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->processCodecInfoUpdate(IILandroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic -wrap21(Lcom/android/bluetooth/a2dp/A2dpStateMachine;ILandroid/bluetooth/BluetoothDevice;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->processDelayReportEvent(ILandroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic -wrap22(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->processSelectStreamDeviceByPlay(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic -wrap23(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->sendBigDataForHQM(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap24(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->sendBigData(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap25(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->sendIntentNotifyScmstChanged()V

    return-void
.end method

.method static synthetic -wrap26(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->setInitHotPlugMode()V

    return-void
.end method

.method static synthetic -wrap27(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->setRegistDevCallBack(Z)V

    return-void
.end method

.method static synthetic -wrap28(Lcom/android/bluetooth/a2dp/A2dpStateMachine;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->setScmstSupport(I)V

    return-void
.end method

.method static synthetic -wrap29(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->setStreamDevice(Landroid/bluetooth/BluetoothDevice;Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;[B)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->connectTimeoutNative([B)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap30(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->showUHQNotification(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap31(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic -wrap32(Lcom/android/bluetooth/a2dp/A2dpStateMachine;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->updateBitRateInfo(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap33(Lcom/android/bluetooth/a2dp/A2dpStateMachine;ZZI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->updateDualAudioPlayingTime(ZZI)V

    return-void
.end method

.method static synthetic -wrap34(Lcom/android/bluetooth/a2dp/A2dpStateMachine;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->updateLinkFeedBackInfo(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/bluetooth/a2dp/A2dpStateMachine;[B)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->disconnectA2dpNative([B)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Z)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->setDualPlayMode(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Lcom/android/bluetooth/a2dp/A2dpStateMachine;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->setbusylevelA2dpNative(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap7(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)[B
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap8(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getAddressForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap9(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->broadcastAudioState(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->DBG:Z

    const/4 v0, 0x1

    sput v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->MAX_AVDTP_CONNECTIONS:I

    sput v2, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mHeadsetScmstSupport:I

    sput-boolean v2, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mRegisterDevCallBack:Z

    sput v1, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mUhqSupport:I

    sput v1, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mUhqMode:I

    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->classInitNative()V

    return-void
.end method

.method private constructor <init>(Lcom/android/bluetooth/a2dp/A2dpService;Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string/jumbo v1, "A2dpStateMachine"

    invoke-direct {p0, v1}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mConnectedDevices:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;

    invoke-direct {v1, p0, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;-><init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;)V

    iput-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mDeviceInfo:Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;

    new-instance v1, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo;

    invoke-direct {v1, p0, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo;-><init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo;)V

    iput-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mBigDataInfo:Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo;

    iput-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;

    iput-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;

    iput-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    iput-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->m2ndPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    iput-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mActiveStreamDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mAudioDeviceChanged:Z

    iput-boolean v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mNeedNotification:Z

    iput-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mService:Lcom/android/bluetooth/a2dp/A2dpService;

    iput-object p2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->initNative()V

    new-instance v1, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;

    invoke-direct {v1, p0, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;-><init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;)V

    iput-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mDisconnected:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;

    new-instance v1, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;

    invoke-direct {v1, p0, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;-><init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;)V

    iput-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mPending:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;

    new-instance v1, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;

    invoke-direct {v1, p0, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;-><init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;)V

    iput-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mConnected:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mDisconnected:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->addState(Lcom/android/internal/util/State;)V

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mPending:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->addState(Lcom/android/internal/util/State;)V

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mConnected:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->addState(Lcom/android/internal/util/State;)V

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mDisconnected:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    const-string/jumbo v1, "power"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string/jumbo v1, "BluetoothA2dpService"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v1, Lcom/android/bluetooth/a2dp/A2dpStateMachine$IntentBroadcastHandler;

    invoke-direct {v1, p0, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$IntentBroadcastHandler;-><init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/bluetooth/a2dp/A2dpStateMachine$IntentBroadcastHandler;)V

    iput-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mIntentBroadcastHandler:Lcom/android/bluetooth/a2dp/A2dpStateMachine$IntentBroadcastHandler;

    const-string/jumbo v1, "audio"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mService:Lcom/android/bluetooth/a2dp/A2dpService;

    const-string/jumbo v2, "notification"

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x2

    sput v1, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->MAX_AVDTP_CONNECTIONS:I

    invoke-virtual {p0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->isDualPlayEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->setDualPlayModeAfterBtOn(Z)Z

    :cond_0
    return-void
.end method

.method private broadcastAudioState(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 6

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string/jumbo v4, "CscFeature_BT_SupportScmst"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xa

    if-ne p2, v3, :cond_0

    sget-boolean v3, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->DBG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mHeadsetScmstSupport : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mHeadsetScmstSupport:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.bluetooth.a2dp.profile.action.PLAYING_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v3, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v3, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v3, 0x4000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.BLUETOOTH"

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const/16 v3, 0xf0

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/bluetooth/Utils;->getBtEnabledContainers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v5, "android.permission.BLUETOOTH"

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "A2DP Playing state : device: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->deviceInfo(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " State:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->setDelayReport(Landroid/bluetooth/BluetoothDevice;I)V

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->setCPUMinLock(Landroid/bluetooth/BluetoothDevice;I)V

    invoke-direct {p0, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->setHotPlugMode(I)V

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mBigDataInfo:Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo;->checkPlayingTime(Ljava/lang/String;I)V

    return-void
.end method

.method private broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 18

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mConnectedDevices:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v8

    const-string/jumbo v14, "A2dpStateMachine"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "broadcastConnectionState : device = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->deviceInfo(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " playing : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->deviceInfo(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " state : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " --> "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " numberConnections : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v6, p2

    if-nez p2, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mActiveStreamDevice:Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_d

    const/4 v14, 0x1

    if-le v8, v14, :cond_c

    const/4 v6, 0x4

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mActiveStreamDevice:Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    const/4 v14, 0x1

    if-le v8, v14, :cond_5

    const/4 v14, 0x3

    move/from16 v0, p2

    if-eq v0, v14, :cond_1

    if-nez p2, :cond_5

    :cond_1
    const/4 v13, 0x0

    const/4 v14, 0x3

    move/from16 v0, p2

    if-ne v0, v14, :cond_10

    const/16 v13, 0x7d0

    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mIntentBroadcastHandler:Lcom/android/bluetooth/a2dp/A2dpStateMachine$IntentBroadcastHandler;

    const/16 v15, 0xca

    invoke-virtual {v14, v15}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$IntentBroadcastHandler;->hasMessages(I)Z

    move-result v14

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mIntentBroadcastHandler:Lcom/android/bluetooth/a2dp/A2dpStateMachine$IntentBroadcastHandler;

    const/16 v15, 0xca

    invoke-virtual {v14, v15}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$IntentBroadcastHandler;->removeMessages(I)V

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->isDualPlayEnabled()Z

    move-result v14

    if-nez v14, :cond_5

    sget-boolean v14, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->DBG:Z

    if-eqz v14, :cond_4

    const-string/jumbo v14, "A2dpStateMachine"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "set CLEAR_SUSPEND_FLAG with timeout "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v15, "A2dpSuspended=true"

    invoke-virtual {v14, v15}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mIntentBroadcastHandler:Lcom/android/bluetooth/a2dp/A2dpStateMachine$IntentBroadcastHandler;

    const/16 v15, 0xca

    invoke-virtual {v14, v15}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$IntentBroadcastHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mIntentBroadcastHandler:Lcom/android/bluetooth/a2dp/A2dpStateMachine$IntentBroadcastHandler;

    int-to-long v0, v13

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v5, v0, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$IntentBroadcastHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_5
    const-string/jumbo v14, "A2dpStateMachine"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "bCS newStateWithoutBN "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mAudioManager:Landroid/media/AudioManager;

    const/4 v15, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v15}, Landroid/media/AudioManager;->setBluetoothA2dpDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;II)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const/4 v14, 0x1

    if-ne v8, v14, :cond_12

    const/4 v14, 0x2

    move/from16 v0, p2

    if-ne v0, v14, :cond_12

    const-string/jumbo v14, "\"JVER\":\"1.0\",\"MACC\":\"A2DP_2\""

    const-string/jumbo v15, "BMAC"

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->sendBigData(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a00e7

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0a00e8

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/bluetooth/Utils;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->isDualPlayEnabled()Z

    move-result v14

    if-eqz v14, :cond_11

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mConnectedDevices:Ljava/util/ArrayList;

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v14}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v14}, Landroid/media/AudioManager;->makeBTVolumeSame(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/android/bluetooth/Utils;->launchDualPlayOnGoingNotification(Landroid/content/Context;)V

    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string/jumbo v15, "bluetooth_dual_play_notification"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->setStreamDevice(Landroid/bluetooth/BluetoothDevice;Z)V

    :cond_7
    :goto_3
    const/4 v14, 0x2

    move/from16 v0, p3

    if-ne v0, v14, :cond_13

    const/4 v14, 0x3

    move/from16 v0, p2

    if-ne v0, v14, :cond_13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mDeviceInfo:Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x4

    move/from16 v0, v16

    invoke-virtual {v14, v15, v0, v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;->setDeviceFeature(Ljava/lang/String;II)V

    :cond_8
    :goto_4
    sget-boolean v14, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->DBG:Z

    if-eqz v14, :cond_9

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "broadcastConnectionState: delay: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " State:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "->"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mIntentBroadcastHandler:Lcom/android/bluetooth/a2dp/A2dpStateMachine$IntentBroadcastHandler;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mIntentBroadcastHandler:Lcom/android/bluetooth/a2dp/A2dpStateMachine$IntentBroadcastHandler;

    const/16 v16, 0x0

    move/from16 v0, v16

    move/from16 v1, p3

    move/from16 v2, p2

    move-object/from16 v3, p1

    invoke-virtual {v15, v0, v1, v2, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$IntentBroadcastHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    int-to-long v0, v4

    move-wide/from16 v16, v0

    invoke-virtual/range {v14 .. v17}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$IntentBroadcastHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    if-nez p2, :cond_a

    const/16 v14, 0xb

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->setCPUMinLock(Landroid/bluetooth/BluetoothDevice;I)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mBigDataInfo:Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo;

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v14, v15, v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo;->checkServiceTime(Ljava/lang/String;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->isDualPlayEnabled()Z

    move-result v14

    if-eqz v14, :cond_b

    const/4 v14, 0x1

    if-le v8, v14, :cond_b

    if-nez p2, :cond_b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v14, :cond_b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->m2ndPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v14, :cond_b

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v14, v15, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->updateDualAudioPlayingTime(ZZI)V

    :cond_b
    return-void

    :cond_c
    const/4 v14, 0x1

    if-ne v8, v14, :cond_0

    const/4 v14, 0x1

    move/from16 v0, p3

    if-ne v0, v14, :cond_0

    const/4 v6, 0x4

    goto/16 :goto_0

    :cond_d
    const/4 v14, 0x1

    if-le v8, v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mConnectedDevices:Ljava/util/ArrayList;

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_e
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mActiveStreamDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v9, v14}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_e

    const-string/jumbo v14, "A2dpStateMachine"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "update codecInfo for another device : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->deviceInfo(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mDeviceInfo:Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;->getDeviceFeature(Ljava/lang/String;I)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mDeviceInfo:Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    invoke-virtual/range {v15 .. v17}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;->getDeviceFeature(Ljava/lang/String;I)I

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v9}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->processCodecInfoUpdate(IILandroid/bluetooth/BluetoothDevice;)V

    goto :goto_5

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->isDualPlayEnabled()Z

    move-result v14

    if-eqz v14, :cond_0

    const/4 v6, 0x4

    goto/16 :goto_0

    :cond_10
    if-nez p2, :cond_2

    const/16 v13, 0x3e8

    goto/16 :goto_1

    :cond_11
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string/jumbo v15, "bluetooth_dual_play_notification"

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "onConnectionStateChanged :: connected two a2dp devices, check dual play notification = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    const/4 v14, 0x1

    if-ne v12, v14, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mContext:Landroid/content/Context;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/android/bluetooth/Utils;->launchDualPlayNotification(Landroid/content/Context;Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mContext:Landroid/content/Context;

    const v15, 0x7f0a00e7

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mContext:Landroid/content/Context;

    const v16, 0x7f0a00ea

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/bluetooth/Utils;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_12
    const/4 v14, 0x2

    if-ne v8, v14, :cond_7

    if-nez p2, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->isDualPlayEnabled()Z

    move-result v14

    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mContext:Landroid/content/Context;

    const-string/jumbo v15, "notification"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    const-string/jumbo v14, "dual_play"

    const/4 v15, 0x2

    invoke-virtual {v7, v14, v15}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    goto/16 :goto_3

    :cond_13
    const/4 v14, 0x3

    move/from16 v0, p3

    if-ne v0, v14, :cond_8

    if-nez p2, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mDeviceInfo:Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x4

    invoke-virtual/range {v14 .. v16}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;->getDeviceFeature(Ljava/lang/String;I)I

    move-result v11

    if-ge v4, v11, :cond_8

    move v4, v11

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mDeviceInfo:Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x4

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v17}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;->setDeviceFeature(Ljava/lang/String;II)V

    goto/16 :goto_4
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNative()V
.end method

.method private codecInfoToMonitoring()V
    .locals 7

    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mConnectedDevices:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    const/4 v2, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mConnectedDevices:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mConnectedDevices:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mDeviceInfo:Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;->getDeviceFeature(Ljava/lang/String;I)I

    move-result v0

    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mDeviceInfo:Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;->getDeviceFeature(Ljava/lang/String;I)I

    move-result v3

    invoke-direct {p0, v0, v3, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->updateCallBackCurCodecInfo(IILandroid/bluetooth/BluetoothDevice;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sget-boolean v4, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->DBG:Z

    if-eqz v4, :cond_1

    const-string/jumbo v4, "A2dpStateMachine"

    const-string/jumbo v5, "codecInfoToMonitoring()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private native configureCPNative(I)Z
.end method

.method private native connectA2dpNative([B)Z
.end method

.method private native connectTimeoutNative([B)Z
.end method

.method private native disconnectA2dpNative([B)Z
.end method

.method private native disconnectAvrcpNative(I)Z
.end method

.method private enableLinkFeedback(Z)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->enableLinkFeedbackNative(Z)Z

    sget-boolean v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "A2dpStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "enableLinkFeedback() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private native enableLinkFeedbackNative(Z)Z
.end method

.method private getAddressForLog(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/16 v2, 0xe

    sget-boolean v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->DBG:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":XX"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object p1

    :cond_1
    const-string/jumbo v0, "null"

    return-object v0

    :cond_2
    return-object p1
.end method

.method private getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B
    .locals 1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private getCurCodecName(I)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "NONE"

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-object v0

    :sswitch_0
    const-string/jumbo v0, "SBC"

    goto :goto_0

    :sswitch_1
    const-string/jumbo v0, "APTX"

    goto :goto_0

    :sswitch_2
    const-string/jumbo v0, "SSHD"

    goto :goto_0

    :sswitch_3
    const-string/jumbo v0, "SSHD2"

    goto :goto_0

    :sswitch_4
    const-string/jumbo v0, "UHQA"

    goto :goto_0

    :sswitch_5
    const-string/jumbo v0, "UHQA2"

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_1
        0x7 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x11 -> :sswitch_5
    .end sparse-switch
.end method

.method private getDevice([B)Landroid/bluetooth/BluetoothDevice;
    .locals 2

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method private getPeerNameFromDevice(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 6

    const-string/jumbo v2, "INVALID"

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v3

    and-int/lit16 v1, v3, 0x1f00

    sget-boolean v3, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->DBG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "A2dpStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "cod: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v3, 0x400

    if-ne v1, v3, :cond_1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_1
    const-string/jumbo v2, "Personal Device"

    goto :goto_0

    :cond_2
    sget-boolean v3, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->DBG:Z

    if-eqz v3, :cond_3

    const-string/jumbo v3, "A2dpStateMachine"

    const-string/jumbo v4, "deviceClass is null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string/jumbo v2, "Unknown"

    goto :goto_0

    :cond_4
    sget-boolean v3, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->DBG:Z

    if-eqz v3, :cond_5

    const-string/jumbo v3, "A2dpStateMachine"

    const-string/jumbo v4, "device is null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const-string/jumbo v2, "Unknown"

    goto :goto_0
.end method

.method private getPeerSupportedCodecNames(I)Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "SBC"

    and-int/lit8 v1, p1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|M12"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    and-int/lit8 v1, p1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|M24"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    and-int/lit8 v1, p1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|ATRAC"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    and-int/lit8 v1, p1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|APTX"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    and-int/lit8 v1, p1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|APTX_LL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    and-int/lit8 v1, p1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|APTX_HD"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5
    and-int/lit8 v1, p1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|SSHD1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_6
    and-int/lit16 v1, p1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|SSHD"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_7
    and-int/lit16 v1, p1, 0x400

    const/16 v2, 0x400

    if-ne v1, v2, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|SSHD2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_8
    and-int/lit16 v1, p1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|UHQA"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_9
    and-int/lit16 v1, p1, 0x800

    const/16 v2, 0x800

    if-ne v1, v2, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|UHQA2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_a
    and-int/lit16 v1, p1, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|UNKNOWN"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_b
    return-object v0
.end method

.method private native initNative()V
.end method

.method static make(Lcom/android/bluetooth/a2dp/A2dpService;Landroid/content/Context;)Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    .locals 3

    const-string/jumbo v1, "A2dpStateMachine"

    const-string/jumbo v2, "make"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-direct {v0, p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;-><init>(Lcom/android/bluetooth/a2dp/A2dpService;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->start()V

    return-object v0
.end method

.method private onAudioDelayReported(I[B)V
    .locals 3

    new-instance v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine;ILcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;)V

    iput p1, v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->valueInt:I

    invoke-direct {p0, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iput-object v1, v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    const/16 v1, 0x65

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method private onAudioStateChanged(I[B)V
    .locals 3

    new-instance v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine;ILcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;)V

    iput p1, v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->valueInt:I

    invoke-direct {p0, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iput-object v1, v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    const/16 v1, 0x65

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method private onAvrcpConnectionStateCallback(II[B)V
    .locals 3

    new-instance v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine;ILcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;)V

    const-string/jumbo v1, "A2dpStateMachine"

    const-string/jumbo v2, "onAvrcpConnectionStateCallback"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->valueInt:I

    iput p2, v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->valueInt2:I

    invoke-direct {p0, p3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iput-object v1, v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    const/16 v1, 0x65

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method private onBigDataCallback(Ljava/lang/String;[B)V
    .locals 2

    new-instance v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataEvent;-><init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;[BLcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataEvent;)V

    const/16 v1, 0x66

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method private onCodecInfoUpdateCallback(II[B)V
    .locals 4

    new-instance v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine;ILcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;)V

    const-string/jumbo v1, "A2dpStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCodecInfoUpdateCallback pSupportedCodecs:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->valueInt:I

    iput p2, v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->valueInt2:I

    invoke-direct {p0, p3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iput-object v1, v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    const/16 v1, 0x65

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method private onConnectionStateChanged(I[B)V
    .locals 3

    new-instance v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine;ILcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;)V

    iput p1, v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->valueInt:I

    invoke-direct {p0, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iput-object v1, v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    const/16 v1, 0x65

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method private onHeadsetScmstSupportCallback(I[B)V
    .locals 4

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_BT_SupportScmst"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine;ILcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;)V

    const-string/jumbo v1, "A2dpStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onHeadsetScmstSupportCallback :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->valueInt:I

    invoke-direct {p0, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iput-object v1, v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    const/16 v1, 0x65

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->sendMessage(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private onSelectStreamDeviceByPlay([B)V
    .locals 3

    const-string/jumbo v1, "A2dpStateMachine"

    const-string/jumbo v2, "onSelectStreamDeviceByPlay"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine;ILcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;)V

    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iput-object v1, v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    const/16 v1, 0x65

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method private processAvrcpConnectionState(IILandroid/bluetooth/BluetoothDevice;)V
    .locals 5

    const-string/jumbo v2, "A2dpStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "processAvrcpConnectionState state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " handle : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, p3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->deviceInfo(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_0

    const-string/jumbo v2, "A2dpStateMachine"

    const-string/jumbo v3, "device is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_4

    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mService:Lcom/android/bluetooth/a2dp/A2dpService;

    invoke-virtual {v2, p3}, Lcom/android/bluetooth/a2dp/A2dpService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-gtz v1, :cond_2

    const/4 v2, -0x1

    if-ne v2, v1, :cond_3

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_3

    :cond_2
    return-void

    :cond_3
    const-string/jumbo v2, "A2dpStateMachine"

    const-string/jumbo v3, "processAvrcpConnectionState disconnectAvrcpNative"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->disconnectAvrcpNative(I)Z

    :cond_4
    return-void
.end method

.method private processCodecInfoUpdate(IILandroid/bluetooth/BluetoothDevice;)V
    .locals 9

    const v8, 0xac44

    const/4 v7, 0x1

    const/4 v6, 0x0

    sget-boolean v2, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->DBG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "A2dpStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "curCodecId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", pSupportedCodecs = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v2, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->DBG:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "A2dpStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "curCodecName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getCurCodecName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", pSupportedCodecNames = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getPeerSupportedCodecNames(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->isDualPlayEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-boolean v2, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->DBG:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "A2dpStateMachine"

    const-string/jumbo v3, "forcely update current codec to SBC"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 p1, 0x0

    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->updateCallBackCurCodecInfo(IILandroid/bluetooth/BluetoothDevice;)V

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mBigDataInfo:Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo;

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "{\"CCOD\":\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\",\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "PCOD"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\":\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\"}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo;->setBigData(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mDeviceInfo:Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v6, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;->setDeviceFeature(Ljava/lang/String;II)V

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mDeviceInfo:Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v7, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;->setDeviceFeature(Ljava/lang/String;II)V

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "bluetooth_a2dp_uhqa_mode"

    invoke-static {v2, v3, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez p1, :cond_7

    sget-boolean v2, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->DBG:Z

    if-eqz v2, :cond_4

    const-string/jumbo v2, "A2dpStateMachine"

    const-string/jumbo v3, "processCodecInfoUpdate: current codec is SBC"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    sput v6, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mUhqSupport:I

    if-ne v0, v7, :cond_6

    sget-boolean v2, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->DBG:Z

    if-eqz v2, :cond_5

    const-string/jumbo v2, "A2dpStateMachine"

    const-string/jumbo v3, "processCodecInfoUpdate: sampleRate = 44100"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, p3, v8}, Landroid/media/AudioManager;->updateBluetoothDevice(Landroid/bluetooth/BluetoothDevice;I)V

    :cond_6
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "bluetooth_a2dp_uhqa_support"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_7
    const/4 v1, 0x0

    and-int/lit16 v2, p2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_d

    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_8

    and-int/lit16 v2, p2, 0x800

    const/16 v3, 0x800

    if-ne v2, v3, :cond_e

    const/4 v1, 0x1

    :cond_8
    :goto_1
    sget-boolean v2, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->DBG:Z

    if-eqz v2, :cond_9

    const-string/jumbo v2, "A2dpStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "uhqSupport = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    sget v2, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mUhqSupport:I

    if-ne v2, v1, :cond_a

    sget v2, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mUhqMode:I

    if-eq v2, v0, :cond_c

    :cond_a
    sput v1, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mUhqSupport:I

    sput v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mUhqMode:I

    if-ne v1, v7, :cond_11

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "bluetooth_a2dp_uhqa_support"

    invoke-static {v2, v3, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-ne v0, v7, :cond_f

    sget-boolean v2, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->DBG:Z

    if-eqz v2, :cond_b

    const-string/jumbo v2, "A2dpStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "processCodecInfoUpdate: sampleRate = 96000, uhqSupport = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mAudioManager:Landroid/media/AudioManager;

    const v3, 0x17700

    invoke-virtual {v2, p3, v3}, Landroid/media/AudioManager;->updateBluetoothDevice(Landroid/bluetooth/BluetoothDevice;I)V

    :cond_c
    :goto_2
    return-void

    :cond_d
    const/4 v1, 0x0

    goto :goto_0

    :cond_e
    const/4 v1, 0x0

    goto :goto_1

    :cond_f
    sget-boolean v2, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->DBG:Z

    if-eqz v2, :cond_10

    const-string/jumbo v2, "A2dpStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "processCodecInfoUpdate: sampleRate = 44100, uhqSupport = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, p3, v8}, Landroid/media/AudioManager;->updateBluetoothDevice(Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_2

    :cond_11
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "bluetooth_a2dp_uhqa_support"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sget-boolean v2, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->DBG:Z

    if-eqz v2, :cond_12

    const-string/jumbo v2, "A2dpStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "processCodecInfoUpdate: sampleRate = 44100, uhqSupport = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, p3, v8}, Landroid/media/AudioManager;->updateBluetoothDevice(Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_2
.end method

.method private processDelayReportEvent(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 4

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mDeviceInfo:Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;->setDeviceFeature(Ljava/lang/String;II)V

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mConnectedDevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->isDualPlayEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v2, "A2dpDelayReport=0"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mAudioManager:Landroid/media/AudioManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "A2dpDelayReport="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mAudioManager:Landroid/media/AudioManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "A2dpDelayReport="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private processSelectStreamDeviceByPlay(Landroid/bluetooth/BluetoothDevice;)V
    .locals 9

    const/16 v8, 0x80

    const-string/jumbo v4, "A2dpStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "processSelectStreamDeviceByPlay "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->deviceInfo(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string/jumbo v4, "A2dpStateMachine"

    const-string/jumbo v5, "device is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mBigDataInfo:Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo;->getServiceStartTime(Ljava/lang/String;)J

    move-result-wide v0

    sub-long v4, v2, v0

    const-wide/16 v6, 0x1388

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->showPlayNotification(Landroid/bluetooth/BluetoothDevice;)V

    :cond_1
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mAudioManager:Landroid/media/AudioManager;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v4

    if-ne v4, v8, :cond_2

    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mActiveStreamDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v4}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "A2dpStateMachine"

    const-string/jumbo v5, "device was already selected"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v8, v5}, Landroid/media/AudioManager;->setDeviceToForceByUser(ILjava/lang/String;)I

    return-void
.end method

.method private native selectstreamA2dpNative([BZ)Z
.end method

.method private sendBigData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "app_id"

    const-string/jumbo v3, "com.android.bluetooth"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "feature"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "extra"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string/jumbo v3, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private sendBigDataForDualAudio(I)V
    .locals 26

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mConnectedDevices:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v9

    const-string/jumbo v16, "INVALID"

    const-string/jumbo v12, "INVALID"

    const-string/jumbo v14, "INVALID"

    const-string/jumbo v17, "INVALID"

    const-string/jumbo v13, "INVALID"

    const-string/jumbo v15, "INVALID"

    const-wide/16 v10, -0x1

    const-wide/16 v18, -0x1

    const-wide/16 v22, -0x1

    const/16 v24, 0x1

    move/from16 v0, v24

    if-lt v9, v0, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mConnectedDevices:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    :cond_0
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/bluetooth/Utils;->getOuiStringFromByte([B)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getPeerNameFromDevice(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v14

    :cond_1
    const/16 v24, 0x2

    move/from16 v0, v24

    if-ne v9, v0, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mConnectedDevices:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/bluetooth/BluetoothDevice;

    if-eqz v21, :cond_3

    invoke-virtual/range {v21 .. v21}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    :cond_2
    invoke-virtual/range {v21 .. v21}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/bluetooth/Utils;->getOuiStringFromByte([B)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getPeerNameFromDevice(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v15

    :cond_3
    if-nez p1, :cond_6

    const/16 v24, 0x1

    const/16 v25, 0x0

    invoke-static/range {v24 .. v25}, Lcom/android/bluetooth/Utils;->getDualAudioTime(IZ)J

    move-result-wide v10

    const/16 v24, 0x2

    const/16 v25, 0x0

    invoke-static/range {v24 .. v25}, Lcom/android/bluetooth/Utils;->getDualAudioTime(IZ)J

    move-result-wide v18

    const/16 v24, 0x3

    const/16 v25, 0x0

    invoke-static/range {v24 .. v25}, Lcom/android/bluetooth/Utils;->getDualAudioTime(IZ)J

    move-result-wide v22

    const-wide/16 v24, 0x0

    cmp-long v24, v22, v24

    if-gez v24, :cond_7

    const-wide/16 v22, 0x0

    :cond_4
    :goto_0
    const-wide/16 v24, 0x0

    cmp-long v24, v18, v24

    if-gez v24, :cond_8

    const-wide/16 v18, 0x0

    :cond_5
    :goto_1
    const-wide/16 v24, 0x0

    cmp-long v24, v10, v24

    if-gez v24, :cond_9

    const-wide/16 v10, 0x0

    :cond_6
    :goto_2
    const-string/jumbo v24, "\"JVER\":\""

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v24, "1.0\""

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v24, ",\"MODE\":\""

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "\""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v24, ",\"CNUM\":\""

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "\""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v24, ",\"POUI\":\""

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "\""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v24, ",\"RCOD\":\""

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "\""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v24, ",\"NAME\":\""

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "\""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v24, ",\"POUI2\":\""

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "\""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v24, ",\"RCOD2\":\""

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "\""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v24, ",\"NAME2\":\""

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "\""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, ",\"MPDU\":\""

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "\""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v24, ",\"TPDU\":\""

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "\""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v24, ",\"DADU\":\""

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, v22

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "\""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, ",\"MPDU_I\":\""

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "\""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v24, ",\"TPDU_I\":\""

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, v18

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "\""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v24, ",\"DADU_I\":\""

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, v22

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "\""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "A2DPSM-sendBigDataForDualAudio value = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    const-string/jumbo v24, "DUAU"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v2, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->sendBigData(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v24, "DUAU"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v8, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->sendBigDataForHQM(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_7
    const-wide/32 v24, 0x1e13380

    cmp-long v24, v22, v24

    if-lez v24, :cond_4

    const-wide/32 v22, 0x1e13380

    goto/16 :goto_0

    :cond_8
    cmp-long v24, v18, v22

    if-lez v24, :cond_5

    const-string/jumbo v24, "A2dpStateMachine"

    const-string/jumbo v25, "total playing time is bigger than total duration"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-wide/from16 v18, v22

    goto/16 :goto_1

    :cond_9
    cmp-long v24, v10, v18

    if-lez v24, :cond_6

    const-string/jumbo v24, "A2dpStateMachine"

    const-string/jumbo v25, "multi playing time is bigger than total playing time"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-wide/from16 v10, v18

    goto/16 :goto_2
.end method

.method private sendBigDataForHQM(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "HqmManagerService"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SemHqmManager;

    if-eqz v0, :cond_0

    const-string/jumbo v2, "Bluetooth"

    const-string/jumbo v4, "ph"

    const-string/jumbo v5, "0.0"

    const-string/jumbo v6, "sec"

    const-string/jumbo v7, ""

    const-string/jumbo v9, ""

    const-string/jumbo v10, "com.android.bluetooth"

    const/4 v1, 0x0

    move-object v3, p2

    move-object v8, p1

    invoke-virtual/range {v0 .. v10}, Landroid/os/SemHqmManager;->sendHWParamToHQMwithAppId(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "A2dpStateMachine"

    const-string/jumbo v2, "Failed to call QmBigDataModule API"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendIntentNotifyScmstChanged()V
    .locals 6

    const-string/jumbo v3, "sendIntentNotifyScmstChanged"

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.bluetooth.btservice.action.ACTION_NOTIFY_SCMST_UPDATE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.BLUETOOTH"

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const/16 v3, 0xf0

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/bluetooth/Utils;->getBtEnabledContainers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v5, "android.permission.BLUETOOTH"

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private declared-synchronized setCPUMinLock(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 5

    monitor-enter p0

    const/16 v2, 0xa

    if-ne p2, v2, :cond_7

    :try_start_0
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAvPerformance()Lcom/android/bluetooth/btservice/AdapterService$AvPerformance;

    move-result-object v1

    const/16 v0, 0xff

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mDeviceInfo:Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;->isContainKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mDeviceInfo:Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;->getDeviceFeature(Ljava/lang/String;I)I

    move-result v0

    :cond_0
    sget-boolean v2, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->DBG:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "curCodecId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " minLockFreqUhq : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/AdapterService$AvPerformance;->getAvMinLockFreqUhq()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " minLockFreq : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/AdapterService$AvPerformance;->getAvMinLockFreq()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    :cond_1
    const/16 v2, 0x10

    if-ne v0, v2, :cond_6

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mSemDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/AdapterService$AvPerformance;->getAvMinLockFreqUhq()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "com.android.bluetooth.a2dp"

    const/16 v4, 0xc

    invoke-static {v2, v3, v4}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mSemDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mSemDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/AdapterService$AvPerformance;->getAvMinLockFreqUhq()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mSemDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v2, :cond_4

    sget-boolean v2, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->DBG:Z

    if-eqz v2, :cond_3

    const-string/jumbo v2, "mSemDvfsCpuMin acquire"

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    :cond_3
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mSemDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v2}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_1
    monitor-exit p0

    return-void

    :cond_5
    :try_start_1
    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/AdapterService$AvPerformance;->getAvMinLockFreq()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "com.android.bluetooth.a2dp"

    const/16 v4, 0xc

    invoke-static {v2, v3, v4}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mSemDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mSemDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/AdapterService$AvPerformance;->getAvMinLockFreq()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_6
    :try_start_2
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mSemDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/AdapterService$AvPerformance;->getAvMinLockFreq()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "com.android.bluetooth.a2dp"

    const/16 v4, 0xc

    invoke-static {v2, v3, v4}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mSemDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mSemDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/AdapterService$AvPerformance;->getAvMinLockFreq()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mSemDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v2, :cond_4

    sget-boolean v2, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->DBG:Z

    if-eqz v2, :cond_8

    const-string/jumbo v2, "mSemDvfsCpuMin release"

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    :cond_8
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mSemDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v2}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mSemDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private setDelayReport(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 5

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mConnectedDevices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->isDualPlayEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v3, "A2dpDelayReport=0"

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    return-void

    :cond_0
    const/16 v2, 0xa

    if-ne p2, v2, :cond_1

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mDeviceInfo:Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v2, v3, v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;->getDeviceFeature(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mAudioManager:Landroid/media/AudioManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "A2dpDelayReport="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private native setDualPlayA2dpNative(Z)Z
.end method

.method private setDualPlayMode(Z)Z
    .locals 13

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setDualPlayMode : enable = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->isDualPlayEnabled()Z

    move-result v10

    if-ne p1, v10, :cond_0

    const-string/jumbo v10, "A2dpStateMachine"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setDualPlayMode : already set, enable = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x1

    return v10

    :cond_0
    if-eqz p1, :cond_4

    const/4 v4, 0x1

    :goto_0
    iget-object v10, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "bluetooth_a2dp_dual_play_mode"

    invoke-static {v10, v11, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->setDualPlayA2dpNative(Z)Z

    move-result v8

    const/4 v10, 0x1

    if-ne v4, v10, :cond_8

    iget-object v10, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "bluetooth_a2dp_uhqa_mode"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    const/4 v10, 0x0

    sput v10, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mUhqSupport:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    sget-boolean v10, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->DBG:Z

    if-eqz v10, :cond_1

    const-string/jumbo v10, "A2dpStateMachine"

    const-string/jumbo v11, "update sampleRate to 44100"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v10, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mAudioManager:Landroid/media/AudioManager;

    iget-object v11, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mActiveStreamDevice:Landroid/bluetooth/BluetoothDevice;

    const v12, 0xac44

    invoke-virtual {v10, v11, v12}, Landroid/media/AudioManager;->updateBluetoothDevice(Landroid/bluetooth/BluetoothDevice;I)V

    :cond_2
    iget-object v10, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "bluetooth_a2dp_uhqa_support"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v10, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mService:Lcom/android/bluetooth/a2dp/A2dpService;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/bluetooth/a2dp/A2dpService;->setAbsoluteVolumeControl(Z)Z

    iget-object v10, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mConnectedDevices:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x2

    if-lt v10, v11, :cond_7

    const/4 v2, 0x0

    iget-object v10, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mConnectedDevices:Ljava/util/ArrayList;

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    iget-object v10, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mActiveStreamDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v6, v10}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    move-object v2, v6

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    goto :goto_0

    :cond_5
    iget-object v10, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mActiveStreamDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v10, :cond_6

    if-eqz v2, :cond_6

    iget-object v10, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mAudioManager:Landroid/media/AudioManager;

    iget-object v11, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mActiveStreamDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v11}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/media/AudioManager;->makeBTVolumeSame(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-object v10, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/bluetooth/Utils;->launchDualPlayOnGoingNotification(Landroid/content/Context;)V

    :cond_7
    iget-object v10, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "notification"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    const-string/jumbo v10, "dual_play"

    const/4 v11, 0x1

    invoke-virtual {v5, v10, v11}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    :goto_2
    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-direct {p0, p1, v10, v11}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->updateDualAudioPlayingTime(ZZI)V

    invoke-direct {p0, v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->sendBigDataForDualAudio(I)V

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v10, "com.samsung.bluetooth.a2dp.intent.action.DUAL_PLAY_MODE_ENABLED"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v10, "enable"

    invoke-virtual {v3, v10, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v10, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "android.permission.BLUETOOTH"

    invoke-virtual {v10, v3, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return v8

    :cond_8
    iget-object v10, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mConnectedDevices:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v10, 0x2

    if-ne v0, v10, :cond_9

    iget-object v10, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mActiveStreamDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v10, :cond_9

    iget-object v10, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mDeviceInfo:Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;

    iget-object v11, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mActiveStreamDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v11}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x6

    invoke-virtual {v10, v11, v12}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;->getDeviceFeature(Ljava/lang/String;I)I

    move-result v1

    iget-object v10, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mAudioManager:Landroid/media/AudioManager;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "A2dpDelayReport="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    :cond_9
    iget-object v10, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "notification"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    const-string/jumbo v10, "dual_play"

    const/4 v11, 0x2

    invoke-virtual {v5, v10, v11}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    goto :goto_2
.end method

.method private setDualPlayModeAfterBtOn(Z)Z
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDualPlayModeAfterBtOn : enable = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    :goto_0
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "bluetooth_a2dp_dual_play_mode"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->setDualPlayA2dpNative(Z)Z

    move-result v1

    if-ne v0, v8, :cond_2

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "bluetooth_a2dp_uhqa_mode"

    invoke-static {v3, v4, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    sput v9, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mUhqSupport:I

    if-ne v2, v8, :cond_1

    sget-boolean v3, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->DBG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "A2dpStateMachine"

    const-string/jumbo v4, "update sampleRate to 44100"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mAudioManager:Landroid/media/AudioManager;

    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mActiveStreamDevice:Landroid/bluetooth/BluetoothDevice;

    const v5, 0xac44

    invoke-virtual {v3, v4, v5}, Landroid/media/AudioManager;->updateBluetoothDevice(Landroid/bluetooth/BluetoothDevice;I)V

    :cond_1
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "bluetooth_a2dp_uhqa_support"

    invoke-static {v3, v4, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mService:Lcom/android/bluetooth/a2dp/A2dpService;

    invoke-virtual {v3, v9}, Lcom/android/bluetooth/a2dp/A2dpService;->setAbsoluteVolumeControl(Z)Z

    const/4 v3, 0x3

    invoke-static {v3, v8}, Lcom/android/bluetooth/Utils;->getDualAudioTime(IZ)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    const-string/jumbo v3, "A2dpStateMachine"

    const-string/jumbo v4, "setDualPlayModeAfterBtOn : time reset because of flight mode or power cycle"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, v8, v9}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->updateDualAudioPlayingTime(ZZI)V

    :cond_2
    return v1

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setHotPlugMode(I)V
    .locals 4

    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAvPerformance()Lcom/android/bluetooth/btservice/AdapterService$AvPerformance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService$AvPerformance;->getHotPlug()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "bluetooth.hotplug.state"

    const-string/jumbo v3, "default"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mHotplugState :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    const-string/jumbo v2, "default"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v1, "0"

    :cond_0
    const/16 v2, 0xa

    if-ne p1, v2, :cond_3

    const-string/jumbo v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "/sys/power/cluster0_core_hotplug_in"

    const-string/jumbo v3, "1"

    invoke-static {v2, v3}, Lcom/android/bluetooth/Utils;->writeSysfs(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "bluetooth.hotplug.state"

    const-string/jumbo v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    sget-boolean v2, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->DBG:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "readSysfs :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/sys/power/cluster0_core_hotplug_in"

    invoke-static {v3}, Lcom/android/bluetooth/Utils;->readSysfs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mHotplugState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    const/16 v2, 0xb

    if-ne p1, v2, :cond_1

    const-string/jumbo v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "/sys/power/cluster0_core_hotplug_in"

    const-string/jumbo v3, "0"

    invoke-static {v2, v3}, Lcom/android/bluetooth/Utils;->writeSysfs(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "bluetooth.hotplug.state"

    const-string/jumbo v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setInitHotPlugMode()V
    .locals 4

    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAvPerformance()Lcom/android/bluetooth/btservice/AdapterService$AvPerformance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService$AvPerformance;->getHotPlug()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "bluetooth.hotplug.state"

    const-string/jumbo v3, "default"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "/sys/power/cluster0_core_hotplug_in"

    const-string/jumbo v3, "0"

    invoke-static {v2, v3}, Lcom/android/bluetooth/Utils;->writeSysfs(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "bluetooth.hotplug.state"

    const-string/jumbo v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private native setMonitoringCallBackNative(Z)Z
.end method

.method private setRegistDevCallBack(Z)V
    .locals 3

    sget-boolean v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "A2dpStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRegistDevCallBack : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sput-boolean p1, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mRegisterDevCallBack:Z

    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->setMonitoringCallBackNative(Z)Z

    return-void
.end method

.method private setScmstSupport(I)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_BT_SupportScmst"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setScmstSupport = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    sput p1, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mHeadsetScmstSupport:I

    :cond_0
    return-void
.end method

.method private setStreamDevice(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 5

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mConnectedDevices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->isDualPlayEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v3, "A2dpDelayReport=0"

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->selectstreamA2dpNative([BZ)Z

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mDeviceInfo:Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v2, v3, v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;->getDeviceFeature(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mAudioManager:Landroid/media/AudioManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "A2dpDelayReport="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private native setbusylevelA2dpNative(I)Z
.end method

.method private declared-synchronized showPlayNotification(Landroid/bluetooth/BluetoothDevice;)V
    .locals 30

    monitor-enter p0

    if-eqz p1, :cond_d

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v8

    if-nez v8, :cond_1

    sget-boolean v25, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->DBG:Z

    if-eqz v25, :cond_0

    const-string/jumbo v25, "A2dpStateMachine"

    const-string/jumbo v26, "showPlayNotification deviceClass is null"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {v8}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v10

    sget-boolean v25, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->DBG:Z

    if-eqz v25, :cond_2

    const-string/jumbo v25, "A2dpStateMachine"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "showPlayNotification cod = 0x"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/16 v25, 0x408

    move/from16 v0, v25

    if-ne v10, v0, :cond_d

    const-string/jumbo v19, "AutoPlayCarList"

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    const/16 v16, 0x0

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/16 v17, 0x0

    const/16 v23, 0x1

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v16

    new-instance v12, Ljava/io/DataInputStream;

    move-object/from16 v0, v16

    invoke-direct {v12, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_14
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v25, Ljava/io/InputStreamReader;

    move-object/from16 v0, v25

    invoke-direct {v0, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v25

    invoke-direct {v6, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_15
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_17
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_3
    :try_start_4
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_4

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_3

    const/16 v23, 0x0

    :cond_4
    if-eqz v23, :cond_6

    sget-boolean v25, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->DBG:Z

    if-eqz v25, :cond_5

    const-string/jumbo v25, "A2dpStateMachine"

    const-string/jumbo v26, "showPlayNotification write file"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_18
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :cond_5
    :try_start_5
    new-instance v18, Ljava/io/FileOutputStream;

    new-instance v25, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/16 v26, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    new-instance v7, Ljava/io/BufferedWriter;

    new-instance v25, Ljava/io/FileWriter;

    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/io/FileWriter;-><init>(Ljava/io/FileDescriptor;)V

    move-object/from16 v0, v25

    invoke-direct {v7, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v7}, Ljava/io/BufferedWriter;->newLine()V

    invoke-virtual {v7, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V

    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_19
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_16
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move-object/from16 v17, v18

    :cond_6
    :goto_0
    if-eqz v6, :cond_7

    :try_start_7
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_7
    :goto_1
    if-eqz v12, :cond_8

    :try_start_8
    invoke-virtual {v12}, Ljava/io/DataInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :cond_8
    :goto_2
    if-eqz v16, :cond_9

    :try_start_9
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :cond_9
    :goto_3
    if-eqz v17, :cond_a

    :try_start_a
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :cond_a
    :goto_4
    move-object v5, v6

    move-object v11, v12

    :cond_b
    :goto_5
    if-eqz v23, :cond_d

    :try_start_b
    sget-boolean v25, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->DBG:Z

    if-eqz v25, :cond_c

    const-string/jumbo v25, "A2dpStateMachine"

    const-string/jumbo v26, "showPlayNotification show-up"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    new-instance v25, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mService:Lcom/android/bluetooth/a2dp/A2dpService;

    move-object/from16 v26, v0

    invoke-direct/range {v25 .. v26}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v26, 0x1080080

    invoke-virtual/range {v25 .. v26}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v25

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mService:Lcom/android/bluetooth/a2dp/A2dpService;

    move-object/from16 v26, v0

    const v27, 0x7f0a0097

    invoke-virtual/range {v26 .. v27}, Lcom/android/bluetooth/a2dp/A2dpService;->getString(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mService:Lcom/android/bluetooth/a2dp/A2dpService;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    aput-object v28, v27, v29

    const v28, 0x7f0a0098

    move-object/from16 v0, v26

    move/from16 v1, v28

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/bluetooth/a2dp/A2dpService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v25

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v9

    new-instance v20, Landroid/content/Intent;

    invoke-direct/range {v20 .. v20}, Landroid/content/Intent;-><init>()V

    const/high16 v25, 0x10000000

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mService:Lcom/android/bluetooth/a2dp/A2dpService;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/high16 v27, 0x10000000

    move-object/from16 v0, v25

    move/from16 v1, v26

    move-object/from16 v2, v20

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    invoke-virtual {v9}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mNotificationManager:Landroid/app/NotificationManager;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    move-object/from16 v2, v22

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :cond_d
    monitor-exit p0

    return-void

    :catch_0
    move-exception v14

    :goto_6
    :try_start_c
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_18
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    goto/16 :goto_0

    :catch_1
    move-exception v13

    move-object v5, v6

    move-object v11, v12

    :goto_7
    :try_start_d
    sget-boolean v25, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->DBG:Z

    if-eqz v25, :cond_e

    const-string/jumbo v25, "A2dpStateMachine"

    const-string/jumbo v26, "showPlayNotification create new file"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v17

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v25

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_c
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :goto_8
    if-eqz v5, :cond_f

    :try_start_e
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_d
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :cond_f
    :goto_9
    if-eqz v11, :cond_10

    :try_start_f
    invoke-virtual {v11}, Ljava/io/DataInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_e
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :cond_10
    :goto_a
    if-eqz v16, :cond_11

    :try_start_10
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_f
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    :cond_11
    :goto_b
    if-eqz v17, :cond_b

    :try_start_11
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_2
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto/16 :goto_5

    :catch_2
    move-exception v14

    goto/16 :goto_5

    :catch_3
    move-exception v14

    goto/16 :goto_1

    :catch_4
    move-exception v14

    goto/16 :goto_2

    :catch_5
    move-exception v14

    goto/16 :goto_3

    :catch_6
    move-exception v14

    goto/16 :goto_4

    :catch_7
    move-exception v14

    :goto_c
    :try_start_12
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    if-eqz v5, :cond_12

    :try_start_13
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_9
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    :cond_12
    :goto_d
    if-eqz v11, :cond_13

    :try_start_14
    invoke-virtual {v11}, Ljava/io/DataInputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_a
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    :cond_13
    :goto_e
    if-eqz v16, :cond_14

    :try_start_15
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_b
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    :cond_14
    :goto_f
    if-eqz v17, :cond_b

    :try_start_16
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_8
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    goto/16 :goto_5

    :catch_8
    move-exception v14

    goto/16 :goto_5

    :catch_9
    move-exception v14

    goto :goto_d

    :catch_a
    move-exception v14

    goto :goto_e

    :catch_b
    move-exception v14

    goto :goto_f

    :catch_c
    move-exception v15

    :try_start_17
    invoke-virtual {v13}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    goto :goto_8

    :catchall_0
    move-exception v25

    :goto_10
    if-eqz v5, :cond_15

    :try_start_18
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_10
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    :cond_15
    :goto_11
    if-eqz v11, :cond_16

    :try_start_19
    invoke-virtual {v11}, Ljava/io/DataInputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_11
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    :cond_16
    :goto_12
    if-eqz v16, :cond_17

    :try_start_1a
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_12
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    :cond_17
    :goto_13
    if-eqz v17, :cond_18

    :try_start_1b
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_13
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    :cond_18
    :goto_14
    :try_start_1c
    throw v25
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    :catchall_1
    move-exception v25

    monitor-exit p0

    throw v25

    :catch_d
    move-exception v14

    goto :goto_9

    :catch_e
    move-exception v14

    goto :goto_a

    :catch_f
    move-exception v14

    goto :goto_b

    :catch_10
    move-exception v14

    goto :goto_11

    :catch_11
    move-exception v14

    goto :goto_12

    :catch_12
    move-exception v14

    goto :goto_13

    :catch_13
    move-exception v14

    goto :goto_14

    :catchall_2
    move-exception v25

    move-object v11, v12

    goto :goto_10

    :catchall_3
    move-exception v25

    move-object v5, v6

    move-object v11, v12

    goto :goto_10

    :catchall_4
    move-exception v25

    move-object/from16 v17, v18

    move-object v5, v6

    move-object v11, v12

    goto :goto_10

    :catch_14
    move-exception v13

    goto/16 :goto_7

    :catch_15
    move-exception v13

    move-object v11, v12

    goto/16 :goto_7

    :catch_16
    move-exception v13

    move-object/from16 v17, v18

    move-object v5, v6

    move-object v11, v12

    goto/16 :goto_7

    :catch_17
    move-exception v14

    move-object v11, v12

    goto :goto_c

    :catch_18
    move-exception v14

    move-object v5, v6

    move-object v11, v12

    goto :goto_c

    :catch_19
    move-exception v14

    move-object/from16 v17, v18

    goto/16 :goto_6
.end method

.method private showUHQNotification(Ljava/lang/String;)V
    .locals 9

    const/4 v8, 0x1

    if-eqz p1, :cond_1

    sget-boolean v5, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->DBG:Z

    if-eqz v5, :cond_0

    const-string/jumbo v5, "A2dpStateMachine"

    const-string/jumbo v6, "showUHQNotification warning audio quality"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v5, Landroid/app/Notification$Builder;

    iget-object v6, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mService:Lcom/android/bluetooth/a2dp/A2dpService;

    invoke-direct {v5, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x1080080

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mService:Lcom/android/bluetooth/a2dp/A2dpService;

    const v7, 0x7f0a0099

    invoke-virtual {v6, v7}, Lcom/android/bluetooth/a2dp/A2dpService;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mService:Lcom/android/bluetooth/a2dp/A2dpService;

    const v7, 0x7f0a009a

    invoke-virtual {v6, v7}, Lcom/android/bluetooth/a2dp/A2dpService;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v5, "com.sec.android.app.soundalive"

    const-string/jumbo v6, "com.sec.android.app.soundalive.SAControlPanelActivity"

    invoke-direct {v1, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.MAIN"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v5, 0x10000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mService:Lcom/android/bluetooth/a2dp/A2dpService;

    const/4 v6, 0x0

    const/high16 v7, 0x8000000

    invoke-static {v5, v6, v2, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    iget-object v5, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v5, p1, v8, v3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    :cond_1
    return-void
.end method

.method private updateBitRateInfo(ILjava/lang/String;)V
    .locals 4

    sget-boolean v1, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mRegisterDevCallBack:Z

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\"POUI\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ",\"BTRT\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mService:Lcom/android/bluetooth/a2dp/A2dpService;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpService;->updateA2dpData(Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "A2dpStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateBitRateInfo() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private updateCallBackCurCodecInfo(IILandroid/bluetooth/BluetoothDevice;)V
    .locals 4

    sget-boolean v1, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mRegisterDevCallBack:Z

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\"POUI\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ",\"CCOD\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ",\"PCOD\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mService:Lcom/android/bluetooth/a2dp/A2dpService;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpService;->updateA2dpData(Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "A2dpStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCallBackCurCodecInfo() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private updateDualAudioPlayingTime(ZZI)V
    .locals 12

    const-wide/16 v10, 0x3e8

    const/4 v9, 0x2

    const/4 v6, 0x0

    const/4 v8, 0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_7

    if-eqz p2, :cond_2

    const/4 v4, 0x4

    const-wide/16 v6, 0x0

    invoke-static {v4, v8, v8, v6, v7}, Lcom/android/bluetooth/Utils;->setDualAudioTime(IZZJ)V

    const/4 v4, 0x3

    invoke-static {v4, v8, v8, v2, v3}, Lcom/android/bluetooth/Utils;->setDualAudioTime(IZZJ)V

    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->m2ndPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v4, :cond_1

    :cond_0
    invoke-static {v9, v8, v8, v2, v3}, Lcom/android/bluetooth/Utils;->setDualAudioTime(IZZJ)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-ne p3, v9, :cond_4

    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->m2ndPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v4, :cond_3

    invoke-static {v9, v8, v8, v2, v3}, Lcom/android/bluetooth/Utils;->setDualAudioTime(IZZJ)V

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->m2ndPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v4, :cond_1

    invoke-static {v8, v8, v8, v2, v3}, Lcom/android/bluetooth/Utils;->setDualAudioTime(IZZJ)V

    goto :goto_0

    :cond_4
    if-eqz p3, :cond_5

    if-ne p3, v8, :cond_1

    :cond_5
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->m2ndPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v4, :cond_6

    invoke-static {v9, v8}, Lcom/android/bluetooth/Utils;->getDualAudioTime(IZ)J

    move-result-wide v4

    sub-long v4, v2, v4

    div-long v0, v4, v10

    invoke-static {v9, v6, v6, v0, v1}, Lcom/android/bluetooth/Utils;->setDualAudioTime(IZZJ)V

    goto :goto_0

    :cond_6
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->m2ndPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v4, :cond_1

    invoke-static {v8, v8}, Lcom/android/bluetooth/Utils;->getDualAudioTime(IZ)J

    move-result-wide v4

    sub-long v4, v2, v4

    div-long v0, v4, v10

    invoke-static {v8, v6, v6, v0, v1}, Lcom/android/bluetooth/Utils;->setDualAudioTime(IZZJ)V

    goto :goto_0

    :cond_7
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->m2ndPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v4, :cond_9

    :cond_8
    invoke-static {v9, v8}, Lcom/android/bluetooth/Utils;->getDualAudioTime(IZ)J

    move-result-wide v4

    sub-long v4, v2, v4

    div-long v0, v4, v10

    invoke-static {v9, v6, v6, v0, v1}, Lcom/android/bluetooth/Utils;->setDualAudioTime(IZZJ)V

    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->m2ndPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v4, :cond_9

    invoke-static {v8, v8}, Lcom/android/bluetooth/Utils;->getDualAudioTime(IZ)J

    move-result-wide v4

    sub-long v4, v2, v4

    div-long v0, v4, v10

    invoke-static {v8, v6, v6, v0, v1}, Lcom/android/bluetooth/Utils;->setDualAudioTime(IZZJ)V

    :cond_9
    const/4 v4, 0x3

    invoke-static {v4, v8}, Lcom/android/bluetooth/Utils;->getDualAudioTime(IZ)J

    move-result-wide v4

    sub-long v4, v2, v4

    div-long v0, v4, v10

    const/4 v4, 0x3

    invoke-static {v4, v8, v6, v0, v1}, Lcom/android/bluetooth/Utils;->setDualAudioTime(IZZJ)V

    goto :goto_0
.end method

.method private updateLinkFeedBackInfo(ILjava/lang/String;)V
    .locals 4

    sget-boolean v1, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mRegisterDevCallBack:Z

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\"POUI\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ",\"LFIF\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mService:Lcom/android/bluetooth/a2dp/A2dpService;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpService;->updateA2dpData(Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "A2dpStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateLinkFeedBackInfo() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mConnectedDevices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mDeviceInfo:Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;

    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;->clear()V

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mBigDataInfo:Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo;

    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo;->clear()V

    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->cleanupNative()V

    return-void
.end method

.method commandForMonitoring(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mIntentBroadcastHandler:Lcom/android/bluetooth/a2dp/A2dpStateMachine$IntentBroadcastHandler;

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mIntentBroadcastHandler:Lcom/android/bluetooth/a2dp/A2dpStateMachine$IntentBroadcastHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$IntentBroadcastHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$IntentBroadcastHandler;->sendMessage(Landroid/os/Message;)Z

    const/4 v0, 0x1

    return v0
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
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-ne v0, v2, :cond_0

    const-string/jumbo v0, "doQuit()- Move A2DP State to DISCONNECTED"

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->quitNow()V

    return-void
.end method

.method public dump(Ljava/lang/StringBuilder;)V
    .locals 6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mActiveStreamDevice: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mActiveStreamDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->deviceInfo(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mTargetDevice: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->deviceInfo(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mIncomingDevice: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->deviceInfo(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mPlayingA2dpDevice: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->deviceInfo(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mRegisterDevCallBack: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mRegisterDevCallBack:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mConnectedDevices:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "delay reporting("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->deviceInfo(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mDeviceInfo:Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    invoke-virtual {v3, v4, v5}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;->getDeviceFeature(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "StateMachine: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method

.method getA2dpConnectedDevices()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mConnectedDevices:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mConnectedDevices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mConnectedDevices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method getActiveStreamDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mActiveStreamDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method getConnectedDevices()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mConnectedDevices:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mConnectedDevices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mConnectedDevices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    monitor-exit p0

    if-eqz v0, :cond_1

    const-string/jumbo v2, "A2dpStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getConnectedDevices : size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mDisconnected:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;

    if-ne v1, v2, :cond_0

    const-string/jumbo v1, "A2dpStateMachine"

    const-string/jumbo v2, "getConnectionState: 0"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mPending:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;

    if-ne v0, v1, :cond_6

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    monitor-exit p0

    return v5

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mConnectedDevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mConnectedDevices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_2

    monitor-exit p0

    return v4

    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mConnectedDevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mConnectedDevices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    monitor-exit p0

    return v1

    :cond_3
    :try_start_3
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    if-eqz v1, :cond_4

    monitor-exit p0

    return v5

    :cond_4
    :try_start_4
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mConnectedDevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mConnectedDevices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v1

    if-eqz v1, :cond_5

    monitor-exit p0

    return v4

    :cond_5
    monitor-exit p0

    return v3

    :cond_6
    :try_start_5
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mConnected:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;

    if-ne v0, v1, :cond_8

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mConnectedDevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mConnectedDevices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v1

    if-eqz v1, :cond_7

    monitor-exit p0

    return v4

    :cond_7
    monitor-exit p0

    return v3

    :cond_8
    :try_start_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad currentState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->loge(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return v3

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v5

    sget-object v7, Landroid/bluetooth/BluetoothUuid;->AudioSink:Landroid/os/ParcelUuid;

    invoke-static {v5, v7}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    const/4 v6, 0x0

    :goto_0
    array-length v7, p1

    if-ge v6, v7, :cond_0

    aget v7, p1, v6

    if-ne v1, v7, :cond_1

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    monitor-exit p0

    return-object v4

    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method public getScmstSupport()I
    .locals 2

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_BT_SupportScmst"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getScmstSupport = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mHeadsetScmstSupport:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    sget v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mHeadsetScmstSupport:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method isDualPlayEnabled()Z
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "bluetooth_a2dp_dual_play_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isDualPlayEnabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    return v1
.end method

.method isPlaying(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->isDualPlayEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->m2ndPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mActiveStreamDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    monitor-exit p0

    return v1

    :cond_2
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method okToConnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 21

    const-string/jumbo v1, "1"

    const-string/jumbo v3, "service.bt.security.policy.mode"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "A2dpStateMachine"

    const-string/jumbo v3, "okToConnect = No ; IT Policy HandsfreeOnly"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    return v1

    :cond_1
    const-string/jumbo v1, "content://com.sec.knox.provider/BluetoothUtils"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/16 v17, 0x1

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->AdvAudioDist:Landroid/os/ParcelUuid;

    invoke-virtual {v1}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v5, v3

    const/4 v15, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "isProfileAuthorizedBySecurityPolicy"

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    if-eqz v15, :cond_2

    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    const-string/jumbo v1, "isProfileAuthorizedBySecurityPolicy"

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "true"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_4

    const/16 v17, 0x1

    :cond_2
    :goto_0
    if-eqz v15, :cond_3

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :goto_1
    const/4 v15, 0x0

    :cond_3
    if-nez v17, :cond_6

    const-string/jumbo v1, "A2dpStateMachine"

    const-string/jumbo v3, "A2DP service blocked by MDM policy"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    const-string/jumbo v10, "A2dpStateMachine"

    const-string/jumbo v11, "Connecting to bluetooth device failed. Either A2DP or SPP profile is blocked."

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v12

    const/4 v6, 0x1

    const/4 v7, 0x5

    const/4 v8, 0x0

    invoke-static/range {v6 .. v12}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    const/4 v1, 0x0

    return v1

    :cond_4
    const/16 v17, 0x0

    goto :goto_0

    :catch_0
    move-exception v20

    :try_start_1
    const-string/jumbo v1, "A2dpStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Catching SecurityException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v15, :cond_3

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catch_1
    move-exception v14

    :try_start_2
    const-string/jumbo v1, "A2dpStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "CursorIndexOutOfBoundsException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v15, :cond_3

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catch_2
    move-exception v16

    :try_start_3
    const-string/jumbo v1, "A2dpStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "CursorWindowAllocationException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v15, :cond_3

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :catchall_0
    move-exception v1

    if-eqz v15, :cond_5

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    const/4 v15, 0x0

    :cond_5
    throw v1

    :cond_6
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mService:Lcom/android/bluetooth/a2dp/A2dpService;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/a2dp/A2dpService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v18

    const/16 v19, 0x0

    if-nez v13, :cond_8

    const/16 v19, 0x0

    :cond_7
    :goto_2
    return v19

    :cond_8
    if-gtz v18, :cond_9

    const/4 v1, -0x1

    move/from16 v0, v18

    if-ne v1, v0, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    const/16 v3, 0xa

    if-eq v1, v3, :cond_7

    :cond_9
    const/16 v19, 0x1

    goto :goto_2
.end method

.method setBusyLevelForWifi(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mIntentBroadcastHandler:Lcom/android/bluetooth/a2dp/A2dpStateMachine$IntentBroadcastHandler;

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mIntentBroadcastHandler:Lcom/android/bluetooth/a2dp/A2dpStateMachine$IntentBroadcastHandler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$IntentBroadcastHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$IntentBroadcastHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
