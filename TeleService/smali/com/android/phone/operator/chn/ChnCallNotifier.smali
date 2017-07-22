.class public Lcom/android/phone/operator/chn/ChnCallNotifier;
.super Landroid/os/Handler;
.source "ChnCallNotifier.java"

# interfaces
.implements Lcom/android/phone/operator/OperatorCallNotifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/operator/chn/ChnCallNotifier$1;,
        Lcom/android/phone/operator/chn/ChnCallNotifier$2;,
        Lcom/android/phone/operator/chn/ChnCallNotifier$3;
    }
.end annotation


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field filter:Landroid/content/IntentFilter;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private final mApp:Lcom/android/phone/PhoneGlobals;

.field private mBroadCastReceiver:Landroid/content/BroadcastReceiver;

.field private mGoToSleepMode:Z

.field private final mHandler:Landroid/os/Handler;

.field private mIsCdmaRedialCall:Z

.field private mIsGsmRedialCall:Z

.field private mLastCallNumber:Ljava/lang/String;

.field private mOriginalCdmaCallState:Lcom/android/internal/telephony/Call$State;

.field private mOriginalGsmCallState:Lcom/android/internal/telephony/Call$State;

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private final mPhone:Lcom/android/internal/telephony/Phone;

.field private mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

.field private mPreviousGsmCallState:Lcom/android/internal/telephony/Call$State;

.field private mRedialCallCount:I

.field mRedialCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mRedialProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method static synthetic -get0(Lcom/android/phone/operator/chn/ChnCallNotifier;)Landroid/app/AlarmManager;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/operator/chn/ChnCallNotifier;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/phone/operator/chn/ChnCallNotifier;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/operator/chn/ChnCallNotifier;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/phone/operator/chn/ChnCallNotifier;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/operator/chn/ChnCallNotifier;->mLastCallNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/phone/operator/chn/ChnCallNotifier;)Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/operator/chn/ChnCallNotifier;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/phone/operator/chn/ChnCallNotifier;)Lcom/android/internal/telephony/Phone;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/operator/chn/ChnCallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/phone/operator/chn/ChnCallNotifier;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/operator/chn/ChnCallNotifier;->mRedialProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/phone/operator/chn/ChnCallNotifier;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/operator/chn/ChnCallNotifier;->mIsGsmRedialCall:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/phone/operator/chn/ChnCallNotifier;I)I
    .locals 0

    iput p1, p0, Lcom/android/phone/operator/chn/ChnCallNotifier;->mRedialCallCount:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/phone/operator/chn/ChnCallNotifier;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/chn/ChnCallNotifier;->mRedialProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/phone/operator/chn/ChnCallNotifier;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/operator/chn/ChnCallNotifier;->placeCall(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/phone/PhoneGlobals;Lcom/android/internal/telephony/Phone;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const-string/jumbo v0, "ChnCallNotifier"

    iput-object v0, p0, Lcom/android/phone/operator/chn/ChnCallNotifier;->LOG_TAG:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/phone/operator/chn/ChnCallNotifier;->mGoToSleepMode:Z

    iput-boolean v1, p0, Lcom/android/phone/operator/chn/ChnCallNotifier;->mIsCdmaRedialCall:Z

    iput-boolean v1, p0, Lcom/android/phone/operator/chn/ChnCallNotifier;->mIsGsmRedialCall:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/operator/chn/ChnCallNotifier;->mLastCallNumber:Ljava/lang/String;

    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/phone/operator/chn/ChnCallNotifier;->mOriginalGsmCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/phone/operator/chn/ChnCallNotifier;->mOriginalCdmaCallState:Lcom/android/internal/telephony/Call$State;

    new-instance v0, Lcom/android/phone/operator/chn/ChnCallNotifier$1;

    invoke-direct {v0, p0}, Lcom/android/phone/operator/chn/ChnCallNotifier$1;-><init>(Lcom/android/phone/operator/chn/ChnCallNotifier;)V

    iput-object v0, p0, Lcom/android/phone/operator/chn/ChnCallNotifier;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/operator/chn/ChnCallNotifier$2;

    invoke-direct {v0, p0}, Lcom/android/phone/operator/chn/ChnCallNotifier$2;-><init>(Lcom/android/phone/operator/chn/ChnCallNotifier;)V

    iput-object v0, p0, Lcom/android/phone/operator/chn/ChnCallNotifier;->mRedialCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    new-instance v0, Lcom/android/phone/operator/chn/ChnCallNotifier$3;

    invoke-direct {v0, p0}, Lcom/android/phone/operator/chn/ChnCallNotifier$3;-><init>(Lcom/android/phone/operator/chn/ChnCallNotifier;)V

    iput-object v0, p0, Lcom/android/phone/operator/chn/ChnCallNotifier;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v0, "ChnCallNotifier create"

    invoke-direct {p0, v0}, Lcom/android/phone/operator/chn/ChnCallNotifier;->log(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/phone/operator/chn/ChnCallNotifier;->mApp:Lcom/android/phone/PhoneGlobals;

    iput-object p2, p0, Lcom/android/phone/operator/chn/ChnCallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, p0, Lcom/android/phone/operator/chn/ChnCallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ChnCallNotifier"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/operator/chn/ChnCallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/operator/chn/ChnCallNotifier;->LOG_TAG:Ljava/lang/String;

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/operator/chn/ChnCallNotifier;->registerForNotifications()V

    const-string/jumbo v0, "auto_redial_time_delay"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/phone/operator/chn/ChnCallNotifier;->filter:Landroid/content/IntentFilter;

    const-string/jumbo v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/operator/chn/ChnCallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/operator/chn/ChnCallNotifier;->filter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.AUTO_REDIAL_TIMER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/android/phone/operator/chn/ChnCallNotifier;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v1, p0, Lcom/android/phone/operator/chn/ChnCallNotifier;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/phone/operator/chn/ChnCallNotifier;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneGlobals;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/phone/operator/chn/ChnCallNotifier;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string/jumbo v1, "alarm"

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/phone/operator/chn/ChnCallNotifier;->mAlarmManager:Landroid/app/AlarmManager;

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/phone/operator/chn/ChnCallNotifier;->filter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.AUTO_REDIAL_TIMER_2"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/phone/operator/chn/ChnCallNotifier;->filter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.AUTO_REDIAL_TIMER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/operator/chn/ChnCallNotifier;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/operator/chn/ChnCallNotifier;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method

.method private onDisconnect()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/operator/chn/ChnCallNotifier;->mGoToSleepMode:Z

    return-void
.end method

.method private onPhoneStateChanged()V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "ctc_cdma_smc_fac_req"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/operator/chn/ChnCallNotifier;->isFactoryTest()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/operator/chn/ChnCallNotifier;->mGoToSleepMode:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/operator/chn/ChnCallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/operator/chn/ChnCallNotifier;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->wakeUpScreen()V

    const-wide/16 v0, 0x1f4

    const/4 v2, 0x5

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/phone/operator/chn/ChnCallNotifier;->sendEmptyMessageDelayed(IJ)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/operator/chn/ChnCallNotifier;->mGoToSleepMode:Z

    :cond_0
    iget-object v0, p0, Lcom/android/phone/operator/chn/ChnCallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/phone/operator/chn/ChnCallNotifier;->mRedialProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/operator/chn/ChnCallNotifier;->mRedialProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iput-object v3, p0, Lcom/android/phone/operator/chn/ChnCallNotifier;->mRedialProgressDialog:Landroid/app/ProgressDialog;

    :cond_1
    return-void
.end method

.method private placeCall(Ljava/lang/String;)V
    .locals 5

    const-string/jumbo v2, "placeCall entered!!!!!"

    invoke-direct {p0, v2}, Lcom/android/phone/operator/chn/ChnCallNotifier;->log(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.CALL_PRIVILEGED"

    const-string/jumbo v3, "tel"

    const/4 v4, 0x0

    invoke-static {v3, p1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v2, 0x10800000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/operator/chn/ChnCallNotifier;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2, v0}, Lcom/android/phone/PhoneGlobals;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/android/phone/operator/chn/ChnCallNotifier;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ActivityNotFoundException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private registerForNotifications()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/phone/operator/chn/ChnCallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/Phone;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/phone/operator/chn/ChnCallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/Phone;->registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/phone/operator/chn/ChnCallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/Phone;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private updateCallForwardIndicator()V
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/phone/operator/chn/ChnCallNotifier;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getNotificationMgr()Lcom/android/phone/NotificationMgr;

    move-result-object v1

    iget-object v4, p0, Lcom/android/phone/operator/chn/ChnCallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    :goto_0
    iget-object v4, p0, Lcom/android/phone/operator/chn/ChnCallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateCallForwardIndicator : state ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", number = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/operator/chn/ChnCallNotifier;->log(Ljava/lang/String;)V

    const-string/jumbo v4, "cdma_call_forwarding_indicator"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/phone/operator/chn/ChnCallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_1

    if-eqz v2, :cond_1

    const-string/jumbo v4, "*720"

    invoke-virtual {v2, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "*730"

    invoke-virtual {v2, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_3

    :cond_0
    invoke-virtual {v1, v6}, Lcom/android/phone/NotificationMgr;->updateCdmaCfi(Z)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    const-string/jumbo v4, "*72"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/android/phone/NotificationMgr;->updateCdmaCfi(Z)V

    goto :goto_1
.end method

.method private updatePreCallstate()V
    .locals 3

    iget-object v2, p0, Lcom/android/phone/operator/chn/ChnCallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/operator/chn/ChnCallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/android/phone/operator/chn/ChnCallNotifier;->mOriginalGsmCallState:Lcom/android/internal/telephony/Call$State;

    iput-object v2, p0, Lcom/android/phone/operator/chn/ChnCallNotifier;->mPreviousGsmCallState:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/phone/operator/chn/ChnCallNotifier;->mOriginalGsmCallState:Lcom/android/internal/telephony/Call$State;

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/operator/chn/ChnCallNotifier;->mOriginalCdmaCallState:Lcom/android/internal/telephony/Call$State;

    iput-object v2, p0, Lcom/android/phone/operator/chn/ChnCallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/phone/operator/chn/ChnCallNotifier;->mOriginalCdmaCallState:Lcom/android/internal/telephony/Call$State;

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleMessage : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/operator/chn/ChnCallNotifier;->log(Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string/jumbo v0, "MSG_PRECISE_CALL_STATE_CHANGED"

    invoke-direct {p0, v0}, Lcom/android/phone/operator/chn/ChnCallNotifier;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/phone/operator/chn/ChnCallNotifier;->updateCallForwardIndicator()V

    invoke-direct {p0}, Lcom/android/phone/operator/chn/ChnCallNotifier;->onPhoneStateChanged()V

    invoke-direct {p0}, Lcom/android/phone/operator/chn/ChnCallNotifier;->updatePreCallstate()V

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "PHONE_STATE_SIGNALINFO"

    invoke-direct {p0, v0}, Lcom/android/phone/operator/chn/ChnCallNotifier;->log(Ljava/lang/String;)V

    const-string/jumbo v0, "usa_cdma_smc_fac_req"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "ctc_cdma_smc_fac_req"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    const-wide/16 v0, 0x12c

    const/4 v2, 0x4

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/phone/operator/chn/ChnCallNotifier;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "PHONE_DISCONNECT"

    invoke-direct {p0, v0}, Lcom/android/phone/operator/chn/ChnCallNotifier;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/phone/operator/chn/ChnCallNotifier;->onDisconnect()V

    goto :goto_0

    :pswitch_3
    const-string/jumbo v0, "usa_cdma_smc_fac_req"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "ctc_cdma_smc_fac_req"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/operator/chn/ChnCallNotifier;->isFactoryTest()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "mApplication.isFactoryTest()"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/operator/chn/ChnCallNotifier;->log(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/phone/operator/chn/ChnCallNotifier;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->wakeUpScreen()V

    const-wide/16 v0, 0x7d0

    const/4 v2, 0x5

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/phone/operator/chn/ChnCallNotifier;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/phone/operator/chn/ChnCallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_0

    const-string/jumbo v0, "PHONE_SCREEN_OFF"

    invoke-direct {p0, v0}, Lcom/android/phone/operator/chn/ChnCallNotifier;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/operator/chn/ChnCallNotifier;->makeGoToSleep()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public isFactoryMode()Z
    .locals 10

    const/4 v9, 0x0

    const/4 v2, 0x0

    const-string/jumbo v6, "ctc_cdma_smc_fac_req"

    invoke-static {v6}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/phone/operator/chn/ChnCallNotifier;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "phone"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iget-object v6, p0, Lcom/android/phone/operator/chn/ChnCallNotifier;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "phone2"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    iget-object v6, p0, Lcom/android/phone/operator/chn/ChnCallNotifier;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "SHOULD_SHUT_DOWN"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    iget-object v6, p0, Lcom/android/phone/operator/chn/ChnCallNotifier;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "Factory mode is enabled by Case #1"

    invoke-static {v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    :cond_0
    if-nez v2, :cond_2

    const-string/jumbo v6, "999999999999999"

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    if-eqz v4, :cond_2

    const-string/jumbo v6, "999999999999999"

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    iget-object v6, p0, Lcom/android/phone/operator/chn/ChnCallNotifier;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "Factory mode is enabled by Case #2"

    invoke-static {v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    :cond_2
    if-nez v2, :cond_4

    const-string/jumbo v1, "/efs/FactoryApp/factorymode"

    const/4 v5, 0x0

    :try_start_0
    new-instance v6, Ljava/io/File;

    const-string/jumbo v7, "/efs/FactoryApp/factorymode"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v7, 0x20

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    :goto_0
    if-eqz v5, :cond_3

    const-string/jumbo v6, "ON"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    return v9

    :catch_0
    move-exception v0

    const-string/jumbo v5, "OFF"

    iget-object v6, p0, Lcom/android/phone/operator/chn/ChnCallNotifier;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "cannot open file"

    invoke-static {v6, v7}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    :cond_4
    return v2
.end method

.method public isFactoryTest()Z
    .locals 4

    const-string/jumbo v2, "gsm.default.esn"

    const-string/jumbo v3, "Unknown"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "ril.LoopbackCallFlag"

    const-string/jumbo v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ctc_cdma_smc_fac_req"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/operator/chn/ChnCallNotifier;->isFactoryMode()Z

    move-result v2

    return v2

    :cond_0
    const-string/jumbo v2, "TRUE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public makeGoToSleep()V
    .locals 6

    const-string/jumbo v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/os/IPowerManager;->goToSleep(JII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public updateAfterRadioTechnologyChange()V
    .locals 1

    const-string/jumbo v0, "updateCallNotifierRegistrationsAfterRadioTechnologyChange..."

    invoke-direct {p0, v0}, Lcom/android/phone/operator/chn/ChnCallNotifier;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/operator/chn/ChnCallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/Phone;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/phone/operator/chn/ChnCallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/Phone;->unregisterForSignalInfo(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/phone/operator/chn/ChnCallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/Phone;->unregisterForDisconnect(Landroid/os/Handler;)V

    invoke-direct {p0}, Lcom/android/phone/operator/chn/ChnCallNotifier;->registerForNotifications()V

    return-void
.end method
