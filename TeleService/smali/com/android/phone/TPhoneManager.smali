.class public Lcom/android/phone/TPhoneManager;
.super Ljava/lang/Object;
.source "TPhoneManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/TPhoneManager$1;,
        Lcom/android/phone/TPhoneManager$2;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/phone/TPhoneManager;


# instance fields
.field private apps:Lcom/android/phone/PhoneGlobals;

.field private cm:Lcom/android/internal/telephony/CallManager;

.field private context:Landroid/content/Context;

.field private coverState:Lcom/samsung/android/sdk/cover/ScoverState;

.field private mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

.field public mCoverState:I

.field private mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

.field public mCoverType:I

.field private mHandler:Landroid/os/Handler;

.field private mScover:Lcom/samsung/android/sdk/cover/Scover;

.field private mTInCallScreen:Lcom/skt/prod/phone/ITInCallScreen;

.field public mTInCallScreenConn:Landroid/content/ServiceConnection;


# direct methods
.method static synthetic -get0(Lcom/android/phone/TPhoneManager;)Lcom/android/internal/telephony/CallManager;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/TPhoneManager;->cm:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/phone/TPhoneManager;)Lcom/samsung/android/sdk/cover/ScoverState;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/TPhoneManager;->coverState:Lcom/samsung/android/sdk/cover/ScoverState;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/phone/TPhoneManager;)Lcom/samsung/android/sdk/cover/ScoverManager;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/TPhoneManager;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/phone/TPhoneManager;Lcom/samsung/android/sdk/cover/ScoverState;)Lcom/samsung/android/sdk/cover/ScoverState;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/TPhoneManager;->coverState:Lcom/samsung/android/sdk/cover/ScoverState;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/phone/TPhoneManager;Lcom/skt/prod/phone/ITInCallScreen;)Lcom/skt/prod/phone/ITInCallScreen;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/TPhoneManager;->mTInCallScreen:Lcom/skt/prod/phone/ITInCallScreen;

    return-object p1
.end method

.method static synthetic -wrap0(Ljava/lang/String;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/phone/TPhoneManager;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/phone/TPhoneManager;Landroid/os/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/TPhoneManager;->onIncomingModifyCall(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const/4 v3, 0x1

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/phone/TPhoneManager;->apps:Lcom/android/phone/PhoneGlobals;

    iput-object v0, p0, Lcom/android/phone/TPhoneManager;->cm:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/TPhoneManager;->context:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/phone/TPhoneManager;->mTInCallScreen:Lcom/skt/prod/phone/ITInCallScreen;

    iput v1, p0, Lcom/android/phone/TPhoneManager;->mCoverState:I

    iput v1, p0, Lcom/android/phone/TPhoneManager;->mCoverType:I

    new-instance v0, Lcom/android/phone/TPhoneManager$1;

    invoke-direct {v0, p0}, Lcom/android/phone/TPhoneManager$1;-><init>(Lcom/android/phone/TPhoneManager;)V

    iput-object v0, p0, Lcom/android/phone/TPhoneManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/TPhoneManager$2;

    invoke-direct {v0, p0}, Lcom/android/phone/TPhoneManager$2;-><init>(Lcom/android/phone/TPhoneManager;)V

    iput-object v0, p0, Lcom/android/phone/TPhoneManager;->mTInCallScreenConn:Landroid/content/ServiceConnection;

    const-string/jumbo v0, "[tphone] TPhoneManager"

    const-string/jumbo v1, "create... "

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/TPhoneManager;->apps:Lcom/android/phone/PhoneGlobals;

    iget-object v0, p0, Lcom/android/phone/TPhoneManager;->apps:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/TPhoneManager;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/phone/TPhoneManager;->apps:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/TPhoneManager;->cm:Lcom/android/internal/telephony/CallManager;

    return-void
.end method

.method private static createExplicitIntentForITInCallScreen(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 13

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/4 v11, 0x0

    invoke-virtual {v7, p1, v11}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x1

    if-ge v11, v12, :cond_1

    :cond_0
    const/4 v11, 0x0

    return-object v11

    :cond_1
    const/4 v1, 0x0

    const/4 v3, -0x1

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    iget-object v11, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v11, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v11, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v11, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    const-string/jumbo v11, "com.skt.prod.permission.PHONE_SERVICE"

    invoke-virtual {v7, v11, v6}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_2

    const/4 v5, 0x0

    const/16 v11, 0x80

    :try_start_0
    invoke-virtual {v7, v6, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    :goto_1
    if-eqz v5, :cond_2

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "createExplicitIntentForITInCallScreen : packageInfo.versionCode = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/android/phone/TPhoneManager;->log(Ljava/lang/String;Z)V

    iget v11, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    if-le v11, v3, :cond_2

    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v6, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_1

    :cond_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/android/phone/TPhoneManager;->log(Ljava/lang/String;Z)V

    if-nez v1, :cond_4

    const/4 v11, 0x0

    return-object v11

    :cond_4
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object v2
.end method

.method public static getInstance()Lcom/android/phone/TPhoneManager;
    .locals 2

    const-class v1, Lcom/android/phone/TPhoneManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/phone/TPhoneManager;->sInstance:Lcom/android/phone/TPhoneManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/TPhoneManager;

    invoke-direct {v0}, Lcom/android/phone/TPhoneManager;-><init>()V

    sput-object v0, Lcom/android/phone/TPhoneManager;->sInstance:Lcom/android/phone/TPhoneManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    sget-object v0, Lcom/android/phone/TPhoneManager;->sInstance:Lcom/android/phone/TPhoneManager;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static log(Ljava/lang/String;Z)V
    .locals 4

    const-string/jumbo v0, "[tphone] TPhoneManager"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, p0, v1}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private onIncomingModifyCall(Landroid/os/AsyncResult;)V
    .locals 6

    :try_start_0
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    iget-object v3, p0, Lcom/android/phone/TPhoneManager;->cm:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/CallManager;->getProposedConnectionType(Lcom/android/internal/telephony/Connection;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    const-string/jumbo v3, "onIncomingModifyCall : request CALL_TYPE_VT -> CALL_TYPE_VOICE"

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/phone/TPhoneManager;->log(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/services/utils/SecTelecomAdapter;->isLowBatt()Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x7f0d0938

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->displayToast(I)V

    iget-object v3, p0, Lcom/android/phone/TPhoneManager;->cm:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/CallManager;->rejectConnectionTypeChange(Lcom/android/internal/telephony/Connection;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/phone/TPhoneService;->getInstance()Lcom/android/phone/TPhoneService;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/phone/TPhoneService;->sendRequestVideoCall(Lcom/android/internal/telephony/Connection;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v3, "[tphone] TPhoneManager"

    const-string/jumbo v4, "onIncomingModifyCall : CallStateException:"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v1, v4, v5}, Lcom/android/services/telephony/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public connectTInCallScreen()V
    .locals 8

    const/4 v7, 0x0

    const/4 v5, 0x1

    const-string/jumbo v2, "support_tphone"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "[tphone] TPhoneManager"

    const-string/jumbo v3, "connect TInCallScreen blocked - do not support tphone"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isTPhoneEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "[tphone] TPhoneManager"

    const-string/jumbo v3, "connect TInCallScreen blocked - is not tphone enabled"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/TPhoneManager;->mTInCallScreen:Lcom/skt/prod/phone/ITInCallScreen;

    if-nez v2, :cond_3

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/skt/prod/phone/ITInCallScreen;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/TPhoneManager;->context:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/phone/TPhoneManager;->createExplicitIntentForITInCallScreen(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/TPhoneManager;->apps:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2, v1}, Lcom/android/phone/PhoneGlobals;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/TPhoneManager;->apps:Lcom/android/phone/PhoneGlobals;

    iget-object v3, p0, Lcom/android/phone/TPhoneManager;->mTInCallScreenConn:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/phone/PhoneGlobals;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "[tphone] TPhoneManager"

    const-string/jumbo v3, "connect TInCallScreen()... "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string/jumbo v2, "[tphone] TPhoneManager"

    const-string/jumbo v3, "connect TInCallScreen blocked - already did it"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "[tphone] TPhoneManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "can not connect TInCallScreen - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public disconnectTInCallScreen()V
    .locals 8

    const/4 v7, 0x0

    const/4 v3, 0x1

    const-string/jumbo v2, "support_tphone"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "disconnect TInCallScreen blocked - do not support tphone"

    invoke-static {v2, v3}, Lcom/android/phone/TPhoneManager;->log(Ljava/lang/String;Z)V

    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/skt/prod/phone/ITInCallScreen;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/TPhoneManager;->context:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/phone/TPhoneManager;->createExplicitIntentForITInCallScreen(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/TPhoneManager;->mTInCallScreenConn:Landroid/content/ServiceConnection;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/TPhoneManager;->apps:Lcom/android/phone/PhoneGlobals;

    iget-object v3, p0, Lcom/android/phone/TPhoneManager;->mTInCallScreenConn:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Lcom/android/phone/PhoneGlobals;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v2, p0, Lcom/android/phone/TPhoneManager;->apps:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2, v1}, Lcom/android/phone/PhoneGlobals;->stopService(Landroid/content/Intent;)Z

    const-string/jumbo v2, "[tphone] TPhoneManager"

    const-string/jumbo v3, "disconnect TInCallScreen()..."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "[tphone] TPhoneManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "can not disconnect TInCallScreen - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public displayTPhone(I)V
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/phone/TPhoneManager;->startTPhone(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getCallFilterType(Ljava/lang/String;I)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/TPhoneManager;->mTInCallScreen:Lcom/skt/prod/phone/ITInCallScreen;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/TPhoneManager;->connectTInCallScreen()V

    const-string/jumbo v2, "[tphone] TPhoneManager"

    const-string/jumbo v3, "getCallFilterType : connectTInCallScreen()... "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v2, p0, Lcom/android/phone/TPhoneManager;->mTInCallScreen:Lcom/skt/prod/phone/ITInCallScreen;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/TPhoneManager;->mTInCallScreen:Lcom/skt/prod/phone/ITInCallScreen;

    invoke-interface {v2, p1, p2}, Lcom/skt/prod/phone/ITInCallScreen;->getCallFilterType(Ljava/lang/String;I)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " getCallFilterType() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/phone/TPhoneManager;->log(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getRingtoneUri()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/phone/TPhoneManager;->getRingtoneUri(Lcom/skt/prod/phone/TCall;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v2
.end method

.method public getRingtoneUri(Lcom/skt/prod/phone/TCall;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/TPhoneManager;->mTInCallScreen:Lcom/skt/prod/phone/ITInCallScreen;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/TPhoneManager;->connectTInCallScreen()V

    const-string/jumbo v2, "[tphone] TPhoneManager"

    const-string/jumbo v3, "getRingtoneUri : connectTInCallScreen()... "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v2, p0, Lcom/android/phone/TPhoneManager;->mTInCallScreen:Lcom/skt/prod/phone/ITInCallScreen;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/TPhoneManager;->mTInCallScreen:Lcom/skt/prod/phone/ITInCallScreen;

    invoke-interface {v2, p1}, Lcom/skt/prod/phone/ITInCallScreen;->getRingtoneUri(Lcom/skt/prod/phone/TCall;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getRingtoneUri() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/phone/TPhoneManager;->log(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onIncomingModifyCall(Lcom/android/internal/telephony/Connection;)V
    .locals 4

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/services/utils/SecTelecomAdapter;->isLowBatt()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0d0938

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->displayToast(I)V

    invoke-static {}, Lcom/android/services/telephony/TelephonyConnectionService;->getInstance()Lcom/android/services/telephony/TelephonyConnectionService;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/services/telephony/TelephonyConnectionService;->getTelephonyConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/services/telephony/TelephonyConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/services/telephony/TelephonyConnection;->getCallId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/services/utils/SecTelecomAdapter;->sendSessionModifyResponseForTPhone(Ljava/lang/String;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/phone/TPhoneService;->getInstance()Lcom/android/phone/TPhoneService;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/phone/TPhoneService;->sendRequestVideoCall(Lcom/android/internal/telephony/Connection;)V

    goto :goto_0
.end method

.method public registerForAll()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/phone/TPhoneManager;->registerForNotifications()V

    invoke-virtual {p0}, Lcom/android/phone/TPhoneManager;->registerScoverListener()V

    invoke-virtual {p0}, Lcom/android/phone/TPhoneManager;->connectTInCallScreen()V

    return-void
.end method

.method public registerForNotifications()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string/jumbo v0, "registerForNotifications()"

    invoke-static {v0, v4}, Lcom/android/phone/TPhoneManager;->log(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/phone/TPhoneManager;->apps:Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/TPhoneManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6e

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/phone/TPhoneManager;->apps:Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/TPhoneManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6f

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/phone/TPhoneManager;->cm:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/TPhoneManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/phone/TPhoneManager;->cm:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/TPhoneManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v4, v3}, Lcom/android/internal/telephony/CallManager;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/phone/TPhoneManager;->cm:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/TPhoneManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/phone/TPhoneManager;->cm:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/TPhoneManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/phone/TPhoneManager;->cm:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/TPhoneManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/phone/TPhoneManager;->cm:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/TPhoneManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForConnectionTypeChangeRequest(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerScoverListener()V
    .locals 8

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string/jumbo v4, "[tphone] TPhoneManager"

    const-string/jumbo v5, "registerScoverListener : "

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v4, v5, v6}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v4, Lcom/samsung/android/sdk/cover/Scover;

    invoke-direct {v4}, Lcom/samsung/android/sdk/cover/Scover;-><init>()V

    iput-object v4, p0, Lcom/android/phone/TPhoneManager;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    :try_start_0
    iget-object v4, p0, Lcom/android/phone/TPhoneManager;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    iget-object v5, p0, Lcom/android/phone/TPhoneManager;->apps:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/cover/Scover;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v4, Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v5, p0, Lcom/android/phone/TPhoneManager;->apps:Lcom/android/phone/PhoneGlobals;

    invoke-direct {v4, v5}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/phone/TPhoneManager;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v4, p0, Lcom/android/phone/TPhoneManager;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/TPhoneManager;->coverState:Lcom/samsung/android/sdk/cover/ScoverState;

    iget-object v4, p0, Lcom/android/phone/TPhoneManager;->coverState:Lcom/samsung/android/sdk/cover/ScoverState;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/phone/TPhoneManager;->coverState:Lcom/samsung/android/sdk/cover/ScoverState;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    :cond_0
    iput v2, p0, Lcom/android/phone/TPhoneManager;->mCoverState:I

    iget-object v2, p0, Lcom/android/phone/TPhoneManager;->coverState:Lcom/samsung/android/sdk/cover/ScoverState;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I

    move-result v2

    iput v2, p0, Lcom/android/phone/TPhoneManager;->mCoverType:I

    :cond_1
    invoke-static {}, Lcom/android/phone/TPhoneService;->getInstance()Lcom/android/phone/TPhoneService;

    move-result-object v2

    iget v4, p0, Lcom/android/phone/TPhoneManager;->mCoverType:I

    iget v5, p0, Lcom/android/phone/TPhoneManager;->mCoverState:I

    invoke-virtual {v2, v4, v5}, Lcom/android/phone/TPhoneService;->sendCoverStateChanged(II)V

    new-instance v2, Lcom/android/phone/TPhoneManager$3;

    invoke-direct {v2, p0}, Lcom/android/phone/TPhoneManager$3;-><init>(Lcom/android/phone/TPhoneManager;)V

    iput-object v2, p0, Lcom/android/phone/TPhoneManager;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    iget-object v2, p0, Lcom/android/phone/TPhoneManager;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/TPhoneManager;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    if-eqz v2, :cond_2

    const-string/jumbo v2, "register Scover listener "

    invoke-static {v2, v3}, Lcom/android/phone/TPhoneManager;->log(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/phone/TPhoneManager;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v3, p0, Lcom/android/phone/TPhoneManager;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/cover/ScoverManager;->registerListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    :cond_2
    return-void

    :catch_0
    move-exception v0

    return-void

    :catch_1
    move-exception v1

    return-void
.end method

.method public setCallFilterType(Lcom/android/internal/telephony/Connection;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/phone/TPhoneManager;->getCallFilterType(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const-string/jumbo v2, "[tphone] TPhoneManager"

    const-string/jumbo v3, "onNewRingingConnection : RELAXATION"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/phone/TeleServiceSystemDB;->setTPhoneRejectMode(I)V

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/phone/TeleServiceSystemDB;->setTPhoneRelaxMode(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    const-string/jumbo v2, "[tphone] TPhoneManager"

    const-string/jumbo v3, "onNewRingingConnection : REJECT"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/phone/TeleServiceSystemDB;->setTPhoneRejectMode(I)V

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/phone/TeleServiceSystemDB;->setTPhoneRelaxMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_1
    const-string/jumbo v2, "[tphone] TPhoneManager"

    const-string/jumbo v3, "onNewRingingConnection : ALLOW"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/phone/TeleServiceSystemDB;->setTPhoneRejectMode(I)V

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/phone/TeleServiceSystemDB;->setTPhoneRelaxMode(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public startTPhone(ILjava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/TPhoneManager;->mTInCallScreen:Lcom/skt/prod/phone/ITInCallScreen;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startTPhone() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/phone/TPhoneManager;->log(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/phone/TPhoneManager;->mTInCallScreen:Lcom/skt/prod/phone/ITInCallScreen;

    invoke-interface {v1, p1, p2}, Lcom/skt/prod/phone/ITInCallScreen;->startTPhone(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "[tphone] TPhoneManager"

    const-string/jumbo v2, "startTPhone : connectTInCallScreen()... "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/android/services/telephony/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/phone/TPhoneManager;->connectTInCallScreen()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public unregisterForAll()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/TPhoneManager;->sInstance:Lcom/android/phone/TPhoneManager;

    invoke-virtual {p0}, Lcom/android/phone/TPhoneManager;->unregisterForNotifications()V

    invoke-virtual {p0}, Lcom/android/phone/TPhoneManager;->unregisterScoverListener()V

    invoke-virtual {p0}, Lcom/android/phone/TPhoneManager;->disconnectTInCallScreen()V

    return-void
.end method

.method public unregisterForNotifications()V
    .locals 2

    const-string/jumbo v0, "unregisterForNotifications()"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/phone/TPhoneManager;->log(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/phone/TPhoneManager;->apps:Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/TPhoneManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForSuppServiceFailed(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/phone/TPhoneManager;->apps:Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/TPhoneManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForSuppServiceNotification(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/phone/TPhoneManager;->cm:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/TPhoneManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForNewRingingConnection(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/phone/TPhoneManager;->cm:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/TPhoneManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/phone/TPhoneManager;->cm:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/TPhoneManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForDisconnect(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/phone/TPhoneManager;->cm:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/TPhoneManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForIncomingRing(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/phone/TPhoneManager;->cm:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/TPhoneManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForPostDialCharacter(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/phone/TPhoneManager;->cm:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/TPhoneManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForConnectionTypeChangeRequest(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterScoverListener()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/TPhoneManager;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/TPhoneManager;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "unregist Scover listener "

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/phone/TPhoneManager;->log(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/phone/TPhoneManager;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v1, p0, Lcom/android/phone/TPhoneManager;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->unregisterListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    :cond_0
    return-void
.end method
