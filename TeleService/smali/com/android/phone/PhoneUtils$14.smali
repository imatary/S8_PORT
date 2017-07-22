.class final Lcom/android/phone/PhoneUtils$14;
.super Ljava/lang/Object;
.source "PhoneUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PhoneUtils;->showNetworkRoamMccChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    packed-switch p2, :pswitch_data_0

    const-string/jumbo v6, "PhoneUtils"

    const-string/jumbo v7, "Unexpected resource: "

    invoke-static {v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    const-string/jumbo v1, "54F08054F050FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"

    const-string/jumbo v3, "FFFFFFFFFFFFFFFFFFFF0000FF01"

    const-string/jumbo v2, "FFFFFFFFFFFFFF0000FF01"

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v6

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/android/internal/telephony/IccCard;->setFPLMN([B)V

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v6

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/android/internal/telephony/IccCard;->setPSLOCI([B)V

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v6

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/android/internal/telephony/IccCard;->setLOCI([B)V

    const-string/jumbo v6, "support_lte_romaing"

    invoke-static {v6}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v0, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000001"

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v6

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/android/internal/telephony/IccCard;->setEPSLOCI([B)V

    :cond_0
    const/4 v6, 0x0

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->showNetworkAutoRebootIfManualSelected(Z)V

    goto :goto_0

    :pswitch_1
    const/4 v6, 0x1

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->setRadioPower(Z)V

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v6, "com.android.phone"

    const-string/jumbo v7, "com.android.phone.NetworkSetting"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v6, 0x10000000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/phone/PhoneGlobals;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
