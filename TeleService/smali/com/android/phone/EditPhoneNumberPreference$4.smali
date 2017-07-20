.class Lcom/android/phone/EditPhoneNumberPreference$4;
.super Ljava/lang/Object;
.source "EditPhoneNumberPreference.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/EditPhoneNumberPreference;->showDialog(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EditPhoneNumberPreference;


# direct methods
.method constructor <init>(Lcom/android/phone/EditPhoneNumberPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/EditPhoneNumberPreference$4;->this$0:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 7

    const/4 v6, -0x1

    const/4 v1, 0x1

    const/4 v5, -0x3

    const/4 v2, 0x0

    const-string/jumbo v3, "feature_kdi"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_0
    :goto_0
    const-string/jumbo v3, "feature_kdi"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/EditPhoneNumberPreference$4;->this$0:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-static {v3}, Lcom/android/phone/EditPhoneNumberPreference;->-get0(Lcom/android/phone/EditPhoneNumberPreference;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-object v3, p0, Lcom/android/phone/EditPhoneNumberPreference$4;->this$0:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-static {v3}, Lcom/android/phone/EditPhoneNumberPreference;->-get2(Lcom/android/phone/EditPhoneNumberPreference;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/phone/EditPhoneNumberPreference$4;->this$0:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-static {v3}, Lcom/android/phone/EditPhoneNumberPreference;->-get6(Lcom/android/phone/EditPhoneNumberPreference;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    if-eqz p1, :cond_6

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_6

    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "canada_bmc_volte_ui"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference$4;->this$0:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-static {v1}, Lcom/android/phone/EditPhoneNumberPreference;->-get6(Lcom/android/phone/EditPhoneNumberPreference;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_3
    :goto_2
    return-void

    :cond_4
    const-string/jumbo v3, "EditPhoneNumberPreference"

    const-string/jumbo v4, "showDialog mPhoneNumber is not start 0"

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/phone/EditPhoneNumberPreference$4;->this$0:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-static {v3}, Lcom/android/phone/EditPhoneNumberPreference;->-get0(Lcom/android/phone/EditPhoneNumberPreference;)Landroid/widget/EditText;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/phone/EditPhoneNumberPreference$4;->this$0:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-static {v2}, Lcom/android/phone/EditPhoneNumberPreference;->-get6(Lcom/android/phone/EditPhoneNumberPreference;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/phone/EditPhoneNumberPreference$4;->this$0:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-static {v2}, Lcom/android/phone/EditPhoneNumberPreference;->-get2(Lcom/android/phone/EditPhoneNumberPreference;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/EditPhoneNumberPreference$4;->this$0:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-static {v2}, Lcom/android/phone/EditPhoneNumberPreference;->-get6(Lcom/android/phone/EditPhoneNumberPreference;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2

    :cond_6
    move v1, v2

    goto :goto_1

    :cond_7
    iget-object v3, p0, Lcom/android/phone/EditPhoneNumberPreference$4;->this$0:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-static {v3}, Lcom/android/phone/EditPhoneNumberPreference;->-get6(Lcom/android/phone/EditPhoneNumberPreference;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    if-eqz p1, :cond_8

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_8

    move v3, v1

    :goto_3
    invoke-virtual {v4, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/phone/EditPhoneNumberPreference$4;->this$0:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-static {v3}, Lcom/android/phone/EditPhoneNumberPreference;->-get6(Lcom/android/phone/EditPhoneNumberPreference;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    if-eqz p1, :cond_9

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_9

    :goto_4
    invoke-virtual {v3, v1}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "canada_bmc_volte_ui"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference$4;->this$0:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-static {v1}, Lcom/android/phone/EditPhoneNumberPreference;->-get6(Lcom/android/phone/EditPhoneNumberPreference;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference$4;->this$0:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-static {v1}, Lcom/android/phone/EditPhoneNumberPreference;->-get6(Lcom/android/phone/EditPhoneNumberPreference;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_2

    :cond_8
    move v3, v2

    goto :goto_3

    :cond_9
    move v1, v2

    goto :goto_4
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
