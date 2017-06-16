.class final Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "HeadsetClientStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;,
        Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;,
        Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;,
        Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;,
        Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;
    }
.end annotation


# static fields
.field static final ACCEPT_CALL:I = 0xc

.field static final CONNECT:I = 0x1

.field static final CONNECT_AUDIO:I = 0x3

.field private static final DBG:Z = false

.field static final DIAL_MEMORY:I = 0xb

.field static final DIAL_NUMBER:I = 0xa

.field static final DISABLE_NREC:I = 0x14

.field static final DISCONNECT:I = 0x2

.field static final DISCONNECT_AUDIO:I = 0x4

.field static final ENTER_PRIVATE_MODE:I = 0x10

.field private static final EVENT_TYPE_AUDIO_STATE_CHANGED:I = 0x2

.field private static final EVENT_TYPE_BATTERY_LEVEL:I = 0x7

.field private static final EVENT_TYPE_CALL:I = 0x9

.field private static final EVENT_TYPE_CALLHELD:I = 0xb

.field private static final EVENT_TYPE_CALLSETUP:I = 0xa

.field private static final EVENT_TYPE_CALL_WAITING:I = 0xd

.field private static final EVENT_TYPE_CLIP:I = 0xc

.field private static final EVENT_TYPE_CMD_RESULT:I = 0x10

.field private static final EVENT_TYPE_CONNECTION_STATE_CHANGED:I = 0x1

.field private static final EVENT_TYPE_CURRENT_CALLS:I = 0xe

.field private static final EVENT_TYPE_IN_BAND_RING:I = 0x13

.field private static final EVENT_TYPE_LAST_VOICE_TAG_NUMBER:I = 0x14

.field private static final EVENT_TYPE_NETWORK_SIGNAL:I = 0x6

.field private static final EVENT_TYPE_NETWORK_STATE:I = 0x4

.field private static final EVENT_TYPE_NONE:I = 0x0

.field private static final EVENT_TYPE_OPERATOR_NAME:I = 0x8

.field private static final EVENT_TYPE_RESP_AND_HOLD:I = 0x12

.field private static final EVENT_TYPE_RING_INDICATION:I = 0x15

.field private static final EVENT_TYPE_ROAMING_STATE:I = 0x5

.field private static final EVENT_TYPE_SUBSCRIBER_INFO:I = 0x11

.field private static final EVENT_TYPE_VOLUME_CHANGED:I = 0xf

.field private static final EVENT_TYPE_VR_STATE_CHANGED:I = 0x3

.field static final EXPLICIT_CALL_TRANSFER:I = 0x12

.field static final HOLD_CALL:I = 0xe

.field static final LAST_VTAG_NUMBER:I = 0x13

.field static final MAX_HFP_SCO_VOICE_CALL_VOLUME:I = 0xf

.field static final MIN_HFP_SCO_VOICE_CALL_VOLUME:I = 0x1

.field static final NO_ACTION:I = 0x0

.field static final QUERY_CURRENT_CALLS:I = 0x32

.field static final QUERY_OPERATOR_NAME:I = 0x33

.field static final REDIAL:I = 0x9

.field static final REJECT_CALL:I = 0xd

.field static final SEND_DTMF:I = 0x11

.field static final SET_MIC_VOLUME:I = 0x7

.field static final SET_SPEAKER_VOLUME:I = 0x8

.field private static final STACK_EVENT:I = 0x64

.field static final SUBSCRIBER_INFO:I = 0x34

.field private static final TAG:Ljava/lang/String; = "HeadsetClientStateMachine"

.field static final TERMINATE_CALL:I = 0xf

.field static final TERMINATE_SPECIFIC_CALL:I = 0x35

.field static final VOICE_RECOGNITION_START:I = 0x5

.field static final VOICE_RECOGNITION_STOP:I = 0x6


# instance fields
.field private final EVENT_TYPE_NAMES:[Ljava/lang/String;

.field private final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mAudioOn:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;

.field private mAudioRouteAllowed:Z

.field private mAudioState:I

.field private mAudioWbs:Z

.field private mCalls:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/bluetooth/BluetoothHeadsetClientCall;",
            ">;"
        }
    .end annotation
.end field

.field private mCallsUpdate:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/bluetooth/BluetoothHeadsetClientCall;",
            ">;"
        }
    .end annotation
.end field

.field private mChldFeatures:I

.field private mClientServiceHelper:Lcom/android/bluetooth/hfpclient/HeadsetClientServiceHelper;

.field private final mConnected:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;

.field private final mConnecting:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;

.field private mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

.field private final mDisconnected:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;

.field mDualScoManager:Lcom/samsung/bt/hfp/DualScoManager;

.field private mInBandRingtone:I

.field private mIndicatorBatteryLevel:I

.field private mIndicatorCall:I

.field private mIndicatorCallHeld:I

.field private mIndicatorCallSetup:I

.field private mIndicatorNetworkSignal:I

.field private mIndicatorNetworkState:I

.field private mIndicatorNetworkType:I

.field private mMaxAmVcVol:I

.field private mMinAmVcVol:I

.field private mNativeAvailable:Z

.field private mOperatorName:Ljava/lang/String;

.field private mPeerFeatures:I

.field private mPendingAction:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mQueryCallsSupported:Z

.field private mQueuedActions:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

.field private mSubscriberInfo:Ljava/lang/String;

.field private mTelecomManager:Landroid/telecom/TelecomManager;

.field private mVgmFromStack:Z

.field private mVgsFromStack:Z

.field private mVoiceRecognitionActive:I


# direct methods
.method static synthetic -get0(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->EVENT_TYPE_NAMES:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mDisconnected:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mInBandRingtone:I

    return v0
.end method

.method static synthetic -get12(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorNetworkState:I

    return v0
.end method

.method static synthetic -get13(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mOperatorName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPeerFeatures:I

    return v0
.end method

.method static synthetic -get15(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/util/Pair;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPendingAction:Landroid/util/Pair;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Ljava/util/Queue;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mQueuedActions:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic -get17(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    return-object v0
.end method

.method static synthetic -get18(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mSubscriberInfo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get19(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mVgmFromStack:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioOn:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;

    return-object v0
.end method

.method static synthetic -get20(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mVgsFromStack:Z

    return v0
.end method

.method static synthetic -get21(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mVoiceRecognitionActive:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioRouteAllowed:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioState:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioWbs:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Ljava/util/Hashtable;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mConnected:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mConnecting:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioState:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioWbs:Z

    return p1
.end method

.method static synthetic -set10(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCallSetup:I

    return p1
.end method

.method static synthetic -set11(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorNetworkSignal:I

    return p1
.end method

.method static synthetic -set12(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorNetworkState:I

    return p1
.end method

.method static synthetic -set13(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorNetworkType:I

    return p1
.end method

.method static synthetic -set14(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mOperatorName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set15(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPeerFeatures:I

    return p1
.end method

.method static synthetic -set16(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/util/Pair;)Landroid/util/Pair;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPendingAction:Landroid/util/Pair;

    return-object p1
.end method

.method static synthetic -set17(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mQueryCallsSupported:Z

    return p1
.end method

.method static synthetic -set18(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Ljava/util/Queue;)Ljava/util/Queue;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mQueuedActions:Ljava/util/Queue;

    return-object p1
.end method

.method static synthetic -set19(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mSubscriberInfo:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Ljava/util/Hashtable;)Ljava/util/Hashtable;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    return-object p1
.end method

.method static synthetic -set20(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mVgmFromStack:Z

    return p1
.end method

.method static synthetic -set21(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mVgsFromStack:Z

    return p1
.end method

.method static synthetic -set22(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mVoiceRecognitionActive:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Ljava/util/Hashtable;)Ljava/util/Hashtable;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCallsUpdate:Ljava/util/Hashtable;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mChldFeatures:I

    return p1
.end method

.method static synthetic -set5(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic -set6(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mInBandRingtone:I

    return p1
.end method

.method static synthetic -set7(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorBatteryLevel:I

    return p1
.end method

.method static synthetic -set8(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCall:I

    return p1
.end method

.method static synthetic -set9(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCallHeld:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;[I)Landroid/bluetooth/BluetoothHeadsetClientCall;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHeadsetClientCall;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/os/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap10(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->requestLastVoiceTagNumberNative()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap11(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->retrieveSubscriberInfoNative()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap12(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;IIILjava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendATCmdNative(IIILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap13(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;B)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendDtmfNative(B)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap14(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;II)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->setVolumeNative(II)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap15(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->startVoiceRecognitionNative()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap16(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->stopVoiceRecognitionNative()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap17(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;)[B
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap18(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->amToHfVol(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap19(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->callsInState(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;[B)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->connectAudioNative([B)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap20(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->hfToAmVol(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap21(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->acceptCall(IZ)V

    return-void
.end method

.method static synthetic -wrap22(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addCallWaiting(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap23(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addQueuedAction(I)V

    return-void
.end method

.method static synthetic -wrap24(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addQueuedAction(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic -wrap25(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->broadcastAudioState(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method static synthetic -wrap26(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method static synthetic -wrap27(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->clearPendingAction()V

    return-void
.end method

.method static synthetic -wrap28(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/os/Message;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap29(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->enterPrivateMode(I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;[B)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->connectNative([B)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap30(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->explicitCallTransfer()V

    return-void
.end method

.method static synthetic -wrap31(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->holdCall()V

    return-void
.end method

.method static synthetic -wrap32(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->queryCallsDone()V

    return-void
.end method

.method static synthetic -wrap33(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;IILjava/lang/String;ZZ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->queryCallsUpdate(IILjava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic -wrap34(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->rejectCall()V

    return-void
.end method

.method static synthetic -wrap35(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic -wrap36(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothHeadsetClientCall;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->setCallState(Landroid/bluetooth/BluetoothHeadsetClientCall;I)V

    return-void
.end method

.method static synthetic -wrap37(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->terminateCall(I)V

    return-void
.end method

.method static synthetic -wrap38(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic -wrap39(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->updateCallHeldIndicator(I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->dialMemoryNative(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap40(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->updateCallIndicator(I)V

    return-void
.end method

.method static synthetic -wrap41(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->updateCallSetupIndicator(I)V

    return-void
.end method

.method static synthetic -wrap42(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->updateClip(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap43(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->updateRespAndHold(I)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->dialNative(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;[B)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->disconnectAudioNative([B)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap7(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;[B)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->disconnectNative([B)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap8(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->queryCallsStart()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap9(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->queryCurrentOperatorNameNative()Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->classInitNative()V

    return-void
.end method

.method private constructor <init>(Lcom/android/bluetooth/hfpclient/HeadsetClientService;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string/jumbo v0, "HeadsetClientStateMachine"

    invoke-direct {p0, v0}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mDualScoManager:Lcom/samsung/bt/hfp/DualScoManager;

    iput-object v4, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mClientServiceHelper:Lcom/android/bluetooth/hfpclient/HeadsetClientServiceHelper;

    iput-boolean v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mVgsFromStack:Z

    iput-boolean v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mVgmFromStack:Z

    iput-object v4, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "EVENT_TYPE_NONE"

    aput-object v1, v0, v3

    const-string/jumbo v1, "EVENT_TYPE_CONNECTION_STATE_CHANGED"

    aput-object v1, v0, v6

    const-string/jumbo v1, "EVENT_TYPE_AUDIO_STATE_CHANGED"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "EVENT_TYPE_VR_STATE_CHANGED"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "EVENT_TYPE_NETWORK_STATE"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "EVENT_TYPE_ROAMING_STATE"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "EVENT_TYPE_NETWORK_SIGNAL"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "EVENT_TYPE_BATTERY_LEVEL"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "EVENT_TYPE_OPERATOR_NAME"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "EVENT_TYPE_CALL"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "EVENT_TYPE_CALLSETUP"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "EVENT_TYPE_CALLHELD"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "EVENT_TYPE_CLIP"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "EVENT_TYPE_CALL_WAITING"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "EVENT_TYPE_CURRENT_CALLS"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "EVENT_TYPE_VOLUME_CHANGED"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string/jumbo v1, "EVENT_TYPE_CMD_RESULT"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string/jumbo v1, "EVENT_TYPE_SUBSCRIBER_INFO"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string/jumbo v1, "EVENT_TYPE_RESP_AND_HOLD"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string/jumbo v1, "EVENT_TYPE_IN_BAND_RING"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string/jumbo v1, "EVENT_TYPE_LAST_VOICE_TAG_NUMBER"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string/jumbo v1, "EVENT_TYPE_RING_INDICATION"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->EVENT_TYPE_NAMES:[Ljava/lang/String;

    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const-string/jumbo v0, "audio"

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioManager:Landroid/media/AudioManager;

    iput v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioState:I

    iput-boolean v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioWbs:Z

    new-instance v0, Lcom/android/bluetooth/hfpclient/HeadsetClientServiceHelper;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    invoke-direct {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientServiceHelper;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientService;)V

    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mClientServiceHelper:Lcom/android/bluetooth/hfpclient/HeadsetClientServiceHelper;

    invoke-static {}, Lcom/samsung/bt/hfp/DualScoManager;->getDefaultScoManager()Lcom/samsung/bt/hfp/DualScoManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mDualScoManager:Lcom/samsung/bt/hfp/DualScoManager;

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mDualScoManager:Lcom/samsung/bt/hfp/DualScoManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mDualScoManager:Lcom/samsung/bt/hfp/DualScoManager;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mClientServiceHelper:Lcom/android/bluetooth/hfpclient/HeadsetClientServiceHelper;

    invoke-virtual {v0, v1}, Lcom/samsung/bt/hfp/DualScoManager;->setClientServiceHelper(Lcom/android/bluetooth/hfpclient/HeadsetClientServiceHelper;)V

    :cond_0
    invoke-virtual {p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioRouteAllowed:Z

    const-string/jumbo v0, "telecom"

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mTelecomManager:Landroid/telecom/TelecomManager;

    iput v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorNetworkState:I

    iput v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorNetworkType:I

    iput v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorNetworkSignal:I

    iput v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorBatteryLevel:I

    iput v5, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCall:I

    iput v5, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCallSetup:I

    iput v5, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCallHeld:I

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mMaxAmVcVol:I

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamMinVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mMinAmVcVol:I

    iput-object v4, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mOperatorName:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mSubscriberInfo:Ljava/lang/String;

    iput v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mVoiceRecognitionActive:I

    iput v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mInBandRingtone:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mQueuedActions:Ljava/util/Queue;

    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->clearPendingAction()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    iput-object v4, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCallsUpdate:Ljava/util/Hashtable;

    iput-boolean v6, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mQueryCallsSupported:Z

    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->initializeNative()V

    iput-boolean v6, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mNativeAvailable:Z

    new-instance v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;

    invoke-direct {v0, p0, v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;)V

    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mDisconnected:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;

    new-instance v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;

    invoke-direct {v0, p0, v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;)V

    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mConnecting:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;

    new-instance v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;

    invoke-direct {v0, p0, v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;)V

    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mConnected:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;

    new-instance v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;

    invoke-direct {v0, p0, v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;)V

    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioOn:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mDisconnected:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addState(Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mConnecting:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addState(Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mConnected:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addState(Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioOn:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mConnected:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mDisconnected:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    return-void
.end method

.method private acceptCall(IZ)V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string/jumbo v2, "HeadsetClientStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "acceptCall: ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x4

    const/4 v3, 0x5

    filled-new-array {v2, v3}, [I

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHeadsetClientCall;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, 0x6

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHeadsetClientCall;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getState()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    return-void

    :pswitch_1
    if-eqz p1, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x7

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v2

    if-ne v2, v6, :cond_2

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mDualScoManager:Lcom/samsung/bt/hfp/DualScoManager;

    invoke-virtual {v2}, Lcom/samsung/bt/hfp/DualScoManager;->isLocalAgActive()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "HeadsetClientStateMachine"

    const-string/jumbo v3, "One SCO is already present, disconnect the current SCO and create new one with AG"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mDualScoManager:Lcom/samsung/bt/hfp/DualScoManager;

    invoke-virtual {v2}, Lcom/samsung/bt/hfp/DualScoManager;->switchAudioAgToClient()Z

    :cond_3
    invoke-direct {p0, v0, v5}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->handleCallActionNative(II)Z

    move-result v2

    if-eqz v2, :cond_d

    const/16 v2, 0xc

    invoke-direct {p0, v2, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addQueuedAction(II)V

    :goto_1
    return-void

    :pswitch_2
    invoke-direct {p0, v5}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->callsInState(I)I

    move-result v2

    if-nez v2, :cond_6

    if-eqz p1, :cond_4

    return-void

    :cond_4
    if-eqz p2, :cond_5

    const/4 v0, 0x7

    goto :goto_0

    :cond_5
    const/4 v0, 0x2

    goto :goto_0

    :cond_6
    if-ne p1, v6, :cond_7

    const/4 v0, 0x2

    goto :goto_0

    :cond_7
    if-ne p1, v7, :cond_8

    const/4 v0, 0x1

    goto :goto_0

    :cond_8
    return-void

    :pswitch_3
    if-ne p1, v6, :cond_9

    const/4 v0, 0x2

    goto :goto_0

    :cond_9
    if-ne p1, v7, :cond_a

    const/4 v0, 0x1

    goto :goto_0

    :cond_a
    new-array v2, v6, [I

    aput v5, v2, v5

    invoke-direct {p0, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHeadsetClientCall;

    move-result-object v2

    if-eqz v2, :cond_b

    const/4 v0, 0x3

    goto :goto_0

    :cond_b
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_4
    if-eqz p1, :cond_c

    return-void

    :cond_c
    const/16 v0, 0xa

    goto :goto_0

    :cond_d
    const-string/jumbo v2, "HeadsetClientStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ERROR: Couldn\'t accept a call, action:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private addCall(ILjava/lang/String;)V
    .locals 8

    const-string/jumbo v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "addToCalls state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " number:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    const/4 v6, 0x1

    :goto_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    :goto_1
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v1, v7}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_1

    :cond_0
    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/bluetooth/BluetoothHeadsetClientCall;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v5, 0x0

    move v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Landroid/bluetooth/BluetoothHeadsetClientCall;-><init>(Landroid/bluetooth/BluetoothDevice;IILjava/lang/String;ZZ)V

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v1, v7, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendCallChangedIntent(Landroid/bluetooth/BluetoothHeadsetClientCall;)V

    return-void
.end method

.method private addCallWaiting(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x5

    const-string/jumbo v0, "HeadsetClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addCallWaiting number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v3, v0, v1

    invoke-direct {p0, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHeadsetClientCall;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0, v3, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addCall(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private addQueuedAction(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addQueuedAction(II)V

    return-void
.end method

.method private addQueuedAction(II)V
    .locals 4

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mQueuedActions:Ljava/util/Queue;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addQueuedAction(ILjava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mQueuedActions:Ljava/util/Queue;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private amToHfVol(I)I
    .locals 6

    iget v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mMaxAmVcVol:I

    iget v4, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mMinAmVcVol:I

    sub-int v0, v3, v4

    iget v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mMinAmVcVol:I

    sub-int v3, p1, v3

    mul-int/lit8 v3, v3, 0xe

    div-int v1, v3, v0

    add-int/lit8 v2, v1, 0x1

    const-string/jumbo v3, "HeadsetClientStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "AM -> HF "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private broadcastAudioState(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 6

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.bluetooth.headsetclient.profile.action.AUDIO_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v3, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v3, 0x2

    if-ne p2, v3, :cond_0

    const-string/jumbo v3, "android.bluetooth.headsetclient.extra.AUDIO_WBS"

    iget-boolean v4, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioWbs:Z

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mDualScoManager:Lcom/samsung/bt/hfp/DualScoManager;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, p2, p3, v4}, Lcom/samsung/bt/hfp/DualScoManager;->notifyAudioStateChanged(Landroid/bluetooth/BluetoothDevice;IIZ)V

    const-string/jumbo v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    const-string/jumbo v4, "android.permission.BLUETOOTH"

    invoke-virtual {v3, v2, v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

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

    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    new-instance v4, Landroid/os/UserHandle;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v5, "android.permission.BLUETOOTH"

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "HeadsetClientStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Audio state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 10

    const/16 v9, 0x20

    const/16 v8, 0x10

    const/4 v7, 0x2

    const/4 v6, 0x1

    const-string/jumbo v3, "HeadsetClientStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Connection state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mDualScoManager:Lcom/samsung/bt/hfp/DualScoManager;

    invoke-virtual {v3, p1, p2, p3, v6}, Lcom/samsung/bt/hfp/DualScoManager;->notifyConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;IIZ)V

    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    invoke-virtual {v3, p1, v8, p2, p3}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->notifyProfileConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;III)V

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.bluetooth.headsetclient.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v3, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    if-ne p2, v7, :cond_9

    iget v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPeerFeatures:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v6, :cond_0

    const-string/jumbo v3, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_3WAY_CALLING"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    iget v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPeerFeatures:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    const-string/jumbo v3, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_VOICE_RECOGNITION"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1
    iget v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPeerFeatures:I

    and-int/lit8 v3, v3, 0x10

    if-ne v3, v8, :cond_2

    const-string/jumbo v3, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_ATTACH_NUMBER_TO_VT"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_2
    iget v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPeerFeatures:I

    and-int/lit8 v3, v3, 0x20

    if-ne v3, v9, :cond_3

    const-string/jumbo v3, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_REJECT_CALL"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_3
    iget v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPeerFeatures:I

    and-int/lit16 v3, v3, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_4

    const-string/jumbo v3, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_ECC"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_4
    iget v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mChldFeatures:I

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_5

    const-string/jumbo v3, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_ACCEPT_HELD_OR_WAITING_CALL"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_5
    iget v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mChldFeatures:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v6, :cond_6

    const-string/jumbo v3, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_RELEASE_HELD_OR_WAITING_CALL"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_6
    iget v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mChldFeatures:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v7, :cond_7

    const-string/jumbo v3, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_RELEASE_AND_ACCEPT"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_7
    iget v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mChldFeatures:I

    and-int/lit8 v3, v3, 0x20

    if-ne v3, v9, :cond_8

    const-string/jumbo v3, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_MERGE"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_8
    iget v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mChldFeatures:I

    and-int/lit8 v3, v3, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_9

    const-string/jumbo v3, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_MERGE_AND_DETACH"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_9
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    const-string/jumbo v4, "android.permission.BLUETOOTH"

    invoke-virtual {v3, v2, v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const/16 v3, 0xf0

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-static {}, Lcom/android/bluetooth/Utils;->getBtEnabledContainers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    new-instance v4, Landroid/os/UserHandle;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v5, "android.permission.BLUETOOTH"

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_0

    :cond_a
    return-void
.end method

.method private callsInState(I)I
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothHeadsetClientCall;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getState()I

    move-result v3

    if-ne v3, p1, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private changeCallsState(II)V
    .locals 5

    const-string/jumbo v2, "HeadsetClientStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "changeStateFromCalls old:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " new: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothHeadsetClientCall;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getState()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-direct {p0, v0, p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->setCallState(Landroid/bluetooth/BluetoothHeadsetClientCall;I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNative()V
.end method

.method private clearPendingAction()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPendingAction:Landroid/util/Pair;

    return-void
.end method

.method private native connectAudioNative([B)Z
.end method

.method private native connectNative([B)Z
.end method

.method private native dialMemoryNative(I)Z
.end method

.method private native dialNative(Ljava/lang/String;)Z
.end method

.method private native disconnectAudioNative([B)Z
.end method

.method private native disconnectNative([B)Z
.end method

.method private enterPrivateMode(I)V
    .locals 4

    const-string/jumbo v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "enterPrivateMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothHeadsetClientCall;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getState()I

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadsetClientCall;->isMultiParty()Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    const/4 v1, 0x6

    invoke-direct {p0, v1, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->handleCallActionNative(II)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x10

    invoke-direct {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addQueuedAction(ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_3
    const-string/jumbo v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ERROR: Couldn\'t enter private  id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private explicitCallTransfer()V
    .locals 2

    const-string/jumbo v0, "HeadsetClientStateMachine"

    const-string/jumbo v1, "explicitCallTransfer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x4

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->handleCallActionNative(II)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addQueuedAction(I)V

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "HeadsetClientStateMachine"

    const-string/jumbo v1, "ERROR: Couldn\'t transfer call"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B
    .locals 1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private varargs getCall([I)Landroid/bluetooth/BluetoothHeadsetClientCall;
    .locals 6

    const-string/jumbo v3, "HeadsetClientStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getFromCallsWithStates states:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothHeadsetClientCall;

    const/4 v3, 0x0

    array-length v4, p1

    :goto_0
    if-ge v3, v4, :cond_0

    aget v2, p1, v3

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getState()I

    move-result v5

    if-ne v5, v2, :cond_1

    return-object v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    return-object v3
.end method

.method private getCurrentDeviceName()Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "<unknown>"

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    return-object v1
.end method

.method private getDevice([B)Landroid/bluetooth/BluetoothDevice;
    .locals 2

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method private native handleCallActionNative(II)Z
.end method

.method private hfToAmVol(I)I
    .locals 6

    iget v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mMaxAmVcVol:I

    iget v4, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mMinAmVcVol:I

    sub-int v1, v3, v4

    add-int/lit8 v3, p1, -0x1

    mul-int/2addr v3, v1

    div-int/lit8 v0, v3, 0xe

    iget v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mMinAmVcVol:I

    add-int v2, v3, v0

    const-string/jumbo v3, "HeadsetClientStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "HF -> AM "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private holdCall()V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string/jumbo v2, "HeadsetClientStateMachine"

    const-string/jumbo v3, "holdCall"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v2, v4, [I

    const/4 v3, 0x4

    aput v3, v2, v5

    invoke-direct {p0, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHeadsetClientCall;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v0, 0x9

    :goto_0
    const-string/jumbo v2, "HeadsetClientStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Post action to native for Hold Call, action :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0, v5}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->handleCallActionNative(II)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0xe

    invoke-direct {p0, v2, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addQueuedAction(II)V

    :goto_1
    return-void

    :cond_0
    new-array v2, v4, [I

    aput v5, v2, v5

    invoke-direct {p0, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHeadsetClientCall;

    move-result-object v1

    if-nez v1, :cond_1

    const-string/jumbo v2, "HeadsetClientStateMachine"

    const-string/jumbo v3, "CAll is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "HeadsetClientStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ERROR: Couldn\'t hold a call, action:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private native initializeNative()V
.end method

.method private loopQueryCalls()Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->callsInState(I)I

    move-result v1

    if-lez v1, :cond_0

    return v4

    :cond_0
    new-array v1, v4, [I

    const/4 v2, 0x4

    aput v2, v1, v3

    invoke-direct {p0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHeadsetClientCall;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCallSetup:I

    if-nez v1, :cond_1

    return v4

    :cond_1
    return v3
.end method

.method static make(Lcom/android/bluetooth/hfpclient/HeadsetClientService;)Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
    .locals 3

    const-string/jumbo v1, "HeadsetClientStateMachine"

    const-string/jumbo v2, "make"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientService;)V

    invoke-virtual {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->start()V

    return-object v0
.end method

.method private onAudioStateChanged(I[B)V
    .locals 4

    new-instance v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;ILcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;)V

    iput p1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    invoke-direct {p0, p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iput-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    const-string/jumbo v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "incoming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method private onBatteryLevel(I)V
    .locals 4

    new-instance v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;ILcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;)V

    iput p1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    const-string/jumbo v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "incoming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method private onCall(I)V
    .locals 4

    new-instance v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;ILcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;)V

    iput p1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    const-string/jumbo v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "incoming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method private onCallHeld(I)V
    .locals 4

    new-instance v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;ILcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;)V

    iput p1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    const-string/jumbo v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "incoming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method private onCallSetup(I)V
    .locals 4

    new-instance v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;ILcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;)V

    iput p1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    const-string/jumbo v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "incoming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method private onCallWaiting(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;ILcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;)V

    iput-object p1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueString:Ljava/lang/String;

    const-string/jumbo v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "incoming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method private onClip(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;ILcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;)V

    iput-object p1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueString:Ljava/lang/String;

    const-string/jumbo v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "incoming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method private onCmdResult(II)V
    .locals 4

    new-instance v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;ILcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;)V

    iput p1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    iput p2, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt2:I

    const-string/jumbo v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "incoming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method private onConnectionStateChanged(III[B)V
    .locals 4

    new-instance v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;ILcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;)V

    iput p1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    iput p2, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt2:I

    iput p3, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt3:I

    invoke-direct {p0, p4}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iput-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    const-string/jumbo v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "incoming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method private onCurrentCalls(IIIILjava/lang/String;)V
    .locals 4

    new-instance v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;ILcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;)V

    iput p1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    iput p2, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt2:I

    iput p3, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt3:I

    iput p4, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt4:I

    iput-object p5, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueString:Ljava/lang/String;

    const-string/jumbo v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "incoming "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method private onCurrentOperator(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;ILcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;)V

    iput-object p1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueString:Ljava/lang/String;

    const-string/jumbo v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "incoming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method private onInBandRing(I)V
    .locals 4

    new-instance v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;

    const/16 v1, 0x13

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;ILcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;)V

    iput p1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    const-string/jumbo v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "incoming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method private onLastVoiceTagNumber(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;

    const/16 v1, 0x14

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;ILcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;)V

    iput-object p1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueString:Ljava/lang/String;

    const-string/jumbo v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "incoming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method private onNetworkRoaming(I)V
    .locals 4

    new-instance v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;ILcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;)V

    iput p1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    const-string/jumbo v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "incoming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method private onNetworkSignal(I)V
    .locals 4

    new-instance v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;ILcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;)V

    iput p1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    const-string/jumbo v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "incoming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method private onNetworkState(I)V
    .locals 4

    new-instance v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;ILcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;)V

    iput p1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    const-string/jumbo v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "incoming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method private onRespAndHold(I)V
    .locals 4

    new-instance v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;

    const/16 v1, 0x12

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;ILcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;)V

    iput p1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    const-string/jumbo v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "incoming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method private onRingIndication()V
    .locals 4

    new-instance v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;

    const/16 v1, 0x15

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;ILcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;)V

    const-string/jumbo v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "incoming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method private onSubscriberInfo(Ljava/lang/String;I)V
    .locals 4

    new-instance v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;

    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;ILcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;)V

    iput p2, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    iput-object p1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueString:Ljava/lang/String;

    const-string/jumbo v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "incoming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method private onVolumeChange(II)V
    .locals 4

    new-instance v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;

    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;ILcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;)V

    iput p1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    iput p2, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt2:I

    const-string/jumbo v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "incoming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method private onVrStateChanged(I)V
    .locals 4

    new-instance v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;ILcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;)V

    iput p1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    const-string/jumbo v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "incoming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method private queryCallsDone()V
    .locals 6

    const-string/jumbo v3, "HeadsetClientStateMachine"

    const-string/jumbo v4, "queryCallsDone"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCallsUpdate:Ljava/util/Hashtable;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v4, "HeadsetClientStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateCallsDone call removed id:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothHeadsetClientCall;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getId()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothHeadsetClientCall;

    const/4 v3, 0x7

    invoke-direct {p0, v0, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->setCallState(Landroid/bluetooth/BluetoothHeadsetClientCall;I)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCallsUpdate:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothHeadsetClientCall;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getNumber()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothHeadsetClientCall;

    iget-object v4, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothHeadsetClientCall;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothHeadsetClientCall;->setNumber(Ljava/lang/String;)V

    :cond_3
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothHeadsetClientCall;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothHeadsetClientCall;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v4, "HeadsetClientStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateCallsDone call changed id:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothHeadsetClientCall;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getId()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothHeadsetClientCall;

    invoke-direct {p0, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendCallChangedIntent(Landroid/bluetooth/BluetoothHeadsetClientCall;)V

    goto/16 :goto_1

    :cond_4
    const-string/jumbo v4, "HeadsetClientStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateCallsDone new call id:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothHeadsetClientCall;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getId()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothHeadsetClientCall;

    invoke-direct {p0, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendCallChangedIntent(Landroid/bluetooth/BluetoothHeadsetClientCall;)V

    goto/16 :goto_1

    :cond_5
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCallsUpdate:Ljava/util/Hashtable;

    iput-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCallsUpdate:Ljava/util/Hashtable;

    return-void
.end method

.method private queryCallsStart()Z
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "HeadsetClientStateMachine"

    const-string/jumbo v1, "queryCallsStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mQueryCallsSupported:Z

    if-nez v0, :cond_0

    return v2

    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->clearPendingAction()V

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCallsUpdate:Ljava/util/Hashtable;

    if-eqz v0, :cond_1

    return v3

    :cond_1
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->queryCurrentCallsNative()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCallsUpdate:Ljava/util/Hashtable;

    const/16 v0, 0x32

    invoke-direct {p0, v0, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addQueuedAction(II)V

    return v3

    :cond_2
    const-string/jumbo v0, "HeadsetClientStateMachine"

    const-string/jumbo v1, "updateCallsStart queryCurrentCallsNative failed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mQueryCallsSupported:Z

    iput-object v4, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCallsUpdate:Ljava/util/Hashtable;

    return v2
.end method

.method private queryCallsUpdate(IILjava/lang/String;ZZ)V
    .locals 9

    const-string/jumbo v0, "HeadsetClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "queryCallsUpdate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCallsUpdate:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v7, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCallsUpdate:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Landroid/bluetooth/BluetoothHeadsetClientCall;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/bluetooth/BluetoothHeadsetClientCall;-><init>(Landroid/bluetooth/BluetoothDevice;IILjava/lang/String;ZZ)V

    invoke-virtual {v7, v8, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private native queryCurrentCallsNative()Z
.end method

.method private native queryCurrentOperatorNameNative()Z
.end method

.method private rejectCall()V
    .locals 6

    const-string/jumbo v2, "HeadsetClientStateMachine"

    const-string/jumbo v3, "rejectCall"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x4

    const/4 v3, 0x5

    const/4 v4, 0x6

    const/4 v5, 0x1

    filled-new-array {v2, v3, v4, v5}, [I

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHeadsetClientCall;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getState()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    return-void

    :pswitch_1
    const/16 v0, 0x8

    :goto_0
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->handleCallActionNative(II)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xd

    invoke-direct {p0, v2, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addQueuedAction(II)V

    :goto_1
    return-void

    :pswitch_2
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_3
    const/16 v0, 0xb

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "HeadsetClientStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ERROR: Couldn\'t reject a call, action:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private varargs removeCalls([I)V
    .locals 6

    const-string/jumbo v3, "HeadsetClientStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeFromCalls states:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothHeadsetClientCall;

    const/4 v3, 0x0

    array-length v4, p1

    :goto_1
    if-ge v3, v4, :cond_0

    aget v2, p1, v3

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getState()I

    move-result v5

    if-ne v5, v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    const/4 v3, 0x7

    invoke-direct {p0, v0, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->setCallState(Landroid/bluetooth/BluetoothHeadsetClientCall;I)V

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private native requestLastVoiceTagNumberNative()Z
.end method

.method private native retrieveSubscriberInfoNative()Z
.end method

.method private native sendATCmdNative(IIILjava/lang/String;)Z
.end method

.method private native sendBiaValueNative(I)Z
.end method

.method private sendCallChangedIntent(Landroid/bluetooth/BluetoothHeadsetClientCall;)V
    .locals 6

    const-string/jumbo v3, "HeadsetClientStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendCallChangedIntent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.bluetooth.headsetclient.profile.action.AG_CALL_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v3, "android.bluetooth.headsetclient.extra.CALL"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    const-string/jumbo v4, "android.permission.BLUETOOTH"

    invoke-virtual {v3, v2, v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

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

    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    new-instance v4, Landroid/os/UserHandle;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v5, "android.permission.BLUETOOTH"

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private native sendDtmfNative(B)Z
.end method

.method private setCallState(Landroid/bluetooth/BluetoothHeadsetClientCall;I)V
    .locals 1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getState()I

    move-result v0

    if-ne p2, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothHeadsetClientCall;->setState(I)V

    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendCallChangedIntent(Landroid/bluetooth/BluetoothHeadsetClientCall;)V

    return-void
.end method

.method private native setVolumeNative(II)Z
.end method

.method private native startVoiceRecognitionNative()Z
.end method

.method private native stopVoiceRecognitionNative()Z
.end method

.method private terminateCall(I)V
    .locals 7

    const/16 v6, 0xf

    const/4 v5, 0x0

    const-string/jumbo v2, "HeadsetClientStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "terminateCall: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_4

    const/16 v0, 0x8

    const/4 v2, 0x2

    const/4 v3, 0x3

    filled-new-array {v2, v3}, [I

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHeadsetClientCall;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0, v5}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->handleCallActionNative(II)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, v6, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addQueuedAction(II)V

    :cond_0
    :goto_0
    invoke-direct {p0, v5}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->callsInState(I)I

    move-result v2

    if-lez v2, :cond_1

    invoke-direct {p0, v0, v5}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->handleCallActionNative(II)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, v6, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addQueuedAction(II)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string/jumbo v2, "HeadsetClientStateMachine"

    const-string/jumbo v3, "ERROR: Couldn\'t terminate outgoing call"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "HeadsetClientStateMachine"

    const-string/jumbo v3, "ERROR: Couldn\'t terminate active calls"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothHeadsetClientCall;

    if-nez v1, :cond_5

    return-void

    :cond_5
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getState()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    return-void

    :pswitch_1
    const/4 v0, 0x5

    :goto_2
    invoke-direct {p0, v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->handleCallActionNative(II)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x5

    if-ne v0, v2, :cond_6

    const/16 v2, 0x35

    invoke-direct {p0, v2, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addQueuedAction(ILjava/lang/Object;)V

    goto :goto_1

    :pswitch_2
    const/16 v0, 0x8

    goto :goto_2

    :cond_6
    invoke-direct {p0, v6, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addQueuedAction(II)V

    goto :goto_1

    :cond_7
    const-string/jumbo v2, "HeadsetClientStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ERROR: Couldn\'t terminate a call, action:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private updateCallHeldIndicator(I)V
    .locals 11

    const/4 v10, 0x5

    const/4 v9, 0x2

    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string/jumbo v3, "HeadsetClientStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateCallHeld "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v8, v8, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->waitForIndicators(III)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->updateCallsMultiParty()V

    iput p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCallHeld:I

    return-void

    :pswitch_0
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPendingAction:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    const-string/jumbo v3, "HeadsetClientStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unexpected callheld=0 while in action "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPendingAction:Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_0
    new-array v3, v7, [I

    aput v7, v3, v6

    invoke-direct {p0, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->removeCalls([I)V

    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->clearPendingAction()V

    goto :goto_0

    :sswitch_1
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPendingAction:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    :pswitch_1
    goto :goto_0

    :pswitch_2
    new-array v3, v7, [I

    aput v6, v3, v6

    invoke-direct {p0, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->removeCalls([I)V

    invoke-direct {p0, v7, v6}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->changeCallsState(II)V

    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->clearPendingAction()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, v7, v6}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->changeCallsState(II)V

    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->clearPendingAction()V

    goto :goto_0

    :sswitch_2
    iget v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCall:I

    if-ne v3, v7, :cond_2

    iget v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCallHeld:I

    if-ne v3, v9, :cond_2

    invoke-direct {p0, v7, v6}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->changeCallsState(II)V

    goto :goto_0

    :cond_2
    new-array v3, v7, [I

    aput v7, v3, v6

    invoke-direct {p0, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->removeCalls([I)V

    goto :goto_0

    :pswitch_4
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPendingAction:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sparse-switch v3, :sswitch_data_1

    const-string/jumbo v3, "HeadsetClientStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unexpected callheld=0 while in action "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPendingAction:Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_3
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPendingAction:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v9, :cond_1

    new-array v3, v7, [I

    aput v10, v3, v6

    invoke-direct {p0, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHeadsetClientCall;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-direct {p0, v6, v7}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->changeCallsState(II)V

    invoke-direct {p0, v0, v6}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->setCallState(Landroid/bluetooth/BluetoothHeadsetClientCall;I)V

    :cond_3
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->clearPendingAction()V

    goto/16 :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothHeadsetClientCall;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getState()I

    move-result v3

    if-nez v3, :cond_6

    invoke-direct {p0, v1, v7}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->setCallState(Landroid/bluetooth/BluetoothHeadsetClientCall;I)V

    goto :goto_1

    :cond_6
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getState()I

    move-result v3

    if-ne v3, v7, :cond_5

    invoke-direct {p0, v1, v6}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->setCallState(Landroid/bluetooth/BluetoothHeadsetClientCall;I)V

    goto :goto_1

    :sswitch_4
    new-array v3, v7, [I

    aput v10, v3, v6

    invoke-direct {p0, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHeadsetClientCall;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-direct {p0, v6, v7}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->changeCallsState(II)V

    invoke-direct {p0, v0, v6}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->setCallState(Landroid/bluetooth/BluetoothHeadsetClientCall;I)V

    goto/16 :goto_0

    :cond_7
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothHeadsetClientCall;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getState()I

    move-result v3

    if-nez v3, :cond_9

    invoke-direct {p0, v1, v7}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->setCallState(Landroid/bluetooth/BluetoothHeadsetClientCall;I)V

    goto :goto_2

    :cond_9
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getState()I

    move-result v3

    if-ne v3, v7, :cond_8

    invoke-direct {p0, v1, v6}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->setCallState(Landroid/bluetooth/BluetoothHeadsetClientCall;I)V

    goto :goto_2

    :sswitch_5
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothHeadsetClientCall;

    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPendingAction:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/bluetooth/BluetoothHeadsetClientCall;

    if-eq v1, v3, :cond_a

    invoke-direct {p0, v1, v7}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->setCallState(Landroid/bluetooth/BluetoothHeadsetClientCall;I)V

    goto :goto_3

    :cond_b
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->clearPendingAction()V

    goto/16 :goto_0

    :pswitch_5
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPendingAction:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sparse-switch v3, :sswitch_data_2

    const-string/jumbo v3, "HeadsetClientStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unexpected callheld=0 while in action "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPendingAction:Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_6
    invoke-direct {p0, v6, v7}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->changeCallsState(II)V

    goto/16 :goto_0

    :sswitch_7
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPendingAction:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_2

    :pswitch_6
    goto/16 :goto_0

    :pswitch_7
    new-array v3, v7, [I

    aput v6, v3, v6

    invoke-direct {p0, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->removeCalls([I)V

    invoke-direct {p0, v7, v6}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->changeCallsState(II)V

    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->clearPendingAction()V

    goto/16 :goto_0

    :pswitch_8
    invoke-direct {p0, v7, v6}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->changeCallsState(II)V

    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->clearPendingAction()V

    goto/16 :goto_0

    :sswitch_8
    new-array v3, v7, [I

    aput v6, v3, v6

    invoke-direct {p0, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->removeCalls([I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0xc -> :sswitch_1
        0xd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_4
        0xc -> :sswitch_3
        0x10 -> :sswitch_5
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x0 -> :sswitch_8
        0x9 -> :sswitch_6
        0xa -> :sswitch_6
        0xb -> :sswitch_6
        0xd -> :sswitch_7
        0xf -> :sswitch_8
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method

.method private updateCallIndicator(I)V
    .locals 7

    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string/jumbo v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCallIndicator "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, v6, v6}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->waitForIndicators(III)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_1
    :goto_0
    iput p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCall:I

    return-void

    :pswitch_0
    const/4 v1, 0x6

    filled-new-array {v4, v5, v1}, [I

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->removeCalls([I)V

    goto :goto_0

    :pswitch_1
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCall:I

    if-ne v1, v5, :cond_2

    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCallSetup:I

    if-eqz v1, :cond_1

    new-array v1, v5, [I

    const/4 v2, 0x5

    aput v2, v1, v4

    invoke-direct {p0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHeadsetClientCall;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x7

    invoke-direct {p0, v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->setCallState(Landroid/bluetooth/BluetoothHeadsetClientCall;I)V

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCallSetup:I

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x4

    filled-new-array {v1, v2, v3}, [I

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHeadsetClientCall;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-direct {p0, v0, v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->setCallState(Landroid/bluetooth/BluetoothHeadsetClientCall;I)V

    :cond_3
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->updateCallsMultiParty()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateCallSetupIndicator(I)V
    .locals 9

    const/4 v8, 0x5

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string/jumbo v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCallSetupIndicator "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPendingAction:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-direct {p0, v1, p1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->waitForIndicators(III)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->updateCallsMultiParty()V

    iput p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCallSetup:I

    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPendingAction:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    :pswitch_1
    const-string/jumbo v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unexpected callsetup=0 while in action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPendingAction:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPendingAction:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_2

    :pswitch_3
    const-string/jumbo v1, "HeadsetClientStateMachine"

    const-string/jumbo v2, "Unexpected callsetup=0 while in action ACCEPT_CALL"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_4
    filled-new-array {v6, v7}, [I

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->removeCalls([I)V

    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->clearPendingAction()V

    goto :goto_0

    :pswitch_5
    new-array v1, v5, [I

    aput v4, v1, v4

    invoke-direct {p0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->removeCalls([I)V

    invoke-direct {p0, v8, v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->changeCallsState(II)V

    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->clearPendingAction()V

    goto :goto_0

    :pswitch_6
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCallHeld:I

    if-ne v1, v5, :cond_1

    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->clearPendingAction()V

    goto :goto_0

    :pswitch_7
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCallHeld:I

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->clearPendingAction()V

    goto :goto_0

    :pswitch_8
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPendingAction:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    const-string/jumbo v1, "HeadsetClientStateMachine"

    const-string/jumbo v2, "Unexpected callsetup=0 while in action REJECT_CALL"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_0
    new-array v1, v5, [I

    const/4 v2, 0x4

    aput v2, v1, v4

    invoke-direct {p0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->removeCalls([I)V

    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->clearPendingAction()V

    goto/16 :goto_0

    :sswitch_1
    new-array v1, v5, [I

    aput v8, v1, v4

    invoke-direct {p0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->removeCalls([I)V

    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->clearPendingAction()V

    goto/16 :goto_0

    :pswitch_9
    const/4 v1, 0x4

    filled-new-array {v1, v6, v8, v7}, [I

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->removeCalls([I)V

    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->clearPendingAction()V

    goto/16 :goto_0

    :pswitch_a
    new-array v1, v5, [I

    aput v6, v1, v4

    invoke-direct {p0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHeadsetClientCall;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPendingAction:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPendingAction:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v7, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addCall(ILjava/lang/String;)V

    :goto_1
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPendingAction:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_3

    goto/16 :goto_0

    :pswitch_b
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->clearPendingAction()V

    goto/16 :goto_0

    :cond_2
    const-string/jumbo v1, ""

    invoke-direct {p0, v7, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addCall(ILjava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, v0, v7}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->setCallState(Landroid/bluetooth/BluetoothHeadsetClientCall;I)V

    goto :goto_1

    :pswitch_c
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPendingAction:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPendingAction:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v6, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addCall(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v1, ""

    invoke-direct {p0, v6, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addCall(ILjava/lang/String;)V

    goto/16 :goto_0

    :pswitch_d
    new-array v1, v5, [I

    aput v8, v1, v4

    invoke-direct {p0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHeadsetClientCall;

    move-result-object v1

    if-nez v1, :cond_1

    const-string/jumbo v1, ""

    const/4 v2, 0x4

    invoke-direct {p0, v2, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addCall(ILjava/lang/String;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_2
        :pswitch_8
        :pswitch_1
        :pswitch_9
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x9
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method private updateCallsMultiParty()V
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->callsInState(I)I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    const/4 v2, 0x1

    :goto_0
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothHeadsetClientCall;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getState()I

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadsetClientCall;->isMultiParty()Z

    move-result v3

    if-eq v3, v2, :cond_0

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothHeadsetClientCall;->setMultiParty(Z)V

    invoke-direct {p0, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendCallChangedIntent(Landroid/bluetooth/BluetoothHeadsetClientCall;)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadsetClientCall;->isMultiParty()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v5}, Landroid/bluetooth/BluetoothHeadsetClientCall;->setMultiParty(Z)V

    invoke-direct {p0, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendCallChangedIntent(Landroid/bluetooth/BluetoothHeadsetClientCall;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private updateClip(Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x4

    const-string/jumbo v2, "HeadsetClientStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateClip number: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v2, v7, [I

    aput v5, v2, v6

    invoke-direct {p0, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHeadsetClientCall;

    move-result-object v0

    if-nez v0, :cond_1

    new-array v2, v7, [I

    const/4 v3, 0x5

    aput v3, v2, v6

    invoke-direct {p0, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHeadsetClientCall;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v1, v5}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->setCallState(Landroid/bluetooth/BluetoothHeadsetClientCall;I)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v5, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addCall(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->setNumber(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendCallChangedIntent(Landroid/bluetooth/BluetoothHeadsetClientCall;)V

    goto :goto_0
.end method

.method private updateRespAndHold(I)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x6

    const/4 v4, 0x0

    const-string/jumbo v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updatRespAndHold "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const/4 v1, 0x4

    filled-new-array {v1, v4}, [I

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHeadsetClientCall;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v0, v5}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->setCallState(Landroid/bluetooth/BluetoothHeadsetClientCall;I)V

    goto :goto_0

    :cond_1
    const-string/jumbo v1, ""

    invoke-direct {p0, v5, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addCall(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_1
    new-array v1, v6, [I

    aput v5, v1, v4

    invoke-direct {p0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHeadsetClientCall;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v0, v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->setCallState(Landroid/bluetooth/BluetoothHeadsetClientCall;I)V

    :cond_2
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPendingAction:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPendingAction:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->clearPendingAction()V

    goto :goto_0

    :pswitch_2
    new-array v1, v6, [I

    aput v5, v1, v4

    invoke-direct {p0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->removeCalls([I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private waitForIndicators(III)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, -0x1

    iget v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCall:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCallSetup:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCallHeld:I

    if-eq v0, v1, :cond_0

    return v3

    :cond_0
    if-eq p1, v1, :cond_3

    iput p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCall:I

    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCall:I

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCallSetup:I

    if-ne v0, v1, :cond_5

    :cond_2
    return v2

    :cond_3
    if-eq p2, v1, :cond_4

    iput p2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCallSetup:I

    goto :goto_0

    :cond_4
    if-eq p3, v1, :cond_1

    iput p3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCallHeld:I

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCallHeld:I

    if-eq v0, v1, :cond_2

    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->queryCallsStart()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mQueryCallsSupported:Z

    iget-boolean v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mQueryCallsSupported:Z

    if-eqz v0, :cond_6

    return v2

    :cond_6
    iget v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCallSetup:I

    packed-switch v0, :pswitch_data_0

    :goto_1
    iget v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCall:I

    packed-switch v0, :pswitch_data_1

    :goto_2
    iget v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCallHeld:I

    packed-switch v0, :pswitch_data_2

    :goto_3
    return v2

    :pswitch_0
    const-string/jumbo v0, "HeadsetClientStateMachine"

    const-string/jumbo v1, "Add incoming CAll"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, ""

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addCall(ILjava/lang/String;)V

    goto :goto_1

    :pswitch_1
    const-string/jumbo v0, "HeadsetClientStateMachine"

    const-string/jumbo v1, "Add outgoing CAll"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, ""

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addCall(ILjava/lang/String;)V

    goto :goto_1

    :pswitch_2
    const-string/jumbo v0, "HeadsetClientStateMachine"

    const-string/jumbo v1, "Add Alerting CAll"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, ""

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addCall(ILjava/lang/String;)V

    goto :goto_1

    :pswitch_3
    const-string/jumbo v0, "HeadsetClientStateMachine"

    const-string/jumbo v1, "Add Active CAll"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, ""

    invoke-direct {p0, v3, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addCall(ILjava/lang/String;)V

    goto :goto_2

    :pswitch_4
    const-string/jumbo v0, ""

    invoke-direct {p0, v2, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addCall(ILjava/lang/String;)V

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mNativeAvailable:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->cleanupNative()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mNativeAvailable:Z

    :cond_0
    return-void
.end method

.method public doQuit()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->quitNow()V

    return-void
.end method

.method public dump(Ljava/lang/StringBuilder;)V
    .locals 4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mCurrentDevice: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mAudioOn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioOn:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mAudioState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mAudioWbs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioWbs:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mIndicatorNetworkState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorNetworkState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mIndicatorNetworkType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorNetworkType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mIndicatorNetworkSignal: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorNetworkSignal:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mIndicatorBatteryLevel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorBatteryLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mIndicatorCall: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCall:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mIndicatorCallSetup: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCallSetup:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mIndicatorCallHeld: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorCallHeld:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mVgsFromStack: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mVgsFromStack:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mVgmFromStack: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mVgmFromStack:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mOperatorName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mOperatorName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mSubscriberInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mSubscriberInfo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mVoiceRecognitionActive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mVoiceRecognitionActive:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mInBandRingtone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mInBandRingtone:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const-string/jumbo v2, "mCalls:"

    invoke-static {p1, v2}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothHeadsetClientCall;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "mCallsUpdate:"

    invoke-static {p1, v2}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCallsUpdate:Ljava/util/Hashtable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCallsUpdate:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothHeadsetClientCall;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public getAudioRouteAllowed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioRouteAllowed:Z

    return v0
.end method

.method declared-synchronized getAudioState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getConnectedDevices()Ljava/util/List;
    .locals 2
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
    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

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

.method public declared-synchronized getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 5

    const/4 v4, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit p0

    return v4

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    monitor-exit p0

    return v4

    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mConnecting:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v0, v1, :cond_2

    const/4 v1, 0x1

    monitor-exit p0

    return v1

    :cond_2
    :try_start_3
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mConnected:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;

    if-eq v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioOn:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne v0, v1, :cond_4

    :cond_3
    const/4 v1, 0x2

    monitor-exit p0

    return v1

    :cond_4
    :try_start_4
    const-string/jumbo v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Bad currentState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return v4

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getCurrentAgEvents()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "android.bluetooth.headsetclient.extra.NETWORK_STATUS"

    iget v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorNetworkState:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "android.bluetooth.headsetclient.extra.NETWORK_SIGNAL_STRENGTH"

    iget v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorNetworkSignal:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "android.bluetooth.headsetclient.extra.NETWORK_ROAMING"

    iget v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorNetworkType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "android.bluetooth.headsetclient.extra.BATTERY_LEVEL"

    iget v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorBatteryLevel:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "android.bluetooth.headsetclient.extra.OPERATOR_NAME"

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mOperatorName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "android.bluetooth.headsetclient.extra.VOICE_RECOGNITION"

    iget v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mVoiceRecognitionActive:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "android.bluetooth.headsetclient.extra.IN_BAND_RING"

    iget v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mInBandRingtone:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "android.bluetooth.headsetclient.extra.SUBSCRIBER_INFO"

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mSubscriberInfo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getCurrentAgFeatures()Landroid/os/Bundle;
    .locals 5

    const/16 v4, 0x20

    const/4 v3, 0x1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPeerFeatures:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v3, :cond_0

    const-string/jumbo v1, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_3WAY_CALLING"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPeerFeatures:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    const-string/jumbo v1, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_VOICE_RECOGNITION"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPeerFeatures:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_2

    const-string/jumbo v1, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_ATTACH_NUMBER_TO_VT"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_2
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPeerFeatures:I

    and-int/lit8 v1, v1, 0x20

    if-ne v1, v4, :cond_3

    const-string/jumbo v1, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_REJECT_CALL"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_3
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPeerFeatures:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_4

    const-string/jumbo v1, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_ECC"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_4
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mChldFeatures:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_5

    const-string/jumbo v1, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_ACCEPT_HELD_OR_WAITING_CALL"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_5
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mChldFeatures:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v3, :cond_6

    const-string/jumbo v1, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_RELEASE_HELD_OR_WAITING_CALL"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_6
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mChldFeatures:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_7

    const-string/jumbo v1, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_RELEASE_AND_ACCEPT"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_7
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mChldFeatures:I

    and-int/lit8 v1, v1, 0x20

    if-ne v1, v4, :cond_8

    const-string/jumbo v1, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_MERGE"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_8
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mChldFeatures:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_9

    const-string/jumbo v1, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_MERGE_AND_DETACH"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_9
    return-object v0
.end method

.method public getCurrentCalls()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothHeadsetClientCall;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    monitor-enter p0

    :try_start_0
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

    sget-object v7, Landroid/bluetooth/BluetoothUuid;->Handsfree_AG:Landroid/os/ParcelUuid;

    invoke-static {v5, v7}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    const/4 v7, 0x0

    array-length v8, p1

    :goto_0
    if-ge v7, v8, :cond_0

    aget v6, p1, v7

    if-ne v1, v6, :cond_1

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    monitor-exit p0

    return-object v4

    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method isAudioOn()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioOn:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isConnected()Z
    .locals 3

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mConnected:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioOn:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;

    if-ne v0, v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isInVr()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mVoiceRecognitionActive:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method okToConnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    const/4 v2, -0x1

    if-ne v2, v0, :cond_1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public sendBiaValue(I)V
    .locals 3

    const-string/jumbo v0, "HeadsetClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Send BIA value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendBiaValueNative(I)Z

    return-void
.end method

.method public setAudioRouteAllowed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioRouteAllowed:Z

    return-void
.end method
