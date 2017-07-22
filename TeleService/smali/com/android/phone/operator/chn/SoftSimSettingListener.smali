.class public Lcom/android/phone/operator/chn/SoftSimSettingListener;
.super Landroid/content/BroadcastReceiver;
.source "SoftSimSettingListener.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private setSoftSimSetting(Landroid/content/Intent;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string/jumbo v3, "SoftSimSettingListener"

    const-string/jumbo v4, "ACTION_SOFTSIM_INTENT"

    invoke-static {v3, v4, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string/jumbo v3, "status"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/operator/chn/SoftSimSettingListener;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v2, :cond_1

    const-string/jumbo v3, "off"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/operator/chn/SoftSimSettingListener;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isDataRoamingEnabledBySoftSim(Landroid/content/Context;)Z

    move-result v1

    const-string/jumbo v3, "SoftSimSettingListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ACTION_SOFTSIM_INTENT : status off, isDataRoamingEnabledBySoftSim:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/phone/operator/chn/SoftSimSettingListener;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3, v7}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/operator/chn/SoftSimSettingListener;->sendBroadcastSoftSimSettingIntent()V

    return-void

    :cond_1
    if-eqz v2, :cond_0

    const-string/jumbo v3, "on"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/operator/chn/SoftSimSettingListener;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v0

    const-string/jumbo v3, "SoftSimSettingListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ACTION_SOFTSIM_INTENT : status on, isDataRoamingEnabled:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    if-nez v0, :cond_0

    iget-object v3, p0, Lcom/android/phone/operator/chn/SoftSimSettingListener;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    iget-object v3, p0, Lcom/android/phone/operator/chn/SoftSimSettingListener;->mContext:Landroid/content/Context;

    invoke-static {v3, v6}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->setDataRoamingEnabledBySoftSim(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "SoftSimSettingListener"

    const-string/jumbo v4, "Can not reset on restricted account."

    invoke-static {v3, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string/jumbo v1, "SoftSimSettingListener"

    const-string/jumbo v2, "onReceive"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/phone/operator/chn/SoftSimSettingListener;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "support_soft_sim"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.samsung.android.softsim.ServiceStatus"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SoftSimSettingListener"

    const-string/jumbo v2, "onReceive.. softsim intent is called"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-direct {p0, p2}, Lcom/android/phone/operator/chn/SoftSimSettingListener;->setSoftSimSetting(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public sendBroadcastSoftSimSettingIntent()V
    .locals 3

    const-string/jumbo v0, "SoftSimSettingListener"

    const-string/jumbo v1, "sendBroadcastSoftSimSettingIntent"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v0, p0, Lcom/android/phone/operator/chn/SoftSimSettingListener;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.intent.action.locale.SoftSimUpdateMenu"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method
