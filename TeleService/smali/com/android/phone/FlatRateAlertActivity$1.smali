.class Lcom/android/phone/FlatRateAlertActivity$1;
.super Ljava/lang/Object;
.source "FlatRateAlertActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/FlatRateAlertActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/FlatRateAlertActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/FlatRateAlertActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/FlatRateAlertActivity$1;->this$0:Lcom/android/phone/FlatRateAlertActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/phone/FlatRateAlertActivity$1;->this$0:Lcom/android/phone/FlatRateAlertActivity;

    invoke-static {v2}, Lcom/android/phone/FlatRateAlertActivity;->-get0(Lcom/android/phone/FlatRateAlertActivity;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const-string/jumbo v2, "bootup_data_tariff_rate_popup"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/FlatRateAlertActivity$1;->this$0:Lcom/android/phone/FlatRateAlertActivity;

    invoke-static {v2}, Lcom/android/phone/FlatRateAlertActivity;->-get1(Lcom/android/phone/FlatRateAlertActivity;)Landroid/widget/RadioButton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RadioButton;->getId()I

    move-result v2

    sget-object v3, Lcom/android/phone/FlatRateAlertActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v3}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v3

    if-ne v2, v3, :cond_1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/phone/FlatRateAlertActivity$1;->this$0:Lcom/android/phone/FlatRateAlertActivity;

    invoke-virtual {v1}, Lcom/android/phone/FlatRateAlertActivity;->finish()V

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "bootup_data_connection_popup"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/phone/FlatRateAlertActivity;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    iget-object v2, p0, Lcom/android/phone/FlatRateAlertActivity$1;->this$0:Lcom/android/phone/FlatRateAlertActivity;

    const-string/jumbo v3, "bootup_data_connection_popup"

    invoke-static {v2, v3, v1}, Lcom/android/phone/FlatRateAlertActivity;->-wrap0(Lcom/android/phone/FlatRateAlertActivity;Ljava/lang/String;Z)V

    goto :goto_1
.end method
