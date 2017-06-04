.class Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity$6;
.super Landroid/content/BroadcastReceiver;
.source "SmsAuthenticatorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity$6;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    const-string/jumbo v0, ""

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v8, "pdus"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Object;

    move-object v5, v8

    check-cast v5, [Ljava/lang/Object;

    if-eqz v5, :cond_0

    array-length v8, v5

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    array-length v9, v5

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v9, :cond_2

    aget-object v4, v5, v8

    check-cast v4, [B

    check-cast v4, [B

    invoke-static {v4}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v3

    if-nez v3, :cond_3

    :cond_2
    if-eqz v0, :cond_0

    const-string/jumbo v7, ""

    const-string/jumbo v8, "ChatON : "

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string/jumbo v7, "ChatON : "

    :goto_2
    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v8, -0x1

    if-eq v6, v8, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v6, v8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v9, v6, 0x4

    if-ge v8, v9, :cond_5

    const-string/jumbo v8, "receviced code\'s length is less than excepted code"

    sget-object v9, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->TAG:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "received verification Code :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->TAG:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    const-string/jumbo v8, ": "

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string/jumbo v7, ": "

    goto :goto_2

    :cond_5
    add-int/lit8 v8, v6, 0x4

    invoke-virtual {v0, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "final received verification Code:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->TAG:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    iget-object v8, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity$6;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;

    invoke-virtual {v8}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->invalidateOptionsMenu()V

    iget-object v8, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity$6;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v8}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;)Landroid/app/ProgressDialog;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity$6;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v8}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;)Landroid/app/ProgressDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity$6;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;

    iget-object v9, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity$6;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mImsi:Ljava/lang/String;
    invoke-static {v9}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->access$400(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity$6;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mAuthType:Ljava/lang/String;
    invoke-static {v10}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->access$500(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;)Ljava/lang/String;

    move-result-object v10

    # invokes: Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->authenticateMTDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v8, v9, v1, v10}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->access$600(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
