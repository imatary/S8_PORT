.class public Lcom/android/phone/CallNotifier;
.super Landroid/os/Handler;
.source "CallNotifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallNotifier$1;,
        Lcom/android/phone/CallNotifier$CallNotifierPhoneStateListener;,
        Lcom/android/phone/CallNotifier$InCallTonePlayer;,
        Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static sInstance:Lcom/android/phone/CallNotifier;


# instance fields
.field private mApplication:Lcom/android/phone/PhoneGlobals;

.field private mAudioManager:Landroid/media/AudioManager;

.field mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mPhoneStateListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/phone/CallNotifier$CallNotifierPhoneStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSignalInfoToneGenerator:Landroid/media/ToneGenerator;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mVoicePrivacyState:Z


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/phone/CallNotifier;->DBG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneGlobals;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/phone/CallNotifier;)Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/phone/CallNotifier;)Landroid/media/ToneGenerator;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/phone/CallNotifier;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->createSignalInfoToneGenerator()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/phone/CallNotifier;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->resetAudioStateAfterDisconnect()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/CallNotifier;->DBG:Z

    return-void
.end method

.method private constructor <init>(Lcom/android/phone/PhoneGlobals;)V
    .locals 4

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/phone/CallNotifier;->mPhoneStateListeners:Ljava/util/Map;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/CallNotifier;->mVoicePrivacyState:Z

    new-instance v1, Lcom/android/phone/CallNotifier$1;

    invoke-direct {v1, p0}, Lcom/android/phone/CallNotifier$1;-><init>(Lcom/android/phone/CallNotifier;)V

    iput-object v1, p0, Lcom/android/phone/CallNotifier;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    iput-object p1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v1, p1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    const-string/jumbo v2, "audio"

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/phone/CallNotifier;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    const-string/jumbo v2, "telephony_subscription_service"

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionManager;

    iput-object v1, p0, Lcom/android/phone/CallNotifier;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->registerForNotifications()V

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    :cond_0
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    new-instance v2, Lcom/android/phone/CallNotifier$2;

    invoke-direct {v2, p0}, Lcom/android/phone/CallNotifier$2;-><init>(Lcom/android/phone/CallNotifier;)V

    invoke-virtual {v1, v2}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    return-void
.end method

.method private containsSubId(Ljava/util/List;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;I)Z"
        }
    .end annotation

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    if-ne v1, p2, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method private createSignalInfoToneGenerator()V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;

    if-nez v1, :cond_0

    :try_start_0
    new-instance v1, Landroid/media/ToneGenerator;

    const/4 v2, 0x0

    const/16 v3, 0x50

    invoke-direct {v1, v2, v3}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v1, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;

    const-string/jumbo v1, "CallNotifier"

    const-string/jumbo v2, "CallNotifier: mSignalInfoToneGenerator created when toneplay"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "CallNotifier"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CallNotifier: Exception caught while creating mSignalInfoToneGenerator: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v4, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "CallNotifier"

    const-string/jumbo v2, "mSignalInfoToneGenerator created already, hence skipping"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static init(Lcom/android/phone/PhoneGlobals;)Lcom/android/phone/CallNotifier;
    .locals 4

    const-class v1, Lcom/android/phone/CallNotifier;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/phone/CallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/CallNotifier;

    invoke-direct {v0, p0}, Lcom/android/phone/CallNotifier;-><init>(Lcom/android/phone/PhoneGlobals;)V

    sput-object v0, Lcom/android/phone/CallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    :goto_0
    sget-object v0, Lcom/android/phone/CallNotifier;->sInstance:Lcom/android/phone/CallNotifier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    const-string/jumbo v0, "CallNotifier"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/CallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "CallNotifier"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onDisplayInfo(Landroid/os/AsyncResult;)V
    .locals 5

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;

    if-eqz v1, :cond_1

    iget-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;->alpha:Ljava/lang/String;

    sget-boolean v2, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDisplayInfo: displayInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-static {v2, v0}, Lcom/android/phone/PhoneDisplayMessage;->displayNetworkMessage(Landroid/content/Context;Ljava/lang/String;)V

    const-wide/16 v2, 0xbb8

    const/16 v4, 0x16

    invoke-virtual {p0, v4, v2, v3}, Lcom/android/phone/CallNotifier;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method

.method private onSignalInfo(Landroid/os/AsyncResult;)V
    .locals 7

    sget-boolean v5, Lcom/android/phone/PhoneGlobals;->sVoiceCapable:Z

    if-nez v5, :cond_0

    const-string/jumbo v5, "CallNotifier"

    const-string/jumbo v6, "Got onSignalInfo() on non-voice-capable device! Ignoring..."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->isRealIncomingCall(Lcom/android/internal/telephony/Call$State;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->stopSignalInfoTone()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;

    if-eqz v1, :cond_1

    iget-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->isPresent:Z

    sget-boolean v5, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onSignalInfo: isPresent="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    :cond_3
    if-eqz v0, :cond_1

    iget v4, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->signalType:I

    iget v2, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->alertPitch:I

    iget v3, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->signal:I

    sget-boolean v5, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onSignalInfo: uSignalType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", uAlertPitch="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", uSignal="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onSuppServiceFailed(Landroid/os/AsyncResult;)V
    .locals 7

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    sget-object v3, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->CONFERENCE:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    if-eq v2, v3, :cond_0

    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    sget-object v3, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->RESUME:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    if-eq v2, v3, :cond_0

    const-string/jumbo v2, "onSuppServiceFailed: not a merge or resume failure event"

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v1, ""

    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    sget-object v3, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->CONFERENCE:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    if-ne v2, v3, :cond_3

    const-string/jumbo v2, "canada_bmc_volte_ui"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "onSuppServiceFailed: CANADA_BMC_VOLTE_UI displaying merge failure message"

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0545

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string/jumbo v2, "vzw_volte_ui"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v6}, Lcom/android/phone/TeleServiceSystemDB;->setOnMerge(I)V

    :cond_1
    :goto_1
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    return-void

    :cond_2
    const-string/jumbo v2, "onSuppServiceFailed: displaying merge failure message"

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d04cf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    sget-object v3, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->RESUME:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    if-ne v2, v3, :cond_4

    const-string/jumbo v2, "onSuppServiceFailed: displaying merge failure message"

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {}, Lcom/android/phone/StringManager;->getInstance()Lcom/android/phone/StringManager;

    move-result-object v3

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "incall_error_supp_service_switch"

    invoke-virtual {v3, v4, v5}, Lcom/android/phone/StringManager;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_4
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    sget-object v3, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->HOLD:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d04d2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_5
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    sget-object v3, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->SWITCH:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    if-ne v2, v3, :cond_6

    const-string/jumbo v2, "Failed to switch calls"

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {}, Lcom/android/phone/StringManager;->getInstance()Lcom/android/phone/StringManager;

    move-result-object v3

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "incall_error_supp_service_switch"

    invoke-virtual {v3, v4, v5}, Lcom/android/phone/StringManager;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "vzw_volte_ui"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v6}, Lcom/android/phone/TeleServiceSystemDB;->setSuppService(I)V

    goto/16 :goto_1

    :cond_6
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    sget-object v3, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->SEPARATE:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    if-ne v2, v3, :cond_7

    const-string/jumbo v2, "Failed to separate out call"

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d04cd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_7
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    sget-object v3, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->TRANSFER:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    if-ne v2, v3, :cond_8

    const-string/jumbo v2, "each other (and hanging up user\'s line) failed (Call transfer failed"

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d04ce

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_8
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    sget-object v3, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->REJECT:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    if-ne v2, v3, :cond_9

    const-string/jumbo v2, "Call rejection failed"

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d04d0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_9
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    sget-object v3, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->HANGUP:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    if-ne v2, v3, :cond_a

    const-string/jumbo v2, "Failed to release call(s)"

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d04d1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_a
    const-string/jumbo v2, "Unsupported service or Selected service failed"

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d04ca

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1
.end method

.method private onTtyModeReceived(Landroid/os/AsyncResult;)V
    .locals 4

    sget-boolean v1, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "TtyModeReceived: displaying notification message"

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const-string/jumbo v1, "CallNotifier"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsupported TTY mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/PhoneDisplayMessage;->displayNetworkMessage(Landroid/content/Context;Ljava/lang/String;)V

    const-wide/16 v2, 0xbb8

    const/16 v1, 0x16

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/phone/CallNotifier;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void

    :pswitch_0
    const v0, 0x10400da

    goto :goto_0

    :pswitch_1
    const v0, 0x10400db

    goto :goto_0

    :pswitch_2
    const v0, 0x10400dc

    goto :goto_0

    :pswitch_3
    const v0, 0x10400dd

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private registerForNotifications()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0x14

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x6

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x7

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0x9

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0xa

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0xe

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0xf

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForTtyModeReceived(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0xd

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private resetAudioStateAfterDisconnect()V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->disconnectAudio()Z

    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    sget-boolean v1, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "CallNotifier"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleMessage("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    sget-boolean v1, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "DISCONNECT"

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->stopSignalInfoTone()V

    goto :goto_0

    :pswitch_2
    sget-boolean v1, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "Received PHONE_STATE_DISPLAYINFO event"

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    :cond_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->onDisplayInfo(Landroid/os/AsyncResult;)V

    goto :goto_0

    :pswitch_3
    sget-boolean v1, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v1, :cond_4

    const-string/jumbo v1, "Received PHONE_STATE_SIGNALINFO event"

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    :cond_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->onSignalInfo(Landroid/os/AsyncResult;)V

    goto :goto_0

    :pswitch_4
    sget-boolean v1, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v1, :cond_5

    const-string/jumbo v1, "Received Display Info notification done event ..."

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    :cond_5
    invoke-static {}, Lcom/android/phone/PhoneDisplayMessage;->dismissMessage()V

    goto :goto_0

    :pswitch_5
    sget-boolean v1, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v1, :cond_6

    const-string/jumbo v1, "EVENT_OTA_PROVISION_CHANGE..."

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    :cond_6
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1, p1}, Lcom/android/phone/PhoneGlobals;->handleOtaspEvent(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_6
    sget-boolean v1, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v1, :cond_7

    const-string/jumbo v1, "PHONE_ENHANCED_VP_ON..."

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    :cond_7
    iget-boolean v1, p0, Lcom/android/phone/CallNotifier;->mVoicePrivacyState:Z

    if-nez v1, :cond_1

    const/4 v0, 0x5

    new-instance v1, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-direct {v1, p0, v0}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v1}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/CallNotifier;->mVoicePrivacyState:Z

    goto :goto_0

    :pswitch_7
    sget-boolean v1, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v1, :cond_8

    const-string/jumbo v1, "PHONE_ENHANCED_VP_OFF..."

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    :cond_8
    iget-boolean v1, p0, Lcom/android/phone/CallNotifier;->mVoicePrivacyState:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x5

    new-instance v1, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-direct {v1, p0, v0}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v1}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/CallNotifier;->mVoicePrivacyState:Z

    goto/16 :goto_0

    :pswitch_8
    sget-boolean v1, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v1, :cond_9

    const-string/jumbo v1, "PHONE_SUPP_SERVICE_FAILED..."

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    :cond_9
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->onSuppServiceFailed(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    :pswitch_9
    sget-boolean v1, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v1, :cond_a

    const-string/jumbo v1, "Received PHONE_TTY_MODE_RECEIVED event"

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    :cond_a
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->onTtyModeReceived(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    :pswitch_a
    const-string/jumbo v1, "CallNotifier"

    const-string/jumbo v2, "Received PHONE_ON_DIAL_CHARS..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "support_tphone"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isTPhoneMode()Z

    move-result v1

    if-eqz v1, :cond_b

    const-string/jumbo v1, "CallNotifier"

    const-string/jumbo v2, "PHONE_ON_DIAL_CHARS... tphone mode Ignoring..."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_b
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    iget v2, p1, Landroid/os/Message;->arg1:I

    int-to-char v2, v2

    invoke-static {v1, v2}, Lcom/android/phone/PhoneUtilsCommon;->onPostDialChars(Landroid/os/AsyncResult;C)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method stopSignalInfoTone()V
    .locals 2

    sget-boolean v0, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "stopSignalInfoTone: Stopping SignalInfo tone player"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;

    const/16 v1, 0x62

    invoke-direct {v0, p0, v1}, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->start()V

    return-void
.end method

.method updateCallNotifierRegistrationsAfterRadioTechnologyChange()V
    .locals 2

    sget-boolean v0, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "CallNotifier"

    const-string/jumbo v1, "updateCallNotifierRegistrationsAfterRadioTechnologyChange..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->createSignalInfoToneGenerator()V

    return-void
.end method

.method public updatePhoneStateListeners()V
    .locals 9

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mPhoneStateListeners:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v4, :cond_1

    invoke-direct {p0, v4, v3}, Lcom/android/phone/CallNotifier;->containsSubId(Ljava/util/List;I)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_1
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v5, v5, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v5, v3, v8}, Lcom/android/phone/NotificationMgr;->updateMwi(IZ)V

    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v5, v5, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v5, v3, v8}, Lcom/android/phone/NotificationMgr;->updateCfi(IZ)V

    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mPhoneStateListeners:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/PhoneStateListener;

    invoke-virtual {v6, v5, v8}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    if-nez v4, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_5

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mPhoneStateListeners:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    new-instance v2, Lcom/android/phone/CallNotifier$CallNotifierPhoneStateListener;

    invoke-direct {v2, p0, v3}, Lcom/android/phone/CallNotifier$CallNotifierPhoneStateListener;-><init>(Lcom/android/phone/CallNotifier;I)V

    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/16 v6, 0xc

    invoke-virtual {v5, v2, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mPhoneStateListeners:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method
