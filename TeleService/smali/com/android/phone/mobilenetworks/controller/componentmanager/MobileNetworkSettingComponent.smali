.class Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkSettingComponent;
.super Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentImpl;
.source "MobileNetworkComponentImpl.java"


# direct methods
.method constructor <init>(Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentManager;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentImpl;-><init>(Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentManager;)V

    return-void
.end method


# virtual methods
.method public canDisplay()Z
    .locals 10

    iget-object v7, p0, Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkSettingComponent;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    invoke-static {}, Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentManager;->isSimLoaded()Z

    move-result v2

    iget-object v7, p0, Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkSettingComponent;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/net/ConnectivityManager;->semIsNetworkSupported(I)Z

    move-result v3

    const-string/jumbo v7, "support_networkmode_in_nosim"

    invoke-static {v7}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isGuestMode()Z

    move-result v1

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isEmergencyMode()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isUltraPowerSavingMode()Z

    move-result v5

    :goto_0
    const-string/jumbo v7, "MobileNetworkCompImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "canDisplay: isAirplaneModeOn : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, "MobileNetworkCompImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "canDisplay: isSimLoaded : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, "MobileNetworkCompImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "canDisplay: isSupportMobile : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, "MobileNetworkCompImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "canDisplay: isSupportNetworkmodeInNosim : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, "MobileNetworkCompImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "canDisplay: isGuestMode : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, "MobileNetworkCompImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "canDisplay: isUpsmMode : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_4

    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    if-eqz v1, :cond_3

    const/4 v6, 0x0

    :goto_1
    if-nez v5, :cond_0

    if-eqz v4, :cond_5

    :cond_0
    :goto_2
    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    if-eqz v1, :cond_6

    :cond_1
    :goto_3
    return v6

    :cond_2
    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_3
    const/4 v6, 0x1

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_0

    const/4 v6, 0x1

    goto :goto_2

    :cond_6
    const/4 v6, 0x1

    goto :goto_3
.end method

.method public createComponentNames()[Ljava/lang/Class;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lcom/android/phone/MobileNetworkSettings;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public registerObserver()V
    .locals 3

    const-string/jumbo v2, "airplane_mode_on"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string/jumbo v2, "mobile_data"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkSettingComponent;->mMobileNetworkComponentManager:Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentManager;

    invoke-virtual {v2, v0}, Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentManager;->registerContentObserver(Landroid/net/Uri;)V

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkSettingComponent;->mMobileNetworkComponentManager:Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentManager;

    invoke-virtual {v2, v1}, Lcom/android/phone/mobilenetworks/controller/componentmanager/MobileNetworkComponentManager;->registerContentObserver(Landroid/net/Uri;)V

    return-void
.end method
