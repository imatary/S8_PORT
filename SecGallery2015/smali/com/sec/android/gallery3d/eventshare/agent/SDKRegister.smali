.class public Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;
.super Ljava/lang/Object;
.source "SDKRegister.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$RegisterProgress;,
        Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$serviceOffListener;,
        Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$serviceOnListener;,
        Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$registerOnListener;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mEA:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;

.field private final mProgressDialog:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

.field private mRegisterOnListener:Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$registerOnListener;

.field private mServiceOffListener:Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$serviceOffListener;

.field private mServiceOnListener:Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$serviceOnListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedFeatures()Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->init(Landroid/content/Context;)V

    :cond_0
    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedAccount()Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->mEA:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->dismissProgressDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;)Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$registerOnListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->mRegisterOnListener:Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$registerOnListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;)Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$serviceOnListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->mServiceOnListener:Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$serviceOnListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;)Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$serviceOffListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->mServiceOffListener:Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$serviceOffListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;)Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    return-object v0
.end method

.method private dismissProgressDialog()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->closeProgressDialog()V

    :cond_0
    return-void
.end method


# virtual methods
.method public isAuth()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedAccountEx()Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedAccountEx()Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx;

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx;->isCoreAppsAuthenticated(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRegistered()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->mEA:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->mEA:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isServiceOn()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->mEA:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->mEA:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;->isServiceEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public register(Z)V
    .locals 3

    if-eqz p1, :cond_0

    new-instance v1, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$RegisterProgress;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$RegisterProgress;-><init>(Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$1;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$RegisterProgress;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    new-instance v0, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$3;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$3;-><init>(Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;Z)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->mEA:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;->register(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountListener;)V

    return-void
.end method

.method public registerWithProgress()V
    .locals 3

    new-instance v1, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$RegisterProgress;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$RegisterProgress;-><init>(Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$1;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$RegisterProgress;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$2;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$2;-><init>(Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->mEA:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;->register(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountListener;)V

    return-void
.end method

.method public restore(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$1;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$1;-><init>(Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;)V

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedFeatures()Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->init(Landroid/content/Context;)V

    :cond_0
    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedFeatures()Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedAccount()Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;->isAuthenticated(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountAuthInfoListener;)V

    :cond_1
    return-void
.end method

.method public serviceOff()V
    .locals 2

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$5;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$5;-><init>(Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->mEA:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;->disableService(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountListener;)V

    return-void
.end method

.method public serviceOffForUPSM()V
    .locals 2

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$7;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$7;-><init>(Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->mEA:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;->disableService(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountListener;)V

    return-void
.end method

.method public serviceOn(Z)V
    .locals 3

    if-eqz p1, :cond_0

    new-instance v1, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$RegisterProgress;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$RegisterProgress;-><init>(Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$1;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$RegisterProgress;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    new-instance v0, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$4;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$4;-><init>(Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;Z)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->mEA:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;->enableService(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountListener;)V

    return-void
.end method

.method public serviceOnForUPSM()V
    .locals 2

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$6;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$6;-><init>(Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->mEA:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;->enableService(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountListener;)V

    return-void
.end method

.method public setAuthListener(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountAuthListener;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->mEA:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;->addAuthListener(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountAuthListener;)V

    return-void
.end method

.method public setRegisterOnListener(Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$registerOnListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->mRegisterOnListener:Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$registerOnListener;

    return-void
.end method

.method public setServiceListener(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountServiceListener;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedAccountEx()Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->init(Landroid/content/Context;)V

    :cond_0
    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedAccountEx()Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedAccountEx()Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx;->addServiceListener(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountServiceListener;)V

    :cond_1
    return-void
.end method

.method public setServiceOffListener(Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$serviceOffListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->mServiceOffListener:Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$serviceOffListener;

    return-void
.end method

.method public setServiceOnListener(Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$serviceOnListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->mServiceOnListener:Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$serviceOnListener;

    return-void
.end method
