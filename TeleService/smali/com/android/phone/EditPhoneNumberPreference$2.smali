.class Lcom/android/phone/EditPhoneNumberPreference$2;
.super Ljava/lang/Object;
.source "EditPhoneNumberPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/EditPhoneNumberPreference;->onBindDialogView(Landroid/view/View;)V
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

    iput-object p1, p0, Lcom/android/phone/EditPhoneNumberPreference$2;->this$0:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v3, 0x0

    const v4, 0x7f0d0995

    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference$2;->this$0:Lcom/android/phone/EditPhoneNumberPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/android/phone/EditPhoneNumberPreference;->showErrorText(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference$2;->this$0:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-static {v1}, Lcom/android/phone/EditPhoneNumberPreference;->-get8(Lcom/android/phone/EditPhoneNumberPreference;)Landroid/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "feature_multisim_dsda_cdma_gsm"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference$2;->this$0:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-static {v1}, Lcom/android/phone/EditPhoneNumberPreference;->-get9(Lcom/android/phone/EditPhoneNumberPreference;)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference$2;->this$0:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-static {v1}, Lcom/android/phone/EditPhoneNumberPreference;->-get8(Lcom/android/phone/EditPhoneNumberPreference;)Landroid/app/Fragment;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/EditPhoneNumberPreference$2;->this$0:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-static {v2}, Lcom/android/phone/EditPhoneNumberPreference;->-get4(Lcom/android/phone/EditPhoneNumberPreference;)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/EditPhoneNumberPreference$2;->this$0:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-static {v3}, Lcom/android/phone/EditPhoneNumberPreference;->-get9(Lcom/android/phone/EditPhoneNumberPreference;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference$2;->this$0:Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v2, p0, Lcom/android/phone/EditPhoneNumberPreference$2;->this$0:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2}, Lcom/android/phone/EditPhoneNumberPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/EditPhoneNumberPreference;->-wrap0(Lcom/android/phone/EditPhoneNumberPreference;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference$2;->this$0:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-static {v1}, Lcom/android/phone/EditPhoneNumberPreference;->-get8(Lcom/android/phone/EditPhoneNumberPreference;)Landroid/app/Fragment;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/EditPhoneNumberPreference$2;->this$0:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-static {v2}, Lcom/android/phone/EditPhoneNumberPreference;->-get4(Lcom/android/phone/EditPhoneNumberPreference;)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/EditPhoneNumberPreference$2;->this$0:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-static {v3}, Lcom/android/phone/EditPhoneNumberPreference;->-get9(Lcom/android/phone/EditPhoneNumberPreference;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference$2;->this$0:Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v2, p0, Lcom/android/phone/EditPhoneNumberPreference$2;->this$0:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2}, Lcom/android/phone/EditPhoneNumberPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/EditPhoneNumberPreference;->-wrap0(Lcom/android/phone/EditPhoneNumberPreference;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference$2;->this$0:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-static {v1}, Lcom/android/phone/EditPhoneNumberPreference;->-get7(Lcom/android/phone/EditPhoneNumberPreference;)Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_2
    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference$2;->this$0:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-static {v1}, Lcom/android/phone/EditPhoneNumberPreference;->-get7(Lcom/android/phone/EditPhoneNumberPreference;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/EditPhoneNumberPreference$2;->this$0:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-static {v2}, Lcom/android/phone/EditPhoneNumberPreference;->-get4(Lcom/android/phone/EditPhoneNumberPreference;)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/EditPhoneNumberPreference$2;->this$0:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-static {v3}, Lcom/android/phone/EditPhoneNumberPreference;->-get9(Lcom/android/phone/EditPhoneNumberPreference;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference$2;->this$0:Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v2, p0, Lcom/android/phone/EditPhoneNumberPreference$2;->this$0:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2}, Lcom/android/phone/EditPhoneNumberPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/EditPhoneNumberPreference;->-wrap0(Lcom/android/phone/EditPhoneNumberPreference;Ljava/lang/String;)V

    goto :goto_0
.end method
