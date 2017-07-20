.class public Lcom/android/phone/utils/VideoSettingUtils;
.super Ljava/lang/Object;
.source "VideoSettingUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canEnablevolteVideoCall(Landroid/content/Context;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "vzw_volte_ui"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneUtilsIMS;->isLTEVideoCallEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/phone/utils/VideoSettingUtils;->isMobileDataOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/phone/utils/VideoSettingUtils;->isAdvanceCallingOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/phone/utils/VideoSettingUtils;->isLvcBlock(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "VideoSettingUtils"

    const-string/jumbo v1, "canEnablevolteVideoCall returning : false"

    invoke-static {v0, v1, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return v2

    :cond_1
    return v3

    :cond_2
    return v2
.end method

.method public static isAdvanceCallingOn(Landroid/content/Context;)Z
    .locals 1

    const-string/jumbo v0, "vzw_volte_ui"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtilsIMS;->isVoLTEFeatureEnabled()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isLvcBlock(Landroid/content/Context;)Z
    .locals 9

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x2

    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v4, "93"

    aput-object v4, v2, v5

    const-string/jumbo v4, "94"

    aput-object v4, v2, v6

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsIMS;->getIMSSettingValues([Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v7, "1"

    const-string/jumbo v4, "93"

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string/jumbo v7, "1"

    const-string/jumbo v4, "94"

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_0
    const-string/jumbo v4, "VideoSettingUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "volteEabled : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", lvcEnabled : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    if-eqz v3, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    move v4, v5

    :goto_0
    return v4

    :cond_2
    move v4, v6

    goto :goto_0
.end method

.method public static isMobileDataOn(Landroid/content/Context;)Z
    .locals 2

    const-string/jumbo v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    return v1
.end method

.method public static isProvisionSIM(Landroid/content/Context;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v1, 0x0

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "93"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsIMS;->getIMSSettingValues([Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v4, "1"

    const-string/jumbo v3, "93"

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_0
    const-string/jumbo v3, "VideoSettingUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isProvisionSIM : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return v1
.end method

.method public static noVolteCallActive()Z
    .locals 4

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v0, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsCommon;->isOnVoLTEVideoCall(Lcom/android/internal/telephony/CallManager;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static setMobileDataEnabled(Landroid/content/Context;Z)V
    .locals 2

    const-string/jumbo v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    return-void
.end method

.method public static setVolteEnabled(Landroid/content/Context;)Z
    .locals 2

    invoke-static {}, Lcom/android/phone/PhoneUtilsIMS;->setVoLTEFeatureEnable()V

    const-string/jumbo v0, "VideoSettingUtils"

    const-string/jumbo v1, "setVolteEnabled"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public static showVideoCategory()Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/phone/TeleServiceFeature;->getOmcNwCode()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "feature_ctc"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const-string/jumbo v1, "feature_att"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string/jumbo v1, "psvt_support"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "video_call_not_support"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_2
    const-string/jumbo v1, "SPR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "XAS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_3
    return v3

    :cond_4
    const-string/jumbo v1, "remove_video_call_setting"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string/jumbo v1, "support_enhanced_4glte_setting_video_call"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    return v3

    :cond_5
    invoke-static {}, Lcom/android/phone/callsettings/VideoSettingManager;->getInstance()Lcom/android/phone/callsettings/VideoSettingManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/callsettings/VideoSettingManager;->isRemoveVZWVideoCall()Z

    move-result v1

    if-nez v1, :cond_6

    return v3

    :cond_6
    return v2

    :cond_7
    const-string/jumbo v1, "feature_chn"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/android/phone/TeleServiceFeature;->isSupportCSVT()Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_8
    return v3

    :cond_9
    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isAvailablePSVT()Z

    move-result v1

    if-nez v1, :cond_8

    return v2
.end method
