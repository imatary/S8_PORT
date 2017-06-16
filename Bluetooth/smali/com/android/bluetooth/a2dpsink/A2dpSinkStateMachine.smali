.class final Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "A2dpSinkStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$1;,
        Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$2;,
        Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$AUDIO_PATCH_STATE;,
        Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;,
        Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigDataEvent;,
        Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;,
        Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;,
        Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$IntentBroadcastHandler;,
        Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$OUTDEVICE_STATE;,
        Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;,
        Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$SUSPEND_STATE;,
        Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$StackEvent;
    }
.end annotation


# static fields
.field private static final A2DP_SINK_PACKAGE:Ljava/lang/String; = "com.android.bluetooth.a2dpsink"

.field private static final ACTION_ENABLE_A2DP_SINK_SERVICE:Ljava/lang/String; = "com.samsung.bluetooth.btservice.action.ACTION_ENABLE_A2DP_SINK_SERVICE"

.field static final AUDIO_STATE_REMOTE_SUSPEND:I = 0x0

.field static final AUDIO_STATE_STARTED:I = 0x2

.field static final AUDIO_STATE_STOPPED:I = 0x1

.field public static final AVRC_ID_PAUSE:I = 0x46

.field public static final AVRC_ID_PLAY:I = 0x44

.field private static final BIG_DATA_EVENT:I = 0x66

.field private static final BLUETOOTH_A2DP_PREFERENCE:Ljava/lang/String; = "bluetooth_a2dp_preference"

.field private static final BLUETOOTH_A2DP_SINK_MODE:Ljava/lang/String; = "bluetooth_a2dp_sink_mode"

.field private static final BLUTOOTH_HOTPLUG_STATE:Ljava/lang/String; = "bluetooth.hotplug.state"

.field static final CALL_STATE_CHANGED:I = 0x9

.field private static final CLUSTER0_CORE_HOTPLUG_IN:Ljava/lang/String; = "/sys/power/cluster0_core_hotplug_in"

.field static final CONNECT:I = 0x1

.field static final CONNECTION_STATE_CONNECTED:I = 0x2

.field static final CONNECTION_STATE_CONNECTING:I = 0x1

.field static final CONNECTION_STATE_DISCONNECTED:I = 0x0

.field static final CONNECTION_STATE_DISCONNECTING:I = 0x3

.field private static final CONNECT_TIMEOUT:I = 0xc9

.field private static final DBG:Z

.field static final DISCONNECT:I = 0x2

.field public static final EVENT_AVRCP_CT_PAUSE:I = 0x12e

.field public static final EVENT_AVRCP_CT_PLAY:I = 0x12d

.field public static final EVENT_AVRCP_TG_PAUSE:I = 0x130

.field public static final EVENT_AVRCP_TG_PLAY:I = 0x12f

.field private static final EVENT_TYPE_AUDIO_CONFIG_CHANGED:I = 0x3

.field private static final EVENT_TYPE_AUDIO_STATE_CHANGED:I = 0x2

.field private static final EVENT_TYPE_CONNECTION_STATE_CHANGED:I = 0x1

.field private static final EVENT_TYPE_NONE:I = 0x0

.field private static final EXTRA_ENABLE_SERVICE:Ljava/lang/String; = "EXTRA.ENABLE.SERVICE"

.field private static final HOTPLUG_DEFAULT:Ljava/lang/String; = "default"

.field private static final HOTPLUG_OFF:Ljava/lang/String; = "0"

.field private static final HOTPLUG_ON:Ljava/lang/String; = "1"

.field private static final IS_INVALID_DEVICE:I = 0x0

.field private static final IS_VALID_DEVICE:I = 0x1

.field public static final KEY_STATE_PRESSED:I = 0x0

.field public static final KEY_STATE_RELEASED:I = 0x1

.field private static final MESSAGE_CALL_END:I = 0x2

.field private static final MESSAGE_CALL_START:I = 0x1

.field private static final MESSAGE_OUTPUT_DEVICE_PLUGED_FALSE:I = 0x7

.field private static final MESSAGE_OUTPUT_DEVICE_PLUGED_TRUE:I = 0x8

.field private static final MESSAGE_RELEASE_AUDIO:I = 0x5

.field private static final MESSAGE_RESUME_QUICKCONNECT:I = 0xa

.field private static final MESSAGE_SUSPEND_QUICKCONNECT:I = 0x9

.field private static final MESSAGE_UPDATE_ROUTING:I = 0x6

.field private static final MESSAGE_VR_END:I = 0x4

.field private static final MESSAGE_VR_START:I = 0x3

.field private static final MESSAGE_WA_NO_START_FROM_TV:I = 0xb

.field private static final MODE_DEFAULT:I = -0x1

.field private static final MODE_OFF:I = 0x0

.field private static final MODE_ON:I = 0x2

.field private static final MSG_CONNECTION_STATE_CHANGED:I = 0x0

.field static final SINK_SERVICE_OFF:I = 0xb

.field private static final STACK_EVENT:I = 0x65

.field private static final TAG:Ljava/lang/String; = "A2dpSinkStateMachine"

.field private static final TURNING_OFF:I = 0x3

.field private static final TURNING_ON:I = 0x1

.field static final VR_STATE_CHANGED:I = 0xa


# instance fields
.field private currentConnectionState:I

.field private isVR:Z

.field private mA2dpOutputPort:Landroid/media/AudioDevicePort;

.field private mA2dpRoutingFromApp:Z

.field private mA2dpRoutingFromStack:Z

.field private mA2dpSinkPort:Landroid/media/AudioDevicePort;

.field private mA2dpSuspended:Z

.field private mA2dpSuspendedRefCnt:I

.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mAudioConfig:Landroid/bluetooth/BluetoothAudioConfig;

.field private final mAudioConfigs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Landroid/bluetooth/BluetoothAudioConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mAudioPatch:Landroid/media/AudioPatch;

.field private final mAudioPortUpdateListener:Landroid/media/AudioManager$OnAudioPortUpdateListener;

.field private mAudioState:I

.field private mBigData:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;

.field private mConnected:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;

.field private mContext:Landroid/content/Context;

.field private mCreateAudioPatch:Z

.field private mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

.field private mDisconnected:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;

.field private mHandler:Landroid/os/Handler;

.field private mHeadphonePort:Landroid/media/AudioDevicePort;

.field private mHeadsetPort:Landroid/media/AudioDevicePort;

.field private mIncomingDevice:Landroid/bluetooth/BluetoothDevice;

.field private mIntentBroadcastHandler:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$IntentBroadcastHandler;

.field private final mLockForPatch:Ljava/lang/Object;

.field private mPending:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;

.field private mPlayingDevice:Landroid/bluetooth/BluetoothDevice;

.field private mPreOutDeviceState:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$OUTDEVICE_STATE;

.field private mPreSuspendState:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$SUSPEND_STATE;

.field mSemAvkDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;

.field private mService:Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

.field private mSpeakerPort:Landroid/media/AudioDevicePort;

.field private mSuspendForQuickConnect:Z

.field private mTargetDevice:Landroid/bluetooth/BluetoothDevice;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->DBG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->isVR:Z

    return v0
.end method

.method static synthetic -get10(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mCreateAudioPatch:Z

    return v0
.end method

.method static synthetic -get12(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mDisconnected:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/media/AudioDevicePort;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mHeadphonePort:Landroid/media/AudioDevicePort;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/media/AudioDevicePort;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mHeadsetPort:Landroid/media/AudioDevicePort;

    return-object v0
.end method

.method static synthetic -get17(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic -get18(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mPending:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;

    return-object v0
.end method

.method static synthetic -get19(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$OUTDEVICE_STATE;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mPreOutDeviceState:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$OUTDEVICE_STATE;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mA2dpRoutingFromApp:Z

    return v0
.end method

.method static synthetic -get20(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$SUSPEND_STATE;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mPreSuspendState:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$SUSPEND_STATE;

    return-object v0
.end method

.method static synthetic -get21(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/media/AudioDevicePort;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mSpeakerPort:Landroid/media/AudioDevicePort;

    return-object v0
.end method

.method static synthetic -get22(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mSuspendForQuickConnect:Z

    return v0
.end method

.method static synthetic -get23(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic -get24(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/media/AudioDevicePort;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mA2dpSinkPort:Landroid/media/AudioDevicePort;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mAudioConfigs:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mAudioState:I

    return v0
.end method

.method static synthetic -get8(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mBigData:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mConnected:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;I)I
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->currentConnectionState:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->isVR:Z

    return p1
.end method

.method static synthetic -set10(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Landroid/media/AudioDevicePort;)Landroid/media/AudioDevicePort;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mHeadsetPort:Landroid/media/AudioDevicePort;

    return-object p1
.end method

.method static synthetic -set11(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic -set12(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$OUTDEVICE_STATE;)Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$OUTDEVICE_STATE;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mPreOutDeviceState:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$OUTDEVICE_STATE;

    return-object p1
.end method

.method static synthetic -set13(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$SUSPEND_STATE;)Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$SUSPEND_STATE;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mPreSuspendState:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$SUSPEND_STATE;

    return-object p1
.end method

.method static synthetic -set14(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Landroid/media/AudioDevicePort;)Landroid/media/AudioDevicePort;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mSpeakerPort:Landroid/media/AudioDevicePort;

    return-object p1
.end method

.method static synthetic -set15(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mA2dpRoutingFromApp:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mA2dpRoutingFromStack:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Landroid/media/AudioDevicePort;)Landroid/media/AudioDevicePort;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mA2dpSinkPort:Landroid/media/AudioDevicePort;

    return-object p1
.end method

.method static synthetic -set5(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mA2dpSuspended:Z

    return p1
.end method

.method static synthetic -set6(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;I)I
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mA2dpSuspendedRefCnt:I

    return p1
.end method

.method static synthetic -set7(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;I)I
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mAudioState:I

    return p1
.end method

.method static synthetic -set8(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic -set9(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Landroid/media/AudioDevicePort;)Landroid/media/AudioDevicePort;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mHeadphonePort:Landroid/media/AudioDevicePort;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;[B)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/os/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap10(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->logi(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->logw(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;I[B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->onConnectionStateChanged(I[B)V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothAudioConfig;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->processAudioConfigEvent(Landroid/bluetooth/BluetoothAudioConfig;Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic -wrap17(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->processCallState()V

    return-void
.end method

.method static synthetic -wrap18(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->processVrState()V

    return-void
.end method

.method static synthetic -wrap19(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;[B)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->connectA2dpNative([B)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap20(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->sendIntentSinkServiceOff()V

    return-void
.end method

.method static synthetic -wrap21(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic -wrap22(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->updateA2dpRouting()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;[B)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->disconnectA2dpNative([B)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)[B
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap5(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->broadcastAudioState(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->callStackStartCommand()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->callStackSuspendCommand(Z)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Landroid/os/Message;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->DBG:Z

    invoke-static {}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->classInitNative()V

    return-void
.end method

.method private constructor <init>(Lcom/android/bluetooth/a2dpsink/A2dpSinkService;Landroid/content/Context;)V
    .locals 5

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string/jumbo v1, "A2dpSinkStateMachine"

    invoke-direct {p0, v1}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mLockForPatch:Ljava/lang/Object;

    iput-object v3, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    iput-object v3, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;

    iput-object v3, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;

    iput-object v3, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mPlayingDevice:Landroid/bluetooth/BluetoothDevice;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mAudioConfigs:Ljava/util/HashMap;

    iput v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mAudioState:I

    iput-boolean v4, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mCreateAudioPatch:Z

    iput-boolean v4, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->isVR:Z

    iput v4, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->currentConnectionState:I

    sget-object v1, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$SUSPEND_STATE;->INIT:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$SUSPEND_STATE;

    iput-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mPreSuspendState:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$SUSPEND_STATE;

    sget-object v1, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$OUTDEVICE_STATE;->INIT:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$OUTDEVICE_STATE;

    iput-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mPreOutDeviceState:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$OUTDEVICE_STATE;

    new-instance v1, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$1;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$1;-><init>(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)V

    iput-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mAudioPortUpdateListener:Landroid/media/AudioManager$OnAudioPortUpdateListener;

    new-instance v1, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$2;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$2;-><init>(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)V

    iput-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mService:Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

    iput-object p2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-direct {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->initNative()V

    new-instance v1, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;

    invoke-direct {v1, p0, v3}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;-><init>(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;)V

    iput-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mDisconnected:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;

    new-instance v1, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;

    invoke-direct {v1, p0, v3}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;-><init>(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;)V

    iput-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mPending:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;

    new-instance v1, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;

    invoke-direct {v1, p0, v3}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;-><init>(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;)V

    iput-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mConnected:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mDisconnected:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->addState(Lcom/android/internal/util/State;)V

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mPending:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->addState(Lcom/android/internal/util/State;)V

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mConnected:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->addState(Lcom/android/internal/util/State;)V

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mDisconnected:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    const-string/jumbo v1, "power"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string/jumbo v1, "BluetoothA2dpSinkService"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v1, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$IntentBroadcastHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$IntentBroadcastHandler;-><init>(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$IntentBroadcastHandler;)V

    iput-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mIntentBroadcastHandler:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$IntentBroadcastHandler;

    const-string/jumbo v1, "audio"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v1, "Registering audio port listener"

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mAudioPortUpdateListener:Landroid/media/AudioManager$OnAudioPortUpdateListener;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->registerAudioPortUpdateListener(Landroid/media/AudioManager$OnAudioPortUpdateListener;)V

    iput-boolean v4, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mA2dpRoutingFromStack:Z

    iput-boolean v4, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mA2dpRoutingFromApp:Z

    iput-boolean v4, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mA2dpSuspended:Z

    iput v4, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mA2dpSuspendedRefCnt:I

    iput-boolean v4, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mSuspendForQuickConnect:Z

    new-instance v1, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;

    invoke-direct {v1, p0, v3}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;-><init>(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;)V

    iput-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mBigData:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;

    return-void
.end method

.method private broadcastAudioConfig(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothAudioConfig;)V
    .locals 6

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.bluetooth.a2dp-sink.profile.action.AUDIO_CONFIG_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v3, "android.bluetooth.a2dp-sink.profile.extra.AUDIO_CONFIG"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mContext:Landroid/content/Context;

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

    iget-object v3, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v5, "android.permission.BLUETOOTH"

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "A2DP Audio Config : device: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->deviceInfo(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " config: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method private broadcastAudioState(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 6

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.bluetooth.a2dp-sink.profile.action.PLAYING_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v3, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v3, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mContext:Landroid/content/Context;

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

    iget-object v3, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v5, "android.permission.BLUETOOTH"

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "A2DP Playing state : device: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->deviceInfo(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

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

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->log(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->setCPUMinLock(I)V

    invoke-direct {p0, p2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->setHotPlugMode(I)V

    return-void
.end method

.method private broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 7

    const/16 v6, 0xb

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, p1, p2, v6}, Landroid/media/AudioManager;->setBluetoothA2dpDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;II)I

    move-result v0

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mIntentBroadcastHandler:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$IntentBroadcastHandler;

    iget-object v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mIntentBroadcastHandler:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$IntentBroadcastHandler;

    invoke-virtual {v2, v3, p3, p2, p1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$IntentBroadcastHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$IntentBroadcastHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    if-nez p2, :cond_0

    invoke-direct {p0, v6}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->setCPUMinLock(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mBigData:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;

    invoke-virtual {v1, p2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->checkServiceTime(I)V

    return-void
.end method

.method private callStackStartCommand()V
    .locals 2

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mPreSuspendState:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$SUSPEND_STATE;

    sget-object v1, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$SUSPEND_STATE;->SUSPENDED:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$SUSPEND_STATE;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$SUSPEND_STATE;->RESUMING:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$SUSPEND_STATE;

    iput-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mPreSuspendState:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$SUSPEND_STATE;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->configureSuspendNative(Z)Z

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v1, "A2dpSinkSuspended=false"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private callStackSuspendCommand(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mPreSuspendState:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$SUSPEND_STATE;

    sget-object v1, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$SUSPEND_STATE;->RESUMED:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$SUSPEND_STATE;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v1, "A2dpSinkSuspended=true"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$SUSPEND_STATE;->SUSPENDING:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$SUSPEND_STATE;

    iput-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mPreSuspendState:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$SUSPEND_STATE;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->configureSuspendNative(Z)Z

    :cond_0
    return-void
.end method

.method private checkForConnectedDevices()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "A2dpSinkStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sending notification to disconnect sink device : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->currentConnectionState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->currentConnectionState:I

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v0, v3, v4}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->currentConnectionState:I

    if-ne v0, v5, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v0, v3, v5}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_0
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNative()V
.end method

.method private native configureSuspendNative(Z)Z
.end method

.method private native connectA2dpNative([B)Z
.end method

.method private native disconnectA2dpNative([B)Z
.end method

.method private getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B
    .locals 1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private getDevice([B)Landroid/bluetooth/BluetoothDevice;
    .locals 2

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method private native initNative()V
.end method

.method static make(Lcom/android/bluetooth/a2dpsink/A2dpSinkService;Landroid/content/Context;)Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;
    .locals 3

    const-string/jumbo v1, "A2dpSinkStateMachine"

    const-string/jumbo v2, "make"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-direct {v0, p0, p1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;-><init>(Lcom/android/bluetooth/a2dpsink/A2dpSinkService;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->start()V

    return-object v0
.end method

.method private onAudioConfigChanged([BII)V
    .locals 4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onAudioConfigChanged sampleRate "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " channelCount "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->log(Ljava/lang/String;)V

    new-instance v1, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$StackEvent;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;ILcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$StackEvent;)V

    const/4 v2, 0x1

    if-ne p3, v2, :cond_0

    const/16 v0, 0x10

    :goto_0
    new-instance v2, Landroid/bluetooth/BluetoothAudioConfig;

    const/4 v3, 0x2

    invoke-direct {v2, p2, v0, v3}, Landroid/bluetooth/BluetoothAudioConfig;-><init>(III)V

    iput-object v2, v1, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$StackEvent;->audioConfig:Landroid/bluetooth/BluetoothAudioConfig;

    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    iput-object v2, v1, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    const/16 v2, 0x65

    invoke-virtual {p0, v2, v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void

    :cond_0
    const/16 v0, 0xc

    goto :goto_0
.end method

.method private onAudioStateChanged(I[B)V
    .locals 3

    new-instance v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$StackEvent;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;ILcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$StackEvent;)V

    iput p1, v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$StackEvent;->valueInt:I

    invoke-direct {p0, p2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iput-object v1, v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    const/16 v1, 0x65

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method private onBigDataCallback(Ljava/lang/String;[B)V
    .locals 2

    new-instance v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigDataEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigDataEvent;-><init>(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Ljava/lang/String;[BLcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigDataEvent;)V

    const/16 v1, 0x66

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method private onConnectionStateChanged(I[B)V
    .locals 3

    new-instance v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$StackEvent;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;ILcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$StackEvent;)V

    iput p1, v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$StackEvent;->valueInt:I

    invoke-direct {p0, p2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iput-object v1, v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    const/16 v1, 0x65

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method private processAudioConfigEvent(Landroid/bluetooth/BluetoothAudioConfig;Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "processAudioConfigEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mAudioConfigs:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mAudioConfig:Landroid/bluetooth/BluetoothAudioConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    invoke-direct {p0, p2, p1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->broadcastAudioConfig(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothAudioConfig;)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private processCallState()V
    .locals 6

    const/4 v3, 0x2

    sget-boolean v1, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processCallState mAudioState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mAudioState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mCreateAudioPatch : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mCreateAudioPatch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->log(Ljava/lang/String;)V

    :cond_0
    iget v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mAudioState:I

    if-ne v1, v3, :cond_2

    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mCreateAudioPatch:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->isInCall()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mAudioState:I

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mCreateAudioPatch:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->isInCall()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private processVrState()V
    .locals 3

    sget-boolean v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "processVrState mAudioState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mAudioState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mCreateAudioPatch : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mCreateAudioPatch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " isVR : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->isVR:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->log(Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mAudioState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mCreateAudioPatch:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->isVR:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mAudioState:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mCreateAudioPatch:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->isVR:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private sendIntentSinkServiceOff()V
    .locals 8

    const/4 v7, 0x0

    const/4 v0, -0x1

    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v5, "bluetooth_a2dp_sink_mode"

    invoke-virtual {v1, v5, v7}, Lcom/android/bluetooth/btservice/AdapterService;->getA2dpPreference(Ljava/lang/String;I)I

    move-result v0

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SINK MODE OFF : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->log(Ljava/lang/String;)V

    const/4 v5, 0x2

    if-ne v0, v5, :cond_1

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "com.samsung.bluetooth.btservice.action.ACTION_ENABLE_A2DP_SINK_SERVICE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "EXTRA.ENABLE.SERVICE"

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "android.permission.BLUETOOTH"

    invoke-virtual {v5, v4, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const/16 v5, 0xf0

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/android/bluetooth/Utils;->getBtEnabledContainers()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-object v5, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/os/UserHandle;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v7, "android.permission.BLUETOOTH"

    invoke-virtual {v5, v4, v6, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private declared-synchronized setCPUMinLock(I)V
    .locals 4

    monitor-enter p0

    const/16 v1, 0xa

    if-ne p1, v1, :cond_5

    :try_start_0
    sget-boolean v1, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "setCPUMinLock acquire"

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->log(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAvPerformance()Lcom/android/bluetooth/btservice/AdapterService$AvPerformance;

    move-result-object v0

    sget-boolean v1, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->DBG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AVKminLockFreq : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService$AvPerformance;->getAvkMinLockFreq()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->log(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mSemAvkDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService$AvPerformance;->getAvkMinLockFreq()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.android.bluetooth.a2dpsink"

    const/16 v3, 0xc

    invoke-static {v1, v2, v3}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mSemAvkDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mSemAvkDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService$AvPerformance;->getAvkMinLockFreq()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    :cond_2
    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mSemAvkDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v1, :cond_4

    sget-boolean v1, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->DBG:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "mSemAvkDvfsCpuMin acquire"

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->log(Ljava/lang/String;)V

    :cond_3
    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mSemAvkDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v1}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_0
    monitor-exit p0

    return-void

    :cond_5
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mSemAvkDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v1, :cond_4

    sget-boolean v1, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->DBG:Z

    if-eqz v1, :cond_6

    const-string/jumbo v1, "mSemAvkDvfsCpuMin release"

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->log(Ljava/lang/String;)V

    :cond_6
    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mSemAvkDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v1}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mSemAvkDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private setHotPlugMode(I)V
    .locals 4

    sget-boolean v2, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->DBG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "AVK setHotPlugMode acquire"

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->log(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAvPerformance()Lcom/android/bluetooth/btservice/AdapterService$AvPerformance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService$AvPerformance;->getHotPlug()Z

    move-result v2

    if-eqz v2, :cond_3

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

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->log(Ljava/lang/String;)V

    const-string/jumbo v2, "default"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v1, "0"

    :cond_1
    const/16 v2, 0xa

    if-ne p1, v2, :cond_4

    const-string/jumbo v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "/sys/power/cluster0_core_hotplug_in"

    const-string/jumbo v3, "1"

    invoke-static {v2, v3}, Lcom/android/bluetooth/Utils;->writeSysfs(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "bluetooth.hotplug.state"

    const-string/jumbo v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    sget-boolean v2, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->DBG:Z

    if-eqz v2, :cond_3

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

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->log(Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    const/16 v2, 0xb

    if-ne p1, v2, :cond_2

    const-string/jumbo v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "/sys/power/cluster0_core_hotplug_in"

    const-string/jumbo v3, "0"

    invoke-static {v2, v3}, Lcom/android/bluetooth/Utils;->writeSysfs(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "bluetooth.hotplug.state"

    const-string/jumbo v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private declared-synchronized updateA2dpRouting()V
    .locals 17

    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mHeadsetPort:Landroid/media/AudioDevicePort;

    if-nez v5, :cond_0

    const-string/jumbo v15, "route to headphone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->logi(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mHeadphonePort:Landroid/media/AudioDevicePort;

    :cond_0
    if-nez v5, :cond_1

    const-string/jumbo v15, "route to speaker"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->logi(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mSpeakerPort:Landroid/media/AudioDevicePort;

    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mA2dpSinkPort:Landroid/media/AudioDevicePort;

    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mAudioConfig:Landroid/bluetooth/BluetoothAudioConfig;

    if-eqz v15, :cond_2

    if-eqz v5, :cond_2

    const/4 v7, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mAudioPatch:Landroid/media/AudioPatch;

    if-eqz v15, :cond_3

    const/4 v1, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mA2dpOutputPort:Landroid/media/AudioDevicePort;

    if-nez v15, :cond_5

    if-nez v5, :cond_4

    const/4 v14, 0x1

    :goto_2
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "updateA2dpRouting ready: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", active: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " routing stack: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mA2dpRoutingFromStack:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " routing app: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mA2dpRoutingFromApp:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " update : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->log(Ljava/lang/String;)V

    if-nez v7, :cond_6

    const-string/jumbo v15, "updateA2dpRouting: nothing to do"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    const/4 v14, 0x0

    goto :goto_2

    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mA2dpOutputPort:Landroid/media/AudioDevicePort;

    invoke-virtual {v15, v5}, Landroid/media/AudioDevicePort;->equals(Ljava/lang/Object;)Z

    move-result v14

    goto :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mCreateAudioPatch:Z

    if-nez v15, :cond_d

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mA2dpRoutingFromStack:Z

    if-eqz v15, :cond_d

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mA2dpRoutingFromApp:Z

    if-eqz v15, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mConnected:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_d

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mAudioConfig:Landroid/bluetooth/BluetoothAudioConfig;

    invoke-virtual {v15}, Landroid/bluetooth/BluetoothAudioConfig;->getSampleRate()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mAudioConfig:Landroid/bluetooth/BluetoothAudioConfig;

    invoke-virtual {v15}, Landroid/bluetooth/BluetoothAudioConfig;->getChannelConfig()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mAudioConfig:Landroid/bluetooth/BluetoothAudioConfig;

    invoke-virtual {v15}, Landroid/bluetooth/BluetoothAudioConfig;->getAudioFormat()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mA2dpSinkPort:Landroid/media/AudioDevicePort;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v15, v9, v3, v4, v0}, Landroid/media/AudioDevicePort;->buildConfig(IIILandroid/media/AudioGainConfig;)Landroid/media/AudioDevicePortConfig;

    move-result-object v12

    const/4 v15, 0x0

    invoke-virtual {v5, v9, v3, v4, v15}, Landroid/media/AudioDevicePort;->buildConfig(IIILandroid/media/AudioGainConfig;)Landroid/media/AudioDevicePortConfig;

    move-result-object v10

    const/4 v15, 0x1

    new-array v13, v15, [Landroid/media/AudioPortConfig;

    const/4 v15, 0x0

    aput-object v12, v13, v15

    const/4 v15, 0x1

    new-array v11, v15, [Landroid/media/AudioPortConfig;

    const/4 v15, 0x0

    aput-object v10, v11, v15

    const/4 v15, 0x1

    new-array v6, v15, [Landroid/media/AudioPatch;

    const/4 v15, 0x0

    const/16 v16, 0x0

    aput-object v15, v6, v16

    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/android/bluetooth/btservice/AdapterService;->isInCall()Z

    move-result v15

    if-nez v15, :cond_8

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->isVR:Z

    if-eqz v15, :cond_9

    :cond_8
    const-string/jumbo v15, "updateA2dpRouting: nothing to do(InCall)"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->loge(Ljava/lang/String;)V

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mA2dpRoutingFromStack:Z

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mA2dpRoutingFromApp:Z

    sget-object v15, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$SUSPEND_STATE;->SUSPENDED:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$SUSPEND_STATE;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mPreSuspendState:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$SUSPEND_STATE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_9
    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {v6, v13, v11}, Landroid/media/AudioManager;->createAudioPatch([Landroid/media/AudioPatch;[Landroid/media/AudioPortConfig;[Landroid/media/AudioPortConfig;)I

    move-result v8

    if-nez v8, :cond_b

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mCreateAudioPatch:Z

    const/4 v15, 0x0

    aget-object v15, v6, v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mAudioPatch:Landroid/media/AudioPatch;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mA2dpOutputPort:Landroid/media/AudioDevicePort;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mBigData:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;

    sget-object v16, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$AUDIO_PATCH_STATE;->CREATE_AUDIO_PATCH:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$AUDIO_PATCH_STATE;

    invoke-virtual/range {v15 .. v16}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->checkPlayingTime(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$AUDIO_PATCH_STATE;)V

    :goto_3
    sget-boolean v15, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->DBG:Z

    if-eqz v15, :cond_c

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "createAudioPatch returned "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " patch: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mAudioPatch:Landroid/media/AudioPatch;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_a
    :goto_4
    monitor-exit p0

    return-void

    :cond_b
    :try_start_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mBigData:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->setDisconnectedReason(I)V

    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->sendIntentSinkServiceOff()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v15

    monitor-exit p0

    throw v15

    :cond_c
    :try_start_4
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "createAudioPatch returned "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->log(Ljava/lang/String;)V

    goto :goto_4

    :cond_d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mAudioPatch:Landroid/media/AudioPatch;

    if-eqz v15, :cond_a

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mA2dpRoutingFromStack:Z

    if-eqz v15, :cond_e

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mA2dpRoutingFromApp:Z

    if-nez v15, :cond_a

    :cond_e
    const-string/jumbo v15, "release audio patch in"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mAudioPatch:Landroid/media/AudioPatch;

    invoke-static {v15}, Landroid/media/AudioManager;->releaseAudioPatch(Landroid/media/AudioPatch;)I

    const-string/jumbo v15, "release audio patch out"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->log(Ljava/lang/String;)V

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mCreateAudioPatch:Z

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mAudioPatch:Landroid/media/AudioPatch;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mBigData:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;

    sget-object v16, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$AUDIO_PATCH_STATE;->RELEASE_AUDIO_PATCH:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$AUDIO_PATCH_STATE;

    invoke-virtual/range {v15 .. v16}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->checkPlayingTime(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$AUDIO_PATCH_STATE;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4
.end method


# virtual methods
.method public SendPassThruPlay(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5

    const/16 v4, 0x44

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string/jumbo v1, "SendPassThruPlay + "

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->getAvrcpControllerService()Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1, v4, v2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->sendPassThroughCmd(Landroid/bluetooth/BluetoothDevice;II)V

    invoke-virtual {v0, p1, v4, v3}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->sendPassThroughCmd(Landroid/bluetooth/BluetoothDevice;II)V

    const-string/jumbo v1, " SendPassThruPlay command sent - "

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->log(Ljava/lang/String;)V

    return v3

    :cond_0
    const-string/jumbo v1, "passthru command not sent, connection unavailable"

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->log(Ljava/lang/String;)V

    return v2
.end method

.method public cleanup()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-direct {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->checkForConnectedDevices()V

    const-string/jumbo v0, "Unregistering audio port listener"

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mAudioPortUpdateListener:Landroid/media/AudioManager$OnAudioPortUpdateListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterAudioPortUpdateListener(Landroid/media/AudioManager$OnAudioPortUpdateListener;)V

    invoke-direct {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->cleanupNative()V

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mAudioConfigs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iput-boolean v3, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mA2dpSuspended:Z

    iput v3, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mA2dpSuspendedRefCnt:I

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
    .locals 0

    invoke-virtual {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->quitNow()V

    return-void
.end method

.method public dump(Ljava/lang/StringBuilder;)V
    .locals 8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v4, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mBigData:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;

    invoke-static {v4}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->-get0(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;)J

    move-result-wide v4

    sub-long v4, v0, v4

    const-wide/16 v6, 0x3e8

    div-long v2, v4, v6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mCurrentDevice: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->deviceInfo(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ServiceActive: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "StateMachine: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method

.method getAudioConfig(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothAudioConfig;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mAudioConfigs:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothAudioConfig;

    return-object v0
.end method

.method getConnectedDevices()Ljava/util/List;
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
    invoke-virtual {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mConnected:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mDisconnected:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;

    if-ne v1, v2, :cond_0

    return v3

    :cond_0
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mPending:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;

    if-ne v0, v1, :cond_4

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    monitor-exit p0

    return v4

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    monitor-exit p0

    return v1

    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    if-eqz v1, :cond_3

    monitor-exit p0

    return v4

    :cond_3
    monitor-exit p0

    return v3

    :cond_4
    :try_start_3
    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mConnected:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;

    if-ne v0, v1, :cond_6

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x2

    monitor-exit p0

    return v1

    :cond_5
    monitor-exit p0

    return v3

    :cond_6
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad currentState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->loge(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

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

    iget-object v7, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

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

    sget-object v7, Landroid/bluetooth/BluetoothUuid;->AudioSource:Landroid/os/ParcelUuid;

    invoke-static {v5, v7}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

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

.method getPendingDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mPending:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;

    :cond_0
    return-object v0
.end method

.method isPlaying(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mPlayingDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mPlayingDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method okToConnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :cond_0
    return v1
.end method

.method public declared-synchronized requestSuspendResume(IZ)Z
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mConnected:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;

    if-ne v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mA2dpSuspended:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mCreateAudioPatch:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mA2dpRoutingFromApp:Z

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->callStackSuspendCommand(Z)V

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mA2dpSuspended:Z

    iget v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mA2dpSuspendedRefCnt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mA2dpSuspendedRefCnt:I

    const/4 v0, 0x1

    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestSuspendResume profile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " bSuspendActive "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mA2dpSuspended "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mA2dpSuspended:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mA2dpSuspendedRefCnt "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mA2dpSuspendedRefCnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :cond_2
    :try_start_1
    iget-boolean v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mA2dpSuspended:Z

    if-eqz v1, :cond_1

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mConnected:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mA2dpSuspendedRefCnt:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mA2dpSuspendedRefCnt:I

    iget v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mA2dpSuspendedRefCnt:I

    if-nez v1, :cond_3

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mA2dpRoutingFromApp:Z

    invoke-direct {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->callStackStartCommand()V

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mA2dpSuspended:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setSuspendQuickConnect(Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSuspendQuickConnect : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->log(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mSuspendForQuickConnect:Z

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mSuspendForQuickConnect:Z

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
