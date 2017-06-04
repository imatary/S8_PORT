.class public Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;
.super Ljava/lang/Object;
.source "SamsungAccountBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder$SACallback;
    }
.end annotation


# static fields
.field private static final SAMSUNG_ACCOUNT_ACCESS_TOKEN:Ljava/lang/String; = "access_token"

.field private static final SAMSUNG_ACCOUNT_ADDITIONAL_ARRAY:Ljava/lang/String; = "additional"

.field private static final SAMSUNG_ACCOUNT_ADDITIONAL_USER_ID:Ljava/lang/String; = "user_id"

.field private static final SAMSUNG_ACCOUNT_ERROR_CODE:Ljava/lang/String; = "error_code"

.field private static final SAMSUNG_ACCOUNT_REQUEST_SERVICE:Ljava/lang/String; = "com.msc.action.samsungaccount.REQUEST_SERVICE"

.field private static final SAMSUNG_ACCOUNT_TYPE:Ljava/lang/String; = "com.osp.app.signin"

.field private static final TAG:Ljava/lang/String; = "SamsungAccountBinder"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mISAService:Lcom/msc/sa/aidl/ISAService;

.field private mRegistrationCode:Ljava/lang/String;

.field private mRequestID:I

.field private mSACallback:Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder$SACallback;

.field private final mServiceConnection:Landroid/content/ServiceConnection;

.field private requestCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;->mSACallback:Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder$SACallback;

    iput-object v1, p0, Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;->mISAService:Lcom/msc/sa/aidl/ISAService;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;->mRequestID:I

    iput-object v1, p0, Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;->mRegistrationCode:Ljava/lang/String;

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder$1;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder$1;-><init>(Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;->mServiceConnection:Landroid/content/ServiceConnection;

    const-string/jumbo v0, "SamsungAccountBinder"

    const-string/jumbo v1, "Construct SamsungAccountBinder. Starting AIDL Service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;->init()V

    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;Lcom/msc/sa/aidl/ISAService;)Lcom/msc/sa/aidl/ISAService;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;->mISAService:Lcom/msc/sa/aidl/ISAService;

    return-object p1
.end method

.method static synthetic access$102(Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder$SACallback;)Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder$SACallback;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;->mSACallback:Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder$SACallback;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;->registerCallback()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;->requestAccessToken()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;->requestCount:I

    return v0
.end method

.method static synthetic access$508(Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;)I
    .locals 2

    iget v0, p0, Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;->requestCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;->requestCount:I

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;->onDestroy()V

    return-void
.end method

.method private bindService()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.msc.action.samsungaccount.REQUEST_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "com.osp.app.signin"

    const-string/jumbo v2, "com.msc.sa.service.RequestService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method private onDestroy()V
    .locals 2

    const-string/jumbo v0, "SamsungAccountBinder"

    const-string/jumbo v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;->unRegisterCallback()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;->mISAService:Lcom/msc/sa/aidl/ISAService;

    return-void
.end method

.method private registerCallback()Z
    .locals 7

    :try_start_0
    const-string/jumbo v1, "22n6hzkam0"

    const-string/jumbo v3, "D5651C2062BE5B629F737B46F5A1C262"

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;->mISAService:Lcom/msc/sa/aidl/ISAService;

    iget-object v5, p0, Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;->mSACallback:Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder$SACallback;

    invoke-interface {v4, v1, v3, v2, v5}, Lcom/msc/sa/aidl/ISAService;->registerCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/msc/sa/aidl/ISACallback;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;->mRegistrationCode:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;->mRegistrationCode:Ljava/lang/String;

    if-nez v4, :cond_0

    const-string/jumbo v4, "SamsungAccountBinder"

    const-string/jumbo v5, "RegisterCallback fail!! Please Check SamsungAccount log. "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x0

    :goto_0
    return v4

    :catch_0
    move-exception v0

    const-string/jumbo v4, "SamsungAccountBinder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "RegisterCallback RemoteException Error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v4, "SamsungAccountBinder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "RegisterCallback success!! mRegistrationCode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;->mRegistrationCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    goto :goto_0
.end method

.method private requestAccessToken()V
    .locals 9

    iget-object v6, p0, Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string/jumbo v6, "com.osp.app.signin"

    invoke-virtual {v0, v6}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    const/4 v6, 0x1

    new-array v2, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "user_id"

    aput-object v7, v2, v6

    array-length v6, v1

    if-lez v6, :cond_1

    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v6, "additional"

    invoke-virtual {v3, v6, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;->mISAService:Lcom/msc/sa/aidl/ISAService;

    iget v7, p0, Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;->mRequestID:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;->mRequestID:I

    iget-object v8, p0, Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;->mRegistrationCode:Ljava/lang/String;

    invoke-interface {v6, v7, v8, v3}, Lcom/msc/sa/aidl/ISAService;->requestAccessToken(ILjava/lang/String;Landroid/os/Bundle;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "SamsungAccountBinder"

    const-string/jumbo v7, "Request AccessToken Failed"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v6, "SamsungAccountBinder"

    const-string/jumbo v7, "Request AccessToken Success"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    const-string/jumbo v6, "SamsungAccountBinder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Request AccessToken exception error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string/jumbo v6, "SamsungAccountBinder"

    const-string/jumbo v7, "Not exist samsung account"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private unRegisterCallback()V
    .locals 5

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;->mISAService:Lcom/msc/sa/aidl/ISAService;

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;->mRegistrationCode:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/msc/sa/aidl/ISAService;->unregisterCallback(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "SamsungAccountBinder"

    const-string/jumbo v3, "RegisterCallback fail!! Please Check SamsungAccount log. "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SamsungAccountBinder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "UnRegisterCallback RemoteException Error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public init()V
    .locals 2

    const-string/jumbo v0, "SamsungAccountBinder"

    const-string/jumbo v1, "Initialized the AccountInfoBinder"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;->requestCount:I

    invoke-direct {p0}, Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;->bindService()V

    return-void
.end method
