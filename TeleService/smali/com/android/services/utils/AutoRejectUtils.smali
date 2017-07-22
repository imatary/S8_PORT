.class public Lcom/android/services/utils/AutoRejectUtils;
.super Ljava/lang/Object;
.source "AutoRejectUtils.java"


# static fields
.field static final AUTOREJECT_CONTENT_URI:Landroid/net/Uri;

.field static final AUTOREJECT_VIDEOCALL_CONTENT_URI:Landroid/net/Uri;

.field private static final DBG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/services/utils/AutoRejectUtils;->DBG:Z

    const-string/jumbo v0, "content://com.android.phone.callsettings/reject_num"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/services/utils/AutoRejectUtils;->AUTOREJECT_CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v0, "content://com.android.phone.callsettings/reject_videocall_num"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/services/utils/AutoRejectUtils;->AUTOREJECT_VIDEOCALL_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkCnapSpecialCases(Ljava/lang/String;)I
    .locals 1

    const-string/jumbo v0, "PRIVATE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "P"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "RES"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "PRIVATE NUMBER"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x2

    return v0

    :cond_1
    const-string/jumbo v0, "UNAVAILABLE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "UNKNOWN"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "UNA"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "U"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x3

    return v0

    :cond_3
    const/4 v0, -0x1

    return v0
.end method

.method public static getAutoRejectBundleExtra(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Landroid/os/Bundle;
    .locals 4

    invoke-static {p0, p1}, Lcom/android/services/utils/AutoRejectUtils;->isAutoRejectCall(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Z

    move-result v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    new-instance v2, Lcom/android/services/telephony/common/SecCallExtra;

    invoke-direct {v2}, Lcom/android/services/telephony/common/SecCallExtra;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/services/telephony/common/SecCallExtra;->setAutoRejectCall(Z)V

    invoke-static {v2}, Lcom/android/services/telephony/common/SecCallExtra;->createSecCallExtraBundle(Lcom/android/services/telephony/common/SecCallExtra;)Landroid/os/Bundle;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getNthPositionValue(II)I
    .locals 1

    shr-int v0, p0, p1

    and-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isAutoRejectCall(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Z
    .locals 15

    const-string/jumbo v12, "china_vip_mode"

    invoke-static {v12}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-static/range {p0 .. p1}, Lcom/android/services/utils/AutoRejectUtils;->isVipModeReject(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Z

    move-result v12

    return v12

    :cond_0
    const/4 v1, 0x0

    const/4 v5, 0x0

    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v5

    :cond_1
    const/4 v8, 0x0

    const/4 v10, 0x0

    if-eqz p1, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v12

    invoke-static {v12}, Lcom/android/phone/PhoneUtils;->isPhoneInEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v12

    if-eqz v12, :cond_2

    const-string/jumbo v12, "AutoRejectUtils"

    const-string/jumbo v13, "Emergency Call Back mode. all number should be allowed"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v12, v13, v14}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v12, 0x0

    return v12

    :cond_2
    if-eqz p1, :cond_3

    invoke-static/range {p1 .. p1}, Lcom/android/phone/PhoneUtils;->isIntIncomingCallLock(Lcom/android/internal/telephony/Connection;)Z

    move-result v12

    if-eqz v12, :cond_3

    const-string/jumbo v12, "AutoRejectUtils"

    const-string/jumbo v13, "isAutoRejectCall Rejecting incoming call due to International Call reject "

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v12, v13, v14}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v12, 0x1

    return v12

    :cond_3
    const-string/jumbo v12, "support_tphone"

    invoke-static {v12}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isTPhoneRejectMode()Z

    move-result v12

    if-eqz v12, :cond_4

    const-string/jumbo v12, "AutoRejectUtils"

    const-string/jumbo v13, "isAutoRejectCall : Reject incoming call due to tphone RejectMode "

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v12, v13, v14}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v12, 0x1

    return v12

    :cond_4
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string/jumbo v12, "autoreject_mode_enable_sharedpref"

    const/4 v13, 0x1

    invoke-interface {v6, v12, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string/jumbo v12, "separate_call_reject"

    invoke-static {v12}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    if-eqz p1, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "autoreject_videocall_mode"

    const/4 v14, 0x2

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    const-string/jumbo v12, "autoreject_videocall_mode_enable_sharedpref"

    const/4 v13, 0x1

    invoke-interface {v6, v12, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    :goto_0
    const-string/jumbo v12, "AutoRejectUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "isAutoRejectCall mode : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " mIsrejectMode : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v12, v13, v14}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v4, :cond_6

    return v1

    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "autoreject_mode"

    const/4 v14, 0x2

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    goto :goto_0

    :cond_6
    const-string/jumbo v12, "support_tphone"

    invoke-static {v12}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isTPhoneMode()Z

    move-result v12

    if-eqz v12, :cond_7

    const-string/jumbo v12, "AutoRejectUtils"

    const-string/jumbo v13, "isAutoRejectCall false : Allowed auto reject call in the Tphone mode"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v12, v13, v14}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/phone/PhoneGlobals;->getNotificationMgr()Lcom/android/phone/NotificationMgr;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/phone/NotificationMgr;->cancelDisableAutoRejectNotification()V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/phone/PhoneGlobals;->getNotificationMgr()Lcom/android/phone/NotificationMgr;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/android/phone/NotificationMgr;->updateDisableAutoRejectStatus(Z)V

    return v1

    :cond_7
    packed-switch v8, :pswitch_data_0

    :goto_1
    const-string/jumbo v12, "AutoRejectUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "isAutoRejectCall : Is reject number? = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v12, v13, v14}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :pswitch_0
    const/4 v1, 0x0

    goto :goto_1

    :pswitch_1
    const/4 v1, 0x1

    goto :goto_1

    :pswitch_2
    const/4 v7, 0x3

    if-eqz p1, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v7

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_9

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0900fd

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v12, 0x1

    if-ne v7, v12, :cond_8

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/4 v7, 0x3

    :cond_8
    invoke-static {v5}, Lcom/android/services/utils/AutoRejectUtils;->checkCnapSpecialCases(Ljava/lang/String;)I

    move-result v3

    const/4 v12, 0x1

    if-ne v7, v12, :cond_9

    const/4 v12, -0x1

    if-eq v3, v12, :cond_9

    move v7, v3

    :cond_9
    const-string/jumbo v12, "separate_call_reject"

    invoke-static {v12}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_b

    if-eqz p1, :cond_b

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "unknown_videocall_mode"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    :goto_2
    const-string/jumbo v12, "dcm_auto_reject_conditions"

    invoke-static {v12}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_11

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "unknown_mode_jpn"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_a

    and-int/lit8 v9, v11, 0xf

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "unknown_mode"

    invoke-static {v12, v13, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "unknown_mode_jpn"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_a
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "unknown_mode"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v12, 0x0

    invoke-static {v10, v12}, Lcom/android/services/utils/AutoRejectUtils;->getNthPositionValue(II)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_c

    const/4 v12, 0x3

    if-ne v7, v12, :cond_c

    const/4 v1, 0x1

    goto/16 :goto_1

    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "unknown_mode"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    goto :goto_2

    :cond_c
    const/4 v12, 0x1

    invoke-static {v10, v12}, Lcom/android/services/utils/AutoRejectUtils;->getNthPositionValue(II)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_d

    const/4 v12, 0x2

    if-ne v7, v12, :cond_d

    const/4 v1, 0x1

    goto/16 :goto_1

    :cond_d
    const/4 v12, 0x2

    invoke-static {v10, v12}, Lcom/android/services/utils/AutoRejectUtils;->getNthPositionValue(II)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_e

    const/4 v12, 0x4

    if-ne v7, v12, :cond_e

    const/4 v1, 0x1

    goto/16 :goto_1

    :cond_e
    const/4 v12, 0x3

    invoke-static {v10, v12}, Lcom/android/services/utils/AutoRejectUtils;->getNthPositionValue(II)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_f

    invoke-static/range {p0 .. p1}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v2

    const/4 v12, 0x1

    if-ne v7, v12, :cond_f

    if-eqz v2, :cond_f

    iget-boolean v12, v2, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-eqz v12, :cond_10

    :cond_f
    if-nez v5, :cond_15

    const-string/jumbo v12, "AutoRejectUtils"

    const-string/jumbo v13, "isAutoRejectCall : phonenumber is null "

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v12, v13, v14}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_10
    const-string/jumbo v12, "AutoRejectUtils"

    const-string/jumbo v13, "Reject number other than contacts..."

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v12, v13, v14}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x1

    goto/16 :goto_1

    :cond_11
    if-lez v10, :cond_13

    const/4 v12, 0x3

    if-eq v7, v12, :cond_12

    const/4 v12, 0x2

    if-ne v7, v12, :cond_13

    :cond_12
    const/4 v1, 0x1

    goto/16 :goto_1

    :cond_13
    if-lez v10, :cond_f

    if-eqz v5, :cond_14

    const-string/jumbo v12, ""

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    :cond_14
    const/4 v1, 0x1

    goto/16 :goto_1

    :cond_15
    const-string/jumbo v12, "separate_call_reject"

    invoke-static {v12}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_16

    if-eqz p1, :cond_16

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v12

    if-eqz v12, :cond_16

    sget-object v12, Lcom/android/services/utils/AutoRejectUtils;->AUTOREJECT_VIDEOCALL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v5, v12}, Lcom/android/services/utils/AutoRejectUtils;->isAutoRejectMachedNumber(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v1

    goto/16 :goto_1

    :cond_16
    sget-object v12, Lcom/android/services/utils/AutoRejectUtils;->AUTOREJECT_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v5, v12}, Lcom/android/services/utils/AutoRejectUtils;->isAutoRejectMachedNumber(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v1

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static isAutoRejectMachedNumber(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 20

    const-string/jumbo v10, "reject_number"

    const-string/jumbo v8, "reject_checked"

    const-string/jumbo v9, "reject_match"

    const/4 v12, 0x0

    const/4 v14, 0x1

    const/4 v11, 0x2

    const/4 v13, 0x3

    const/16 v16, 0x0

    const-string/jumbo v5, "reject_checked=1"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    if-nez v15, :cond_0

    const-string/jumbo v2, "AutoRejectUtils"

    const-string/jumbo v3, "isAutoRejectMachedNumber : cursor is null"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v4, v7

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v16, 0x0

    return v16

    :cond_0
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, ""

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    const/4 v15, 0x0

    return v16

    :cond_2
    :goto_0
    const-string/jumbo v2, "reject_number"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v19, "xxxxxxxxxxx"

    sget-boolean v2, Lcom/android/services/utils/AutoRejectUtils;->DBG:Z

    if-eqz v2, :cond_3

    move-object/from16 v19, v18

    :cond_3
    const-string/jumbo v2, "reject_match"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    packed-switch v17, :pswitch_data_0

    :cond_4
    :goto_1
    if-nez v16, :cond_1

    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :pswitch_0
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "AutoRejectUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isAutoRejectMachedNumber : MATCH_EQUAL, rejectNumber : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v16, 0x1

    goto :goto_1

    :pswitch_1
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/services/utils/AutoRejectUtils;->isSameStartWith(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "AutoRejectUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isAutoRejectMachedNumber : MATCH_STARTS_WITH, rejectNumber : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v16, 0x1

    goto :goto_1

    :pswitch_2
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "AutoRejectUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isAutoRejectMachedNumber : MATCH_ENDS_WITH, rejectNumber : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v16, 0x1

    goto/16 :goto_1

    :pswitch_3
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "AutoRejectUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isAutoRejectMachedNumber : MATCH_INCLUDE, rejectNumber : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v16, 0x1

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static isSameStartWith(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return v1

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method public static isVipModeReject(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Z
    .locals 10

    const/4 v9, 0x0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v3

    :cond_0
    const/4 v5, 0x0

    const-string/jumbo v6, "content://com.sec.android.app.firewall"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v6, "anonymous"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string/jumbo v3, ""

    :cond_1
    const-string/jumbo v6, "number"

    invoke-virtual {v2, v6, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "should_block"

    const-string/jumbo v8, "call"

    invoke-virtual {v6, v0, v7, v8, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string/jumbo v6, "response"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo v6, "response"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    :cond_2
    :goto_0
    const-string/jumbo v6, "AutoRejectUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isVipModeReject retData :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5

    :catch_0
    move-exception v1

    const-string/jumbo v6, "AutoRejectUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "IllegalArgumentException : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
