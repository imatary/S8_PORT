.class public Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;
.super Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/BaseTransaction;
.source "IsAuthTransaction.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mDeviceId1:Ljava/lang/String;

.field private mDeviceId3:Ljava/lang/String;

.field private mGuid:Ljava/lang/String;

.field private mImsi:Ljava/lang/String;

.field private mImsiIndex:I

.field private mImsiList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountAuthInfoListener;

.field private mSuccessResponse:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountRegisteredServiceInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/BaseTransaction;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "IsAuthTransaction"

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/DeviceUtils;->getDeviceId(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mDeviceId1:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/DeviceUtils;->getDeviceId(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mDeviceId3:Ljava/lang/String;

    return-void
.end method

.method private doIsAuthNoPhoneType()V
    .locals 3

    const-string/jumbo v1, "0000000000000000"

    iput-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mImsi:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/sdk/ssf/account/io/IsAuthRequest;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ssf/account/io/IsAuthRequest;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mImsi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/account/io/IsAuthRequest;->setImsi(Ljava/lang/String;)V

    const-string/jumbo v1, "recovery"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/account/io/IsAuthRequest;->setType(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mDeviceId3:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/account/io/IsAuthRequest;->setDevice_id(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mGuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/account/io/IsAuthRequest;->setGuid(Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpAuthManager;

    invoke-direct {v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpAuthManager;-><init>()V

    const/16 v2, 0x15

    invoke-virtual {v1, v0, v2, p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpAuthManager;->isAuth(Lcom/samsung/android/sdk/ssf/account/io/IsAuthRequest;ILcom/samsung/android/sdk/ssf/SsfListener;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "isAuth : serverURL is missing in isAuthenticated()"

    const-string/jumbo v2, "IsAuthTransaction"

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountAuthInfoListener;

    const/16 v2, 0x2ee3

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->notifyError(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/BaseListener;I)V

    :cond_0
    return-void
.end method

.method private doIsAuthPhoneType()V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mImsiList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mImsiIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mImsi:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mImsi:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "IsAuthState. enter. imsi is not available"

    const-string/jumbo v2, "IsAuthTransaction"

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountAuthInfoListener;

    const/16 v2, 0x65

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->notifyError(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/BaseListener;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/samsung/android/sdk/ssf/account/io/IsAuthRequest;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ssf/account/io/IsAuthRequest;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mImsi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/account/io/IsAuthRequest;->setImsi(Ljava/lang/String;)V

    const-string/jumbo v1, "recovery"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/account/io/IsAuthRequest;->setType(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mDeviceId1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/account/io/IsAuthRequest;->setDevice_id(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mGuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/account/io/IsAuthRequest;->setGuid(Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpAuthManager;

    invoke-direct {v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpAuthManager;-><init>()V

    const/16 v2, 0x14

    invoke-virtual {v1, v0, v2, p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpAuthManager;->isAuth(Lcom/samsung/android/sdk/ssf/account/io/IsAuthRequest;ILcom/samsung/android/sdk/ssf/SsfListener;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "isAuth : serverURL is missing in isAuthenticated()"

    const-string/jumbo v2, "IsAuthTransaction"

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountAuthInfoListener;

    const/16 v2, 0x2ee3

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->notifyError(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/BaseListener;I)V

    goto :goto_0
.end method

.method private handleSuccessResponse(Lcom/samsung/android/sdk/ssf/account/io/AuthResponse;Ljava/lang/String;Ljava/lang/String;)V
    .locals 19

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/ssf/account/io/AuthResponse;->getDeviceTypeValue()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "01"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    const-string/jumbo v13, "02"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    const-string/jumbo v13, "03"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    :cond_0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "deviceid :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "IsAuthTransaction"

    invoke-static {v13, v14}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_1
    invoke-static/range {p2 .. p2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->setDeviceId(Ljava/lang/String;)V

    invoke-static/range {p3 .. p3}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/SsfClient;->getServer()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ServerInterface;->getDPServer()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Lcom/samsung/android/sdk/ssf/SsfClient;->setServer(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ServerInterface;->getSAServer()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Lcom/samsung/android/sdk/ssf/SsfClient;->setSAServer(Ljava/lang/String;)V

    :cond_2
    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/samsung/android/sdk/ssf/SsfClient;->setDeviceId(Ljava/lang/String;)V

    :cond_3
    const/4 v3, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/ssf/account/io/AuthResponse;->getTwofaAuth()[Lcom/samsung/android/sdk/ssf/account/io/AuthResponse$TwoFAAuth;

    move-result-object v7

    if-eqz v7, :cond_4

    array-length v13, v7

    if-eqz v13, :cond_4

    array-length v14, v7

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v14, :cond_4

    aget-object v10, v7, v13

    invoke-virtual {v10}, Lcom/samsung/android/sdk/ssf/account/io/AuthResponse$TwoFAAuth;->getStatus()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    invoke-virtual {v10}, Lcom/samsung/android/sdk/ssf/account/io/AuthResponse$TwoFAAuth;->getMsisdn()Ljava/lang/String;

    move-result-object v3

    :cond_4
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "msisdn: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "IsAuthTransaction"

    invoke-static {v13, v14}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/ssf/account/io/AuthResponse;->getAppStatus()[Lcom/samsung/android/sdk/ssf/account/io/AuthResponse$AppStatus;

    move-result-object v8

    if-eqz v8, :cond_a

    array-length v13, v8

    if-lez v13, :cond_a

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    array-length v15, v8

    const/4 v13, 0x0

    move v14, v13

    :goto_1
    if-ge v14, v15, :cond_a

    aget-object v9, v8, v14

    invoke-virtual {v9}, Lcom/samsung/android/sdk/ssf/account/io/AuthResponse$AppStatus;->getServices()[Lcom/samsung/android/sdk/ssf/account/io/AuthResponse$Services;

    move-result-object v5

    if-eqz v5, :cond_9

    array-length v13, v5

    if-lez v13, :cond_9

    array-length v0, v5

    move/from16 v16, v0

    const/4 v13, 0x0

    :goto_2
    move/from16 v0, v16

    if-ge v13, v0, :cond_9

    aget-object v4, v5, v13

    invoke-virtual {v4}, Lcom/samsung/android/sdk/ssf/account/io/AuthResponse$Services;->getStatus()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    invoke-virtual {v4}, Lcom/samsung/android/sdk/ssf/account/io/AuthResponse$Services;->getStatus()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    :cond_5
    invoke-virtual {v4}, Lcom/samsung/android/sdk/ssf/account/io/AuthResponse$Services;->getSid()I

    move-result v17

    const/16 v18, 0x5

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_8

    const-string/jumbo v17, "3z5w443l4l"

    invoke-virtual {v9}, Lcom/samsung/android/sdk/ssf/account/io/AuthResponse$AppStatus;->getAppid()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-virtual {v4}, Lcom/samsung/android/sdk/ssf/account/io/AuthResponse$Services;->getSid()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_7
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v4}, Lcom/samsung/android/sdk/ssf/account/io/AuthResponse$Services;->getSid()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    add-int/lit8 v13, v14, 0x1

    move v14, v13

    goto :goto_1

    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/ssf/account/io/AuthResponse;->getAuthInfo()Lcom/samsung/android/sdk/ssf/account/io/AuthResponse$AuthInfo;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/sdk/ssf/account/io/AuthResponse$AuthInfo;->getMoAuth()Lcom/samsung/android/sdk/ssf/account/io/AuthResponse$MoAuth;

    move-result-object v13

    if-nez v13, :cond_c

    const-string/jumbo v11, "MT"

    if-eqz v3, :cond_b

    const-string/jumbo v11, "2FA"

    :cond_b
    :goto_4
    if-nez v3, :cond_d

    if-nez v6, :cond_d

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mSuccessResponse:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountRegisteredServiceInfo;

    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->notifySucces()V

    return-void

    :cond_c
    const-string/jumbo v11, "MO"

    goto :goto_4

    :cond_d
    new-instance v13, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountRegisteredServiceInfo;

    invoke-direct {v13, v3, v6, v11}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountRegisteredServiceInfo;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mSuccessResponse:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountRegisteredServiceInfo;

    goto :goto_5
.end method

.method private notifySucces()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountAuthInfoListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountAuthInfoListener;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mSuccessResponse:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountRegisteredServiceInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountAuthInfoListener;->onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountRegisteredServiceInfo;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "Listener was null"

    const-string/jumbo v1, "IsAuthTransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public isAuth(Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountAuthInfoListener;)V
    .locals 3

    const/4 v1, 0x0

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountAuthInfoListener;

    iput-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mImsi:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mSuccessResponse:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountRegisteredServiceInfo;

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mImsiIndex:I

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mGuid:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountAuthInfoListener;

    if-nez v1, :cond_0

    const-string/jumbo v1, "Listener was null"

    const-string/jumbo v2, "IsAuthTransaction"

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "device id is not ready"

    const-string/jumbo v2, "IsAuthTransaction"

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountAuthInfoListener;

    const/16 v2, 0x6b

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->notifyError(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/BaseListener;I)V

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SimUtil;->getImsiList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mImsiList:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mImsiList:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mImsiList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const-string/jumbo v1, "Don\'t have any sim..."

    const-string/jumbo v2, "IsAuthTransaction"

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountAuthInfoListener;

    const/16 v2, 0x65

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->notifyError(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/BaseListener;I)V

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Security exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "IsAuthTransaction"

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountAuthInfoListener;

    const/16 v2, 0x68

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->notifyError(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/BaseListener;I)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/DeviceUtils;->isPhoneType(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->doIsAuthPhoneType()V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->doIsAuthNoPhoneType()V

    goto :goto_0
.end method

.method public onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V
    .locals 6

    const/16 v5, 0x64

    const/4 v4, 0x1

    const/16 v2, 0xc8

    iget v3, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    if-ne v2, v3, :cond_5

    if-eqz p2, :cond_4

    instance-of v2, p2, Lcom/samsung/android/sdk/ssf/account/io/AuthResponse;

    if-eqz v2, :cond_4

    packed-switch p1, :pswitch_data_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Got wrong token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "IsAuthTransaction"

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    move-object v1, p2

    check-cast v1, Lcom/samsung/android/sdk/ssf/account/io/AuthResponse;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "AuthResponse: (NoPhoneType) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "IsAuthTransaction"

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/sdk/ssf/account/io/AuthResponse;->getAuthStatus()I

    move-result v2

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mDeviceId3:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mImsi:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->handleSuccessResponse(Lcom/samsung/android/sdk/ssf/account/io/AuthResponse;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountAuthInfoListener;

    invoke-virtual {p0, v2, v5}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->notifyError(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/BaseListener;I)V

    goto :goto_0

    :pswitch_1
    move-object v1, p2

    check-cast v1, Lcom/samsung/android/sdk/ssf/account/io/AuthResponse;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "AuthResponse: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "IsAuthTransaction"

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/sdk/ssf/account/io/AuthResponse;->getAuthStatus()I

    move-result v2

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mDeviceId1:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mImsi:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->handleSuccessResponse(Lcom/samsung/android/sdk/ssf/account/io/AuthResponse;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mImsiIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mImsiIndex:I

    iget v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mImsiIndex:I

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mImsiList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->doIsAuthPhoneType()V

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "Device was not authenticated."

    const-string/jumbo v3, "IsAuthTransaction"

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/sdk/ssf/account/io/AuthResponse;->getAuthInfo()Lcom/samsung/android/sdk/ssf/account/io/AuthResponse$AuthInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/account/io/AuthResponse$AuthInfo;->getMoAuth()Lcom/samsung/android/sdk/ssf/account/io/AuthResponse$MoAuth;

    move-result-object v2

    if-nez v2, :cond_3

    const-string/jumbo v0, "MT"

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountAuthInfoListener;

    new-instance v3, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/IsAuthenticatedErrorResponse;

    const/4 v4, 0x0

    invoke-direct {v3, v5, v4, v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/IsAuthenticatedErrorResponse;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->notifyError(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/BaseListener;Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountErrorResponse;)V

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v0, "MO"

    goto :goto_1

    :cond_4
    const-string/jumbo v2, "get OK but no response"

    const-string/jumbo v3, "IsAuthTransaction"

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountAuthInfoListener;

    const/16 v3, 0x2af8

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->notifyError(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/BaseListener;I)V

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v2, "IsAuthTransaction"

    invoke-static {p3, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->logErrorResponse(Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountAuthInfoListener;

    iget v3, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/IsAuthTransaction;->notifyError(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/BaseListener;I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
