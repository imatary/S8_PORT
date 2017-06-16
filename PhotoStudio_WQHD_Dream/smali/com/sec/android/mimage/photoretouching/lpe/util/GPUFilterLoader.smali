.class public Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;
.super Ljava/lang/Object;
.source "GPUFilterLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$RefreshtaskForLanguageChange;,
        Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$Refreshtask;,
        Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$ExtEffectItem;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PEDIT_Photoretouching"

.field private static mExternalEffects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$ExtEffectItem;",
            ">;"
        }
    .end annotation
.end field

.field private static mGPUEffectNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mGPUTitleNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private currentFilterCount:I

.field private mActivityContext:Landroid/content/Context;

.field private mCursorCount:I

.field private mLangaugeChangetask:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$RefreshtaskForLanguageChange;

.field mProgressDialog:Landroid/app/ProgressDialog;

.field private mSecImaging:Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;

.field private mSemFilterList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/camera/filter/SemFilter;",
            ">;"
        }
    .end annotation
.end field

.field mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

.field mVendorEffectnames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private progressDialog:Landroid/app/ProgressDialog;

.field private task:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$Refreshtask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->mGPUTitleNames:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->mGPUEffectNames:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->mVendorEffectnames:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->mCursorCount:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->mSemFilterList:Ljava/util/List;

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->mActivityContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    iput-object p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->mSecImaging:Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;)Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$RefreshtaskForLanguageChange;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->mLangaugeChangetask:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$RefreshtaskForLanguageChange;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$RefreshtaskForLanguageChange;)Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$RefreshtaskForLanguageChange;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->mLangaugeChangetask:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$RefreshtaskForLanguageChange;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;)Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$Refreshtask;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->task:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$Refreshtask;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$Refreshtask;)Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$Refreshtask;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->task:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$Refreshtask;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->mActivityContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->progressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$602(Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->currentFilterCount:I

    return p1
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->mActivityContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->mSecImaging:Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;

    return-void
.end method

.method public dissmissProgressDialog()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public getCursorCount()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->mCursorCount:I

    return v0
.end method

.method public getExternalEffectCount()I
    .locals 1

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getExternalEffects()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$ExtEffectItem;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getGPUEffectNames()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->mGPUEffectNames:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getGPUTitleNames()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->mGPUTitleNames:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getIDs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->mIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getVendorandEffectNames()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->mVendorEffectnames:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isProgressDialogDissmissable()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->mActivityContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->mActivityContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadExternalFilters()I
    .locals 9

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->mGPUTitleNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->mGPUEffectNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->mVendorEffectnames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->mIds:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->mSecImaging:Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;->getSupportedEffectFilterList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->mSemFilterList:Ljava/util/List;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->mSemFilterList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    :goto_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->mSemFilterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->mSemFilterList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/camera/filter/SemFilter;

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->mGPUTitleNames:Ljava/util/ArrayList;

    invoke-virtual {v7}, Lcom/samsung/android/camera/filter/SemFilter;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->mVendorEffectnames:Ljava/util/ArrayList;

    invoke-virtual {v7}, Lcom/samsung/android/camera/filter/SemFilter;->getVendor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->mGPUEffectNames:Ljava/util/ArrayList;

    invoke-virtual {v7}, Lcom/samsung/android/camera/filter/SemFilter;->getFilterName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->mIds:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v8, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$ExtEffectItem;

    invoke-virtual {v7}, Lcom/samsung/android/camera/filter/SemFilter;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7}, Lcom/samsung/android/camera/filter/SemFilter;->getFilterName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7}, Lcom/samsung/android/camera/filter/SemFilter;->getFilterName()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    move v3, v2

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$ExtEffectItem;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->mGPUTitleNames:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateGPUEffectNames(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->mSemFilterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->mCursorCount:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->mSemFilterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public registerGPUFilterChangeListener()V
    .locals 8

    const/16 v3, 0xc8

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->mSecImaging:Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;

    if-eqz v0, :cond_0

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7, v3}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x1

    const-wide/16 v4, 0x64

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->mSecImaging:Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$1;

    invoke-direct {v2, p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$1;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;->setOnSecImagingManagerListener(Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging$OnSecImagingManagerListener;)V

    :cond_0
    return-void
.end method

.method public setGPUFilterChangeListener(Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging$OnSecImagingManagerListener;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->mSecImaging:Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->mSecImaging:Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;->setOnSecImagingManagerListener(Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging$OnSecImagingManagerListener;)V

    :cond_0
    return-void
.end method

.method public startProgressbar()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->mActivityContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->getMainState()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_1

    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->mActivityContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->mActivityContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setContentView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->mActivityContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isGPUFilterSupported(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->mLangaugeChangetask:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$RefreshtaskForLanguageChange;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->mLangaugeChangetask:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$RefreshtaskForLanguageChange;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$RefreshtaskForLanguageChange;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->mLangaugeChangetask:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$RefreshtaskForLanguageChange;

    invoke-virtual {v0, v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$RefreshtaskForLanguageChange;->cancel(Z)Z

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->mLangaugeChangetask:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$RefreshtaskForLanguageChange;

    :cond_2
    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$RefreshtaskForLanguageChange;

    invoke-direct {v0, p0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$RefreshtaskForLanguageChange;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$1;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->mLangaugeChangetask:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$RefreshtaskForLanguageChange;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->mLangaugeChangetask:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$RefreshtaskForLanguageChange;

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$RefreshtaskForLanguageChange;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_5
    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->mProgressDialog:Landroid/app/ProgressDialog;

    goto :goto_0
.end method

.method public startRefreshtask()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->task:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$Refreshtask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->task:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$Refreshtask;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$Refreshtask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->task:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$Refreshtask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$Refreshtask;->cancel(Z)Z

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->task:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$Refreshtask;

    :cond_0
    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$Refreshtask;

    invoke-direct {v0, p0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$Refreshtask;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$1;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->task:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$Refreshtask;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader;->task:Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$Refreshtask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/GPUFilterLoader$Refreshtask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
