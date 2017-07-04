.class Lcom/sec/samsung/gallery/view/timeview/TimeViewState$4;
.super Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$SimpleModelListener;
.source "TimeViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/timeview/TimeViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$4;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$SimpleModelListener;-><init>()V

    return-void
.end method

.method private loadAllContentsAfterFakeLoading()V
    .locals 4

    const/4 v2, 0x0

    const/4 v0, 0x0

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMultiFakeLoadingForSmartClustering:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-boolean v1, Lcom/sec/android/gallery3d/data/LocalAlbumSet;->sbNeedFullLoading:Z

    if-eqz v1, :cond_2

    sput-boolean v2, Lcom/sec/android/gallery3d/data/LocalAlbumSet;->sbNeedFullLoading:Z

    const/4 v0, 0x1

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$4;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$4100(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "content://force_reload"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_1
    return-void

    :cond_2
    sget-boolean v1, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->sbNeedFullLoading:Z

    if-eqz v1, :cond_0

    sput-boolean v2, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->sbNeedFullLoading:Z

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    sget-boolean v1, Lcom/sec/android/gallery3d/data/LocalAlbumSet;->sbNeedFakeLoadingForSmartClustering:Z

    if-eqz v1, :cond_4

    sput-boolean v2, Lcom/sec/android/gallery3d/data/LocalAlbumSet;->sbNeedFakeLoadingForSmartClustering:Z

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    sget-boolean v1, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->sbNeedFakeLoadingForSmartClustering:Z

    if-eqz v1, :cond_5

    sput-boolean v2, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->sbNeedFakeLoadingForSmartClustering:Z

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    sget-boolean v1, Lcom/sec/android/gallery3d/data/LocalAlbumSet;->sbNeedFullLoading:Z

    if-eqz v1, :cond_6

    sput-boolean v2, Lcom/sec/android/gallery3d/data/LocalAlbumSet;->sbNeedFullLoading:Z

    const/4 v0, 0x1

    goto :goto_0

    :cond_6
    sget-boolean v1, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->sbNeedFullLoading:Z

    if-eqz v1, :cond_0

    sput-boolean v2, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->sbNeedFullLoading:Z

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getMediaSet()Lcom/sec/android/gallery3d/data/MediaSet;
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$4;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$4200(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$4;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$4300(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/DataManager;->getTopMediaSet()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$4;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$4300(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$4;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$4200(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    goto :goto_0
.end method

.method public onAllContentReady()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$4;->loadAllContentsAfterFakeLoading()V

    return-void
.end method

.method public onContentChanged(II)V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$4;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$100(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getUpdateRequiredForRemoveTag()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$4;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$100(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FACE:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "TimeViewState"

    const-string/jumbo v1, "onContentChanged called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$4;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$100(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setUpdateRequiredForRemoveTag(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$4;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$4000(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->refreshLayout()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$4;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$3700(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$4;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$3700(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public onSizeChanged(I)V
    .locals 8

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$4;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$3100(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$4;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$100(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v3

    sget-object v4, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_ENTER_SELECTION_MODE:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-eq v3, v4, :cond_3

    :cond_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$4;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$3200(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$4;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$1000(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$4;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$1000(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v3

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$4;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$3300(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/view/timeview/TimeViewState$UpdateSelectionModeTask;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$4;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$3300(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/view/timeview/TimeViewState$UpdateSelectionModeTask;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$UpdateSelectionModeTask;->cancel(Z)Z

    :cond_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$4;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    new-instance v4, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$UpdateSelectionModeTask;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$4;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$UpdateSelectionModeTask;-><init>(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;Lcom/sec/samsung/gallery/view/timeview/TimeViewState$1;)V

    invoke-static {v3, v4}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$3302(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;Lcom/sec/samsung/gallery/view/timeview/TimeViewState$UpdateSelectionModeTask;)Lcom/sec/samsung/gallery/view/timeview/TimeViewState$UpdateSelectionModeTask;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$4;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$3300(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/view/timeview/TimeViewState$UpdateSelectionModeTask;

    move-result-object v3

    sget-object v4, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v5, v7, [Ljava/lang/Void;

    invoke-virtual {v3, v4, v5}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$UpdateSelectionModeTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$4;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$3500(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)V

    :cond_2
    :goto_0
    invoke-static {}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isDualScreenMode()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$4;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$3900(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$4;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$3800(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setDualScreenFocus(I)V

    :cond_3
    return-void

    :cond_4
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$4;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$1000(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/sec/android/gallery3d/ui/SelectionManager;->get(I)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v1

    instance-of v3, v1, Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v3, :cond_5

    move-object v0, v1

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$4;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$900(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->dismissDialogs()V

    :cond_5
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$4;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$100(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getUpdateRequiredForRemoveTag()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$4;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$100(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v3

    sget-object v4, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FACE:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v3, v4, :cond_2

    const-string/jumbo v3, "TimeViewState"

    const-string/jumbo v4, "onSizeChanged called"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$4;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$100(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setUpdateRequiredForRemoveTag(Z)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$4;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$3600(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->refreshLayout()V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$4;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$3700(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$4;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$3700(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0
.end method
