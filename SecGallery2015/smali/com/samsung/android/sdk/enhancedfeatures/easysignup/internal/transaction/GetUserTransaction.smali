.class public Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetUserTransaction;
.super Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/BaseTransaction;
.source "GetUserTransaction.java"


# instance fields
.field private mCbHandler:Landroid/os/Messenger;

.field mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountPreviousDeviceListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/BaseTransaction;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private sendResponseMessage(ILjava/lang/Object;)V
    .locals 7

    const/16 v6, 0xe6

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetUserTransaction;->mCbHandler:Landroid/os/Messenger;

    if-nez v5, :cond_1

    const-string/jumbo v5, "callback handler is null"

    const-string/jumbo v6, "GetUserTransaction"

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    iput p1, v2, Landroid/os/Message;->what:I

    if-ne p1, v6, :cond_4

    const/4 v5, 0x0

    :goto_1
    iput v5, v2, Landroid/os/Message;->arg1:I

    if-ne v6, p1, :cond_3

    if-eqz p2, :cond_3

    move-object v4, p2

    check-cast v4, Lcom/samsung/android/sdk/ssf/account/io/GetUserResponse;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/ssf/account/io/GetUserResponse;->getMsisdn()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Lcom/samsung/android/sdk/ssf/account/io/GetUserResponse;->getMsisdn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/samsung/android/sdk/ssf/account/io/GetUserResponse;->getDevice_idx()I

    move-result v5

    if-lez v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/samsung/android/sdk/ssf/account/io/GetUserResponse;->getDevice_idx()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_2
    invoke-static {v1, v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/AccountDBMgr;->setMsisdn(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetUserTransaction;->mCbHandler:Landroid/os/Messenger;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetUserTransaction;->mCbHandler:Landroid/os/Messenger;

    invoke-virtual {v5, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_4
    const/4 v5, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getUser(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 3

    if-eqz p2, :cond_0

    const-string/jumbo v1, "extra_cb_handler"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    iput-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetUserTransaction;->mCbHandler:Landroid/os/Messenger;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetUserTransaction;->checkAuthentication(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "error in auth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "GetUserTransaction"

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x2710

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetUserTransaction;->sendResponseMessage(ILjava/lang/Object;)V

    :cond_1
    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpUserManager;

    invoke-direct {v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpUserManager;-><init>()V

    const/16 v2, 0xe6

    invoke-virtual {v1, p1, v2, p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpUserManager;->getUser(Ljava/lang/String;ILcom/samsung/android/sdk/ssf/SsfListener;)V

    return-void
.end method

.method public onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V
    .locals 7

    const/16 v6, 0x2710

    const/4 v5, 0x0

    const/16 v3, 0xc8

    iget v4, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    if-ne v3, v4, :cond_5

    sparse-switch p1, :sswitch_data_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "GetUserTransaction"

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :sswitch_0
    if-eqz p2, :cond_0

    instance-of v3, p2, Lcom/samsung/android/sdk/ssf/account/io/GetUserResponse;

    if-eqz v3, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetUserTransaction;->sendResponseMessage(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v3, "get OK but no response, GET_USER"

    const-string/jumbo v4, "GetUserTransaction"

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v6, v5}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetUserTransaction;->sendResponseMessage(ILjava/lang/Object;)V

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x0

    if-eqz p2, :cond_4

    instance-of v3, p2, Lcom/samsung/android/sdk/ssf/account/io/GetUserV2Response;

    if-eqz v3, :cond_4

    move-object v1, p2

    check-cast v1, Lcom/samsung/android/sdk/ssf/account/io/GetUserV2Response;

    iget-object v3, v1, Lcom/samsung/android/sdk/ssf/account/io/GetUserV2Response;->user_info:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    iget-object v3, v1, Lcom/samsung/android/sdk/ssf/account/io/GetUserV2Response;->user_info:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/ssf/account/io/UserInfoV2;

    iget v4, v2, Lcom/samsung/android/sdk/ssf/account/io/UserInfoV2;->device_idx:I

    if-nez v4, :cond_1

    iget-object v0, v2, Lcom/samsung/android/sdk/ssf/account/io/UserInfoV2;->duid:Ljava/lang/String;

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Send latest duid:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "GetUserTransaction"

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetUserTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountPreviousDeviceListener;

    invoke-interface {v3, v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountPreviousDeviceListener;->onSuccess(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v3, "Didn\'t find any duid.."

    const-string/jumbo v4, "GetUserTransaction"

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetUserTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountPreviousDeviceListener;

    invoke-interface {v3, v5}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountPreviousDeviceListener;->onSuccess(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v3, "get OK but no response, GET_USER_V2"

    const-string/jumbo v4, "GetUserTransaction"

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetUserTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountPreviousDeviceListener;

    invoke-interface {v3, v5}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountPreviousDeviceListener;->onSuccess(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string/jumbo v3, "GetUserTransaction"

    invoke-static {p3, v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->logErrorResponse(Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/String;)V

    const/16 v3, 0xe6

    if-ne v3, p1, :cond_6

    invoke-direct {p0, v6, v5}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetUserTransaction;->sendResponseMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_6
    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetUserTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountPreviousDeviceListener;

    iget v4, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetUserTransaction;->notifyError(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/BaseListener;I)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0xe6 -> :sswitch_0
        0xeb -> :sswitch_1
    .end sparse-switch
.end method
