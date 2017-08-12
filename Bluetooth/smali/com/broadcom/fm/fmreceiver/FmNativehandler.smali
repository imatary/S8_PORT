.class public final Lcom/broadcom/fm/fmreceiver/FmNativehandler;
.super Ljava/lang/Object;
.source "FmNativehandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/fm/fmreceiver/FmNativehandler$1;,
        Lcom/broadcom/fm/fmreceiver/FmNativehandler$2;,
        Lcom/broadcom/fm/fmreceiver/FmNativehandler$3;,
        Lcom/broadcom/fm/fmreceiver/FmNativehandler$FM_Status_Params;,
        Lcom/broadcom/fm/fmreceiver/FmNativehandler$RTPUpData;
    }
.end annotation


# static fields
.field private static final MESSAGE_DISABLED_SERVICE:I = 0x2

.field private static final MESSAGE_ENABLED_SERVICE:I = 0x1

.field private static final MESSAGE_SEND_RADIO_ON_EVENT:I = 0x3

.field private static final MESSAGE_SEND_RADIO_ON_EVENT_DELAY:I = 0x32

.field private static final TAG:Ljava/lang/String; = "FmNativehandler"

.field private static final V:Z = true


# instance fields
.field private IsKeepChipOn:Z

.field private mBluetoothStateReceiver:Landroid/content/BroadcastReceiver;

.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mClientName:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field mFunctionalityMask:I

.field private final mHandler:Landroid/os/Handler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field protected mIsFinish:Z

.field protected mIsStarted:Z

.field protected operationHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0(Lcom/broadcom/fm/fmreceiver/FmNativehandler;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/broadcom/fm/fmreceiver/FmNativehandler;Z)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->disableFmNative(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/broadcom/fm/fmreceiver/FmNativehandler;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->process_turnOnRadio(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/broadcom/fm/fmreceiver/FmNativehandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->unregisterBluetoothStateReceiver()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/broadcom/fm/fmreceiver/FmNativehandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->initializeNative()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/broadcom/fm/fmreceiver/FmNativehandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->initializeStateMachine()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/broadcom/fm/fmreceiver/FmNativehandler;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->logTimeOut(I)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/broadcom/fm/fmreceiver/FmNativehandler;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->sendRdsAFEventCallback(I)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/broadcom/fm/fmreceiver/FmNativehandler;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->sendRdsDataEventCallback(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/broadcom/fm/fmreceiver/FmNativehandler;Lcom/broadcom/fm/fmreceiver/FmNativehandler$RTPUpData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->sendRdsRTPlusEventCallback(Lcom/broadcom/fm/fmreceiver/FmNativehandler$RTPUpData;)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/broadcom/fm/fmreceiver/FmNativehandler;IIIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->sendStatusEventCallback(IIIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/broadcom/fm/fmreceiver/FmNativehandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->unRegisterIntent()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_CHIP_VENDOR"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->classInitNative()V

    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->mCallbacks:Landroid/os/RemoteCallbackList;

    iput-boolean v1, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->IsKeepChipOn:Z

    iput-boolean v1, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->mIsStarted:Z

    iput-boolean v1, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->mIsFinish:Z

    new-instance v0, Lcom/broadcom/fm/fmreceiver/FmNativehandler$1;

    invoke-direct {v0, p0}, Lcom/broadcom/fm/fmreceiver/FmNativehandler$1;-><init>(Lcom/broadcom/fm/fmreceiver/FmNativehandler;)V

    iput-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->operationHandler:Landroid/os/Handler;

    new-instance v0, Lcom/broadcom/fm/fmreceiver/FmNativehandler$2;

    invoke-direct {v0, p0}, Lcom/broadcom/fm/fmreceiver/FmNativehandler$2;-><init>(Lcom/broadcom/fm/fmreceiver/FmNativehandler;)V

    iput-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/broadcom/fm/fmreceiver/FmNativehandler$3;

    invoke-direct {v0, p0}, Lcom/broadcom/fm/fmreceiver/FmNativehandler$3;-><init>(Lcom/broadcom/fm/fmreceiver/FmNativehandler;)V

    iput-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->mContext:Landroid/content/Context;

    return-void
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNative()V
.end method

.method private native comboSearchNative(IIIIIZII)J
.end method

.method private native configureDeemphasisNative(I)Z
.end method

.method private native configureSignalNotificationNative(I)Z
.end method

.method private native disableFmNative(Z)Z
.end method

.method private native enableFmNative(I)Z
.end method

.method private native estimateNoiseFloorNative(I)Z
.end method

.method private native getAudioQualityNative(Z)Z
.end method

.method private native getCurrentRSSINative()J
.end method

.method private native getCurrentSNRNative()J
.end method

.method private native initializeNative()V
.end method

.method private initializeStateMachine()V
    .locals 4

    const/16 v0, 0x7f

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    sput v1, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->radio_state:I

    sput v1, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mFreq:I

    sput v0, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mRssi:I

    sput v0, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mSnr:I

    sput-boolean v1, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mRadioIsOn:Z

    sput v1, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mRdsProgramType:I

    const-string/jumbo v0, ""

    sput-object v0, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mRdsProgramService:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mRdsRadioText:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mRdsProgramTypeName:Ljava/lang/String;

    sput-boolean v1, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mIsMute:Z

    sput-boolean v1, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mSeekSuccess:Z

    sput-boolean v1, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mRdsOn:Z

    sput-boolean v1, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mAfOn:Z

    sput-boolean v1, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mRtPsOn:Z

    sput-boolean v1, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mPiEccOn:Z

    sput v1, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mRdsType:I

    sput v1, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mAlternateFreqHopThreshold:I

    sput v1, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mAudioMode:I

    sput v3, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mAudioPath:I

    sput v1, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mWorldRegion:I

    sput v1, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mStepSize:I

    sput-boolean v1, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mLiveAudioQuality:Z

    sput v3, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mEstimatedNoiseFloorLevel:I

    const/16 v0, 0x64

    sput v0, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mSignalPollInterval:I

    const/16 v0, 0x40

    sput v0, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mDeemphasisTime:I

    sput v2, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mRdsPi:I

    sput v2, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mRdsEcc:I

    return-void
.end method

.method private logTimeOut(I)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    const-string/jumbo v0, "FmNativehandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BTAPP TIMEOUT (1, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    const-string/jumbo v0, "FmNativehandler"

    const-string/jumbo v1, "BTAPP TIMEOUT on OPERATION_ENABLE"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "FmNativehandler"

    const-string/jumbo v1, "BTAPP TIMEOUT on OPERATION_DISABLE"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private native muteNative(Z)Z
.end method

.method private process_turnOffRadio(Z)I
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x1

    const-string/jumbo v3, "FmNativehandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "process_turnOffRadio() :: bKeepChipOn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    iput-boolean p1, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->IsKeepChipOn:Z

    sget v3, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->radio_state:I

    const/4 v4, 0x2

    if-eq v4, v3, :cond_0

    iget-object v3, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->operationHandler:Landroid/os/Handler;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    sput v7, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->radio_state:I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    iput v6, v1, Landroid/os/Message;->what:I

    iput v7, v1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->operationHandler:Landroid/os/Handler;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x2710

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0, v3}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->disableFmNative(Z)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->operationHandler:Landroid/os/Handler;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    invoke-virtual {p0, v2}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->onRadioOffEvent(I)V

    invoke-virtual {p0}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->clearRDS()V

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->process_disableChip()I

    :cond_3
    return v2

    :cond_4
    :try_start_1
    const-string/jumbo v3, "FmNativehandler"

    const-string/jumbo v4, "disableFmNative is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v2, 0x2

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v2, 0x2

    const-string/jumbo v3, "FmNativehandler"

    const-string/jumbo v4, "disableFmNative is failed by exception"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private process_turnOnRadio(I)I
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x1

    const-string/jumbo v4, "FmNativehandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "process_turnOnRadio() : functionalityMask="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    sput p1, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mFuncMask:I

    sput v8, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->radio_state:I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    iput v8, v1, Landroid/os/Message;->what:I

    const/4 v4, 0x2

    iput v4, v1, Landroid/os/Message;->arg1:I

    iget-object v4, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->operationHandler:Landroid/os/Handler;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v4, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->operationHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x2710

    invoke-virtual {v4, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->enableFmNative(I)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_3

    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->operationHandler:Landroid/os/Handler;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v4, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->mHandler:Landroid/os/Handler;

    if-eqz v4, :cond_2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    iput v9, v2, Landroid/os/Message;->what:I

    iput v3, v2, Landroid/os/Message;->arg1:I

    iget-object v4, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v4, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x32

    invoke-virtual {v4, v2, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    return v3

    :cond_3
    const/4 v3, 0x2

    :try_start_1
    const-string/jumbo v4, "FmNativehandler"

    const-string/jumbo v5, "turnOnRadioNative is failed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v3, 0x2

    const-string/jumbo v4, "FmNativehandler"

    const-string/jumbo v5, "turnOnRadioNative is failed by exception."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private registerBluetoothStateReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.samsung.bluetooth.adapter.action.BLE_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/broadcom/fm/fmreceiver/FmNativehandler$4;

    invoke-direct {v1, p0}, Lcom/broadcom/fm/fmreceiver/FmNativehandler$4;-><init>(Lcom/broadcom/fm/fmreceiver/FmNativehandler;)V

    iput-object v1, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->mBluetoothStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->mBluetoothStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerIntent()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private native searchAbortNative()Z
.end method

.method private native searchNative(IIII)J
.end method

.method private sendRdsAFEventCallback(I)V
    .locals 6

    const-string/jumbo v4, "FmNativehandler"

    const-string/jumbo v5, "sendRdsAFEventCallback"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v4, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    :try_start_1
    iget-object v4, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;

    invoke-interface {v4, p1}, Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;->onRdsAFEvent(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    const-string/jumbo v4, "FmNativehandler"

    const-string/jumbo v5, "sendRdsAFEventCallback"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :goto_2
    return-void

    :cond_0
    :try_start_3
    iget-object v4, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2
.end method

.method private sendRdsAFEventCallbackFromLocalStore(I)V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xd

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->operationHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private sendRdsDataEventCallback(IILjava/lang/String;)V
    .locals 6

    const-string/jumbo v4, "FmNativehandler"

    const-string/jumbo v5, "sendRdsDataEventCallback"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v4, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    :try_start_1
    iget-object v4, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;

    invoke-interface {v4, p1, p2, p3}, Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;->onRdsDataEvent(IILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    const-string/jumbo v4, "FmNativehandler"

    const-string/jumbo v5, "sendRdsDataEventCallback"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :goto_2
    return-void

    :cond_0
    :try_start_3
    iget-object v4, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2
.end method

.method private sendRdsDataEventCallbackFromLocalStore(IILjava/lang/String;)V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xb

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput p2, v0, Landroid/os/Message;->arg2:I

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->operationHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private sendRdsPIECCEventCallback(II)V
    .locals 6

    const-string/jumbo v4, "FmNativehandler"

    const-string/jumbo v5, "sendRdsPIECCEventCallback"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v4, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    :try_start_1
    iget-object v4, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;

    invoke-interface {v4, p1, p2}, Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;->onRdsPIECCEvent(II)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    const-string/jumbo v4, "FmNativehandler"

    const-string/jumbo v5, "sendRdsPIECCEventCallback"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :goto_2
    return-void

    :cond_0
    :try_start_3
    iget-object v4, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2
.end method

.method private sendRdsRTPlusEventCallback(IIIIII)V
    .locals 11

    const-string/jumbo v0, "FmNativehandler"

    const-string/jumbo v1, "sendRdsRTPlusEventCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v7

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v7, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v9}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;->onRdsRTPlusEvent(IIIIII)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :catch_0
    move-exception v10

    :try_start_2
    const-string/jumbo v0, "FmNativehandler"

    const-string/jumbo v1, "sendRdsRTPlusEventCallback"

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :goto_2
    return-void

    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2
.end method

.method private sendRdsRTPlusEventCallback(Lcom/broadcom/fm/fmreceiver/FmNativehandler$RTPUpData;)V
    .locals 11

    const-string/jumbo v0, "FmNativehandler"

    const-string/jumbo v1, "sendRdsRTPlusEventCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v7

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v7, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v9}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;

    iget v1, p1, Lcom/broadcom/fm/fmreceiver/FmNativehandler$RTPUpData;->mContentType1:I

    iget v2, p1, Lcom/broadcom/fm/fmreceiver/FmNativehandler$RTPUpData;->mStartPos1:I

    iget v3, p1, Lcom/broadcom/fm/fmreceiver/FmNativehandler$RTPUpData;->mAdditionalLen1:I

    iget v4, p1, Lcom/broadcom/fm/fmreceiver/FmNativehandler$RTPUpData;->mContentType2:I

    iget v5, p1, Lcom/broadcom/fm/fmreceiver/FmNativehandler$RTPUpData;->mStartPos2:I

    iget v6, p1, Lcom/broadcom/fm/fmreceiver/FmNativehandler$RTPUpData;->mAdditionalLen2:I

    invoke-interface/range {v0 .. v6}, Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;->onRdsRTPlusEvent(IIIIII)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :catch_0
    move-exception v10

    :try_start_2
    const-string/jumbo v0, "FmNativehandler"

    const-string/jumbo v1, "sendRdsRTPlusEventCallback"

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :goto_2
    return-void

    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2
.end method

.method private sendRdsRTPlusEventCallbackFromLocalStore(IIIIII)V
    .locals 8

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v7

    const/16 v0, 0xc

    iput v0, v7, Landroid/os/Message;->what:I

    new-instance v0, Lcom/broadcom/fm/fmreceiver/FmNativehandler$RTPUpData;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/broadcom/fm/fmreceiver/FmNativehandler$RTPUpData;-><init>(IIIIII)V

    iput-object v0, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->operationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private sendStatusEventCallback(IIIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 14

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v10

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v10, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v12}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;->onStatusEvent(IIIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :catch_0
    move-exception v13

    :try_start_2
    const-string/jumbo v0, "FmNativehandler"

    const-string/jumbo v1, "sendStatusEventCallback"

    invoke-static {v0, v1, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v11

    invoke-virtual {v11}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :goto_2
    sget v0, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->radio_state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    sget v0, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->radio_state:I

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    sput v0, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->radio_state:I

    :cond_0
    return-void

    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2
.end method

.method private sendStatusEventCallbackFromLocalStore(Z)V
    .locals 11

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v10

    new-instance v0, Lcom/broadcom/fm/fmreceiver/FmNativehandler$FM_Status_Params;

    sget v1, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mFreq:I

    sget v2, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mRssi:I

    sget v3, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mSnr:I

    sget-boolean v4, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mRadioIsOn:Z

    sget v5, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mRdsProgramType:I

    sget-object v6, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mRdsProgramService:Ljava/lang/String;

    sget-object v7, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mRdsRadioText:Ljava/lang/String;

    sget-object v8, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mRdsProgramTypeName:Ljava/lang/String;

    sget-boolean v9, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mIsMute:Z

    invoke-direct/range {v0 .. v9}, Lcom/broadcom/fm/fmreceiver/FmNativehandler$FM_Status_Params;-><init>(IIIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v1, 0xa

    iput v1, v10, Landroid/os/Message;->what:I

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput v1, v10, Landroid/os/Message;->arg1:I

    iput-object v0, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->operationHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v1, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private native setAudioModeNative(I)Z
.end method

.method private native setAudioPathNative(I)Z
.end method

.method private native setCOSNative(I)Z
.end method

.method private native setFMIntennaNative(Z)Z
.end method

.method private native setFMVolumeNative(I)Z
.end method

.method private native setFrequencyOffsetThNative(I)Z
.end method

.method private native setNoisePowerThNative(I)Z
.end method

.method private native setPiEccModeNative(Z)Z
.end method

.method private native setPilotPowerThNative(I)Z
.end method

.method private native setRFMuteNative(Z)Z
.end method

.method private native setRdsModeNative(ZZI)Z
.end method

.method private native setRegionNative(I)Z
.end method

.method private native setRtPsModeNative(Z)Z
.end method

.method private native setScanStepNative(I)Z
.end method

.method private native setSnrThresholdNative(I)Z
.end method

.method private native tuneNative(I)Z
.end method

.method private unRegisterIntent()V
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iput-object v3, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->mClientName:Ljava/lang/String;

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v1, "FmNativehandler"

    const-string/jumbo v2, "unRegisterIntent :: IllegalArgumentException exception."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    iput-object v3, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->mClientName:Ljava/lang/String;

    throw v1
.end method

.method private unregisterBluetoothStateReceiver()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->mBluetoothStateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->mBluetoothStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->mBluetoothStateReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    return-void
.end method


# virtual methods
.method public checkForPendingResponses()V
    .locals 2

    const-string/jumbo v0, "FmNativehandler"

    const-string/jumbo v1, "checkForPendingResponses"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public declared-synchronized cleanupFmService()I
    .locals 2

    const/4 v1, 0x0

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->onRadioOffEvent(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clearRDS()V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "FmNativehandler"

    const-string/jumbo v1, "clearRDS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v2, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mRdsOn:Z

    sput-boolean v2, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mAfOn:Z

    sput-boolean v2, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mRtPsOn:Z

    sput-boolean v2, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mPiEccOn:Z

    sput v3, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mRdsPi:I

    sput v3, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mRdsEcc:I

    return-void
.end method

.method public declared-synchronized estimateNoiseFloorLevel(I)I
    .locals 4

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->estimateNoiseFloorNative(I)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x2

    :try_start_1
    const-string/jumbo v2, "FmNativehandler"

    const-string/jumbo v3, "estimateNoiseFloorNative failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    return-void
.end method

.method public finish()V
    .locals 5

    const/16 v4, 0x4e20

    const/16 v3, 0x2710

    const/4 v2, 0x0

    const-string/jumbo v0, "FmNativehandler"

    const-string/jumbo v1, "finish - cleanup Service here"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->operationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->operationHandler:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    return-void
.end method

.method public declared-synchronized getCurrentRssi()J
    .locals 5

    monitor-enter p0

    const-wide/16 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->getCurrentRSSINative()J
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    :goto_0
    monitor-exit p0

    return-wide v0

    :catch_0
    move-exception v2

    :try_start_1
    const-string/jumbo v3, "FmNativehandler"

    const-string/jumbo v4, "getCurrentRssi failed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getCurrentSNR()J
    .locals 5

    monitor-enter p0

    const-wide/16 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->getCurrentSNRNative()J
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    :goto_0
    monitor-exit p0

    return-wide v0

    :catch_0
    move-exception v2

    :try_start_1
    const-string/jumbo v3, "FmNativehandler"

    const-string/jumbo v4, "getCurrentSNR failed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getIsMute()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mIsMute:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMonoStereoMode()I
    .locals 1

    monitor-enter p0

    :try_start_0
    sget v0, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mAudioMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRadioIsOn()Z
    .locals 4

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const-string/jumbo v1, "FmNativehandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getRadioIsOn : btAdap.semIsBleEnabled= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->semIsBleEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->semIsBleEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public declared-synchronized getStatus()I
    .locals 12

    const/4 v11, 0x0

    monitor-enter p0

    :try_start_0
    sget v1, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mFreq:I

    sget v2, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mRssi:I

    sget v3, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mSnr:I

    sget-boolean v4, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mRadioIsOn:Z

    sget v5, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mRdsProgramType:I

    sget-object v6, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mRdsProgramService:Ljava/lang/String;

    sget-object v7, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mRdsRadioText:Ljava/lang/String;

    sget-object v8, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mRdsProgramTypeName:Ljava/lang/String;

    sget-boolean v9, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mIsMute:Z

    const/4 v10, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->sendStatusEventCallback(IIIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v11

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTunedFrequency()I
    .locals 1

    monitor-enter p0

    :try_start_0
    sget v0, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mFreq:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized muteAudio(Z)I
    .locals 4

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->muteNative(Z)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x2

    :try_start_1
    const-string/jumbo v2, "FmNativehandler"

    const-string/jumbo v3, "muteAudio failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized offFMService()I
    .locals 2

    const/4 v1, 0x0

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    sput v0, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->radio_state:I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mRadioIsOn:Z

    invoke-direct {p0}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->unRegisterIntent()V

    invoke-direct {p0}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->unregisterBluetoothStateReceiver()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onRadioAfJumpEvent(III)V
    .locals 4

    const/4 v3, 0x1

    const-string/jumbo v0, "FmNativehandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRadioAfJumpEvent: status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", rssi = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", freq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->operationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    sput p2, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mRssi:I

    sput p3, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mFreq:I

    sput-boolean v3, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mSeekSuccess:Z

    invoke-direct {p0, p3}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->sendRdsAFEventCallback(I)V

    return-void
.end method

.method public onRadioOffEvent(I)V
    .locals 3

    const-string/jumbo v0, "FmNativehandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRadioOffEvent() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->operationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    const/4 v0, 0x0

    sput v0, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->radio_state:I

    return-void
.end method

.method public onRadioOnEvent(I)V
    .locals 11

    const/4 v3, 0x0

    const/4 v10, 0x1

    const-string/jumbo v0, "FmNativehandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRadioOnEvent() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    sput-boolean v10, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mRadioIsOn:Z

    :cond_0
    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->operationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    sget-boolean v0, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mRadioIsOn:Z

    if-nez v0, :cond_2

    sput v3, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->radio_state:I

    :goto_0
    sget v1, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mFreq:I

    sget v2, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mRssi:I

    sget v3, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mSnr:I

    sget-boolean v4, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mRadioIsOn:Z

    sget v5, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mRdsProgramType:I

    sget-object v6, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mRdsProgramService:Ljava/lang/String;

    sget-object v7, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mRdsRadioText:Ljava/lang/String;

    sget-object v8, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mRdsProgramTypeName:Ljava/lang/String;

    sget-boolean v9, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mIsMute:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->sendStatusEventCallback(IIIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    return-void

    :cond_2
    const/4 v0, 0x2

    sput v0, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->radio_state:I

    goto :goto_0
.end method

.method public onRadioRdsPIECCEvent(II)V
    .locals 5

    const/4 v4, -0x1

    const-string/jumbo v1, "FmNativehandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onRadioRdsPIECCEvent("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->operationHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    sget v1, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mRdsPi:I

    if-eq v1, p1, :cond_0

    if-eq p1, v4, :cond_0

    sput p1, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mRdsPi:I

    const/4 v0, 0x1

    :cond_0
    sget v1, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mRdsEcc:I

    if-eq v1, p2, :cond_1

    if-eq p2, v4, :cond_1

    sput p2, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mRdsEcc:I

    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_2

    sget v1, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mRdsPi:I

    sget v2, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mRdsEcc:I

    invoke-direct {p0, v1, v2}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->sendRdsPIECCEventCallback(II)V

    :cond_2
    return-void
.end method

.method public onRadioRdsRTPlusEvent(IIIIII)V
    .locals 3

    const-string/jumbo v0, "FmNativehandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRadioRdsRTPlusEvent("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p6}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->sendRdsRTPlusEventCallback(IIIIII)V

    return-void
.end method

.method public onRadioRdsUpdateEvent(IIILjava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "FmNativehandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRadioRdsUpdateEvent("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    packed-switch p2, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-direct {p0, p2, p3, p4}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->sendRdsDataEventCallback(IILjava/lang/String;)V

    :cond_0
    return-void

    :pswitch_1
    sput p3, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mRdsProgramType:I

    goto :goto_0

    :pswitch_2
    sput-object p4, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mRdsProgramTypeName:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    sput-object p4, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mRdsRadioText:Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    sput-object p4, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mRdsProgramService:Ljava/lang/String;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public declared-synchronized process_disableChip()I
    .locals 4

    const/4 v3, 0x0

    monitor-enter p0

    :try_start_0
    const-string/jumbo v1, "FmNativehandler"

    const-string/jumbo v2, "process_disableChip()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v3

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disableRadio()Z

    move-result v1

    if-eqz v1, :cond_2

    sget v1, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->radio_state:I

    if-nez v1, :cond_2

    const-string/jumbo v1, "FmNativehandler"

    const-string/jumbo v2, "SKW Send disable service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    return v3

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized process_enableChip()I
    .locals 6

    monitor-enter p0

    :try_start_0
    const-string/jumbo v3, "FmNativehandler"

    const-string/jumbo v4, "process_enableChip()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    const/4 v3, 0x5

    sput v3, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->radio_state:I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/4 v3, 0x1

    iput v3, v1, Landroid/os/Message;->what:I

    const/4 v3, 0x2

    iput v3, v1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->operationHandler:Landroid/os/Handler;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x2710

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enableRadio()Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "FmNativehandler"

    const-string/jumbo v4, "process_enableChip() :: enableRadio is failed."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->operationHandler:Landroid/os/Handler;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    const/4 v2, 0x1

    :cond_2
    monitor-exit p0

    return v2

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public registerCallback(Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    :cond_0
    return-void
.end method

.method public declared-synchronized seekRdsStation(IIII)J
    .locals 5

    monitor-enter p0

    const-wide/16 v0, 0x0

    and-int/lit16 p1, p1, 0x83

    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->searchNative(IIII)J
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    :goto_0
    monitor-exit p0

    return-wide v0

    :catch_0
    move-exception v2

    const-wide/16 v0, 0x0

    :try_start_1
    const-string/jumbo v3, "FmNativehandler"

    const-string/jumbo v4, "searchNative failed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public seekStation(II)J
    .locals 5

    const-wide/16 v0, 0x0

    and-int/lit16 p1, p1, 0x83

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, v3, v4}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->searchNative(IIII)J
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v2

    const-wide/16 v0, 0x0

    const-string/jumbo v3, "FmNativehandler"

    const-string/jumbo v4, "searchNative failed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public declared-synchronized seekStationAbort()I
    .locals 4

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->searchAbortNative()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x2

    :try_start_1
    const-string/jumbo v2, "FmNativehandler"

    const-string/jumbo v3, "searchAbortNative failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public seekStationCombo(IIIIIZII)J
    .locals 6

    const-string/jumbo v3, "FmNativehandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "seekStationCombo: startFreq = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", endFeq = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", minSignalStrength = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", direction = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", scanMethod = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", multiChannel = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", rdsType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", rdsTypeValue = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    and-int/lit16 p4, p4, 0x83

    :try_start_0
    invoke-direct/range {p0 .. p8}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->comboSearchNative(IIIIIZII)J
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v2

    const-wide/16 v0, 0x0

    const-string/jumbo v3, "FmNativehandler"

    const-string/jumbo v4, "comboSearchNative failed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public declared-synchronized setAudioMode(I)I
    .locals 4

    monitor-enter p0

    const/4 v1, 0x0

    and-int/lit8 p1, p1, 0x3

    :try_start_0
    invoke-direct {p0, p1}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->setAudioModeNative(I)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x2

    :try_start_1
    const-string/jumbo v2, "FmNativehandler"

    const-string/jumbo v3, "setAudioModeNative failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setAudioPath(I)I
    .locals 4

    monitor-enter p0

    const/4 v1, 0x0

    and-int/lit8 p1, p1, 0x3

    :try_start_0
    invoke-direct {p0, p1}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->setAudioPathNative(I)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x2

    :try_start_1
    const-string/jumbo v2, "FmNativehandler"

    const-string/jumbo v3, "setAudioPathNative failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setCOS(I)I
    .locals 4

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->setCOSNative(I)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x2

    :try_start_1
    const-string/jumbo v2, "FmNativehandler"

    const-string/jumbo v3, "setCOS failed."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setDeemPhasis(I)I
    .locals 4

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->configureDeemphasisNative(I)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x2

    :try_start_1
    const-string/jumbo v2, "FmNativehandler"

    const-string/jumbo v3, "configureDeemphasisNative failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setFMIntenna(Z)I
    .locals 4

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->setFMIntennaNative(Z)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x2

    :try_start_1
    const-string/jumbo v2, "FmNativehandler"

    const-string/jumbo v3, "setFMIntenna failed."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setFMVolume(I)I
    .locals 4

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->setFMVolumeNative(I)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x2

    :try_start_1
    const-string/jumbo v2, "FmNativehandler"

    const-string/jumbo v3, "setFMVolumeNative failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setFrequencyOffsetThreshold(I)I
    .locals 4

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->setFrequencyOffsetThNative(I)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x2

    :try_start_1
    const-string/jumbo v2, "FmNativehandler"

    const-string/jumbo v3, "setFrequencyOffsetThNative failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setLiveAudioPolling(ZI)I
    .locals 4

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->getAudioQualityNative(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p2}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->configureSignalNotificationNative(I)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x2

    :try_start_1
    const-string/jumbo v2, "FmNativehandler"

    const-string/jumbo v3, "setLiveAudioPolling failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setNoisePowerThreshold(I)I
    .locals 4

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->setNoisePowerThNative(I)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x2

    :try_start_1
    const-string/jumbo v2, "FmNativehandler"

    const-string/jumbo v3, "setNoisePowerThreshold failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setPiEccMode(I)I
    .locals 9

    const/4 v3, 0x0

    monitor-enter p0

    const/4 v5, 0x2

    const/4 v1, 0x1

    :try_start_0
    const-string/jumbo v6, "FmNativehandler"

    const-string/jumbo v7, "setPiEccMode() start"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 p1, p1, 0x3

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :cond_0
    and-int/lit8 v4, p1, 0x1

    move v2, v3

    if-nez v3, :cond_1

    sget-boolean v3, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mRtPsOn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :try_start_1
    sget-boolean v6, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mRdsOn:Z

    if-ne v3, v6, :cond_2

    const-string/jumbo v6, "FmNativehandler"

    const-string/jumbo v7, "setPiEccMode() - setRdsModeNative is no need"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz v1, :cond_4

    sput-boolean v3, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mRdsOn:Z

    invoke-direct {p0, v2}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->setPiEccModeNative(Z)Z

    move-result v6

    if-eqz v6, :cond_3

    sput-boolean v2, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mPiEccOn:Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v5, 0x0

    :goto_1
    :try_start_2
    const-string/jumbo v6, "FmNativehandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setPiEccMode() - FmReceiverServiceState PiEccOn:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mPiEccOn:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "  RdsOn:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mRdsOn:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "  AfOn:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mAfOn:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v5

    :cond_2
    :try_start_3
    sget-boolean v6, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mAfOn:Z

    invoke-direct {p0, v3, v6, v4}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->setRdsModeNative(ZZI)Z

    move-result v1

    goto :goto_0

    :cond_3
    const-string/jumbo v6, "FmNativehandler"

    const-string/jumbo v7, "setPiEccMode() - setPiEccModeNative failed"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x2

    goto :goto_1

    :cond_4
    const-string/jumbo v6, "FmNativehandler"

    const-string/jumbo v7, "setPiEccMode() - setRdsModeNative failed"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v5, 0x2

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_4
    const-string/jumbo v6, "FmNativehandler"

    const-string/jumbo v7, "setPiEccMode() - setRdsNative failed"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v5, 0x2

    goto :goto_1

    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public declared-synchronized setPilotPowerThreshold(I)I
    .locals 4

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->setPilotPowerThNative(I)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x2

    :try_start_1
    const-string/jumbo v2, "FmNativehandler"

    const-string/jumbo v3, "setPilotPowerThNative failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setRdsMode(IIII)I
    .locals 10

    monitor-enter p0

    const/4 v5, 0x0

    const/4 v2, 0x1

    and-int/lit8 p1, p1, 0x3

    and-int/lit8 p3, p3, 0x1

    and-int/lit8 p2, p2, 0x7c

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    :goto_0
    if-eqz p3, :cond_2

    const/4 v0, 0x1

    :goto_1
    and-int/lit8 v3, p1, 0x1

    move v6, v4

    if-nez v4, :cond_0

    :try_start_0
    sget-boolean v4, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mPiEccOn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    sget-boolean v7, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mRdsOn:Z

    if-ne v4, v7, :cond_3

    sget-boolean v7, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mAfOn:Z

    if-ne v0, v7, :cond_3

    const-string/jumbo v7, "FmNativehandler"

    const-string/jumbo v8, "setRdsMode() - setRdsModeNative is no need"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    if-eqz v2, :cond_5

    sput-boolean v4, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mRdsOn:Z

    sput-boolean v0, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mAfOn:Z

    const-string/jumbo v7, "FmNativehandler"

    const-string/jumbo v8, "setRdsMode() - setRdsModeNative - setting"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v6}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->setRtPsModeNative(Z)Z

    move-result v7

    if-eqz v7, :cond_4

    sput-boolean v6, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mRtPsOn:Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v5, 0x0

    :goto_3
    :try_start_2
    const-string/jumbo v7, "FmNativehandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setRdsMode() - FmReceiverServiceState RtPsOn:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v9, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mRtPsOn:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "  RdsOn:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v9, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mRdsOn:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "  AfOn:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v9, Lcom/broadcom/fm/fmreceiver/FmReceiverServiceState;->mAfOn:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v5

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :try_start_3
    invoke-direct {p0, v4, v0, v3}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->setRdsModeNative(ZZI)Z

    move-result v2

    goto :goto_2

    :cond_4
    const-string/jumbo v7, "FmNativehandler"

    const-string/jumbo v8, "setRdsMode() - setRtPsModeNative failed"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x2

    goto :goto_3

    :cond_5
    const-string/jumbo v7, "FmNativehandler"

    const-string/jumbo v8, "setRdsMode() - setRdsModeNative failed"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v5, 0x2

    goto :goto_3

    :catch_0
    move-exception v1

    :try_start_4
    const-string/jumbo v7, "FmNativehandler"

    const-string/jumbo v8, "setRdsNative failed"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v5, 0x2

    goto :goto_3

    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method public declared-synchronized setRfMute(Z)I
    .locals 4

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->setRFMuteNative(Z)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x2

    :try_start_1
    const-string/jumbo v2, "FmNativehandler"

    const-string/jumbo v3, "setRfMute failed."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setSnrThreshold(I)I
    .locals 4

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->setSnrThresholdNative(I)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x2

    :try_start_1
    const-string/jumbo v2, "FmNativehandler"

    const-string/jumbo v3, "setSnrThreshold failed."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setStepSize(I)I
    .locals 4

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->setScanStepNative(I)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x2

    :try_start_1
    const-string/jumbo v2, "FmNativehandler"

    const-string/jumbo v3, "setScanStepNative failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setWorldRegion(I)I
    .locals 4

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->setRegionNative(I)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x2

    :try_start_1
    const-string/jumbo v2, "FmNativehandler"

    const-string/jumbo v3, "setRegionNative failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized start()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "FmNativehandler"

    const-string/jumbo v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->mIsStarted:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "FmNativehandler"

    const-string/jumbo v1, "Service already started...Skipping"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->mIsStarted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "FmNativehandler"

    const-string/jumbo v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->mIsStarted:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "FmNativehandler"

    const-string/jumbo v1, "Service already stopped...Skipping"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->cleanupNative()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->mIsStarted:Z

    invoke-virtual {p0}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->clearRDS()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized tuneRadio(I)I
    .locals 4

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->tuneNative(I)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x2

    :try_start_1
    const-string/jumbo v2, "FmNativehandler"

    const-string/jumbo v3, "tuneRadio failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized turnOffRadio(Z)I
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->process_turnOffRadio(Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized turnOnRadio(I[C)I
    .locals 5

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p2}, Ljava/lang/String;->copyValueOf([C)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->mClientName:Ljava/lang/String;

    const-string/jumbo v2, "FmNativehandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "turnOnRadio: functionalityMask = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mClientName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->mClientName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->registerIntent()V

    invoke-direct {p0}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->registerBluetoothStateReceiver()V

    iput p1, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->mFunctionalityMask:I

    invoke-virtual {p0}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->getRadioIsOn()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->process_enableChip()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enableRadio()Z

    invoke-direct {p0}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->initializeNative()V

    iget v2, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->mFunctionalityMask:I

    invoke-direct {p0, v2}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->process_turnOnRadio(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized unregisterCallback(Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
