.class Lcom/android/phone/MobileNetworkSettings$8;
.super Landroid/telephony/PhoneStateListener;
.source "MobileNetworkSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MobileNetworkSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MobileNetworkSettings;


# direct methods
.method constructor <init>(Lcom/android/phone/MobileNetworkSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/MobileNetworkSettings$8;->this$0:Lcom/android/phone/MobileNetworkSettings;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isSupportVoLTE()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings$8;->this$0:Lcom/android/phone/MobileNetworkSettings;

    invoke-static {v5}, Lcom/android/phone/MobileNetworkSettings;->-get5(Lcom/android/phone/MobileNetworkSettings;)Landroid/preference/SwitchPreference;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings$8;->this$0:Lcom/android/phone/MobileNetworkSettings;

    invoke-static {v5}, Lcom/android/phone/MobileNetworkSettings;->-get3(Lcom/android/phone/MobileNetworkSettings;)Landroid/telephony/PhoneStateListener;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "volte_settings_in_mobile_networks_dcm"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings$8;->this$0:Lcom/android/phone/MobileNetworkSettings;

    invoke-static {v5}, Lcom/android/phone/MobileNetworkSettings;->-get5(Lcom/android/phone/MobileNetworkSettings;)Landroid/preference/SwitchPreference;

    move-result-object v5

    if-nez v2, :cond_2

    if-nez p1, :cond_1

    :goto_0
    invoke-virtual {v5, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    const-string/jumbo v3, "MobileNetworkSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "DCM : onServiceStateChanged, state : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const-string/jumbo v3, "MobileNetworkSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onCallStateChanged, state : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings$8;->this$0:Lcom/android/phone/MobileNetworkSettings;

    invoke-static {v3}, Lcom/android/phone/MobileNetworkSettings;->-wrap1(Lcom/android/phone/MobileNetworkSettings;)V

    :cond_0
    return-void

    :cond_1
    move v3, v4

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_0

    :cond_3
    const-string/jumbo v5, "volte_settings_in_mobile_networks_usc"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string/jumbo v3, "MobileNetworkSettings"

    const-string/jumbo v4, "USC : onCallStateChanged"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const-string/jumbo v5, "volte_settings_in_mobile_networks_tmo"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;->isEPSonly()Z

    move-result v1

    if-nez v1, :cond_5

    if-nez p1, :cond_5

    const/4 v0, 0x1

    :goto_2
    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings$8;->this$0:Lcom/android/phone/MobileNetworkSettings;

    invoke-static {v3}, Lcom/android/phone/MobileNetworkSettings;->-get5(Lcom/android/phone/MobileNetworkSettings;)Landroid/preference/SwitchPreference;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    const-string/jumbo v3, "MobileNetworkSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "TMO : onCallStateChanged, isEpsonly : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    :cond_6
    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings$8;->this$0:Lcom/android/phone/MobileNetworkSettings;

    invoke-static {v5}, Lcom/android/phone/MobileNetworkSettings;->-get5(Lcom/android/phone/MobileNetworkSettings;)Landroid/preference/SwitchPreference;

    move-result-object v5

    if-nez p1, :cond_7

    :goto_3
    invoke-virtual {v5, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_1

    :cond_7
    move v3, v4

    goto :goto_3
.end method

.method public onDataConnectionStateChanged(I)V
    .locals 3

    const-string/jumbo v0, "MobileNetworkSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDataConnectionStateChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "volte_settings_in_mobile_networks_usc"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings$8;->this$0:Lcom/android/phone/MobileNetworkSettings;

    invoke-static {v0}, Lcom/android/phone/MobileNetworkSettings;->-wrap1(Lcom/android/phone/MobileNetworkSettings;)V

    :cond_0
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3

    const/4 v0, 0x0

    const-string/jumbo v1, "global_data_roaming_access_enable"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings$8;->this$0:Lcom/android/phone/MobileNetworkSettings;

    invoke-static {v1}, Lcom/android/phone/MobileNetworkSettings;->-wrap4(Lcom/android/phone/MobileNetworkSettings;)V

    :cond_0
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings$8;->this$0:Lcom/android/phone/MobileNetworkSettings;

    invoke-static {v1}, Lcom/android/phone/MobileNetworkSettings;->-get2(Lcom/android/phone/MobileNetworkSettings;)Lcom/android/phone/GsmUmtsOptions;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings$8;->this$0:Lcom/android/phone/MobileNetworkSettings;

    invoke-static {v1}, Lcom/android/phone/MobileNetworkSettings;->-get2(Lcom/android/phone/MobileNetworkSettings;)Lcom/android/phone/GsmUmtsOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/GsmUmtsOptions;->updateOperatorSelectionExpand()V

    :cond_1
    const-string/jumbo v1, "volte_settings_in_mobile_networks_dcm"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isSupportVoLTE()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings$8;->this$0:Lcom/android/phone/MobileNetworkSettings;

    invoke-static {v1}, Lcom/android/phone/MobileNetworkSettings;->-get5(Lcom/android/phone/MobileNetworkSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings$8;->this$0:Lcom/android/phone/MobileNetworkSettings;

    invoke-static {v1}, Lcom/android/phone/MobileNetworkSettings;->-get5(Lcom/android/phone/MobileNetworkSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-nez v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    const-string/jumbo v0, "MobileNetworkSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DCM : onServiceStateChanged, state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings$8;->this$0:Lcom/android/phone/MobileNetworkSettings;

    invoke-static {v0}, Lcom/android/phone/MobileNetworkSettings;->-wrap1(Lcom/android/phone/MobileNetworkSettings;)V

    :cond_3
    const-string/jumbo v0, "volte_settings_in_mobile_networks_usc"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings$8;->this$0:Lcom/android/phone/MobileNetworkSettings;

    invoke-static {v0}, Lcom/android/phone/MobileNetworkSettings;->-wrap1(Lcom/android/phone/MobileNetworkSettings;)V

    :cond_4
    return-void
.end method
