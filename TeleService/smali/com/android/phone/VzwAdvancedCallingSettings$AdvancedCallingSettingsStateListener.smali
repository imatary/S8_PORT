.class Lcom/android/phone/VzwAdvancedCallingSettings$AdvancedCallingSettingsStateListener;
.super Ljava/lang/Object;
.source "VzwAdvancedCallingSettings.java"

# interfaces
.implements Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/VzwAdvancedCallingSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdvancedCallingSettingsStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/VzwAdvancedCallingSettings;


# direct methods
.method private constructor <init>(Lcom/android/phone/VzwAdvancedCallingSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/VzwAdvancedCallingSettings$AdvancedCallingSettingsStateListener;->this$0:Lcom/android/phone/VzwAdvancedCallingSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/VzwAdvancedCallingSettings;Lcom/android/phone/VzwAdvancedCallingSettings$AdvancedCallingSettingsStateListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/VzwAdvancedCallingSettings$AdvancedCallingSettingsStateListener;-><init>(Lcom/android/phone/VzwAdvancedCallingSettings;)V

    return-void
.end method

.method private disableAdvCallSwitch()V
    .locals 9

    invoke-static {}, Lcom/android/phone/PhoneUtilsIMS;->isVoLTEMenuShow()Z

    move-result v2

    invoke-static {}, Lcom/android/phone/PhoneUtilsIMS;->isLTEVideoCallMenuShow()Z

    move-result v1

    invoke-static {}, Lcom/android/phone/PhoneUtilsIMS;->isVoLTEFeatureEnabled()Z

    move-result v4

    invoke-static {}, Lcom/android/phone/PhoneUtilsIMS;->isLTEVideoCallEnabled()Z

    move-result v3

    const/4 v0, -0x1

    const-string/jumbo v5, "AdvancedCallingSettingsStateListener"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "disableAdvCallSwitch: isDmVolteSetting["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "], isUserVolteSetting["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "], isDmVideoSetting["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "], isUserVideoSetting["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_1

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneUtilsIMS;->setVoLTEFeatureDisable()V

    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtilsIMS;->setLTEVideoCallDisable()V

    :cond_0
    iget-object v5, p0, Lcom/android/phone/VzwAdvancedCallingSettings$AdvancedCallingSettingsStateListener;->this$0:Lcom/android/phone/VzwAdvancedCallingSettings;

    invoke-static {v5}, Lcom/android/phone/VzwAdvancedCallingSettings;->-get1(Lcom/android/phone/VzwAdvancedCallingSettings;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/VzwAdvancedCallingSettings$AdvancedCallingSettingsStateListener;->this$0:Lcom/android/phone/VzwAdvancedCallingSettings;

    invoke-static {v6}, Lcom/android/phone/VzwAdvancedCallingSettings;->-get1(Lcom/android/phone/VzwAdvancedCallingSettings;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x3e9

    invoke-static {v6, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string/jumbo v5, "ShowAdvancedCalling"

    const-string/jumbo v6, "AdvancedCallingOff"

    const-string/jumbo v7, "AlreadySet"

    const-string/jumbo v8, "no"

    invoke-static {v5, v6, v7, v8}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v5}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v5, "ShowAdvancedCalling"

    const-string/jumbo v6, "AdvancedCallingOff"

    const-string/jumbo v7, "AlreadySet"

    const-string/jumbo v8, "yes"

    invoke-static {v5, v6, v7, v8}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v5}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0
.end method

.method private enableAdvCallSwitch()V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-static {}, Lcom/android/phone/PhoneUtilsIMS;->isVoLTEMenuShow()Z

    move-result v1

    invoke-static {}, Lcom/android/phone/PhoneUtilsIMS;->isLTEVideoCallMenuShow()Z

    move-result v0

    invoke-static {}, Lcom/android/phone/PhoneUtilsIMS;->isVoLTEFeatureEnabled()Z

    move-result v3

    invoke-static {}, Lcom/android/phone/PhoneUtilsIMS;->isLTEVideoCallEnabled()Z

    move-result v2

    const-string/jumbo v4, "AdvancedCallingSettingsStateListener"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "enableAdvCallSwitch: isDmVolteSetting["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "], isUserVolteSetting["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "], isDmVideoSetting["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "], isUserVideoSetting["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    if-nez v3, :cond_6

    if-eqz v0, :cond_0

    if-eqz v2, :cond_2

    :cond_0
    iget-object v4, p0, Lcom/android/phone/VzwAdvancedCallingSettings$AdvancedCallingSettingsStateListener;->this$0:Lcom/android/phone/VzwAdvancedCallingSettings;

    iget-object v4, v4, Lcom/android/phone/VzwAdvancedCallingSettings;->mHDVoiceOnlyView:Landroid/widget/CheckedTextView;

    invoke-virtual {v4, v7}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    :goto_0
    invoke-static {}, Lcom/android/phone/PhoneUtilsIMS;->setVoLTEFeatureEnable()V

    iget-object v4, p0, Lcom/android/phone/VzwAdvancedCallingSettings$AdvancedCallingSettingsStateListener;->this$0:Lcom/android/phone/VzwAdvancedCallingSettings;

    invoke-static {v4}, Lcom/android/phone/VzwAdvancedCallingSettings;->-get1(Lcom/android/phone/VzwAdvancedCallingSettings;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/VzwAdvancedCallingSettings$AdvancedCallingSettingsStateListener;->this$0:Lcom/android/phone/VzwAdvancedCallingSettings;

    invoke-static {v5}, Lcom/android/phone/VzwAdvancedCallingSettings;->-get1(Lcom/android/phone/VzwAdvancedCallingSettings;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x3e8

    invoke-static {v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string/jumbo v4, "ShowAdvancedCalling"

    const-string/jumbo v5, "AdvancedCallingOn"

    const-string/jumbo v6, "AlreadySet"

    const-string/jumbo v7, "no"

    invoke-static {v4, v5, v6, v7}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v4}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v4, p0, Lcom/android/phone/VzwAdvancedCallingSettings$AdvancedCallingSettingsStateListener;->this$0:Lcom/android/phone/VzwAdvancedCallingSettings;

    invoke-static {v4}, Lcom/android/phone/VzwAdvancedCallingSettings;->-get4(Lcom/android/phone/VzwAdvancedCallingSettings;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string/jumbo v5, "vzw_adv_call_sp_hd_voice_video"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isTtyModeOn()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {}, Lcom/android/phone/VzwAdvancedCallingUtils;->isInboundByod()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isAvailablePSVT()Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    const-string/jumbo v4, "AdvancedCallingSettingsStateListener"

    const-string/jumbo v5, "enableAdvCallSwitch: video available"

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/PhoneUtilsIMS;->setLTEVideoCallEnable()V

    iget-object v4, p0, Lcom/android/phone/VzwAdvancedCallingSettings$AdvancedCallingSettingsStateListener;->this$0:Lcom/android/phone/VzwAdvancedCallingSettings;

    iget-object v4, v4, Lcom/android/phone/VzwAdvancedCallingSettings;->mHDVoiceVideoView:Landroid/widget/CheckedTextView;

    invoke-virtual {v4, v7}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/phone/VzwAdvancedCallingSettings$AdvancedCallingSettingsStateListener;->this$0:Lcom/android/phone/VzwAdvancedCallingSettings;

    iget-object v4, v4, Lcom/android/phone/VzwAdvancedCallingSettings;->mHDVoiceOnlyView:Landroid/widget/CheckedTextView;

    invoke-virtual {v4, v8}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/android/phone/VzwAdvancedCallingSettings$AdvancedCallingSettingsStateListener;->this$0:Lcom/android/phone/VzwAdvancedCallingSettings;

    iget-object v4, v4, Lcom/android/phone/VzwAdvancedCallingSettings;->mHDVoiceVideoView:Landroid/widget/CheckedTextView;

    invoke-virtual {v4, v8}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/phone/VzwAdvancedCallingSettings$AdvancedCallingSettingsStateListener;->this$0:Lcom/android/phone/VzwAdvancedCallingSettings;

    iget-object v4, v4, Lcom/android/phone/VzwAdvancedCallingSettings;->mHDVoiceOnlyView:Landroid/widget/CheckedTextView;

    invoke-virtual {v4, v7}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_0

    :cond_6
    const-string/jumbo v4, "ShowAdvancedCalling"

    const-string/jumbo v5, "AdvancedCallingOn"

    const-string/jumbo v6, "AlreadySet"

    const-string/jumbo v7, "yes"

    invoke-static {v4, v5, v6, v7}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v4}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_1
.end method


# virtual methods
.method public onParamFillingReceived(Lcom/samsung/android/sdk/bixby/data/ParamFilling;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onRuleCanceled(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/android/phone/ia/IAUtil;->cancelIAExecutingState(Ljava/lang/String;)V

    return-void
.end method

.method public onScreenStatesRequested()Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;

    const-string/jumbo v1, "ShowAdvancedCalling"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public onStateReceived(Lcom/samsung/android/sdk/bixby/data/State;)V
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParameters()Ljava/util/List;

    move-result-object v2

    invoke-static {p1}, Lcom/android/phone/ia/IAUtil;->setIAExecutingState(Lcom/samsung/android/sdk/bixby/data/State;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string/jumbo v4, "AdvancedCallingSettingsStateListener"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onStateReceived: stateId["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdk/bixby/data/Parameter;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string/jumbo v4, "AdvancedCallingOff"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0}, Lcom/android/phone/VzwAdvancedCallingSettings$AdvancedCallingSettingsStateListener;->disableAdvCallSwitch()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v4, "AdvancedCallingOn"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0}, Lcom/android/phone/VzwAdvancedCallingSettings$AdvancedCallingSettingsStateListener;->enableAdvCallSwitch()V

    goto :goto_0
.end method
