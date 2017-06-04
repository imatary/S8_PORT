.class Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity$8;
.super Landroid/os/Handler;
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

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity$8;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    iget-object v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity$8;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->validateActivity()Z

    move-result v6

    if-nez v6, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v6, "mtAuthHandler : TOKEN_MT_AUTH"

    sget-object v7, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->TAG:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity$8;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->dismissProgress()V

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v2

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/samsung/android/sdk/ssf/account/io/AuthResponse;

    const/4 v6, 0x0

    iput-object v6, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v6, "msisdn"

    invoke-virtual {v3}, Lcom/samsung/android/sdk/ssf/account/io/AuthResponse;->getMsisdn()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity$8;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;

    # invokes: Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->notifyMTAuthResult(Landroid/os/Message;)V
    invoke-static {v6, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->access$800(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;Landroid/os/Message;)V

    iget-object v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity$8;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->setResult(I)V

    iget-object v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity$8;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;

    const/4 v7, 0x1

    # setter for: Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mSucceedSmsMt:Z
    invoke-static {v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->access$902(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;Z)Z

    iget-object v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity$8;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->finish()V

    goto :goto_0

    :sswitch_1
    const-string/jumbo v6, "mtAuthHandler : TOKEN_ERROR"

    sget-object v7, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->TAG:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v2

    iget-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/sdk/ssf/SsfResult;

    iget-wide v4, v1, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorCode:J

    const-wide/16 v6, 0x4e24

    cmp-long v6, v4, v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity$8;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;

    iget-object v7, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity$8;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;

    sget v8, Lcom/samsung/android/sdk/enhancedfeatures/R$string;->information:I

    invoke-virtual {v7, v8}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity$8;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;

    sget v9, Lcom/samsung/android/sdk/enhancedfeatures/R$string;->you_have_entered_incorrect_code:I

    invoke-virtual {v8, v9}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity$8;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;

    # invokes: Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->showVerificationMethodSelector()V
    invoke-static {v6}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->access$200(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;)V

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity$8;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;

    # invokes: Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->showErrorAlert()V
    invoke-static {v6}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->access$700(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;)V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x50 -> :sswitch_0
        0x2710 -> :sswitch_1
    .end sparse-switch
.end method
