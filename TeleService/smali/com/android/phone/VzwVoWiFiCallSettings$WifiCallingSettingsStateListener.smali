.class Lcom/android/phone/VzwVoWiFiCallSettings$WifiCallingSettingsStateListener;
.super Ljava/lang/Object;
.source "VzwVoWiFiCallSettings.java"

# interfaces
.implements Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/VzwVoWiFiCallSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiCallingSettingsStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/VzwVoWiFiCallSettings;


# direct methods
.method private constructor <init>(Lcom/android/phone/VzwVoWiFiCallSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/VzwVoWiFiCallSettings$WifiCallingSettingsStateListener;->this$0:Lcom/android/phone/VzwVoWiFiCallSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/VzwVoWiFiCallSettings;Lcom/android/phone/VzwVoWiFiCallSettings$WifiCallingSettingsStateListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/VzwVoWiFiCallSettings$WifiCallingSettingsStateListener;-><init>(Lcom/android/phone/VzwVoWiFiCallSettings;)V

    return-void
.end method

.method private disableWiFiCalling()V
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/phone/VzwVoWiFiCallSettings$WifiCallingSettingsStateListener;->this$0:Lcom/android/phone/VzwVoWiFiCallSettings;

    invoke-static {v0}, Lcom/android/phone/VzwVoWiFiCallSettings;->-get1(Lcom/android/phone/VzwVoWiFiCallSettings;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "wifi_call_enable"

    invoke-static {v0, v1, v2}, Lcom/android/phone/VoWifiSettingsDataBaseManager;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "WifiCallingSettingsStateListener"

    const-string/jumbo v1, "disableWiFiCalling: wifi calling already disabled"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "WiFiCalling"

    const-string/jumbo v1, "WiFiCallingOff"

    const-string/jumbo v2, "AlreadySet"

    const-string/jumbo v3, "yes"

    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v0}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "WifiCallingSettingsStateListener"

    const-string/jumbo v1, "disableWiFiCalling: wifi calling enabled ==> disabling"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/VzwVoWiFiCallSettings$WifiCallingSettingsStateListener;->this$0:Lcom/android/phone/VzwVoWiFiCallSettings;

    invoke-static {v0}, Lcom/android/phone/VzwVoWiFiCallSettings;->-get1(Lcom/android/phone/VzwVoWiFiCallSettings;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "wifi_call_enable"

    invoke-static {v0, v1, v2}, Lcom/android/phone/VoWifiSettingsDataBaseManager;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/phone/VzwVoWiFiCallSettings$WifiCallingSettingsStateListener;->this$0:Lcom/android/phone/VzwVoWiFiCallSettings;

    invoke-static {v0, v2}, Lcom/android/phone/VzwVoWiFiCallSettings;->-wrap0(Lcom/android/phone/VzwVoWiFiCallSettings;Z)V

    iget-object v0, p0, Lcom/android/phone/VzwVoWiFiCallSettings$WifiCallingSettingsStateListener;->this$0:Lcom/android/phone/VzwVoWiFiCallSettings;

    invoke-static {v0}, Lcom/android/phone/VzwVoWiFiCallSettings;->-get0(Lcom/android/phone/VzwVoWiFiCallSettings;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/VzwVoWiFiCallSettings$WifiCallingSettingsStateListener;->this$0:Lcom/android/phone/VzwVoWiFiCallSettings;

    invoke-static {v1}, Lcom/android/phone/VzwVoWiFiCallSettings;->-get0(Lcom/android/phone/VzwVoWiFiCallSettings;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x3e9

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string/jumbo v0, "WiFiCalling"

    const-string/jumbo v1, "WiFiCallingOff"

    const-string/jumbo v2, "AlreadySet"

    const-string/jumbo v3, "no"

    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v0}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0
.end method

.method private enableWiFiCalling()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/phone/VzwVoWiFiCallSettings$WifiCallingSettingsStateListener;->this$0:Lcom/android/phone/VzwVoWiFiCallSettings;

    invoke-static {v0}, Lcom/android/phone/VzwVoWiFiCallSettings;->-get1(Lcom/android/phone/VzwVoWiFiCallSettings;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "wifi_call_enable"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/phone/VoWifiSettingsDataBaseManager;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    const-string/jumbo v0, "WifiCallingSettingsStateListener"

    const-string/jumbo v1, "enableWiFiCalling: wifi calling already enabled"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "WiFiCalling"

    const-string/jumbo v1, "WiFiCallingOn"

    const-string/jumbo v2, "AlreadySet"

    const-string/jumbo v3, "no"

    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v0}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "WifiCallingSettingsStateListener"

    const-string/jumbo v1, "enableWiFiCalling: wifi calling disabled ==> enabling"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/VzwVoWiFiCallSettings$WifiCallingSettingsStateListener;->this$0:Lcom/android/phone/VzwVoWiFiCallSettings;

    invoke-static {v0}, Lcom/android/phone/VzwVoWiFiCallSettings;->-get1(Lcom/android/phone/VzwVoWiFiCallSettings;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "wifi_call_enable"

    invoke-static {v0, v1, v3}, Lcom/android/phone/VoWifiSettingsDataBaseManager;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/phone/VzwVoWiFiCallSettings$WifiCallingSettingsStateListener;->this$0:Lcom/android/phone/VzwVoWiFiCallSettings;

    invoke-static {v0, v3}, Lcom/android/phone/VzwVoWiFiCallSettings;->-wrap0(Lcom/android/phone/VzwVoWiFiCallSettings;Z)V

    iget-object v0, p0, Lcom/android/phone/VzwVoWiFiCallSettings$WifiCallingSettingsStateListener;->this$0:Lcom/android/phone/VzwVoWiFiCallSettings;

    invoke-static {v0}, Lcom/android/phone/VzwVoWiFiCallSettings;->-get0(Lcom/android/phone/VzwVoWiFiCallSettings;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/VzwVoWiFiCallSettings$WifiCallingSettingsStateListener;->this$0:Lcom/android/phone/VzwVoWiFiCallSettings;

    invoke-static {v1}, Lcom/android/phone/VzwVoWiFiCallSettings;->-get0(Lcom/android/phone/VzwVoWiFiCallSettings;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string/jumbo v0, "WiFiCalling"

    const-string/jumbo v1, "WiFiCallingOn"

    const-string/jumbo v2, "AlreadySet"

    const-string/jumbo v3, "yes"

    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v0}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0
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

    const-string/jumbo v1, "WiFiCalling"

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

    const-string/jumbo v4, "WifiCallingSettingsStateListener"

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
    const-string/jumbo v4, "WiFiCallingOff"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0}, Lcom/android/phone/VzwVoWiFiCallSettings$WifiCallingSettingsStateListener;->disableWiFiCalling()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v4, "WiFiCallingOn"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0}, Lcom/android/phone/VzwVoWiFiCallSettings$WifiCallingSettingsStateListener;->enableWiFiCalling()V

    goto :goto_0
.end method
