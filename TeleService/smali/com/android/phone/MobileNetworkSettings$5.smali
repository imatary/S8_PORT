.class Lcom/android/phone/MobileNetworkSettings$5;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/android/phone/MobileNetworkSettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/MobileNetworkSettings$5;->this$0:Lcom/android/phone/MobileNetworkSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    const-string/jumbo v0, "support_wfc_dt"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtilsIMS;->isVoWifiSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings$5;->this$0:Lcom/android/phone/MobileNetworkSettings;

    invoke-static {v0}, Lcom/android/phone/MobileNetworkSettings;->-get6(Lcom/android/phone/MobileNetworkSettings;)Landroid/preference/SwitchPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "MobileNetworkSettings"

    const-string/jumbo v1, "WifiCalling setting is changed! - mWifiCalling"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings$5;->this$0:Lcom/android/phone/MobileNetworkSettings;

    invoke-virtual {v0}, Lcom/android/phone/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d01f1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings$5;->this$0:Lcom/android/phone/MobileNetworkSettings;

    invoke-virtual {v0}, Lcom/android/phone/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0d0244

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "wifi_call_enable"

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isWifiCallStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    int-to-long v4, v0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/phone/utils/SALogging;->sendSAEventSettingLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
