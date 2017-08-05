.class public Lcom/android/phone/operator/kor/KorTelephonyReceiver;
.super Ljava/lang/Object;
.source "KorTelephonyReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/operator/kor/KorTelephonyReceiver$1;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/phone/operator/kor/KorTelephonyReceiver;


# instance fields
.field private isDisableRoamingMultiIMSI:Z

.field mHandler:Landroid/os/Handler;

.field private mIsScreenOn:Z


# direct methods
.method static synthetic -get0(Lcom/android/phone/operator/kor/KorTelephonyReceiver;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/operator/kor/KorTelephonyReceiver;->isDisableRoamingMultiIMSI:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/phone/operator/kor/KorTelephonyReceiver;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/operator/kor/KorTelephonyReceiver;->mIsScreenOn:Z

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/phone/operator/kor/KorTelephonyReceiver;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/operator/kor/KorTelephonyReceiver;->handleHDVoiceSettingInfo()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/phone/operator/kor/KorTelephonyReceiver;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/operator/kor/KorTelephonyReceiver;->handleRoamNetworkChanged()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/phone/operator/kor/KorTelephonyReceiver;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/operator/kor/KorTelephonyReceiver;->handleVolteApcsServiceStatus(Z)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/operator/kor/KorTelephonyReceiver;->mIsScreenOn:Z

    const-string/jumbo v0, "support_volte_during_roaming"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/operator/kor/KorTelephonyReceiver;->isDisableRoamingMultiIMSI:Z

    new-instance v0, Lcom/android/phone/operator/kor/KorTelephonyReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/phone/operator/kor/KorTelephonyReceiver$1;-><init>(Lcom/android/phone/operator/kor/KorTelephonyReceiver;)V

    iput-object v0, p0, Lcom/android/phone/operator/kor/KorTelephonyReceiver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static getInstance()Lcom/android/phone/operator/kor/KorTelephonyReceiver;
    .locals 1

    sget-object v0, Lcom/android/phone/operator/kor/KorTelephonyReceiver;->sInstance:Lcom/android/phone/operator/kor/KorTelephonyReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/operator/kor/KorTelephonyReceiver;

    invoke-direct {v0}, Lcom/android/phone/operator/kor/KorTelephonyReceiver;-><init>()V

    sput-object v0, Lcom/android/phone/operator/kor/KorTelephonyReceiver;->sInstance:Lcom/android/phone/operator/kor/KorTelephonyReceiver;

    :cond_0
    sget-object v0, Lcom/android/phone/operator/kor/KorTelephonyReceiver;->sInstance:Lcom/android/phone/operator/kor/KorTelephonyReceiver;

    return-object v0
.end method

.method private handleEventCallProtectionMenu(Z)V
    .locals 0

    invoke-static {p1}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->setCallProtectionEnabled(Z)V

    invoke-static {p1}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->sendCallProtectionBroadcast(Z)V

    invoke-static {}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->notifyCallProtectionStatus()V

    return-void
.end method

.method private handleEventScreenOn(Z)V
    .locals 7

    const/16 v6, 0x65

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getCallManager()Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    const-string/jumbo v2, "block_data_during_call"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "feature_ktt"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/phone/operator/kor/KorTelephonyReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    if-eqz p1, :cond_1

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->notifyCallProtectionStatus(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/phone/operator/kor/KorTelephonyReceiver;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private handleHDVoiceSettingInfo()V
    .locals 8

    const/4 v7, 0x0

    const-string/jumbo v4, "KorTelephonyReceiver"

    const-string/jumbo v5, "onReceive: ACTION_HD_VOICE_SETTING_INFO"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isSKTSIM()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v1, "com.android.phone.SKTHDVoiceSetting"

    :goto_0
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "com.android.phone"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v4, 0x10008000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, v3}, Lcom/android/phone/PhoneGlobals;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isKTSIM()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v1, "com.android.phone.KTHDVoiceSetting"

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isTestSIM()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v1, "com.android.phone.SKTHDVoiceSetting"

    goto :goto_0

    :cond_2
    return-void

    :catch_0
    move-exception v2

    const-string/jumbo v4, "KorTelephonyReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to start "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private handleNsriSecureCall()V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string/jumbo v4, "KorTelephonyReceiver"

    const-string/jumbo v5, "onReceive: ACTION_NSRI_SECURE_CALL"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getCallManager()Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v4, v5, :cond_1

    const-string/jumbo v4, "KorTelephonyReceiver"

    const-string/jumbo v5, "secure call is activated"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->getInstance()Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->isVoiceRecording()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->cancelRecordBySecureCall()V

    :cond_0
    const-string/jumbo v4, "audio"

    invoke-virtual {v1, v4}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const-string/jumbo v4, "svr=on"

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/android/services/utils/SecTelecomAdapter;->turnOnBluetooth(Z)V

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/android/services/utils/SecTelecomAdapter;->setMute(Z)V

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/android/services/utils/SecTelecomAdapter;->turnOnSpeaker(Z)V

    invoke-static {v9}, Lcom/android/phone/TeleServiceSystemDB;->setNsriSecureCallMode(I)V

    :cond_1
    return-void
.end method

.method private handleRoamNetworkChanged()V
    .locals 6

    const-string/jumbo v2, "KorTelephonyReceiver"

    const-string/jumbo v3, "Receive com.android.server.status.roam_network_changed"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    const-string/jumbo v2, "feature_lgt"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/phone/operator/kor/KorTelephonyReceiver$3;

    invoke-direct {v2, p0}, Lcom/android/phone/operator/kor/KorTelephonyReceiver$3;-><init>(Lcom/android/phone/operator/kor/KorTelephonyReceiver;)V

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private handleVolteApcsServiceStatus(Z)V
    .locals 6

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "voicecall_type"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v2, "KorTelephonyReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "received com.samsung.ims.action.apcsconfigurationinfo isVolteOn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " voicecall_type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    if-nez v1, :cond_0

    const-string/jumbo v2, "KorTelephonyReceiver"

    const-string/jumbo v3, "received com.samsung.ims.action.apcsconfigurationinfo ims_volte_apcs_service_status=off set volte off -voice_calltype = 1"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "voicecall_type"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public addActionToIntentFilter(Landroid/content/IntentFilter;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string/jumbo v2, "block_data_during_call"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "feature_ktt"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v2, "com.android.phone.ACTION_CALL_PROTECTION"

    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "com.skt.CALL_PROTECTION_MENU_ON"

    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "com.skt.CALL_PROTECTION_MENU_OFF"

    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_1
    const-string/jumbo v2, "auto_call"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "ro.debuggable"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_2

    const-string/jumbo v2, "android.intent.action.INCOMING_CALL"

    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.CALL_END"

    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_2
    const-string/jumbo v2, "optis_command_test"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "ro.debuggable"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_3

    const-string/jumbo v2, "android.intent.action.COMMAND_ENDCALL"

    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.COMMAND_ANSWERCALL"

    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_3
    const-string/jumbo v2, "support_display_bitrate"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "com.sec.android.ims.ktDisplayFpsBitrate"

    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_4
    const-string/jumbo v2, "support_nsri_secure"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string/jumbo v2, "android.intent.action.SECURE_CALL_MODE"

    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isNsriSecureCallMode()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v3}, Lcom/android/phone/TeleServiceSystemDB;->setNsriSecureCallMode(I)V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    const-string/jumbo v2, "audio"

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const-string/jumbo v2, "svr=off"

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    :cond_5
    const-string/jumbo v2, "support_action_domestic_network"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string/jumbo v2, "com.android.server.status.domestic_network"

    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_6
    const-string/jumbo v2, "support_tphone"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string/jumbo v2, "com.skt.prod.dialer.CHANGE_TPHONE_MODE_SETTING"

    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_7
    const-string/jumbo v2, "feature_lgt"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string/jumbo v2, "com.android.server.status.roam_network_changed"

    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method public isScreenOn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/operator/kor/KorTelephonyReceiver;->mIsScreenOn:Z

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getCallManager()Lcom/android/internal/telephony/CallManager;

    move-result-object v3

    const-string/jumbo v8, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string/jumbo v8, "KorTelephonyReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onReceive : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-static {v8, v9, v10}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const-string/jumbo v8, "com.android.phone.ACTION_CALL_PROTECTION"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string/jumbo v8, "block"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->notifyCallProtectionStatus(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v8, "com.skt.CALL_PROTECTION_MENU_ON"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/android/phone/operator/kor/KorTelephonyReceiver;->handleEventCallProtectionMenu(Z)V

    goto :goto_0

    :cond_3
    const-string/jumbo v8, "com.skt.CALL_PROTECTION_MENU_OFF"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/android/phone/operator/kor/KorTelephonyReceiver;->handleEventCallProtectionMenu(Z)V

    goto :goto_0

    :cond_4
    const-string/jumbo v8, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/android/phone/operator/kor/KorTelephonyReceiver;->handleEventScreenOn(Z)V

    goto :goto_0

    :cond_5
    const-string/jumbo v8, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/android/phone/operator/kor/KorTelephonyReceiver;->handleEventScreenOn(Z)V

    goto :goto_0

    :cond_6
    const-string/jumbo v8, "android.intent.action.INCOMING_CALL"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "skt_auto_test"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v8, v9, :cond_1

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_0

    :cond_7
    const-string/jumbo v8, "android.intent.action.CALL_END"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "skt_auto_test"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    const v8, 0x7f0d0556

    invoke-virtual {v1, v8}, Lcom/android/phone/PhoneGlobals;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v1, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v8, "android.intent.action.COMMAND_ANSWERCALL"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v8, v9, :cond_1

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v8, "android.intent.action.COMMAND_ENDCALL"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v8, "com.sec.android.ims.ktDisplayFpsBitrate"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    const-string/jumbo v8, "support_display_bitrate"

    invoke-static {v8}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string/jumbo v8, "action"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v8, "1"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    const/4 v8, 0x1

    invoke-static {v8}, Lcom/android/phone/TeleServiceSystemDB;->setDisplayBitrate(I)V

    goto/16 :goto_0

    :cond_b
    const/4 v8, 0x0

    invoke-static {v8}, Lcom/android/phone/TeleServiceSystemDB;->setDisplayBitrate(I)V

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v8, "android.intent.action.SECURE_CALL_MODE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-direct {p0}, Lcom/android/phone/operator/kor/KorTelephonyReceiver;->handleNsriSecureCall()V

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v8, "com.android.server.status.domestic_network"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    const-string/jumbo v8, "feature_lgt"

    invoke-static {v8}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    iget-object v8, p0, Lcom/android/phone/operator/kor/KorTelephonyReceiver;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x68

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    iget-object v8, p0, Lcom/android/phone/operator/kor/KorTelephonyReceiver;->mHandler:Landroid/os/Handler;

    const-wide/16 v10, 0xbb8

    invoke-virtual {v8, v6, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_e
    invoke-static {}, Lcom/android/phone/PhoneUtils;->showNetworkAutoReboot()V

    goto/16 :goto_0

    :cond_f
    const-string/jumbo v8, "com.skt.prod.dialer.CHANGE_TPHONE_MODE_SETTING"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    const-string/jumbo v8, "telecom"

    invoke-virtual {v1, v8}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telecom/TelecomManager;

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isTPhoneEnabled()Z

    move-result v8

    if-eqz v8, :cond_10

    const-string/jumbo v8, "com.skt.prod.dialer"

    invoke-virtual {v5, v8}, Landroid/telecom/TelecomManager;->setDefaultDialer(Ljava/lang/String;)Z

    invoke-static {}, Lcom/android/phone/TPhoneManager;->getInstance()Lcom/android/phone/TPhoneManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/TPhoneManager;->connectTInCallScreen()V

    const/4 v8, 0x1

    invoke-static {v8}, Lcom/android/phone/TPhoneUtils;->setDefaultDialer(I)V

    const/4 v8, 0x1

    invoke-static {v8}, Lcom/android/phone/TPhoneUtils;->setDefaultCaller(I)V

    :goto_1
    invoke-virtual {v5}, Landroid/telecom/TelecomManager;->cancelMissedCallsNotification()V

    goto/16 :goto_0

    :cond_10
    invoke-static {}, Lcom/android/phone/TeleServiceFeature;->getContactsPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/telecom/TelecomManager;->setDefaultDialer(Ljava/lang/String;)Z

    const/4 v8, 0x0

    invoke-static {v8}, Lcom/android/phone/TPhoneUtils;->setDefaultDialer(I)V

    const/4 v8, 0x0

    invoke-static {v8}, Lcom/android/phone/TPhoneUtils;->setDefaultCaller(I)V

    goto :goto_1

    :cond_11
    const-string/jumbo v8, "com.android.server.status.roam_network_changed"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-boolean v8, p0, Lcom/android/phone/operator/kor/KorTelephonyReceiver;->isDisableRoamingMultiIMSI:Z

    if-eqz v8, :cond_12

    iget-object v8, p0, Lcom/android/phone/operator/kor/KorTelephonyReceiver;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x67

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    iget-object v8, p0, Lcom/android/phone/operator/kor/KorTelephonyReceiver;->mHandler:Landroid/os/Handler;

    const-wide/16 v10, 0xbb8

    invoke-virtual {v8, v6, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_12
    iget-object v8, p0, Lcom/android/phone/operator/kor/KorTelephonyReceiver;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x66

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    iput-object p2, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/phone/operator/kor/KorTelephonyReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method

.method public registerHDVReceiver(Landroid/content/Context;)V
    .locals 5

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "com.samsung.ims.action.hdvoicesettinginfo"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "feature_skt"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "volte_outgoing_calltype_default_on"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    new-instance v1, Lcom/android/phone/operator/kor/KorTelephonyReceiver$2;

    invoke-direct {v1, p0}, Lcom/android/phone/operator/kor/KorTelephonyReceiver$2;-><init>(Lcom/android/phone/operator/kor/KorTelephonyReceiver;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "com.samsung.ims.permission.hdvoicesettinginfo"

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void

    :cond_1
    const-string/jumbo v2, "com.samsung.ims.action.apcsconfigurationinfo"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_0
.end method
