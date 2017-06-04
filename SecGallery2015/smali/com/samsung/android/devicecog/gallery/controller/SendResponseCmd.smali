.class public Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "SendResponseCmd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;
    }
.end annotation


# static fields
.field private static final USE_MAX_TIME_OUT_STATE:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentDCState:Lcom/samsung/android/sdk/bixby/data/State;

.field private final mHandler:Landroid/os/Handler;

.field private mIsInit:Z

.field private mLastContextIdOnReceived:Ljava/lang/String;

.field private mLastDCScreenIdOnReceived:Ljava/lang/String;

.field private mNlgInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

.field private mResponseStateId:Ljava/lang/String;

.field private mRuleCancelRequestedContextId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->USE_MAX_TIME_OUT_STATE:Ljava/util/Set;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->USE_MAX_TIME_OUT_STATE:Ljava/util/Set;

    const-string/jumbo v1, "SearchViewResult"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->USE_MAX_TIME_OUT_STATE:Ljava/util/Set;

    const-string/jumbo v1, "PictureSelectedView"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->USE_MAX_TIME_OUT_STATE:Ljava/util/Set;

    const-string/jumbo v1, "PicturesSelectMultipleItems"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->USE_MAX_TIME_OUT_STATE:Ljava/util/Set;

    const-string/jumbo v1, "AlbumListSelectedView"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->USE_MAX_TIME_OUT_STATE:Ljava/util/Set;

    const-string/jumbo v1, "AlbumListSelectedViewForHideAlbum"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->USE_MAX_TIME_OUT_STATE:Ljava/util/Set;

    const-string/jumbo v1, "AlbumListSelectedViewForShowHiddenAlbum"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->USE_MAX_TIME_OUT_STATE:Ljava/util/Set;

    const-string/jumbo v1, "AlbumThumbnailView"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->USE_MAX_TIME_OUT_STATE:Ljava/util/Set;

    const-string/jumbo v1, "AlbumThumbnailsSelectedView"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->USE_MAX_TIME_OUT_STATE:Ljava/util/Set;

    const-string/jumbo v1, "AlbumThumbnailsSelectMultipleItems"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->USE_MAX_TIME_OUT_STATE:Ljava/util/Set;

    const-string/jumbo v1, "SearchSelectedView"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->USE_MAX_TIME_OUT_STATE:Ljava/util/Set;

    const-string/jumbo v1, "StoryListSelectedView"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->USE_MAX_TIME_OUT_STATE:Ljava/util/Set;

    const-string/jumbo v1, "StoryDetailSelectedView"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->USE_MAX_TIME_OUT_STATE:Ljava/util/Set;

    const-string/jumbo v1, "RecycleBinSelectedView"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->USE_MAX_TIME_OUT_STATE:Ljava/util/Set;

    const-string/jumbo v1, "CloudSelectedView"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->USE_MAX_TIME_OUT_STATE:Ljava/util/Set;

    const-string/jumbo v1, "DetailView"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->mIsInit:Z

    iput-object v1, p0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->mLastContextIdOnReceived:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->mLastDCScreenIdOnReceived:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->mRuleCancelRequestedContextId:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$1;-><init>(Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->mHandler:Landroid/os/Handler;

    const-string/jumbo v0, "SendResponseCmd"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "constructor = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;)Lcom/samsung/android/sdk/bixby/data/State;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->mCurrentDCState:Lcom/samsung/android/sdk/bixby/data/State;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/Set;
    .locals 1

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->USE_MAX_TIME_OUT_STATE:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->sendCommonErrorNlg()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->resetForBixby()V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->resetAll()V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->sendResponseResult(Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;)V

    return-void
.end method

.method private addGLIdleListener(Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;)V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v0

    const-string/jumbo v2, "ON_GL_IDLE_TIMER"

    new-array v3, v7, [Ljava/lang/Object;

    sget-object v1, Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$GLIdleTimerCmdType;->SET_EXPIRE_TIME:Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$GLIdleTimerCmdType;

    aput-object v1, v3, v5

    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->mCurrentDCState:Lcom/samsung/android/sdk/bixby/data/State;

    const-string/jumbo v4, "DetailView"

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xdac

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v6

    invoke-virtual {v0, v2, v3}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v1, "ON_GL_IDLE_TIMER"

    new-array v2, v7, [Ljava/lang/Object;

    sget-object v3, Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$GLIdleTimerCmdType;->ADD_GL_IDLE_LISTENER:Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$GLIdleTimerCmdType;

    aput-object v3, v2, v5

    new-instance v3, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$2;

    invoke-direct {v3, p0, p1}, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$2;-><init>(Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;)V

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    const/16 v1, 0x7d0

    goto :goto_0
.end method

.method private checkIgnoreLastState()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->mCurrentDCState:Lcom/samsung/android/sdk/bixby/data/State;

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->mCurrentDCState:Lcom/samsung/android/sdk/bixby/data/State;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v3

    const/4 v2, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v0, v1

    goto :goto_0

    :sswitch_0
    const-string/jumbo v4, "CreateAlbum"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v4, "CreateStory"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v4, "RecycleBinPopUp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v4, "DeletePopUp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_4
    const-string/jumbo v4, "DeleteGroupPopUp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x4

    goto :goto_1

    :sswitch_5
    const-string/jumbo v4, "LeaveGroupPopUp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x5

    goto :goto_1

    :sswitch_6
    const-string/jumbo v4, "RenamePopUp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x6

    goto :goto_1

    :sswitch_7
    const-string/jumbo v4, "Sortby"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x7

    goto :goto_1

    :sswitch_8
    const-string/jumbo v4, "DeleteCommentsPopUp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x8

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6c0c016b -> :sswitch_7
        -0x41467648 -> :sswitch_4
        0x16d6772d -> :sswitch_8
        0x1fb671c1 -> :sswitch_3
        0x21a45798 -> :sswitch_2
        0x35d3e784 -> :sswitch_5
        0x4453d2b3 -> :sswitch_0
        0x45554d39 -> :sswitch_1
        0x5af0c40e -> :sswitch_6
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private initCommand(Landroid/content/Context;)V
    .locals 2

    iget-boolean v1, p0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->mIsInit:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->mIsInit:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v0

    const-string/jumbo v1, "SET_CURRENT_DC_STATE"

    invoke-virtual {v0, v1}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->hasCommand(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "SET_CURRENT_DC_STATE"

    invoke-virtual {v0, v1, p0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->registerCommand(Ljava/lang/String;Lorg/puremvc/java/multicore/interfaces/ICommand;)V

    :cond_2
    const-string/jumbo v1, "SEND_DC_RESPONSE"

    invoke-virtual {v0, v1}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->hasCommand(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "SEND_DC_RESPONSE"

    invoke-virtual {v0, v1, p0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->registerCommand(Ljava/lang/String;Lorg/puremvc/java/multicore/interfaces/ICommand;)V

    :cond_3
    const-string/jumbo v1, "RESET_DC_STATE"

    invoke-virtual {v0, v1}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->hasCommand(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "RESET_DC_STATE"

    invoke-virtual {v0, v1, p0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->registerCommand(Ljava/lang/String;Lorg/puremvc/java/multicore/interfaces/ICommand;)V

    :cond_4
    const-string/jumbo v1, "DC_EXTEND_SEND_RESPONSE_TIME_OUT"

    invoke-virtual {v0, v1}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->hasCommand(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "DC_EXTEND_SEND_RESPONSE_TIME_OUT"

    invoke-virtual {v0, v1, p0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->registerCommand(Ljava/lang/String;Lorg/puremvc/java/multicore/interfaces/ICommand;)V

    goto :goto_0
.end method

.method private isCrossShareState()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->mCurrentDCState:Lcom/samsung/android/sdk/bixby/data/State;

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->mCurrentDCState:Lcom/samsung/android/sdk/bixby/data/State;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v3

    const/4 v2, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v0, v1

    goto :goto_0

    :sswitch_0
    const-string/jumbo v4, "CrossShare"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v4, "CrossShareForDetailView"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v1

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x733f3461 -> :sswitch_0
        0x67a176e0 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isLastState()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->mCurrentDCState:Lcom/samsung/android/sdk/bixby/data/State;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->mCurrentDCState:Lcom/samsung/android/sdk/bixby/data/State;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/data/State;->isLastState()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLogicalLastState()Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->isLastState()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->checkIgnoreLastState()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetAll()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->mCurrentDCState:Lcom/samsung/android/sdk/bixby/data/State;

    iput-object v0, p0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->mNlgInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iput-object v0, p0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->mResponseStateId:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->mLastContextIdOnReceived:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->mLastDCScreenIdOnReceived:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->mRuleCancelRequestedContextId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->resetSendResponseTimeOut()V

    return-void
.end method

.method private resetExtraExecuteFromBixby(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->mCurrentDCState:Lcom/samsung/android/sdk/bixby/data/State;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->mCurrentDCState:Lcom/samsung/android/sdk/bixby/data/State;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/data/State;->isLastState()Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_1

    :cond_0
    if-nez p1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->setExtraExecuteFromBixby(Landroid/content/Intent;Z)V

    :cond_2
    return-void
.end method

.method private resetForBixby()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->isCrossShareState()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->resetExtraExecuteFromBixby(Z)V

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->resetDCShareParam()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->resetExtraExecuteFromBixby(Z)V

    goto :goto_0
.end method

.method private resetSendResponseTimeOut()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private sendCommonErrorNlg()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->mCurrentDCState:Lcom/samsung/android/sdk/bixby/data/State;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->USE_MAX_TIME_OUT_STATE:Ljava/util/Set;

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->mCurrentDCState:Lcom/samsung/android/sdk/bixby/data/State;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0516

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getInstance()Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->NONE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->requestNlg(Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0512

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    goto :goto_0
.end method

.method private sendResponse(Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;)V
    .locals 3

    const-string/jumbo v0, "SendResponseCmd"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BixbyGallery : sendResponse : stateId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->mCurrentDCState:Lcom/samsung/android/sdk/bixby/data/State;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", responseType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->RULE_CANCEL:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->sendRuleCancelResponse()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->isLogicalLastState()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->sendResponseResult(Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->sendResponseResultOnGlIdle(Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;)V

    goto :goto_0
.end method

.method private sendResponseResult(Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;)V
    .locals 4

    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getInstance()Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->isRuleRunning()Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "SendResponseCmd"

    const-string/jumbo v2, "onGLIdle : RuleRunning = false"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->resetExtraExecuteFromBixby(Z)V

    invoke-direct {p0}, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->resetAll()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->mCurrentDCState:Lcom/samsung/android/sdk/bixby/data/State;

    if-nez v1, :cond_2

    const-string/jumbo v1, "SendResponseCmd"

    const-string/jumbo v2, "onGLIdle : mCurrentDCState is null!!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "SendResponseCmd"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onGLIdle : mCurrentDCState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->mCurrentDCState:Lcom/samsung/android/sdk/bixby/data/State;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    if-ne p1, v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->mNlgInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->isLogicalLastState()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getInstance()Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->mNlgInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v3, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->NONE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sdk/bixby/BixbyApi;->requestNlg(Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    :cond_3
    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getInstance()Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    invoke-direct {p0}, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->resetForBixby()V

    invoke-direct {p0}, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->resetAll()V

    goto :goto_0

    :cond_4
    sget-object v1, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    if-ne p1, v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->mNlgInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getInstance()Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->mNlgInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v3, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->NONE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sdk/bixby/BixbyApi;->requestNlg(Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->isLogicalLastState()Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    :goto_1
    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getInstance()Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    invoke-direct {p0}, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->resetForBixby()V

    invoke-direct {p0}, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->resetAll()V

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    goto :goto_1

    :cond_7
    sget-object v1, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->NLG_ONLY:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->mNlgInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    if-nez v1, :cond_8

    const-string/jumbo v1, "SendResponseCmd"

    const-string/jumbo v2, "onGLIdle : nlg info is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getInstance()Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->mNlgInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    sget-object v3, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->MULTIPLE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sdk/bixby/BixbyApi;->requestNlg(Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->mNlgInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    goto/16 :goto_0
.end method

.method private sendResponseResultOnGlIdle(Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->addGLIdleListener(Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;)V

    invoke-direct {p0}, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->startGLIdleTimer()V

    return-void
.end method

.method private sendRuleCancelResponse()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getInstance()Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->isRuleRunning()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "SendResponseCmd"

    const-string/jumbo v1, "BixbyGallery : sendRuleCancelResponse() : RuleRunning = false"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->mCurrentDCState:Lcom/samsung/android/sdk/bixby/data/State;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->mLastContextIdOnReceived:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SendResponseCmd"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BixbyGallery : sendRuleCancelResponse : current = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->mLastContextIdOnReceived:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", requested = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->mRuleCancelRequestedContextId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mLastDCScreenIdOnReceived = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->mLastDCScreenIdOnReceived:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mResponseState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->mResponseStateId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->mLastContextIdOnReceived:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->mRuleCancelRequestedContextId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->mLastDCScreenIdOnReceived:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->mResponseStateId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getInstance()Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->resetExtraExecuteFromBixby(Z)V

    invoke-direct {p0}, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->resetAll()V

    goto :goto_0
.end method

.method private setCurrentDCState(Lcom/samsung/android/sdk/bixby/data/State;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->mCurrentDCState:Lcom/samsung/android/sdk/bixby/data/State;

    return-void
.end method

.method private startGLIdleTimer()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v0

    const-string/jumbo v1, "ON_GL_IDLE_TIMER"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$GLIdleTimerCmdType;->RESET_TIMER_WITH_DELAY:Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$GLIdleTimerCmdType;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private startSendResponseTimeOut(I)V
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->resetSendResponseTimeOut()V

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 13

    const/4 v12, 0x4

    const/4 v7, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v10, 0x3

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    move-object v1, v6

    check-cast v1, [Ljava/lang/Object;

    aget-object v6, v1, v7

    check-cast v6, Landroid/content/Context;

    iput-object v6, p0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->mContext:Landroid/content/Context;

    invoke-direct {p0, v6}, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->initCommand(Landroid/content/Context;)V

    const/4 v6, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v6, :pswitch_data_0

    :goto_1
    return-void

    :sswitch_0
    const-string/jumbo v11, "SET_CURRENT_DC_STATE"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    move v6, v7

    goto :goto_0

    :sswitch_1
    const-string/jumbo v11, "SEND_DC_RESPONSE"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    move v6, v8

    goto :goto_0

    :sswitch_2
    const-string/jumbo v11, "RESET_DC_STATE"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    move v6, v9

    goto :goto_0

    :sswitch_3
    const-string/jumbo v11, "DC_EXTEND_SEND_RESPONSE_TIME_OUT"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    move v6, v10

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->resetAll()V

    aget-object v4, v1, v8

    check-cast v4, Lcom/samsung/android/sdk/bixby/data/State;

    array-length v6, v1

    if-le v6, v9, :cond_1

    aget-object v6, v1, v9

    check-cast v6, Ljava/lang/String;

    iput-object v6, p0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->mLastContextIdOnReceived:Ljava/lang/String;

    :cond_1
    array-length v6, v1

    if-le v6, v10, :cond_2

    aget-object v6, v1, v10

    check-cast v6, Ljava/lang/String;

    iput-object v6, p0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->mLastDCScreenIdOnReceived:Ljava/lang/String;

    :cond_2
    invoke-direct {p0, v4}, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->setCurrentDCState(Lcom/samsung/android/sdk/bixby/data/State;)V

    sget-object v6, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->USE_MAX_TIME_OUT_STATE:Ljava/util/Set;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 v6, 0x2710

    :goto_2
    invoke-direct {p0, v6}, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->startSendResponseTimeOut(I)V

    goto :goto_1

    :cond_3
    const/16 v6, 0x1770

    goto :goto_2

    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->resetSendResponseTimeOut()V

    iget-object v6, p0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->mCurrentDCState:Lcom/samsung/android/sdk/bixby/data/State;

    if-nez v6, :cond_4

    const-string/jumbo v6, "SendResponseCmd"

    const-string/jumbo v7, "Do not send response !!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    aget-object v3, v1, v8

    check-cast v3, Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->mCurrentDCState:Lcom/samsung/android/sdk/bixby/data/State;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string/jumbo v6, "SendResponseCmd"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "BixbyGallery : execute() : mCurrentDCState :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->mCurrentDCState:Lcom/samsung/android/sdk/bixby/data/State;

    invoke-virtual {v8}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", responseStateId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_5
    iput-object v3, p0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->mResponseStateId:Ljava/lang/String;

    aget-object v2, v1, v9

    check-cast v2, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    array-length v6, v1

    if-le v6, v10, :cond_6

    aget-object v6, v1, v10

    check-cast v6, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iput-object v6, p0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->mNlgInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    :cond_6
    array-length v6, v1

    if-le v6, v12, :cond_7

    aget-object v6, v1, v12

    check-cast v6, Ljava/lang/String;

    iput-object v6, p0, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->mRuleCancelRequestedContextId:Ljava/lang/String;

    :cond_7
    invoke-direct {p0, v2}, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->sendResponse(Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;)V

    goto/16 :goto_1

    :pswitch_2
    invoke-direct {p0, v7}, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->resetExtraExecuteFromBixby(Z)V

    invoke-direct {p0}, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->resetAll()V

    goto/16 :goto_1

    :pswitch_3
    aget-object v6, v1, v8

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd;->startSendResponseTimeOut(I)V

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x7902f23f -> :sswitch_2
        -0x2899a36 -> :sswitch_1
        0x2a2e2308 -> :sswitch_3
        0x4a4b6734 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
