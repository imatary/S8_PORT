.class public Lcom/android/phone/photoring/PhotoRingMgr;
.super Ljava/lang/Object;
.source "PhotoRingMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/photoring/PhotoRingMgr$1;,
        Lcom/android/phone/photoring/PhotoRingMgr$2;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static sMe:Lcom/android/phone/photoring/PhotoRingMgr;


# instance fields
.field private PHOTORING_CONTENT_FILE:Ljava/lang/String;

.field private blockInfo2send:Z

.field private dirPath:Ljava/lang/String;

.field private hasState2send:Z

.field private mApp:Lcom/android/phone/PhoneApp;

.field public mCallMsgNetworkListener4IncomingCall:Lcom/android/phone/photoring/ICallMessageNetworkListener;

.field public mCallmessageNetwork:Lcom/android/phone/photoring/CallMessageNetwork;

.field private mContext:Landroid/content/Context;

.field private mIncomingCallContentDownloadStarted:Z

.field private mService:Lcom/android/phone/IMCIDService;

.field mSrvConn:Landroid/content/ServiceConnection;

.field private mcidMessage:Ljava/lang/String;

.field private mcid_chg_key:Ljava/lang/String;

.field private path2send:Ljava/lang/String;

.field private photoring_chg_key:Ljava/lang/String;

.field private photoring_rcv_num:Ljava/lang/String;

.field private photoring_svc_type:Ljava/lang/String;

.field public prcheckmcidstarted:Z

.field public prdownstarted:Z

.field private state2send:Lcom/android/phone/photoring/PhotoringUtil$PhotoringMTState;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/phone/photoring/PhotoRingMgr;->DBG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/phone/photoring/PhotoRingMgr;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingMgr;->PHOTORING_CONTENT_FILE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/phone/photoring/PhotoRingMgr;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingMgr;->photoring_chg_key:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/phone/photoring/PhotoRingMgr;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingMgr;->photoring_rcv_num:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/phone/photoring/PhotoRingMgr;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingMgr;->photoring_svc_type:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/phone/photoring/PhotoRingMgr;)Lcom/android/phone/photoring/PhotoringUtil$PhotoringMTState;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingMgr;->state2send:Lcom/android/phone/photoring/PhotoringUtil$PhotoringMTState;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/phone/photoring/PhotoRingMgr;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/photoring/PhotoRingMgr;->blockInfo2send:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/phone/photoring/PhotoRingMgr;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingMgr;->dirPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/phone/photoring/PhotoRingMgr;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/photoring/PhotoRingMgr;->hasState2send:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/phone/photoring/PhotoRingMgr;)Lcom/android/phone/PhoneApp;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mApp:Lcom/android/phone/PhoneApp;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/phone/photoring/PhotoRingMgr;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/phone/photoring/PhotoRingMgr;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mIncomingCallContentDownloadStarted:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/phone/photoring/PhotoRingMgr;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mcid_chg_key:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/phone/photoring/PhotoRingMgr;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingMgr;->path2send:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/phone/photoring/PhotoRingMgr;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/photoring/PhotoRingMgr;->hasState2send:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/phone/photoring/PhotoRingMgr;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mIncomingCallContentDownloadStarted:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/phone/photoring/PhotoRingMgr;Lcom/android/phone/IMCIDService;)Lcom/android/phone/IMCIDService;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mService:Lcom/android/phone/IMCIDService;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/phone/photoring/PhotoRingMgr;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mcid_chg_key:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/phone/photoring/PhotoRingMgr;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/photoring/PhotoRingMgr;->photoring_chg_key:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set5(Lcom/android/phone/photoring/PhotoRingMgr;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/photoring/PhotoRingMgr;->photoring_svc_type:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/phone/photoring/PhotoRingMgr;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/photoring/PhotoRingMgr;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/phone/photoring/PhotoRingMgr;Lcom/android/phone/photoring/PhotoringUtil$PhotoringMTState;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/photoring/PhotoRingMgr;->updateState(Lcom/android/phone/photoring/PhotoringUtil$PhotoringMTState;ZLjava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/photoring/PhotoRingMgr;->DBG:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/photoring/PhotoRingMgr;->sMe:Lcom/android/phone/photoring/PhotoRingMgr;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mCallmessageNetwork:Lcom/android/phone/photoring/CallMessageNetwork;

    iput-object v2, p0, Lcom/android/phone/photoring/PhotoRingMgr;->PHOTORING_CONTENT_FILE:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/phone/photoring/PhotoRingMgr;->dirPath:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mIncomingCallContentDownloadStarted:Z

    iput-object v2, p0, Lcom/android/phone/photoring/PhotoRingMgr;->photoring_chg_key:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/phone/photoring/PhotoRingMgr;->photoring_svc_type:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mcid_chg_key:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mService:Lcom/android/phone/IMCIDService;

    iput-boolean v1, p0, Lcom/android/phone/photoring/PhotoRingMgr;->prdownstarted:Z

    iput-boolean v1, p0, Lcom/android/phone/photoring/PhotoRingMgr;->prcheckmcidstarted:Z

    iput-object v2, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mcidMessage:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/phone/photoring/PhotoRingMgr;->hasState2send:Z

    iput-object v2, p0, Lcom/android/phone/photoring/PhotoRingMgr;->path2send:Ljava/lang/String;

    sget-object v0, Lcom/android/phone/photoring/PhotoringUtil$PhotoringMTState;->PHOTORING_NONE:Lcom/android/phone/photoring/PhotoringUtil$PhotoringMTState;

    iput-object v0, p0, Lcom/android/phone/photoring/PhotoRingMgr;->state2send:Lcom/android/phone/photoring/PhotoringUtil$PhotoringMTState;

    iput-boolean v1, p0, Lcom/android/phone/photoring/PhotoRingMgr;->blockInfo2send:Z

    new-instance v0, Lcom/android/phone/photoring/PhotoRingMgr$1;

    invoke-direct {v0, p0}, Lcom/android/phone/photoring/PhotoRingMgr$1;-><init>(Lcom/android/phone/photoring/PhotoRingMgr;)V

    iput-object v0, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mSrvConn:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/android/phone/photoring/PhotoRingMgr$2;

    invoke-direct {v0, p0}, Lcom/android/phone/photoring/PhotoRingMgr$2;-><init>(Lcom/android/phone/photoring/PhotoRingMgr;)V

    iput-object v0, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mCallMsgNetworkListener4IncomingCall:Lcom/android/phone/photoring/ICallMessageNetworkListener;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/photoring/CallMessageNetwork;->init(Landroid/content/Context;)Lcom/android/phone/photoring/CallMessageNetwork;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mCallmessageNetwork:Lcom/android/phone/photoring/CallMessageNetwork;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/photoring/PhotoRingMgr;->dirPath:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingMgr;->dirPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "photoring_content"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/photoring/PhotoRingMgr;->PHOTORING_CONTENT_FILE:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mCallMsgNetworkListener4IncomingCall:Lcom/android/phone/photoring/ICallMessageNetworkListener;

    invoke-virtual {p0, v0}, Lcom/android/phone/photoring/PhotoRingMgr;->registerCallMessageNetworkListener(Lcom/android/phone/photoring/ICallMessageNetworkListener;)V

    return-void
.end method

.method private bind()V
    .locals 6

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.incallui.MCID_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string/jumbo v3, "SEC_FLOATING_FEATURE_VOICECALL_CONFIG_INCALLUI_PACKAGE_NAME"

    const-string/jumbo v4, "com.android.incallui"

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.android.incallui.service.MCIDService"

    invoke-direct {v2, v0, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mSrvConn:Landroid/content/ServiceConnection;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v5, 0x1

    invoke-virtual {v2, v1, v3, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    const-string/jumbo v2, "bind mcid service"

    invoke-direct {p0, v2}, Lcom/android/phone/photoring/PhotoRingMgr;->log(Ljava/lang/String;)V

    return-void
.end method

.method private englog(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/phone/photoring/PhotoRingMgr;->DBG:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/phone/photoring/PhotoRingMgr;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/android/phone/photoring/PhotoRingMgr;
    .locals 1

    sget-object v0, Lcom/android/phone/photoring/PhotoRingMgr;->sMe:Lcom/android/phone/photoring/PhotoRingMgr;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/phone/photoring/PhotoRingMgr;->init()Lcom/android/phone/photoring/PhotoRingMgr;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/android/phone/photoring/PhotoRingMgr;->sMe:Lcom/android/phone/photoring/PhotoRingMgr;

    return-object v0
.end method

.method static init()Lcom/android/phone/photoring/PhotoRingMgr;
    .locals 4

    const-class v1, Lcom/android/phone/photoring/PhotoRingMgr;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/phone/photoring/PhotoRingMgr;->sMe:Lcom/android/phone/photoring/PhotoRingMgr;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/photoring/PhotoRingMgr;

    invoke-direct {v0}, Lcom/android/phone/photoring/PhotoRingMgr;-><init>()V

    sput-object v0, Lcom/android/phone/photoring/PhotoRingMgr;->sMe:Lcom/android/phone/photoring/PhotoRingMgr;

    :goto_0
    sget-object v0, Lcom/android/phone/photoring/PhotoRingMgr;->sMe:Lcom/android/phone/photoring/PhotoRingMgr;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    const-string/jumbo v0, "PhotoRingMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/photoring/PhotoRingMgr;->sMe:Lcom/android/phone/photoring/PhotoRingMgr;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "PhotoRingMgr"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static registerMcidReceiver(Lcom/android/phone/PhoneApp;)V
    .locals 5

    const-string/jumbo v2, "ims_support_multimedia_caller_id"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "com.android.phone.action.DOWNLOAD_PHOTORING_CONTENT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/android/phone/photoring/PhotoRingMgr$3;

    invoke-direct {v1}, Lcom/android/phone/photoring/PhotoRingMgr$3;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "com.samsung.permission.SIMHOTSWAP"

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private unbind()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mService:Lcom/android/phone/IMCIDService;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mSrvConn:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const-string/jumbo v1, "unbind mcid service"

    invoke-direct {p0, v1}, Lcom/android/phone/photoring/PhotoRingMgr;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iput-object v3, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mService:Lcom/android/phone/IMCIDService;

    goto :goto_0
.end method

.method private updateState(Lcom/android/phone/photoring/PhotoringUtil$PhotoringMTState;ZLjava/lang/String;)V
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateState() state : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/photoring/PhotoRingMgr;->log(Ljava/lang/String;)V

    const-string/jumbo v4, "ims_support_multimedia_caller_id"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mService:Lcom/android/phone/IMCIDService;

    if-eqz v4, :cond_4

    :try_start_0
    iget-object v4, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mService:Lcom/android/phone/IMCIDService;

    invoke-virtual {p1}, Lcom/android/phone/photoring/PhotoringUtil$PhotoringMTState;->ordinal()I

    move-result v5

    if-eqz p2, :cond_3

    :goto_0
    invoke-interface {v4, v5, v2, p3}, Lcom/android/phone/IMCIDService;->updatePhotoringState(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    sget-object v2, Lcom/android/phone/photoring/PhotoringUtil$PhotoringMTState;->PHOTORING_NONE:Lcom/android/phone/photoring/PhotoringUtil$PhotoringMTState;

    if-ne p1, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/photoring/PhotoRingMgr;->interruptDownload()V

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "photoring_content"

    invoke-static {v2, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "photoring_content"

    invoke-static {v2, v4, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0, v0}, Lcom/android/phone/photoring/PhotoRingMgr;->deleteContentFile(Ljava/lang/String;)Z

    :cond_1
    invoke-direct {p0}, Lcom/android/phone/photoring/PhotoRingMgr;->unbind()V

    iput-boolean v3, p0, Lcom/android/phone/photoring/PhotoRingMgr;->hasState2send:Z

    :cond_2
    return-void

    :cond_3
    move v2, v3

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "PhotoRingMgr"

    const-string/jumbo v4, "update Failed"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_4
    const-string/jumbo v4, "not binded mcid service yet"

    invoke-direct {p0, v4}, Lcom/android/phone/photoring/PhotoRingMgr;->log(Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/android/phone/photoring/PhotoRingMgr;->hasState2send:Z

    iput-object p1, p0, Lcom/android/phone/photoring/PhotoRingMgr;->state2send:Lcom/android/phone/photoring/PhotoringUtil$PhotoringMTState;

    iput-boolean p2, p0, Lcom/android/phone/photoring/PhotoRingMgr;->blockInfo2send:Z

    iput-object p3, p0, Lcom/android/phone/photoring/PhotoRingMgr;->path2send:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public checkMCID(Lcom/android/internal/telephony/Connection;)V
    .locals 24

    const-string/jumbo v20, "ims_support_multimedia_caller_id"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_6

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Lcom/android/phone/TeleServiceSystemDB;->setMcidBlockedNumber(I)V

    if-eqz p1, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/photoring/PhotoRingMgr;->bind()V

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/phone/photoring/PhotoringUtil;->isPhotoringBlockNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_0

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Lcom/android/phone/TeleServiceSystemDB;->setMcidBlockedNumber(I)V

    sget-object v20, Lcom/android/phone/photoring/PhotoringUtil$PhotoringMTState;->PHOTORING_NONE:Lcom/android/phone/photoring/PhotoringUtil$PhotoringMTState;

    invoke-static {}, Lcom/android/phone/photoring/PhotoringUtil;->isPhotoringBlockNumber()Z

    move-result v21

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/phone/photoring/PhotoRingMgr;->updateState(Lcom/android/phone/photoring/PhotoringUtil$PhotoringMTState;ZLjava/lang/String;)V

    const-string/jumbo v20, "Photoring blocked number"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/phone/photoring/PhotoRingMgr;->log(Ljava/lang/String;)V

    :cond_0
    if-eqz v8, :cond_5

    const-string/jumbo v20, "photoring_available"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v20, "alertinfo"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v20, "19;CNAP"

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_1

    const-string/jumbo v20, "30;CNAP2"

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    :cond_1
    const-string/jumbo v20, "19;CNAP"

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    const-string/jumbo v20, "0"

    :goto_0
    invoke-static/range {v20 .. v20}, Lcom/android/phone/photoring/PhotoringUtil;->setServicetypeValue(Ljava/lang/String;)V

    const/4 v5, 0x1

    :cond_2
    if-eqz v4, :cond_5

    const/4 v5, 0x1

    invoke-static {v4}, Lcom/android/phone/photoring/PhotoringUtil;->refleshAlertInfoValue(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_3

    const/4 v5, 0x0

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v18

    const/16 v20, 0x2

    move/from16 v0, v18

    move/from16 v1, v20

    if-eq v0, v1, :cond_4

    const/16 v20, 0x3

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    :cond_4
    const/4 v5, 0x0

    :cond_5
    if-eqz v5, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string/jumbo v21, "photoring_reject_all"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/photoring/PhotoRingMgr;->mcidMessage:Ljava/lang/String;

    if-nez v19, :cond_6

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->getDataSelectionEnableSet()Z

    move-result v20

    if-nez v20, :cond_8

    sget-object v20, Lcom/android/phone/photoring/PhotoringUtil$PhotoringMTState;->PHOTORING_MOBILE_DATA_OFF:Lcom/android/phone/photoring/PhotoringUtil$PhotoringMTState;

    invoke-static {}, Lcom/android/phone/photoring/PhotoringUtil;->isPhotoringBlockNumber()Z

    move-result v21

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/phone/photoring/PhotoRingMgr;->updateState(Lcom/android/phone/photoring/PhotoringUtil$PhotoringMTState;ZLjava/lang/String;)V

    :cond_6
    :goto_1
    return-void

    :cond_7
    const-string/jumbo v20, "1"

    goto :goto_0

    :cond_8
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/photoring/PhotoRingMgr;->photoring_rcv_num:Ljava/lang/String;

    if-eqz v4, :cond_c

    invoke-static {}, Lcom/android/phone/photoring/PhotoringUtil;->getContentUrl()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v12, ".png"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr;->PHOTORING_CONTENT_FILE:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "photoring_content"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v13, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-static {}, Lcom/android/phone/photoring/PhotoringUtil;->isPhotoringBlockNumber()Z

    move-result v20

    if-nez v20, :cond_6

    new-instance v10, Lcom/android/phone/photoring/PhotoRingDB;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v10, v0}, Lcom/android/phone/photoring/PhotoRingDB;-><init>(Landroid/content/Context;)V

    const/16 v20, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v10, v0, v9, v1}, Lcom/android/phone/photoring/PhotoRingDB;->getCacheData(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v6, :cond_9

    new-instance v7, Ljava/io/File;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr;->dirPath:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_9
    if-eqz v7, :cond_b

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_b

    const-string/jumbo v20, "cached data"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/phone/photoring/PhotoRingMgr;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr;->dirPath:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr;->dirPath:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v20 .. v22}, Lcom/android/phone/photoring/PhotoringUtil;->copyImage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v20, "feature_ktt"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string/jumbo v21, "key_photoring_mt_content_url"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v9}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string/jumbo v21, "photoring_content"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v14}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    sget-object v20, Lcom/android/phone/photoring/PhotoringUtil$PhotoringMTState;->PHOTORING_CONTENT_DOWNLOADED:Lcom/android/phone/photoring/PhotoringUtil$PhotoringMTState;

    invoke-static {}, Lcom/android/phone/photoring/PhotoringUtil;->isPhotoringBlockNumber()Z

    move-result v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2, v14}, Lcom/android/phone/photoring/PhotoRingMgr;->updateState(Lcom/android/phone/photoring/PhotoringUtil$PhotoringMTState;ZLjava/lang/String;)V

    :goto_3
    invoke-virtual {v10}, Lcom/android/phone/photoring/PhotoRingDB;->close()V

    goto/16 :goto_1

    :catch_0
    move-exception v11

    const-string/jumbo v20, "make file failed"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/phone/photoring/PhotoRingMgr;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_b
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/photoring/PhotoRingMgr;->prcheckmcidstarted:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v14}, Lcom/android/phone/photoring/PhotoRingMgr;->downloadContent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/photoring/PhotoRingMgr;->getCallMessageCall(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public deleteContentFile(Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public deleteMcidInfo()V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/phone/photoring/PhotoringUtil;->setContentUrl(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/phone/photoring/PhotoringUtil;->setChgUrl(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/phone/TeleServiceSystemDB;->setMcidDownloadable(I)V

    return-void
.end method

.method public deregisterCallMessageNetworkListener(Lcom/android/phone/photoring/ICallMessageNetworkListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mCallmessageNetwork:Lcom/android/phone/photoring/CallMessageNetwork;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mCallmessageNetwork:Lcom/android/phone/photoring/CallMessageNetwork;

    invoke-virtual {v0, p1}, Lcom/android/phone/photoring/CallMessageNetwork;->deregisterCallMessageNetworkListener(Lcom/android/phone/photoring/ICallMessageNetworkListener;)V

    :cond_0
    return-void
.end method

.method public downloadContent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mCallmessageNetwork:Lcom/android/phone/photoring/CallMessageNetwork;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mCallmessageNetwork:Lcom/android/phone/photoring/CallMessageNetwork;

    invoke-virtual {v0, p1, p2}, Lcom/android/phone/photoring/CallMessageNetwork;->downloadContent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getAlertInfo()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mCallmessageNetwork:Lcom/android/phone/photoring/CallMessageNetwork;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mCallmessageNetwork:Lcom/android/phone/photoring/CallMessageNetwork;

    invoke-virtual {v0}, Lcom/android/phone/photoring/CallMessageNetwork;->getAlertInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public getCallMessageCall(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mCallmessageNetwork:Lcom/android/phone/photoring/CallMessageNetwork;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mCallmessageNetwork:Lcom/android/phone/photoring/CallMessageNetwork;

    invoke-virtual {v0, p1}, Lcom/android/phone/photoring/CallMessageNetwork;->getCallMessageCall(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getCallMessageChgCall()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mCallmessageNetwork:Lcom/android/phone/photoring/CallMessageNetwork;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mCallmessageNetwork:Lcom/android/phone/photoring/CallMessageNetwork;

    invoke-virtual {v0}, Lcom/android/phone/photoring/CallMessageNetwork;->getCallMessageChgCall()V

    :cond_0
    return-void
.end method

.method public getCallMessageChgCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mCallmessageNetwork:Lcom/android/phone/photoring/CallMessageNetwork;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mCallmessageNetwork:Lcom/android/phone/photoring/CallMessageNetwork;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/phone/photoring/CallMessageNetwork;->getCallMessageChgCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getContentSpecCall()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mCallmessageNetwork:Lcom/android/phone/photoring/CallMessageNetwork;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mCallmessageNetwork:Lcom/android/phone/photoring/CallMessageNetwork;

    invoke-virtual {v0}, Lcom/android/phone/photoring/CallMessageNetwork;->getContentSpecCall()V

    :cond_0
    return-void
.end method

.method public getNumberFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v1, "getInitialListFromIntent - enter"

    invoke-direct {p0, v1}, Lcom/android/phone/photoring/PhotoRingMgr;->log(Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-object v2

    :cond_0
    const/4 v0, 0x0

    const-string/jumbo v1, "dest_number"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "dest_number"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getInitialListFromIntent savedNumber : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/photoring/PhotoRingMgr;->englog(Ljava/lang/String;)V

    return-object v0
.end method

.method public interruptDownload()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mCallmessageNetwork:Lcom/android/phone/photoring/CallMessageNetwork;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mCallmessageNetwork:Lcom/android/phone/photoring/CallMessageNetwork;

    invoke-virtual {v0}, Lcom/android/phone/photoring/CallMessageNetwork;->interruptDownload()V

    :cond_0
    return-void
.end method

.method public registerCallMessageNetworkListener(Lcom/android/phone/photoring/ICallMessageNetworkListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mCallmessageNetwork:Lcom/android/phone/photoring/CallMessageNetwork;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mCallmessageNetwork:Lcom/android/phone/photoring/CallMessageNetwork;

    invoke-virtual {v0, p1}, Lcom/android/phone/photoring/CallMessageNetwork;->registerCallMessageNetworkListener(Lcom/android/phone/photoring/ICallMessageNetworkListener;)V

    :cond_0
    return-void
.end method

.method public resetState()V
    .locals 3

    sget-object v0, Lcom/android/phone/photoring/PhotoringUtil$PhotoringMTState;->PHOTORING_NONE:Lcom/android/phone/photoring/PhotoringUtil$PhotoringMTState;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/phone/photoring/PhotoRingMgr;->updateState(Lcom/android/phone/photoring/PhotoringUtil$PhotoringMTState;ZLjava/lang/String;)V

    return-void
.end method

.method public setRealtimeServiceInfoCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/phone/photoring/PhotoRingMgr;->setRealtimeServiceInfoCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public setRealtimeServiceInfoCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mCallmessageNetwork:Lcom/android/phone/photoring/CallMessageNetwork;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mCallmessageNetwork:Lcom/android/phone/photoring/CallMessageNetwork;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/phone/photoring/CallMessageNetwork;->setRealtimeServiceInfoCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public updateMcidIntentForCallState(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Connection;)V
    .locals 20

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v16

    const/4 v5, 0x0

    const/4 v13, 0x0

    const/4 v2, 0x0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v18

    sget-object v19, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_6

    move-object/from16 v4, v16

    :goto_0
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v18

    if-nez v18, :cond_7

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v13

    :goto_1
    invoke-static {v4}, Lcom/android/phone/photoring/PhotoringUtil;->convertToMcidCallState(Lcom/android/internal/telephony/Call;)I

    move-result v2

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object p2

    :cond_0
    const/4 v3, 0x0

    const/4 v15, 0x0

    invoke-static {}, Lcom/android/phone/photoring/PhotoringUtil;->getDownloadableValue()Z

    move-result v14

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/phone/photoring/PhotoringUtil;->getContentUrl()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v6, "VOICE"

    if-eqz v5, :cond_1

    iget v0, v5, Lcom/android/internal/telephony/CallDetails;->call_type:I

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    const-string/jumbo v6, "VIDEO"

    :cond_1
    :goto_2
    if-eqz p2, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v7

    :cond_2
    if-eqz v8, :cond_3

    invoke-static {}, Lcom/android/phone/photoring/PhotoringUtil;->isPhotoringBlockNumber()Z

    move-result v18

    if-eqz v18, :cond_9

    :cond_3
    :goto_3
    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v18, "com.kt.call.action.CALL_EVENT"

    move-object/from16 v0, v18

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v18, "state"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v18, "type"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v18, "showme"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v18, "address"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    if-eqz v3, :cond_4

    new-instance v17, Landroid/content/Intent;

    const-string/jumbo v18, "com.kt.call.action.SHOWME_DATA"

    invoke-direct/range {v17 .. v18}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v18, "text"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v10, 0x0

    :try_start_0
    invoke-static {v8}, Lcom/android/phone/photoring/http/AES256Cipher;->encrypt(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    :goto_4
    const-string/jumbo v18, "content_url"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v18, "downloadable"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_4
    const-string/jumbo v18, "eng"

    sget-object v19, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "McidCallstate : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/phone/photoring/PhotoRingMgr;->log(Ljava/lang/String;)V

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "type    : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/phone/photoring/PhotoRingMgr;->log(Ljava/lang/String;)V

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "showme        : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/phone/photoring/PhotoRingMgr;->log(Ljava/lang/String;)V

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "address      : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/phone/photoring/PhotoRingMgr;->log(Ljava/lang/String;)V

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "text        : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/phone/photoring/PhotoRingMgr;->log(Ljava/lang/String;)V

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "content_url         : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/phone/photoring/PhotoRingMgr;->log(Ljava/lang/String;)V

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "downloadable      : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/phone/photoring/PhotoRingMgr;->log(Ljava/lang/String;)V

    :cond_5
    return-void

    :cond_6
    move-object v4, v11

    goto/16 :goto_0

    :cond_7
    const/4 v13, 0x1

    goto/16 :goto_1

    :cond_8
    const-string/jumbo v6, "VOICE"

    goto/16 :goto_2

    :cond_9
    const/4 v3, 0x1

    goto/16 :goto_3

    :catch_0
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4
.end method

.method public uploadContentCall(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/phone/photoring/PhotoRingMgr;->uploadContentCall(Ljava/lang/String;Z)V

    return-void
.end method

.method public uploadContentCall(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mCallmessageNetwork:Lcom/android/phone/photoring/CallMessageNetwork;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingMgr;->mCallmessageNetwork:Lcom/android/phone/photoring/CallMessageNetwork;

    invoke-virtual {v0, p1, p2}, Lcom/android/phone/photoring/CallMessageNetwork;->uploadContentCall(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
