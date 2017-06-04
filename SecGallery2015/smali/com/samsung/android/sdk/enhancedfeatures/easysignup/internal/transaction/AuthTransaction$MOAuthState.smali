.class public Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction$MOAuthState;
.super Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;
.source "AuthTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MOAuthState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction$MOAuthState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;-><init>()V

    return-void
.end method


# virtual methods
.method protected enter(Landroid/os/Message;)V
    .locals 10

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpAuthManager;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpAuthManager;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction$MOAuthState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;->mImsi:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;->access$500(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "MO"

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction$MOAuthState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;->mAuthCode:Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;->access$2300(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction$MOAuthState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;->mIsCoreappsAgent:Z
    invoke-static {v5}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;->access$800(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    :goto_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction$MOAuthState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;->mDeviceMsisdn:Ljava/lang/String;
    invoke-static {v6}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;->access$1200(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction$MOAuthState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;->mEntryPoint:Ljava/lang/String;
    invoke-static {v7}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;->access$1600(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x46

    iget-object v9, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction$MOAuthState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;->mStHandler:Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;
    invoke-static {v9}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;)Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    move-result-object v9

    invoke-virtual/range {v0 .. v9}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpAuthManager;->authenticate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Handler;)V

    return-void

    :cond_0
    const/4 v5, 0x1

    goto :goto_0
.end method

.method protected processMessage(Landroid/os/Message;)V
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MOAuthState:processMessage"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "AuthTransaction"

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction$MOAuthState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;->mStHandler:Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;
    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;)Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;->deferMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/sdk/ssf/account/io/AuthResponse;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction$MOAuthState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/account/io/AuthResponse;->getMsisdn()Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;->msisdn:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;->access$1002(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction$MOAuthState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;->mStHandler:Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;
    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;)Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction$MOAuthState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;->mResultState:Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;->access$400(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;)Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;->transTo(Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;)V

    goto :goto_0

    :sswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mEntryPoint : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction$MOAuthState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;->mEntryPoint:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;->access$1600(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "AuthTransaction"

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction$MOAuthState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;->mFromEULA:Z
    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;->access$1800(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction$MOAuthState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;->mRequestedAuthType:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;->access$1500(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "MO"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction$MOAuthState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;

    const/16 v2, 0x69

    # setter for: Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;->mErrorCode:I
    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;->access$102(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;I)I

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction$MOAuthState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;->mErrorState:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;->access$202(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction$MOAuthState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;->mStHandler:Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;
    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;)Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction$MOAuthState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;->mResultState:Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;->access$400(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;)Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;->transTo(Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction$MOAuthState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;->mStHandler:Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;
    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;)Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction$MOAuthState;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;->mMTAuthState:Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;->access$2400(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;)Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/ssf/common/transaction/StateHandler;->transTo(Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x46 -> :sswitch_0
        0x2710 -> :sswitch_1
    .end sparse-switch
.end method
