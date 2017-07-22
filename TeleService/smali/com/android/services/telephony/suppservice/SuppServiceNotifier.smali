.class public Lcom/android/services/telephony/suppservice/SuppServiceNotifier;
.super Ljava/lang/Object;
.source "SuppServiceNotifier.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static displaySuppServiceInfo(Lcom/android/internal/telephony/gsm/SuppServiceNotification;)V
    .locals 8

    const/4 v6, 0x1

    iget v1, p0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    iget v0, p0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    const-string/jumbo v3, "SuppServiceNotifier"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "displaySuppServiceInfo - type : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " / code : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-static {v0}, Lcom/android/services/telephony/suppservice/SuppServiceNotifier;->suppServiceNotificationMobileOriginated(I)V

    invoke-static {v0}, Lcom/android/services/telephony/suppservice/SuppServiceNotifier;->suppServiceNotificationMobileOriginatedMessage(I)V

    goto :goto_0

    :pswitch_1
    invoke-static {v0}, Lcom/android/services/telephony/suppservice/SuppServiceNotifier;->suppServiceNotificationMobileTerminated(I)V

    invoke-static {v0}, Lcom/android/services/telephony/suppservice/SuppServiceNotifier;->suppServiceNotificationMobileTerminatedMessage(I)V

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->number:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/android/services/telephony/suppservice/SuppServiceNotifier;->notifyHoldStateOfTheOtherParty(ILjava/lang/String;)V

    invoke-static {v0, v2}, Lcom/android/services/telephony/suppservice/SuppServiceNotifier;->notifyCallIsConfParticipant(ILjava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static notifyCallIsConfParticipant(ILjava/lang/String;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string/jumbo v3, "SuppServiceNotifier"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifyCallIsConfParticipant - code : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v3, 0x4

    if-eq p0, v3, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/android/services/telephony/TelephonyConnectionUtils;->getOriginalConnectionByNumber(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/services/telephony/TelephonyConnectionService;->getInstance()Lcom/android/services/telephony/TelephonyConnectionService;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/services/telephony/TelephonyConnectionService;->getInstance()Lcom/android/services/telephony/TelephonyConnectionService;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/services/telephony/TelephonyConnectionService;->getTelephonyConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/services/telephony/TelephonyConnection;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    const-string/jumbo v3, "SuppServiceNotifier"

    const-string/jumbo v4, "notifyCallIsConfParticipant error! TelephonyConnection is null"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/services/telephony/TelephonyConnection;->getCallId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/services/utils/SecTelecomAdapter;->getSecCallExtra(Ljava/lang/String;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v2

    if-nez v2, :cond_3

    const-string/jumbo v3, "SuppServiceNotifier"

    const-string/jumbo v4, "notifyCallIsConfParticipant error! SecCallExtra is null"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_3
    invoke-static {v2, v1}, Lcom/android/services/telephony/TelephonyConnectionUtils;->updateSecCallExtraFromCallDetails(Lcom/android/services/telephony/common/SecCallExtra;Lcom/android/internal/telephony/Connection;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/android/services/telephony/common/SecCallExtra;->setConfParticipant(Z)V

    const-string/jumbo v3, "SuppServiceNotifier"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifyCallIsConfParticipant - SecCallExtra : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/android/services/utils/SecTelecomAdapter;->updateSecCallExtra(Lcom/android/services/telephony/TelephonyConnection;Lcom/android/services/telephony/common/SecCallExtra;)V

    return-void
.end method

.method private static notifyHoldStateOfTheOtherParty(ILjava/lang/String;)V
    .locals 12

    const/16 v11, 0x20

    const/4 v10, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string/jumbo v4, "SuppServiceNotifier"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "notifyHoldStateOfTheOtherParty - code : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-static {v4, v7, v8}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eq p0, v10, :cond_0

    if-eq p0, v11, :cond_0

    const/4 v4, 0x3

    if-eq p0, v4, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "SuppServiceNotifier"

    const-string/jumbo v5, "notifyHoldStateOfTheOtherParty error! number is empty"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-static {p1}, Lcom/android/services/telephony/TelephonyConnectionUtils;->getOriginalConnectionByNumber(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v2

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/services/telephony/TelephonyConnectionService;->getInstance()Lcom/android/services/telephony/TelephonyConnectionService;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/services/telephony/TelephonyConnectionService;->getInstance()Lcom/android/services/telephony/TelephonyConnectionService;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/services/telephony/TelephonyConnectionService;->getTelephonyConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/services/telephony/TelephonyConnection;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    const-string/jumbo v4, "SuppServiceNotifier"

    const-string/jumbo v7, "notifyHoldStateOfTheOtherParty error! TelephonyConnection is null"

    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v8, v6

    invoke-static {v4, v7, v8}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_3
    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/services/telephony/TelephonyConnection;->getCallId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/android/services/utils/SecTelecomAdapter;->getSecCallExtra(Ljava/lang/String;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v3

    if-nez v3, :cond_4

    const-string/jumbo v4, "SuppServiceNotifier"

    const-string/jumbo v7, "notifyHoldStateOfTheOtherParty error! SecCallExtra is null"

    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v8, v6

    invoke-static {v4, v7, v8}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_4
    invoke-static {v3, v2}, Lcom/android/services/telephony/TelephonyConnectionUtils;->updateSecCallExtraFromCallDetails(Lcom/android/services/telephony/common/SecCallExtra;Lcom/android/internal/telephony/Connection;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v3

    if-eq p0, v10, :cond_5

    if-ne p0, v11, :cond_6

    :cond_5
    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_7

    move v4, v5

    :goto_1
    invoke-virtual {v3, v4}, Lcom/android/services/telephony/common/SecCallExtra;->setHoldStateOfTheOtherParty(B)V

    const-string/jumbo v4, "SuppServiceNotifier"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "notifyHoldStateOfTheOtherParty - HoldStateOfTheOtherParty : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/android/services/telephony/common/SecCallExtra;->getHoldStateOfTheOtherParty()B

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v8, v6

    invoke-static {v4, v7, v8}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Lcom/android/services/utils/SecTelecomAdapter;->updateSecCallExtra(Lcom/android/services/telephony/TelephonyConnection;Lcom/android/services/telephony/common/SecCallExtra;)V

    return-void

    :cond_6
    const/4 v1, 0x0

    goto :goto_0

    :cond_7
    move v4, v6

    goto :goto_1
.end method

.method public static declared-synchronized onSuppServiceNotify(Landroid/os/AsyncResult;)V
    .locals 7

    const-class v2, Lcom/android/services/telephony/suppservice/SuppServiceNotifier;

    monitor-enter v2

    :try_start_0
    const-string/jumbo v1, "SuppServiceNotifier"

    const-string/jumbo v3, "onSuppServiceNotify()..."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v1, v3, v4}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    invoke-static {v0}, Lcom/android/services/telephony/suppservice/SuppServiceNotifier;->displaySuppServiceInfo(Lcom/android/internal/telephony/gsm/SuppServiceNotification;)V

    invoke-static {}, Lcom/android/services/utils/SSInfoManager;->getInstance()Lcom/android/services/utils/SSInfoManager;

    move-result-object v1

    iget v3, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    invoke-virtual {v1, v3}, Lcom/android/services/utils/SSInfoManager;->onSSInfo(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static suppServiceNotificationMobileOriginated(I)V
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static suppServiceNotificationMobileOriginatedMessage(I)V
    .locals 5

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900aa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    const-string/jumbo v2, "feature_sbm"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    if-ne p0, v2, :cond_0

    const-string/jumbo v2, "SuppServiceNotifier"

    const-string/jumbo v3, "do not toast mo_call_is_waiting in SBM"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string/jumbo v2, "disable_toast_popup_when_mo_ccf"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    if-ne p0, v2, :cond_1

    return-void

    :cond_1
    array-length v2, v1

    if-ge p0, v2, :cond_2

    aget-object v2, v1, p0

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->displayLongToast(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private static suppServiceNotificationMobileTerminated(I)V
    .locals 5

    sparse-switch p0, :sswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    const-string/jumbo v2, "enable_volte_hold_tone"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "ims_rcs"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-static {v0}, Lcom/android/services/telephony/TelephonyConnectionUtils;->isCshRunning(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "SuppServiceNotifier"

    const-string/jumbo v3, "MT is HOLD send info to RCS"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.rcs.contentsharing.action.DISCONNECT_SHARE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    invoke-static {}, Lcom/android/services/telephony/TelephonyConnectionUtils;->playCallHoldTone()V

    goto :goto_0

    :sswitch_2
    const-string/jumbo v2, "enable_volte_hold_tone"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/services/telephony/TelephonyConnectionUtils;->stopCallHoldTone()V

    goto :goto_0

    :sswitch_3
    const-string/jumbo v2, "enable_volte_hold_tone"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/services/telephony/TelephonyConnectionUtils;->stopCallHoldTone()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_0
        0x5 -> :sswitch_0
        0x6 -> :sswitch_0
        0x7 -> :sswitch_0
        0x8 -> :sswitch_0
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0x20 -> :sswitch_3
    .end sparse-switch
.end method

.method private static suppServiceNotificationMobileTerminatedMessage(I)V
    .locals 9

    const/16 v8, 0x20

    const/4 v7, 0x4

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900ab

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    const-string/jumbo v3, "vzw_volte_ui"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    if-eq p0, v3, :cond_0

    const/4 v3, 0x3

    if-ne p0, v3, :cond_1

    :cond_0
    const-string/jumbo v3, "SuppServiceNotifier"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "VZW concept no toast : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    if-eq p0, v8, :cond_0

    if-ne p0, v7, :cond_2

    invoke-static {}, Lcom/android/services/telephony/TelephonyConnectionUtils;->existVoLTEVoiceCall()Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    const-string/jumbo v3, "SuppServiceNotifier"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "code "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v3, "ims_rcs"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-ne p0, v7, :cond_3

    invoke-static {v0}, Lcom/android/services/telephony/TelephonyConnectionUtils;->isCshRunning(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.rcs.contentsharing.action.DISCONNECT_SHARE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_3
    if-ne p0, v8, :cond_4

    const-string/jumbo v3, "SuppServiceNotifier"

    const-string/jumbo v4, "show toast for first MT_CODE_CALL_ON_HOLD_WITHOUT_TONE"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x2

    :cond_4
    array-length v3, v2

    if-ge p0, v3, :cond_5

    aget-object v3, v2, p0

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->displayLongToast(Ljava/lang/String;)V

    :cond_5
    return-void
.end method
