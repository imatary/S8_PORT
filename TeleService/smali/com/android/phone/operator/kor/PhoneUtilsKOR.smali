.class public Lcom/android/phone/operator/kor/PhoneUtilsKOR;
.super Ljava/lang/Object;
.source "PhoneUtilsKOR.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/operator/kor/PhoneUtilsKOR$CallProtectionType;
    }
.end annotation


# static fields
.field private static mCallProtectionType:Lcom/android/phone/operator/kor/PhoneUtilsKOR$CallProtectionType;

.field private static mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    sget-object v0, Lcom/android/phone/operator/kor/PhoneUtilsKOR$CallProtectionType;->IDLE:Lcom/android/phone/operator/kor/PhoneUtilsKOR$CallProtectionType;

    sput-object v0, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->mCallProtectionType:Lcom/android/phone/operator/kor/PhoneUtilsKOR$CallProtectionType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkKTHDVoice()V
    .locals 14

    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    const-string/jumbo v11, "ril.currentplmn"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isKTSIM()Z

    move-result v8

    const-string/jumbo v11, "support_uicc_mobility"

    invoke-static {v11}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isSKTSIM()Z

    move-result v11

    or-int/2addr v8, v11

    :cond_0
    const-string/jumbo v11, "ims_support_volte_roaming"

    invoke-static {v11}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    if-eqz v8, :cond_1

    const-string/jumbo v11, "oversea"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "voicecall_type"

    const/4 v13, 0x2

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    const/4 v11, 0x1

    if-ne v6, v11, :cond_3

    const/4 v11, 0x0

    :goto_1
    invoke-static {v11}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->setHDVoiceNetworkPref(Z)V

    goto :goto_0

    :cond_3
    const/4 v11, 0x1

    goto :goto_1

    :cond_4
    if-eqz v8, :cond_5

    const-string/jumbo v11, "oversea"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    :cond_5
    const-string/jumbo v11, "checkKTHDVoice : abnormal case"

    invoke-static {v11}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->log(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "backup_voicecall_type"

    const/4 v13, -0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v8, :cond_f

    const-string/jumbo v11, "oversea"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    const/4 v11, -0x1

    if-ne v5, v11, :cond_f

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "voicecall_type"

    const/4 v13, 0x2

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "backup_voicecall_type"

    invoke-static {v11, v12, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_6
    :goto_2
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isLGTSIM()Z

    move-result v11

    if-nez v11, :cond_7

    const-string/jumbo v11, "oversea"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "voicecall_type"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "hd_voice_network_pref"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_7
    if-eqz v8, :cond_10

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "kt_hd_voice_abnormal_case"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_3
    const-string/jumbo v11, "interworking_hd_voice_by_intent"

    invoke-static {v11}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v11, "android.intent.action.HD_VOICE_CHANGED"

    invoke-direct {v9, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v11, "enable"

    const/4 v12, 0x0

    invoke-virtual {v9, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v11

    invoke-virtual {v11, v9}, Lcom/android/phone/PhoneGlobals;->sendBroadcast(Landroid/content/Intent;)V

    const-string/jumbo v11, "sendBroadcast HD_VOICE_CHANGED : false "

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->log(Ljava/lang/String;Z)V

    :cond_8
    :goto_4
    return-void

    :cond_9
    const-string/jumbo v11, "checkKTHDVoice : normal case"

    invoke-static {v11}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->log(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "kt_hd_voice_abnormal_case"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_b

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "backup_voicecall_type"

    const/4 v13, -0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const/4 v11, -0x1

    if-eq v5, v11, :cond_c

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "checkKTHDVoice : normal case... backup_data : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->log(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "voicecall_type"

    invoke-static {v11, v12, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move v10, v5

    if-nez v5, :cond_a

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "hd_voice_network_pref"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_a
    :goto_5
    const-string/jumbo v11, "interworking_hd_voice_by_intent"

    invoke-static {v11}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_b

    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v11, "android.intent.action.HD_VOICE_CHANGED"

    invoke-direct {v9, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v12, "enable"

    if-nez v10, :cond_d

    const/4 v11, 0x1

    :goto_6
    invoke-virtual {v9, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v11

    invoke-virtual {v11, v9}, Lcom/android/phone/PhoneGlobals;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "sendBroadcast HD_VOICE_CHANGED - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-nez v10, :cond_e

    const/4 v11, 0x1

    :goto_7
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->log(Ljava/lang/String;Z)V

    :cond_b
    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "kt_hd_voice_abnormal_case"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "backup_voicecall_type"

    const/4 v13, -0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->correctKTHDVoice()V

    goto/16 :goto_4

    :cond_c
    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "voicecall_type"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "hd_voice_network_pref"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v10, 0x0

    goto :goto_5

    :cond_d
    const/4 v11, 0x0

    goto :goto_6

    :cond_e
    const/4 v11, 0x0

    goto :goto_7

    :cond_f
    if-nez v8, :cond_6

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "backup_voicecall_type"

    const/4 v13, -0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_10
    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "kt_hd_voice_abnormal_case"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3
.end method

.method public static checkUICCMovement()V
    .locals 6

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "prev_sim_type"

    const/4 v5, -0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v3, "ril.simtype"

    const-string/jumbo v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkUICCMovement : prev : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " curr : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->log(Ljava/lang/String;Z)V

    const-string/jumbo v3, "0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-eq v1, v3, :cond_0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "prev_sim_type"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->setUICCDefaultHDVoice()V

    :cond_0
    return-void
.end method

.method public static correctKTHDVoice()V
    .locals 10

    const/4 v9, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "voicecall_type"

    invoke-static {v7, v8, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "hd_voice_network_pref"

    invoke-static {v7, v8, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const-string/jumbo v7, "correctKTHDVoice"

    invoke-static {v7}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->log(Ljava/lang/String;)V

    const-string/jumbo v7, "support_uicc_mobility"

    invoke-static {v7}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isKTSIM()Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_0
    if-nez v1, :cond_4

    if-nez v4, :cond_4

    const/4 v1, 0x2

    const-string/jumbo v7, "correctKTHDVoice : voicecall_type 0 => 2"

    invoke-static {v7, v6}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->log(Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "voicecall_type"

    invoke-static {v7, v8, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "hd_voice_network_pref"

    invoke-static {v7, v8, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-ne v1, v6, :cond_5

    :goto_1
    invoke-static {v5}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->setHDVoiceNetworkPref(Z)V

    return-void

    :cond_2
    const-string/jumbo v7, "correctKTHDVoice : KT SIM is not used"

    invoke-static {v7, v6}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->log(Ljava/lang/String;Z)V

    if-nez v1, :cond_3

    if-nez v4, :cond_3

    const/4 v4, 0x1

    const-string/jumbo v7, "correctKTHDVoice : network_pref 0 => 1"

    invoke-static {v7, v6}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->log(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    if-ne v1, v9, :cond_1

    if-ne v4, v6, :cond_1

    const/4 v1, 0x0

    const-string/jumbo v7, "correctKTHDVoice : voicecall_type 2 => 0"

    invoke-static {v7, v6}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->log(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_4
    if-ne v1, v9, :cond_1

    if-ne v4, v6, :cond_1

    const/4 v1, 0x0

    const-string/jumbo v7, "correctKTHDVoice : voicecall_type 2 => 0"

    invoke-static {v7, v6}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->log(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_5
    move v5, v6

    goto :goto_1
.end method

.method public static isActiveTwoPhone(Lcom/android/internal/telephony/Connection;)Z
    .locals 6

    const/4 v4, 0x0

    const-string/jumbo v3, "support_twophone"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    return v4

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string/jumbo v3, "true"

    const-string/jumbo v4, "isTwoPhone"

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string/jumbo v3, "PhoneUtilsKOR"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isActiveTwoPhone = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    return v4
.end method

.method private static isCallProtectionEnabled()Z
    .locals 8

    const/4 v4, 0x1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "enable_call_protect_when_calling"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "enable_call_protect_when_calling : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->log(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-ne v3, v4, :cond_0

    :goto_1
    return v4

    :catch_0
    move-exception v2

    const-string/jumbo v5, "PhoneUtilsKOR"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "enable_call_protect_when_calling : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "enable_call_protect_when_calling"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v5, "enable_call_protect_when_calling : null->1"

    invoke-static {v5, v4}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->log(Ljava/lang/String;Z)V

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static isFindService()Ljava/lang/Boolean;
    .locals 7

    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v3, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/internal/widget/LockPatternUtils;->isCarrierLockPlusEnabled(I)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    :catch_0
    move-exception v2

    const-string/jumbo v5, "PhoneUtilsKOR"

    const-string/jumbo v6, "isFindService() : SecurityException"

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    return-object v5
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "PhoneUtilsKOR"

    invoke-static {v0, p0}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static log(Ljava/lang/String;Z)V
    .locals 1

    const-string/jumbo v0, "PhoneUtilsKOR"

    invoke-static {v0, p0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method

.method private static makeDefaultPhones()Lcom/android/internal/telephony/Phone;
    .locals 7

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    const-string/jumbo v4, "gsm.version.ril-impl"

    const-string/jumbo v5, "Qualcomm"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "makeDefaultPhones - ril version : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->log(Ljava/lang/String;Z)V

    const-string/jumbo v4, "Qualcomm"

    const-string/jumbo v5, "Qualcomm"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    if-nez v4, :cond_0

    new-instance v4, Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/samsung/android/sec_platform_library/FactoryPhone;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    sget-object v4, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {v4}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->disconnectFromRilService()V

    const/4 v4, 0x0

    sput-object v4, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v4, "PhoneUtilsKOR"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "makeDefaultPhones : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static notifyCallProtectionStatus()V
    .locals 2

    sget-object v0, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->mCallProtectionType:Lcom/android/phone/operator/kor/PhoneUtilsKOR$CallProtectionType;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->notifyCallProtectionStatus(Lcom/android/phone/operator/kor/PhoneUtilsKOR$CallProtectionType;Z)V

    return-void
.end method

.method public static declared-synchronized notifyCallProtectionStatus(Lcom/android/phone/operator/kor/PhoneUtilsKOR$CallProtectionType;Z)V
    .locals 12

    const/4 v4, 0x0

    const/4 v7, 0x1

    const-class v8, Lcom/android/phone/operator/kor/PhoneUtilsKOR;

    monitor-enter v8

    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v9

    const/4 v10, 0x5

    if-ne v10, v9, :cond_0

    const-string/jumbo v7, "notifyCallProtectionStatus : IMS"

    const/4 v9, 0x1

    invoke-static {v7, v9}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->log(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v8

    return-void

    :cond_0
    :try_start_1
    sget-object v9, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->mCallProtectionType:Lcom/android/phone/operator/kor/PhoneUtilsKOR$CallProtectionType;

    if-ne v9, p0, :cond_1

    if-eqz p1, :cond_5

    :cond_1
    invoke-static {}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->notifyCallProtectionValue()V

    invoke-static {}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->makeDefaultPhones()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x6

    const/16 v9, 0x16

    :try_start_2
    invoke-virtual {v1, v9}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v9, 0x37

    invoke-virtual {v1, v9}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/phone/PhoneGlobals;->getCallManager()Lcom/android/internal/telephony/CallManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v9, v10, :cond_2

    sget-object v9, Lcom/android/phone/operator/kor/PhoneUtilsKOR$CallProtectionType;->IDLE:Lcom/android/phone/operator/kor/PhoneUtilsKOR$CallProtectionType;

    if-ne v9, p0, :cond_6

    :cond_2
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    const-string/jumbo v7, "notifyCallProtectionStatus : No Call"

    const/4 v9, 0x1

    invoke-static {v7, v9}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->log(Ljava/lang/String;Z)V

    sget-object v7, Lcom/android/phone/operator/kor/PhoneUtilsKOR$CallProtectionType;->IDLE:Lcom/android/phone/operator/kor/PhoneUtilsKOR$CallProtectionType;

    sput-object v7, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->mCallProtectionType:Lcom/android/phone/operator/kor/PhoneUtilsKOR$CallProtectionType;

    :goto_0
    sget-object v7, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    if-eqz v7, :cond_a

    sget-object v7, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    if-eqz v0, :cond_3

    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_4
    :goto_2
    monitor-exit v8

    return-void

    :cond_5
    :try_start_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "notifyCallProtectionStatus : no change - "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v9, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->mCallProtectionType:Lcom/android/phone/operator/kor/PhoneUtilsKOR$CallProtectionType;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x1

    invoke-static {v7, v9}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->log(Ljava/lang/String;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v8

    return-void

    :cond_6
    :try_start_5
    sget-object v9, Lcom/android/phone/operator/kor/PhoneUtilsKOR$CallProtectionType;->BLOCK:Lcom/android/phone/operator/kor/PhoneUtilsKOR$CallProtectionType;

    if-ne v9, p0, :cond_7

    move v4, v7

    :cond_7
    if-eqz v4, :cond_9

    :goto_3
    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "notifyCallProtectionStatus : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x1

    invoke-static {v7, v9}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->log(Ljava/lang/String;Z)V

    sput-object p0, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->mCallProtectionType:Lcom/android/phone/operator/kor/PhoneUtilsKOR$CallProtectionType;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_6
    const-string/jumbo v7, "PhoneUtilsKOR"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "notifyCallProtectionStatus : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v0, :cond_8

    :try_start_7
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_8
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v2

    :try_start_8
    const-string/jumbo v7, "PhoneUtilsKOR"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "notifyCallProtectionStatus : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    :cond_9
    const/4 v7, 0x2

    goto :goto_3

    :cond_a
    :try_start_9
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    const/4 v9, 0x0

    invoke-virtual {v5, v7, v9}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_1

    :catchall_1
    move-exception v7

    if-eqz v0, :cond_b

    :try_start_a
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_b
    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_c
    :goto_4
    :try_start_b
    throw v7

    :catch_2
    move-exception v2

    const-string/jumbo v7, "PhoneUtilsKOR"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "notifyCallProtectionStatus : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :catch_3
    move-exception v2

    const-string/jumbo v9, "PhoneUtilsKOR"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "notifyCallProtectionStatus : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_4
.end method

.method public static notifyCallProtectionStatus(Z)V
    .locals 2

    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/phone/operator/kor/PhoneUtilsKOR$CallProtectionType;->BLOCK:Lcom/android/phone/operator/kor/PhoneUtilsKOR$CallProtectionType;

    :goto_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->notifyCallProtectionStatus(Lcom/android/phone/operator/kor/PhoneUtilsKOR$CallProtectionType;Z)V

    return-void

    :cond_0
    sget-object v0, Lcom/android/phone/operator/kor/PhoneUtilsKOR$CallProtectionType;->UNBLOCK:Lcom/android/phone/operator/kor/PhoneUtilsKOR$CallProtectionType;

    goto :goto_0
.end method

.method public static notifyCallProtectionValue()V
    .locals 10

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->makeDefaultPhones()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v3, 0x6

    const/16 v8, 0x16

    :try_start_0
    invoke-virtual {v1, v8}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v8, 0x37

    invoke-virtual {v1, v8}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-static {}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->isCallProtectionEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_0
    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "notifyCallProtectionValue : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v4, :cond_3

    const-string/jumbo v6, "Set"

    :goto_1
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->log(Ljava/lang/String;Z)V

    sget-object v6, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    if-eqz v6, :cond_4

    sget-object v6, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_1
    :goto_3
    return-void

    :cond_2
    move v6, v7

    goto :goto_0

    :cond_3
    :try_start_2
    const-string/jumbo v6, "Unset"

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_3
    const-string/jumbo v6, "PhoneUtilsKOR"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "notifyCallProtectionValue : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_5

    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_5
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :catch_1
    move-exception v2

    const-string/jumbo v6, "PhoneUtilsKOR"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "notifyCallProtectionValue : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_2
    move-exception v2

    const-string/jumbo v6, "PhoneUtilsKOR"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "notifyCallProtectionValue : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catchall_0
    move-exception v6

    if-eqz v0, :cond_6

    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :cond_7
    :goto_4
    throw v6

    :catch_3
    move-exception v2

    const-string/jumbo v7, "PhoneUtilsKOR"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "notifyCallProtectionValue : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public static sendCallProtectionBroadcast(Z)V
    .locals 3

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.skt.CALL_PROTECTION_STATUS_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "on off"

    invoke-virtual {v0, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v1, v0}, Lcom/android/phone/PhoneGlobals;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static setAutoDialState()V
    .locals 10

    const/4 v9, 0x0

    const-string/jumbo v7, "gsm.operator.iso-country"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v7, "RoamingPrefs"

    invoke-virtual {v0, v7, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v7, "lastest_country"

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string/jumbo v7, "contain lastest_country"

    invoke-static {v7}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->log(Ljava/lang/String;)V

    const-string/jumbo v7, "lastest_country"

    const-string/jumbo v8, "kr"

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    if-eqz v2, :cond_0

    const-string/jumbo v7, ""

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_0
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isoCountryCode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", lastestCountry = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->log(Ljava/lang/String;)V

    if-eqz v2, :cond_7

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string/jumbo v7, ""

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_1
    const-string/jumbo v7, "LGT AutoDialState No Change!!"

    invoke-static {v7}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->log(Ljava/lang/String;)V

    const-string/jumbo v7, "kr"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    return-void

    :cond_2
    const-string/jumbo v7, "Not contain lastest_country"

    invoke-static {v7}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->log(Ljava/lang/String;)V

    const-string/jumbo v7, "lastest_country"

    const-string/jumbo v8, "kr"

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string/jumbo v3, "kr"

    goto :goto_0

    :cond_3
    const-string/jumbo v7, "lastestCountry Change"

    invoke-static {v7}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->log(Ljava/lang/String;)V

    const-string/jumbo v7, "lastest_country"

    invoke-interface {v1, v7, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->getRoamingAutoSetting()I

    move-result v5

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "LGT roaming_auto_setting "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->log(Ljava/lang/String;)V

    const/4 v7, 0x1

    if-ne v5, v7, :cond_5

    if-nez v4, :cond_5

    const-string/jumbo v7, "LGT do not show toast!!"

    invoke-static {v7}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->log(Ljava/lang/String;)V

    invoke-static {v9}, Lcom/android/phone/TeleServiceSystemDB;->setRoamingAutoSetting(I)V

    :cond_5
    return-void

    :cond_6
    const-string/jumbo v7, "kr"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const-string/jumbo v7, "LGT AutoDialing off"

    invoke-static {v7}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->log(Ljava/lang/String;)V

    const/16 v7, 0xc

    invoke-static {v7}, Lcom/android/phone/TeleServiceSystemDB;->setLGTRADSetting(I)V

    :goto_2
    invoke-static {}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->setDefaultRoamingValue()V

    :cond_7
    return-void

    :cond_8
    const-string/jumbo v7, "LGT AutoDialing on"

    invoke-static {v7}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->log(Ljava/lang/String;)V

    const/16 v7, 0xb

    invoke-static {v7}, Lcom/android/phone/TeleServiceSystemDB;->setLGTRADSetting(I)V

    goto :goto_2
.end method

.method public static setCallProtectionEnabled(Z)V
    .locals 4

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "enable_call_protect_when_calling"

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static setDefaultRoamingValue()V
    .locals 4

    const-string/jumbo v2, "PhoneUtilsExt : setDefaultRoamingValue"

    invoke-static {v2}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900c1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x6c

    invoke-static {v2}, Lcom/android/phone/TeleServiceSystemDB;->setLGTRADID(I)V

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Lcom/android/phone/TeleServiceSystemDB;->setLGTRADCode(Ljava/lang/String;)V

    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-static {v2}, Lcom/android/phone/TeleServiceSystemDB;->setLGTRADNameKor(Ljava/lang/String;)V

    const/4 v2, 0x2

    aget-object v2, v1, v2

    invoke-static {v2}, Lcom/android/phone/TeleServiceSystemDB;->setLGTRADNameEng(Ljava/lang/String;)V

    return-void
.end method

.method public static setHDVoiceNetworkPref(Z)V
    .locals 9

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->makeDefaultPhones()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v3, 0x8

    const/16 v7, 0x16

    :try_start_0
    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v7, 0x61

    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    if-eqz p0, :cond_2

    :goto_0
    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    sget-object v5, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    if-eqz v5, :cond_3

    sget-object v5, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setHDVoiceNetworkPref : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->log(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_1
    :goto_2
    return-void

    :cond_2
    move v5, v6

    goto :goto_0

    :cond_3
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_3
    const-string/jumbo v5, "PhoneUtilsKOR"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setHDVoiceNetworkPref : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_4

    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_4
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    const-string/jumbo v5, "PhoneUtilsKOR"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setHDVoiceNetworkPref: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_2
    move-exception v2

    const-string/jumbo v5, "PhoneUtilsKOR"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setHDVoiceNetworkPref: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_0
    move-exception v5

    if-eqz v0, :cond_5

    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :cond_6
    :goto_3
    throw v5

    :catch_3
    move-exception v2

    const-string/jumbo v6, "PhoneUtilsKOR"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setHDVoiceNetworkPref: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public static setUICCDefaultHDVoice()V
    .locals 9

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isTestSIM()Z

    move-result v7

    if-eqz v7, :cond_0

    const-string/jumbo v7, "test sim used"

    invoke-static {v7}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isSKTSIM()Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "volte_outgoing_calltype_default_on"

    invoke-static {v7}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string/jumbo v7, "feature_kor_open"

    invoke-static {v7}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_1
    :goto_0
    const/4 v4, 0x0

    :cond_2
    :goto_1
    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "voicecall_type"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v7, "hd_voice_network_prefer"

    invoke-static {v7}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "hd_voice_network_pref"

    invoke-static {v7, v8, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_3
    const-string/jumbo v7, "feature_skt"

    invoke-static {v7}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "volte_noti_settings"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setUICCDefaultHDVoice : voicecall_type : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", hd_voice_network_pref : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", volte_noti_settings : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->log(Ljava/lang/String;Z)V

    return-void

    :cond_5
    const/4 v5, 0x1

    const/4 v6, 0x1

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isLGTSIM()Z

    move-result v7

    if-eqz v7, :cond_7

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    goto :goto_1

    :cond_7
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isKTSIM()Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x1

    goto :goto_1
.end method
