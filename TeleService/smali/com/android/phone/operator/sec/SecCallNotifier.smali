.class public Lcom/android/phone/operator/sec/SecCallNotifier;
.super Landroid/os/Handler;
.source "SecCallNotifier.java"

# interfaces
.implements Lcom/android/phone/operator/OperatorCallNotifier;


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private final mApp:Lcom/android/phone/PhoneGlobals;

.field private mAsyncConnectTonePlayer:Lcom/android/phone/operator/sec/AsyncConnectTonePlayer;

.field private final mPhone:Lcom/android/internal/telephony/Phone;

.field private mPreviousFgCallState:Lcom/android/internal/telephony/Call$State;

.field private mPreviousPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;


# direct methods
.method public constructor <init>(Lcom/android/phone/PhoneGlobals;Lcom/android/internal/telephony/Phone;)V
    .locals 2

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const-string/jumbo v0, "SecCallNotifier"

    iput-object v0, p0, Lcom/android/phone/operator/sec/SecCallNotifier;->LOG_TAG:Ljava/lang/String;

    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v0, p0, Lcom/android/phone/operator/sec/SecCallNotifier;->mPreviousPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/phone/operator/sec/SecCallNotifier;->mPreviousFgCallState:Lcom/android/internal/telephony/Call$State;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/operator/sec/SecCallNotifier;->mAsyncConnectTonePlayer:Lcom/android/phone/operator/sec/AsyncConnectTonePlayer;

    iput-object p1, p0, Lcom/android/phone/operator/sec/SecCallNotifier;->mApp:Lcom/android/phone/PhoneGlobals;

    iput-object p2, p0, Lcom/android/phone/operator/sec/SecCallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, p0, Lcom/android/phone/operator/sec/SecCallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SecCallNotifier"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/operator/sec/SecCallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/operator/sec/SecCallNotifier;->LOG_TAG:Ljava/lang/String;

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/operator/sec/SecCallNotifier;->registerForNotifications()V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/operator/sec/SecCallNotifier;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private needPlayConnectTone(Landroid/content/Context;)Z
    .locals 5

    const/4 v2, 0x1

    const-string/jumbo v0, "call_conn_tone"

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "call_conn_tone"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ge v1, v2, :cond_0

    const/4 v2, 0x0

    :cond_0
    return v2
.end method

.method private onPhoneStateChanged()V
    .locals 15

    const/4 v10, 0x1

    const/4 v14, 0x2

    const/4 v13, 0x0

    const/4 v11, 0x0

    iget-object v9, p0, Lcom/android/phone/operator/sec/SecCallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v7

    iget-object v9, p0, Lcom/android/phone/operator/sec/SecCallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "phone state: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v12, ", fg call state: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/phone/operator/sec/SecCallNotifier;->log(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/phone/operator/sec/SecCallNotifier;->mPreviousPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v12, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v9, v12, :cond_9

    sget-object v9, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v7, v9, :cond_8

    const/4 v4, 0x1

    :goto_0
    iget-object v9, p0, Lcom/android/phone/operator/sec/SecCallNotifier;->mPreviousFgCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v12, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v9, v12, :cond_b

    sget-object v9, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne v6, v9, :cond_a

    move v3, v10

    :goto_1
    if-eqz v3, :cond_d

    invoke-direct {p0, v2}, Lcom/android/phone/operator/sec/SecCallNotifier;->needPlayConnectTone(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/phone/operator/sec/SecCallNotifier;->mAsyncConnectTonePlayer:Lcom/android/phone/operator/sec/AsyncConnectTonePlayer;

    if-nez v9, :cond_0

    new-instance v9, Lcom/android/phone/operator/sec/AsyncConnectTonePlayer;

    invoke-direct {v9, v2}, Lcom/android/phone/operator/sec/AsyncConnectTonePlayer;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/phone/operator/sec/SecCallNotifier;->mAsyncConnectTonePlayer:Lcom/android/phone/operator/sec/AsyncConnectTonePlayer;

    :cond_0
    iget-object v12, p0, Lcom/android/phone/operator/sec/SecCallNotifier;->mAsyncConnectTonePlayer:Lcom/android/phone/operator/sec/AsyncConnectTonePlayer;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v9

    if-eqz v9, :cond_c

    move v9, v10

    :goto_2
    invoke-virtual {v12, v9}, Lcom/android/phone/operator/sec/AsyncConnectTonePlayer;->prepare(I)V

    :cond_1
    :goto_3
    iget-object v9, p0, Lcom/android/phone/operator/sec/SecCallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v8

    if-eq v8, v10, :cond_2

    const/4 v9, 0x3

    if-ne v8, v9, :cond_e

    :cond_2
    const-string/jumbo v9, "separate_ringback_gain"

    invoke-static {v9}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    const-string/jumbo v9, "audio"

    invoke-virtual {v2, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iget-object v9, p0, Lcom/android/phone/operator/sec/SecCallNotifier;->mPreviousFgCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v10, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne v9, v10, :cond_10

    sget-object v9, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v6, v9, :cond_10

    const-string/jumbo v9, "ringbacktone=on"

    invoke-virtual {v0, v9}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    :cond_3
    :goto_4
    sget-object v9, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v6, v9, :cond_12

    iget-object v9, p0, Lcom/android/phone/operator/sec/SecCallNotifier;->mPreviousFgCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v10, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-eq v9, v10, :cond_12

    :goto_5
    iget-object v9, p0, Lcom/android/phone/operator/sec/SecCallNotifier;->mAsyncConnectTonePlayer:Lcom/android/phone/operator/sec/AsyncConnectTonePlayer;

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/phone/operator/sec/SecCallNotifier;->mAsyncConnectTonePlayer:Lcom/android/phone/operator/sec/AsyncConnectTonePlayer;

    invoke-virtual {v9}, Lcom/android/phone/operator/sec/AsyncConnectTonePlayer;->play()V

    :cond_4
    :goto_6
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    const-string/jumbo v10, "CscFeature_Common_SupportSecWFC"

    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    const-string/jumbo v9, "notify WFC about phone state change"

    invoke-direct {p0, v9}, Lcom/android/phone/operator/sec/SecCallNotifier;->log(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/android/phone/WfcCallNotifier;->onPhoneStateChanged(Lcom/android/internal/telephony/Call;)V

    :cond_5
    iget-object v9, p0, Lcom/android/phone/operator/sec/SecCallNotifier;->mPreviousFgCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v10, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-eq v9, v10, :cond_6

    sget-object v9, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v6, v9, :cond_6

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/services/utils/SecTelecomAdapter;->setAlerting()V

    :cond_6
    iput-object v7, p0, Lcom/android/phone/operator/sec/SecCallNotifier;->mPreviousPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v6, p0, Lcom/android/phone/operator/sec/SecCallNotifier;->mPreviousFgCallState:Lcom/android/internal/telephony/Call$State;

    const-string/jumbo v9, "show_ota_popup"

    invoke-static {v9}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    const-string/jumbo v9, "audio"

    invoke-virtual {v2, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getMode()I

    move-result v9

    if-eq v9, v14, :cond_13

    sget-object v9, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v6, v9, :cond_13

    const-string/jumbo v9, "setting MODE_IN_CALL for OTA"

    invoke-direct {p0, v9}, Lcom/android/phone/operator/sec/SecCallNotifier;->log(Ljava/lang/String;)V

    invoke-virtual {v1, v11, v14}, Landroid/media/AudioManager;->requestAudioFocusForCall(II)V

    invoke-virtual {v1, v14}, Landroid/media/AudioManager;->setMode(I)V

    const-string/jumbo v9, "realcall=on"

    invoke-virtual {v1, v9}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    :cond_7
    :goto_7
    return-void

    :cond_8
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_9
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_a
    move v3, v11

    goto/16 :goto_1

    :cond_b
    move v3, v11

    goto/16 :goto_1

    :cond_c
    move v9, v11

    goto/16 :goto_2

    :cond_d
    if-eqz v4, :cond_1

    iget-object v9, p0, Lcom/android/phone/operator/sec/SecCallNotifier;->mAsyncConnectTonePlayer:Lcom/android/phone/operator/sec/AsyncConnectTonePlayer;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/phone/operator/sec/SecCallNotifier;->mAsyncConnectTonePlayer:Lcom/android/phone/operator/sec/AsyncConnectTonePlayer;

    invoke-virtual {v9}, Lcom/android/phone/operator/sec/AsyncConnectTonePlayer;->stop()V

    iput-object v13, p0, Lcom/android/phone/operator/sec/SecCallNotifier;->mAsyncConnectTonePlayer:Lcom/android/phone/operator/sec/AsyncConnectTonePlayer;

    goto/16 :goto_3

    :cond_e
    const/4 v9, 0x5

    if-eq v8, v9, :cond_2

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isImsCall()Z

    move-result v9

    if-nez v9, :cond_2

    if-ne v8, v14, :cond_4

    iget-object v9, p0, Lcom/android/phone/operator/sec/SecCallNotifier;->mPreviousFgCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v10, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v9, v10, :cond_f

    iget-object v9, p0, Lcom/android/phone/operator/sec/SecCallNotifier;->mPreviousFgCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v10, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v9, v10, :cond_4

    :cond_f
    sget-object v9, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v6, v9, :cond_4

    iget-object v9, p0, Lcom/android/phone/operator/sec/SecCallNotifier;->mAsyncConnectTonePlayer:Lcom/android/phone/operator/sec/AsyncConnectTonePlayer;

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/phone/operator/sec/SecCallNotifier;->mAsyncConnectTonePlayer:Lcom/android/phone/operator/sec/AsyncConnectTonePlayer;

    invoke-virtual {v9}, Lcom/android/phone/operator/sec/AsyncConnectTonePlayer;->play()V

    goto/16 :goto_6

    :cond_10
    iget-object v9, p0, Lcom/android/phone/operator/sec/SecCallNotifier;->mPreviousFgCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v10, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v9, v10, :cond_11

    sget-object v9, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v6, v9, :cond_11

    const-string/jumbo v9, "ringbacktone=off"

    invoke-virtual {v0, v9}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_11
    if-eqz v4, :cond_3

    const-string/jumbo v9, "ringbacktone=off"

    invoke-virtual {v0, v9}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_12
    iget-object v9, p0, Lcom/android/phone/operator/sec/SecCallNotifier;->mPreviousFgCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v10, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne v9, v10, :cond_4

    sget-object v9, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v6, v9, :cond_4

    goto/16 :goto_5

    :cond_13
    const-string/jumbo v9, "setting MODE_NORMAL after OTA"

    invoke-direct {p0, v9}, Lcom/android/phone/operator/sec/SecCallNotifier;->log(Ljava/lang/String;)V

    const-string/jumbo v9, "realcall=off"

    invoke-virtual {v1, v9}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Landroid/media/AudioManager;->setMode(I)V

    invoke-virtual {v1}, Landroid/media/AudioManager;->abandonAudioFocusForCall()V

    goto :goto_7
.end method

.method private registerForNotifications()V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/operator/sec/SecCallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/Phone;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleMessage : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/operator/sec/SecCallNotifier;->log(Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string/jumbo v0, "MSG_PRECISE_CALL_STATE_CHANGED"

    invoke-direct {p0, v0}, Lcom/android/phone/operator/sec/SecCallNotifier;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/phone/operator/sec/SecCallNotifier;->onPhoneStateChanged()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public updateAfterRadioTechnologyChange()V
    .locals 1

    const-string/jumbo v0, "updateCallNotifierRegistrationsAfterRadioTechnologyChange..."

    invoke-direct {p0, v0}, Lcom/android/phone/operator/sec/SecCallNotifier;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/operator/sec/SecCallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/Phone;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    invoke-direct {p0}, Lcom/android/phone/operator/sec/SecCallNotifier;->registerForNotifications()V

    return-void
.end method
