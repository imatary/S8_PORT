.class Lcom/sec/samsung/gallery/view/detailview/DetailViewRelatedSearchChecker;
.super Ljava/lang/Object;
.source "DetailViewRelatedSearchChecker.java"


# static fields
.field private static final CHECK_DELAY_TIME:I = 0xc8

.field private static final MSG_CHECK_RELATED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DetailRSChecker"


# instance fields
.field private final mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

.field private mRelatedSearchCheckHandler:Landroid/os/Handler;

.field private mRelatedSearchThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewRelatedSearchChecker;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/detailview/DetailViewRelatedSearchChecker;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewRelatedSearchChecker;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/detailview/DetailViewRelatedSearchChecker;Lcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewRelatedSearchChecker;->checkRelatedSearchInfo(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v0

    return v0
.end method

.method private checkRelatedSearchInfo(Lcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 15

    if-nez p1, :cond_0

    const/4 v8, 0x0

    :goto_0
    return v8

    :cond_0
    const-string/jumbo v0, "DetailRSChecker"

    const-string/jumbo v2, "checkRelatedSearchInfo() start"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const/4 v8, 0x0

    const/4 v10, 0x0

    new-instance v9, Landroid/net/Uri$Builder;

    invoke-direct {v9}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v0, "content"

    invoke-virtual {v9, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v2, "com.samsung.cmh"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v2, "relatedsearchview"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnionCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getCMHFileId()I

    move-result v0

    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewRelatedSearchChecker;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "tag_type"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "tag_value"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "DetailRSChecker"

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v8, 0x1

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewRelatedSearchChecker;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v14

    instance-of v0, v14, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    if-eqz v0, :cond_2

    invoke-virtual {v14}, Lcom/sec/android/gallery3d/app/ActivityState;->getActionBarManager()Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->getActionBarView()Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v7

    instance-of v0, v7, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;

    if-eqz v0, :cond_2

    check-cast v7, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;

    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->setNeedToCheckRelatedSearch(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-static {v10}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_2
    const-string/jumbo v0, "DetailRSChecker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkRelatedSearchInfo() end, bExistRelatedContents = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", elapsed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v12

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewRelatedSearchChecker;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getItemId()I

    move-result v3

    invoke-static {v0, v3}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getCmhIdFromMediaId(Landroid/content/Context;I)I

    move-result v0

    goto/16 :goto_1

    :catch_0
    move-exception v11

    :try_start_1
    const-string/jumbo v0, "DetailRSChecker"

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v10}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-static {v10}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method


# virtual methods
.method checkRelatedSearchContents()V
    .locals 6

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewRelatedSearchChecker;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v1

    instance-of v2, v1, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/ActivityState;->getActionBarManager()Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->getActionBarView()Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v0

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/ActivityState;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewRelatedSearchChecker;->mRelatedSearchCheckHandler:Landroid/os/Handler;

    if-eqz v2, :cond_1

    instance-of v2, v0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;

    if-nez v2, :cond_0

    instance-of v2, v0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;

    if-eqz v2, :cond_1

    :cond_0
    instance-of v2, v0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;

    if-eqz v2, :cond_2

    check-cast v0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->isNeedToCheckRelatedSearch()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewRelatedSearchChecker;->mRelatedSearchCheckHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewRelatedSearchChecker;->mRelatedSearchCheckHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewRelatedSearchChecker;->mRelatedSearchCheckHandler:Landroid/os/Handler;

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method releaseRelatedSearchCheckHandler()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewRelatedSearchChecker;->mRelatedSearchThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewRelatedSearchChecker;->mRelatedSearchCheckHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewRelatedSearchChecker;->mRelatedSearchCheckHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewRelatedSearchChecker;->mRelatedSearchThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewRelatedSearchChecker;->mRelatedSearchThread:Landroid/os/HandlerThread;

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewRelatedSearchChecker;->mRelatedSearchCheckHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewRelatedSearchChecker;->mRelatedSearchCheckHandler:Landroid/os/Handler;

    :cond_2
    return-void
.end method

.method setRelatedSearchCheckHandler()V
    .locals 5

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewRelatedSearchChecker;->mRelatedSearchCheckHandler:Landroid/os/Handler;

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewRelatedSearchChecker;->mRelatedSearchThread:Landroid/os/HandlerThread;

    if-nez v2, :cond_1

    new-instance v2, Landroid/os/HandlerThread;

    const-string/jumbo v3, "DetailView_RelatedSearchThread"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewRelatedSearchChecker;->mRelatedSearchThread:Landroid/os/HandlerThread;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewRelatedSearchChecker;->mRelatedSearchThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewRelatedSearchChecker;->mRelatedSearchThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "looper is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewRelatedSearchChecker;->mRelatedSearchThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewRelatedSearchChecker;->mRelatedSearchThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "DetailRSChecker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Thread is already started."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalThreadStateException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    new-instance v2, Lcom/sec/samsung/gallery/view/detailview/DetailViewRelatedSearchChecker$1;

    invoke-direct {v2, p0, v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewRelatedSearchChecker$1;-><init>(Lcom/sec/samsung/gallery/view/detailview/DetailViewRelatedSearchChecker;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewRelatedSearchChecker;->mRelatedSearchCheckHandler:Landroid/os/Handler;

    :cond_3
    return-void
.end method
