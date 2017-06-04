.class public Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;
.super Lorg/puremvc/java/multicore/patterns/mediator/Mediator;
.source "SingleSelectionSmartViewMediator.java"

# interfaces
.implements Lcom/sec/android/gallery3d/app/GalleryEvent$OnResumeListener;


# static fields
.field private static final DELAY_START_DETAILVIEW:I = 0x258

.field private static final MSG_START_DETAILVIEW_VIA_SMARTVIEW:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SingleSmartView"


# instance fields
.field private final mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

.field private final mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

.field private final mHandler:Landroid/os/Handler;

.field private mIsStartedView:Z

.field private final mSelectedPath:Lcom/sec/android/gallery3d/data/Path;

.field private mTopState:Lcom/sec/android/gallery3d/app/ActivityState;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Lcom/sec/android/gallery3d/data/Path;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lorg/puremvc/java/multicore/patterns/mediator/Mediator;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;->mIsStartedView:Z

    new-instance v0, Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator$1;-><init>(Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;->mHandler:Landroid/os/Handler;

    const-string/jumbo v0, "SingleSmartView"

    const-string/jumbo v1, "create mediator for single selection smart view"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;->registerListeners()V

    iput-object p3, p0, Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;->mSelectedPath:Lcom/sec/android/gallery3d/data/Path;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setRegisterSmartViewMediator(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;)Lcom/sec/android/gallery3d/app/ActivityState;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;->mTopState:Lcom/sec/android/gallery3d/app/ActivityState;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;->mIsStartedView:Z

    return v0
.end method

.method static synthetic access$102(Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;->mIsStartedView:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;)Lcom/sec/android/gallery3d/data/Path;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;->mSelectedPath:Lcom/sec/android/gallery3d/data/Path;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;->dismiss()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private dismiss()V
    .locals 2

    const-string/jumbo v0, "SingleSmartView"

    const-string/jumbo v1, "dismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setRegisterSmartViewMediator(Z)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;->unregisterListeners()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v0

    const-string/jumbo v1, "SINGLE_SELECTION_SMART_VIEW"

    invoke-virtual {v0, v1}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->removeMediator(Ljava/lang/String;)Lorg/puremvc/java/multicore/interfaces/IMediator;

    return-void
.end method

.method private registerListeners()V
    .locals 2

    const-string/jumbo v0, "SingleSmartView"

    const-string/jumbo v1, "register resume listener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;->mTopState:Lcom/sec/android/gallery3d/app/ActivityState;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;->mTopState:Lcom/sec/android/gallery3d/app/ActivityState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;->mTopState:Lcom/sec/android/gallery3d/app/ActivityState;

    invoke-virtual {v0, p0}, Lcom/sec/android/gallery3d/app/ActivityState;->registerOnResumeListener(Lcom/sec/android/gallery3d/app/GalleryEvent$OnResumeListener;)V

    :cond_0
    return-void
.end method

.method private setGlIdleTimer()V
    .locals 5

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v0

    const-string/jumbo v1, "ON_GL_IDLE_TIMER"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$GLIdleTimerCmdType;->ADD_GL_IDLE_LISTENER:Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$GLIdleTimerCmdType;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator$2;

    invoke-direct {v4, p0}, Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator$2;-><init>(Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;)V

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private unregisterListeners()V
    .locals 2

    const-string/jumbo v0, "SingleSmartView"

    const-string/jumbo v1, "unregister resume listener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;->mTopState:Lcom/sec/android/gallery3d/app/ActivityState;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const-string/jumbo v0, "SingleSmartView"

    const-string/jumbo v1, "activity state is changed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;->mTopState:Lcom/sec/android/gallery3d/app/ActivityState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;->mTopState:Lcom/sec/android/gallery3d/app/ActivityState;

    invoke-virtual {v0, p0}, Lcom/sec/android/gallery3d/app/ActivityState;->unregisterOnResumeListener(Lcom/sec/android/gallery3d/app/GalleryEvent$OnResumeListener;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public handleNotification(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 6

    const/4 v2, 0x0

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_1

    :goto_1
    return-void

    :pswitch_0
    const-string/jumbo v3, "START_DETAILVIEW_VIA_SMARTVIEW"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;->mTopState:Lcom/sec/android/gallery3d/app/ActivityState;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;->mTopState:Lcom/sec/android/gallery3d/app/ActivityState;

    instance-of v1, v1, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;->mSelectedPath:Lcom/sec/android/gallery3d/data/Path;

    if-eqz v1, :cond_1

    const-string/jumbo v1, "SingleSmartView"

    const-string/jumbo v3, "handleNotification"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x258

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :cond_1
    const-string/jumbo v1, "SingleSmartView"

    const-string/jumbo v2, "fail to start detail view. topState=null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;->dismiss()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch -0x6596c7ef
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public listNotificationInterests()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "START_DETAILVIEW_VIA_SMARTVIEW"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public onResume()V
    .locals 2

    const-string/jumbo v0, "SingleSmartView"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;->setGlIdleTimer()V

    return-void
.end method
