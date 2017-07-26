.class Lcom/android/phone/operator/usa/DataRoamingGuard$4;
.super Ljava/lang/Object;
.source "DataRoamingGuard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/operator/usa/DataRoamingGuard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/operator/usa/DataRoamingGuard;


# direct methods
.method constructor <init>(Lcom/android/phone/operator/usa/DataRoamingGuard;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/usa/DataRoamingGuard$4;->this$0:Lcom/android/phone/operator/usa/DataRoamingGuard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/phone/operator/usa/DataRoamingGuard$4;->this$0:Lcom/android/phone/operator/usa/DataRoamingGuard;

    const v2, 0x7f1000aa

    invoke-virtual {v1, v2}, Lcom/android/phone/operator/usa/DataRoamingGuard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/operator/usa/DataRoamingGuard$4;->this$0:Lcom/android/phone/operator/usa/DataRoamingGuard;

    invoke-static {v1, v4}, Lcom/android/phone/operator/usa/DataRoamingGuard;->-wrap1(Lcom/android/phone/operator/usa/DataRoamingGuard;I)V

    :cond_0
    iget-object v1, p0, Lcom/android/phone/operator/usa/DataRoamingGuard$4;->this$0:Lcom/android/phone/operator/usa/DataRoamingGuard;

    invoke-static {v1, v3}, Lcom/android/phone/operator/usa/DataRoamingGuard;->-wrap3(Lcom/android/phone/operator/usa/DataRoamingGuard;I)V

    const-string/jumbo v1, "roaming_setting_guard_data_only"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/operator/usa/DataRoamingGuard$4;->this$0:Lcom/android/phone/operator/usa/DataRoamingGuard;

    invoke-static {v1, v3}, Lcom/android/phone/operator/usa/DataRoamingGuard;->-wrap2(Lcom/android/phone/operator/usa/DataRoamingGuard;I)V

    iget-object v1, p0, Lcom/android/phone/operator/usa/DataRoamingGuard$4;->this$0:Lcom/android/phone/operator/usa/DataRoamingGuard;

    invoke-static {v1}, Lcom/android/phone/operator/usa/DataRoamingGuard;->-wrap0(Lcom/android/phone/operator/usa/DataRoamingGuard;)V

    :cond_1
    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtension;->isDomesticDataRoamingInService()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "global_network_cdma_gsm_enable_for_spr"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "DataRoamingGuard"

    const-string/jumbo v2, "mRoamListener - domestic roaming guard : set DATA_ROAMING into true"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->setDataRoamingEnabled(Z)V

    :cond_2
    const-string/jumbo v1, "data_roam_guard_first_time"

    invoke-static {v1, v3}, Lcom/android/phone/operator/usa/TelephonyExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "data_roam_guard_first_time"

    invoke-static {v1, v4}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/phone/operator/usa/DataRoamingGuard$4;->this$0:Lcom/android/phone/operator/usa/DataRoamingGuard;

    const v2, 0x7f0d06ec

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_3
    iget-object v1, p0, Lcom/android/phone/operator/usa/DataRoamingGuard$4;->this$0:Lcom/android/phone/operator/usa/DataRoamingGuard;

    invoke-virtual {v1}, Lcom/android/phone/operator/usa/DataRoamingGuard;->finish()V

    return-void
.end method
