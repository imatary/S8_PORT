.class Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewPick;
.super Ljava/lang/Object;
.source "TimeViewEventHandle.java"

# interfaces
.implements Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$ITimeViewMode;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeViewPick"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mViewEnable:Z

.field final synthetic this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewPick;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewPick;->mViewEnable:Z

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewPick;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;->access$400(Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewPick;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewPick;-><init>(Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;)V

    return-void
.end method

.method static synthetic access$702(Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewPick;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewPick;->mViewEnable:Z

    return p1
.end method


# virtual methods
.method public initializeView()V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewPick;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;->access$500(Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;)Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v0

    new-instance v1, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForPick;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewPick;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;->access$400(Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForPick;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewPick;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;->access$400(Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewPick;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;->access$400(Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/app/StateManager;->finishState(Lcom/sec/android/gallery3d/app/ActivityState;)V

    return-void
.end method

.method public onItemClick(II)Z
    .locals 8

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewPick;->mViewEnable:Z

    if-nez v4, :cond_0

    :goto_0
    return v2

    :cond_0
    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewPick;->mViewEnable:Z

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewPick;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;->access$600(Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;)Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v4, p1, p2}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getItem(II)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    if-nez v0, :cond_1

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewPick;->mViewEnable:Z

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewPick;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;->access$600(Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;)Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->isDrmCheck(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewPick;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;->access$400(Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v4

    const v5, 0x7f0a049e

    invoke-static {v4, v5}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewPick;->mViewEnable:Z

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewPick;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;->access$600(Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;)Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    move-result-object v4

    iget-boolean v4, v4, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsUnablePickPrivateFiles:Z

    if-eqz v4, :cond_3

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSecretBox:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewPick;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;->access$400(Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->isSecretBoxPath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewPick;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;->access$400(Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v4

    const v5, 0x7f0a046c

    invoke-static {v4, v5}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewPick;->mViewEnable:Z

    goto :goto_0

    :cond_3
    const/4 v4, 0x2

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewPick;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;->access$400(Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v4

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewPick;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;->access$400(Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v2

    const-string/jumbo v4, "PICKER_ITEM_SELECTED"

    invoke-virtual {v2, v4, v1}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewPick;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewPick$1;

    invoke-direct {v4, p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewPick$1;-><init>(Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewPick;)V

    const-wide/16 v6, 0x258

    invoke-virtual {v2, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move v2, v3

    goto/16 :goto_0
.end method
