.class public Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/LoginTransaction;
.super Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/BaseTransaction;
.source "LoginTransaction.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mImsi:Ljava/lang/String;

.field private mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountListener;

.field private mMessenger:Landroid/os/Messenger;

.field private mNewAccessToken:Ljava/lang/String;

.field private mServiceId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/BaseTransaction;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "LoginTransaction"

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/LoginTransaction;->TAG:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/LoginTransaction;->mMessenger:Landroid/os/Messenger;

    iput-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/LoginTransaction;->mImsi:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/LoginTransaction;->mNewAccessToken:Ljava/lang/String;

    return-void
.end method

.method private notifyLoginResult(II)V
    .locals 6

    const/16 v5, 0xaa

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyLoginResult : serviceId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " , result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "LoginTransaction"

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/LoginTransaction;->mMessenger:Landroid/os/Messenger;

    if-eqz v2, :cond_1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    iput v5, v1, Landroid/os/Message;->what:I

    iput p2, v1, Landroid/os/Message;->arg1:I

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/LoginTransaction;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/LoginTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountListener;

    if-eqz v2, :cond_0

    if-nez p2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/LoginTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountListener;

    new-instance v3, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountResponseInfo;

    const/4 v4, -0x1

    invoke-direct {v3, v5, v4, p1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountResponseInfo;-><init>(III)V

    invoke-interface {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountListener;->onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountResponseInfo;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/LoginTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountListener;

    invoke-virtual {p0, v2, p2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/LoginTransaction;->notifyError(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/BaseListener;I)V

    goto :goto_0
.end method

.method private startHeartbeat()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/HeartBeatTransaction;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V
    .locals 4

    const/4 v3, 0x1

    const/16 v1, 0xc8

    iget v2, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    if-ne v1, v2, :cond_2

    if-eqz p2, :cond_0

    instance-of v1, p2, Lcom/samsung/android/sdk/ssf/account/io/LoginResponse;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "Got login response."

    const-string/jumbo v2, "LoginTransaction"

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p2

    check-cast v0, Lcom/samsung/android/sdk/ssf/account/io/LoginResponse;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/account/io/LoginResponse;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/LoginTransaction;->mNewAccessToken:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/LoginTransaction;->mNewAccessToken:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/LoginTransaction;->mImsi:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/LoginTransaction;->mNewAccessToken:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/AccountDBMgr;->setAccessToken(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/LoginTransaction;->mServiceId:I

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/LoginTransaction;->notifyLoginResult(II)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/LoginTransaction;->startHeartbeat()V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "response not proper..."

    const-string/jumbo v2, "LoginTransaction"

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/LoginTransaction;->mServiceId:I

    invoke-direct {p0, v1, v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/LoginTransaction;->notifyLoginResult(II)V

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "LoginTransaction"

    invoke-static {p3, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->logErrorResponse(Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/LoginTransaction;->mServiceId:I

    invoke-direct {p0, v1, v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/LoginTransaction;->notifyLoginResult(II)V

    goto :goto_0
.end method

.method public updateAccessToken()Z
    .locals 6

    const/16 v5, 0x4e22

    const/16 v4, 0x4e21

    :try_start_0
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/LoginTransaction;->mImsi:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/LoginTransaction;->mImsi:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/sdk/ssf/account/TokenManager;->updateAccessTokenInSync(Lcom/samsung/android/sdk/ssf/SsfClient;)Lcom/samsung/android/sdk/ssf/account/io/LoginResponse;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Login response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", IMSI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/LoginTransaction;->mImsi:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "LoginTransaction"

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_2

    iget v2, v1, Lcom/samsung/android/sdk/ssf/account/io/LoginResponse;->httpStatusCode:I

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "New access_token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/android/sdk/ssf/account/io/LoginResponse;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", IMSI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/LoginTransaction;->mImsi:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "LoginTransaction"

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/sdk/ssf/account/io/LoginResponse;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/LoginTransaction;->mNewAccessToken:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/LoginTransaction;->mImsi:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/LoginTransaction;->mNewAccessToken:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/AccountDBMgr;->setAccessToken(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/LoginTransaction;->startHeartbeat()V

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    iget v2, v1, Lcom/samsung/android/sdk/ssf/account/io/LoginResponse;->resultCode:I

    if-ne v2, v5, :cond_1

    const-string/jumbo v2, "Invalid refresh token. Refresh \'Refresh_Token\'."

    const-string/jumbo v3, "LoginTransaction"

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/LoginTransaction;->updateRefreshToken()Z

    move-result v2

    goto :goto_0

    :cond_1
    iget v2, v1, Lcom/samsung/android/sdk/ssf/account/io/LoginResponse;->resultCode:I

    if-ne v2, v4, :cond_2

    const-string/jumbo v2, "Device was not authenticated atlogin response. "

    const-string/jumbo v3, "LoginTransaction"

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/LoginTransaction;->mImsi:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/AccountDBMgr;->removeAccount(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getEnhancedFeaturesInstance()Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;->notifyDeregister()V
    :try_end_0
    .catch Lcom/samsung/android/sdk/ssf/contact/server/ContactException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;->printStackTrace()V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;->getErrorCode()I

    move-result v2

    if-ne v2, v5, :cond_3

    const-string/jumbo v2, "Invalid refresh token. Refresh \'Refresh_Token\'."

    const-string/jumbo v3, "LoginTransaction"

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/LoginTransaction;->updateRefreshToken()Z

    move-result v2

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;->getErrorCode()I

    move-result v2

    if-ne v2, v4, :cond_2

    const-string/jumbo v2, "Device was not authenticated."

    const-string/jumbo v3, "LoginTransaction"

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/LoginTransaction;->mImsi:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/AccountDBMgr;->removeAccount(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getEnhancedFeaturesInstance()Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;->notifyDeregister()V

    goto :goto_1
.end method

.method public updateRefreshToken()Z
    .locals 13

    const/4 v12, 0x0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/LoginTransaction;->mImsi:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/EasySignUpInterface;->getSupportServices(Landroid/content/Context;)[I

    move-result-object v5

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->getSppRegId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v8, Lcom/samsung/android/sdk/ssf/account/io/PushInfo;

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->getSppRegId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "SPP"

    invoke-direct {v8, v1, v2}, Lcom/samsung/android/sdk/ssf/account/io/PushInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->getGcmRegId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->SUPPORT_GCM:Z

    if-eqz v1, :cond_1

    new-instance v8, Lcom/samsung/android/sdk/ssf/account/io/PushInfo;

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->getGcmRegId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "GCM"

    invoke-direct {v8, v1, v2}, Lcom/samsung/android/sdk/ssf/account/io/PushInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ServerUtil;->getUniqueDeviceId()Ljava/lang/String;

    move-result-object v6

    new-instance v0, Lcom/samsung/android/sdk/ssf/account/io/JoinReqInfo;

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/LoginTransaction;->mImsi:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/DeviceUtils;->getDefaultLocale()Ljava/lang/String;

    move-result-object v3

    new-array v4, v12, [Lcom/samsung/android/sdk/ssf/account/io/PushInfo;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/samsung/android/sdk/ssf/account/io/PushInfo;

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/sdk/ssf/account/io/JoinReqInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/samsung/android/sdk/ssf/account/io/PushInfo;[ILjava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/LoginTransaction;->mImsi:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/ssf/account/TokenManager;->updateRefreshTokenInSync(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/account/io/JoinReqInfo;)Lcom/samsung/android/sdk/ssf/account/io/JoinResponse;

    move-result-object v10

    if-eqz v10, :cond_3

    iget v1, v10, Lcom/samsung/android/sdk/ssf/account/io/JoinResponse;->httpStatusCode:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/LoginTransaction;->mImsi:Ljava/lang/String;

    invoke-virtual {v10}, Lcom/samsung/android/sdk/ssf/account/io/JoinResponse;->getDeviceUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/AccountDBMgr;->setDuid(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/LoginTransaction;->mImsi:Ljava/lang/String;

    invoke-virtual {v10}, Lcom/samsung/android/sdk/ssf/account/io/JoinResponse;->getRefreshToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/AccountDBMgr;->setRefreshToken(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/LoginTransaction;->mImsi:Ljava/lang/String;

    invoke-virtual {v10}, Lcom/samsung/android/sdk/ssf/account/io/JoinResponse;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/AccountDBMgr;->setAccessToken(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/LoginTransaction;->mImsi:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v11

    if-eqz v11, :cond_2

    invoke-virtual {v10}, Lcom/samsung/android/sdk/ssf/account/io/JoinResponse;->getServerUrls()[Lcom/samsung/android/sdk/ssf/account/io/ServerInfo;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/samsung/android/sdk/ssf/SsfClient;->setServerURL([Lcom/samsung/android/sdk/ssf/account/io/ServerInfo;)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/LoginTransaction;->startHeartbeat()V

    :cond_2
    invoke-virtual {v10}, Lcom/samsung/android/sdk/ssf/account/io/JoinResponse;->getServerUrls()[Lcom/samsung/android/sdk/ssf/account/io/ServerInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/GldDBMgr;->setGldData([Lcom/samsung/android/sdk/ssf/account/io/ServerInfo;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/ssf/contact/server/ContactException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v7

    const-string/jumbo v1, "LoginTransaction"

    invoke-static {v7, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;->getErrorCode()I

    move-result v1

    const/16 v2, 0x4e21

    if-ne v1, v2, :cond_3

    const-string/jumbo v1, "Device was not authenticated."

    const-string/jumbo v2, "LoginTransaction"

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/LoginTransaction;->mImsi:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/AccountDBMgr;->removeAccount(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getEnhancedFeaturesInstance()Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;->notifyDeregister()V

    :cond_3
    move v1, v12

    goto :goto_0
.end method
