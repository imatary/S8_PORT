.class public Lcom/android/phone/EmergencyCallbackModeService;
.super Landroid/app/Service;
.source "EmergencyCallbackModeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/EmergencyCallbackModeService$1;,
        Lcom/android/phone/EmergencyCallbackModeService$2;,
        Lcom/android/phone/EmergencyCallbackModeService$LocalBinder;
    }
.end annotation


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field private mEcmReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mInEmergencyCall:Z

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mTimeLeft:J

.field private mTimer:Landroid/os/CountDownTimer;


# direct methods
.method static synthetic -set0(Lcom/android/phone/EmergencyCallbackModeService;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/phone/EmergencyCallbackModeService;->mTimeLeft:J

    return-wide p1
.end method

.method static synthetic -wrap0(Lcom/android/phone/EmergencyCallbackModeService;Landroid/os/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/EmergencyCallbackModeService;->resetEcmTimer(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/phone/EmergencyCallbackModeService;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/phone/EmergencyCallbackModeService;->showNotification(J)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    iput-object v2, p0, Lcom/android/phone/EmergencyCallbackModeService;->mNotificationManager:Landroid/app/NotificationManager;

    iput-object v2, p0, Lcom/android/phone/EmergencyCallbackModeService;->mTimer:Landroid/os/CountDownTimer;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/phone/EmergencyCallbackModeService;->mTimeLeft:J

    iput-object v2, p0, Lcom/android/phone/EmergencyCallbackModeService;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/EmergencyCallbackModeService;->mInEmergencyCall:Z

    new-instance v0, Lcom/android/phone/EmergencyCallbackModeService$1;

    invoke-direct {v0, p0}, Lcom/android/phone/EmergencyCallbackModeService$1;-><init>(Lcom/android/phone/EmergencyCallbackModeService;)V

    iput-object v0, p0, Lcom/android/phone/EmergencyCallbackModeService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/EmergencyCallbackModeService$2;

    invoke-direct {v0, p0}, Lcom/android/phone/EmergencyCallbackModeService$2;-><init>(Lcom/android/phone/EmergencyCallbackModeService;)V

    iput-object v0, p0, Lcom/android/phone/EmergencyCallbackModeService;->mEcmReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/phone/EmergencyCallbackModeService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/android/phone/EmergencyCallbackModeService$LocalBinder;-><init>(Lcom/android/phone/EmergencyCallbackModeService;)V

    iput-object v0, p0, Lcom/android/phone/EmergencyCallbackModeService;->mBinder:Landroid/os/IBinder;

    return-void
.end method

.method private resetEcmTimer(Landroid/os/AsyncResult;)V
    .locals 4

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/EmergencyCallbackModeService;->mInEmergencyCall:Z

    iget-object v1, p0, Lcom/android/phone/EmergencyCallbackModeService;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V

    const-wide/16 v2, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/phone/EmergencyCallbackModeService;->showNotification(J)V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/EmergencyCallbackModeService;->mInEmergencyCall:Z

    invoke-direct {p0}, Lcom/android/phone/EmergencyCallbackModeService;->startTimerNotification()V

    goto :goto_0
.end method

.method private showNotification(J)V
    .locals 13

    const-string/jumbo v6, "emergency_callback_mode_exit_timer_enable"

    invoke-static {v6}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    return-void

    :cond_0
    const-string/jumbo v6, "ril.cdma.inecmmode"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v6, "EmergencyCallbackModeService"

    const-string/jumbo v7, "Asked to show notification but not in ECM mode"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/phone/EmergencyCallbackModeService;->mTimer:Landroid/os/CountDownTimer;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/phone/EmergencyCallbackModeService;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v6}, Landroid/os/CountDownTimer;->cancel()V

    :cond_1
    return-void

    :cond_2
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallbackModeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    const v6, 0x7f0200b7

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    const v6, 0x7f0d04fd

    invoke-virtual {p0, v6}, Lcom/android/phone/EmergencyCallbackModeService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    const v6, 0x7f0d04fe

    invoke-virtual {p0, v6}, Lcom/android/phone/EmergencyCallbackModeService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallbackModeService;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0006

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v7, "com.android.phone.action.ACTION_SHOW_ECM_EXIT_DIALOG"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {p0, v7, v6, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    const/4 v4, 0x0

    iget-boolean v6, p0, Lcom/android/phone/EmergencyCallbackModeService;->mInEmergencyCall:Z

    if-eqz v6, :cond_3

    const v6, 0x7f0d04ff

    invoke-virtual {p0, v6}, Lcom/android/phone/EmergencyCallbackModeService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v6, p0, Lcom/android/phone/EmergencyCallbackModeService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    const v8, 0x7f0d04fe

    invoke-virtual {v6, v8, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    :cond_3
    const-wide/32 v6, 0xea60

    div-long v6, p1, v6

    long-to-int v3, v6

    const-string/jumbo v6, "%d:%02d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const-wide/32 v8, 0xea60

    rem-long v8, p1, v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallbackModeService;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/high16 v7, 0x7f110000

    invoke-virtual {v6, v7, v3}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private startTimerNotification()V
    .locals 6

    const-string/jumbo v0, "ro.cdma.ecmexittimer"

    const-wide/32 v4, 0x493e0

    invoke-static {v0, v4, v5}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/phone/EmergencyCallbackModeService;->showNotification(J)V

    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackModeService;->mTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackModeService;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :goto_0
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackModeService;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void

    :cond_0
    new-instance v0, Lcom/android/phone/EmergencyCallbackModeService$3;

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/EmergencyCallbackModeService$3;-><init>(Lcom/android/phone/EmergencyCallbackModeService;JJ)V

    iput-object v0, p0, Lcom/android/phone/EmergencyCallbackModeService;->mTimer:Landroid/os/CountDownTimer;

    goto :goto_0
.end method


# virtual methods
.method public getEmergencyCallbackModeCallState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/EmergencyCallbackModeService;->mInEmergencyCall:Z

    return v0
.end method

.method public getEmergencyCallbackModeTimeout()J
    .locals 2

    iget-wide v0, p0, Lcom/android/phone/EmergencyCallbackModeService;->mTimeLeft:J

    return-wide v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackModeService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 6

    const/4 v3, 0x2

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getPhoneInEcm()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "global_network_cdma_gsm_enable"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const-string/jumbo v2, "china_cdma_call"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    if-ne v2, v3, :cond_1

    const-string/jumbo v2, "EmergencyCallbackModeService"

    const-string/jumbo v3, "Error! Emergency Callback Mode not supported in China CDMA"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallbackModeService;->stopSelf()V

    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/EmergencyCallbackModeService;->mEcmReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/android/phone/EmergencyCallbackModeService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo v2, "notification"

    invoke-virtual {p0, v2}, Lcom/android/phone/EmergencyCallbackModeService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, p0, Lcom/android/phone/EmergencyCallbackModeService;->mNotificationManager:Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/android/phone/EmergencyCallbackModeService;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/EmergencyCallbackModeService;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v3, p0, Lcom/android/phone/EmergencyCallbackModeService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/telephony/Phone;->registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/phone/EmergencyCallbackModeService;->startTimerNotification()V

    return-void

    :cond_2
    const-string/jumbo v2, "EmergencyCallbackModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error! Emergency Callback Mode not supported for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallbackModeService;->stopSelf()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackModeService;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackModeService;->mEcmReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyCallbackModeService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackModeService;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/EmergencyCallbackModeService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForEcmTimerReset(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackModeService;->mNotificationManager:Landroid/app/NotificationManager;

    const v1, 0x7f0d04fe

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackModeService;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    return-void
.end method
