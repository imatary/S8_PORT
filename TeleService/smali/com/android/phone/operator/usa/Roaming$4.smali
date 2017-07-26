.class Lcom/android/phone/operator/usa/Roaming$4;
.super Ljava/lang/Object;
.source "Roaming.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/operator/usa/Roaming;->domesticCdmaDataRoamingSettingTreeClick(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/operator/usa/Roaming;

.field final synthetic val$domesticCdmaDataRoamingGuardValue:Z


# direct methods
.method constructor <init>(Lcom/android/phone/operator/usa/Roaming;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/usa/Roaming$4;->this$0:Lcom/android/phone/operator/usa/Roaming;

    iput-boolean p2, p0, Lcom/android/phone/operator/usa/Roaming$4;->val$domesticCdmaDataRoamingGuardValue:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtension;->isDomesticDataRoamingInService()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/utils/WifiSettingUtils;->isWiFiNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/android/phone/operator/usa/Roaming$4;->this$0:Lcom/android/phone/operator/usa/Roaming;

    const/4 v1, 0x2

    invoke-static {v0, v1, v2}, Lcom/android/phone/operator/usa/Roaming;->-wrap3(Lcom/android/phone/operator/usa/Roaming;II)V

    iget-object v0, p0, Lcom/android/phone/operator/usa/Roaming$4;->this$0:Lcom/android/phone/operator/usa/Roaming;

    invoke-static {v0, v2, v2}, Lcom/android/phone/operator/usa/Roaming;->-wrap3(Lcom/android/phone/operator/usa/Roaming;II)V

    iget-object v0, p0, Lcom/android/phone/operator/usa/Roaming$4;->this$0:Lcom/android/phone/operator/usa/Roaming;

    invoke-static {v0}, Lcom/android/phone/operator/usa/Roaming;->-wrap2(Lcom/android/phone/operator/usa/Roaming;)V

    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtension;->isDomesticDataRoamingInService()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v2}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->setDataRoamingEnabled(Z)V

    :cond_1
    const-string/jumbo v0, "lte_roaming_enhancement"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/operator/usa/Roaming$4;->this$0:Lcom/android/phone/operator/usa/Roaming;

    invoke-static {v0}, Lcom/android/phone/operator/usa/Roaming;->-wrap4(Lcom/android/phone/operator/usa/Roaming;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-boolean v0, p0, Lcom/android/phone/operator/usa/Roaming$4;->val$domesticCdmaDataRoamingGuardValue:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/operator/usa/Roaming$4;->this$0:Lcom/android/phone/operator/usa/Roaming;

    invoke-static {v0, v2, v2}, Lcom/android/phone/operator/usa/Roaming;->-wrap3(Lcom/android/phone/operator/usa/Roaming;II)V

    iget-object v0, p0, Lcom/android/phone/operator/usa/Roaming$4;->this$0:Lcom/android/phone/operator/usa/Roaming;

    invoke-static {v0}, Lcom/android/phone/operator/usa/Roaming;->-wrap2(Lcom/android/phone/operator/usa/Roaming;)V

    iget-object v0, p0, Lcom/android/phone/operator/usa/Roaming$4;->this$0:Lcom/android/phone/operator/usa/Roaming;

    const-string/jumbo v1, "domestic_cdma_data_roaming_setting_extra"

    invoke-static {v0, v1}, Lcom/android/phone/operator/usa/Roaming;->-wrap1(Lcom/android/phone/operator/usa/Roaming;Ljava/lang/String;)V

    goto :goto_0
.end method
