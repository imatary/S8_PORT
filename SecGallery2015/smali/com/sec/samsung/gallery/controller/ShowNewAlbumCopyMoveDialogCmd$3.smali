.class Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;
.super Ljava/lang/Object;
.source "ShowNewAlbumCopyMoveDialogCmd.java"

# interfaces
.implements Lcom/sec/android/gallery3d/data/OnProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->handleSelectedOperation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mErrorReason:Ljava/lang/String;

.field mMediaSize:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private skipCloudFileCount:I

.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

.field final synthetic val$dataProxy:Lcom/sec/android/gallery3d/data/DataManager;

.field final synthetic val$fDstFolderName:Ljava/lang/String;

.field final synthetic val$isDstFolderSyncOff:Z

.field final synthetic val$newAlbumPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;Ljava/lang/String;Ljava/lang/String;ZLcom/sec/android/gallery3d/data/DataManager;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    iput-object p2, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->val$newAlbumPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->val$fDstFolderName:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->val$isDstFolderSyncOff:Z

    iput-object p5, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->val$dataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->mErrorReason:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->mMediaSize:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->skipCloudFileCount:I

    return-void
.end method

.method private copyOperation(Lcom/sec/android/gallery3d/data/MediaObject;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->val$dataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    invoke-virtual {v2, p1, p2, p3}, Lcom/sec/android/gallery3d/data/DataManager;->copyItem(Lcom/sec/android/gallery3d/data/MediaObject;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    invoke-static {v2}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->access$200(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;)Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f0a001f

    invoke-static {v2, v4}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    move v2, v3

    :goto_0
    return v2

    :cond_0
    const/16 v2, 0xc9

    if-ne v0, v2, :cond_6

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    invoke-static {v2}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->access$200(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v2

    if-ne v2, v4, :cond_3

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCloudNameForUSA:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    invoke-static {v2}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->access$200(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;)Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f0a0083

    invoke-static {v2, v4}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    :goto_1
    move v2, v3

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCloudNameForJapan:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    invoke-static {v2}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->access$200(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;)Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f0a047a

    invoke-static {v2, v4}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    invoke-static {v2}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->access$200(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;)Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f0a0084

    invoke-static {v2, v4}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    goto :goto_1

    :cond_3
    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCloudNameForUSA:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    invoke-static {v2}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->access$200(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;)Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f0a0086

    invoke-static {v2, v4}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    goto :goto_1

    :cond_4
    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCloudNameForJapan:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    invoke-static {v2}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->access$200(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;)Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f0a047e

    invoke-static {v2, v4}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    invoke-static {v2}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->access$200(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;)Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f0a0085

    invoke-static {v2, v4}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    goto :goto_1

    :cond_6
    move v2, v4

    goto/16 :goto_0
.end method

.method private exitSelectionMode(Z)V
    .locals 6

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    invoke-static {v2}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->access$200(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->removeAll()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    invoke-static {v2}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->access$200(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getNewAlbumSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->removeAll()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    invoke-static {v2}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->access$100(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;)I

    move-result v2

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_MOVE_FILES:I

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    invoke-static {v2}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->access$100(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;)I

    move-result v2

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_COPY_FILES:I

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    invoke-static {v2}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->access$100(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;)I

    move-result v2

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_COLLECT_EVENT_ALBUM:I

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    invoke-static {v2}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->access$100(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;)I

    move-result v2

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_REMOVE_FROM_SECRETBOX:I

    if-ne v2, v3, :cond_3

    :cond_0
    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->val$newAlbumPath:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->access$800(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    invoke-static {v2}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->access$200(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v3

    const-string/jumbo v4, "EXIT_SELECTION_MODE"

    if-eqz p1, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->val$newAlbumPath:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v3, v4, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v4

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    invoke-static {v2}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->access$200(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v1

    instance-of v2, v1, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    if-eqz v2, :cond_4

    move-object v2, v1

    check-cast v2, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    invoke-virtual {v2, v4}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->setIsExitedNewAlbumMode(Z)V

    check-cast v1, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    invoke-virtual {v1, p1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->setNewAlbumResult(Z)V

    :cond_4
    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    invoke-static {v2}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->access$200(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v2

    const-string/jumbo v3, "EXIT_NEW_ALBUM_MODE"

    invoke-virtual {v2, v3, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private moveOperation(Lcom/sec/android/gallery3d/data/MediaObject;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->val$dataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    invoke-virtual {v2, p1, p2, p3}, Lcom/sec/android/gallery3d/data/DataManager;->moveItem(Lcom/sec/android/gallery3d/data/MediaObject;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    const/16 v2, 0xc8

    if-ne v0, v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    invoke-static {v2}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->access$200(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a001f

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private operation(Lcom/sec/android/gallery3d/data/MediaObject;)Z
    .locals 14

    iget-boolean v9, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->val$isDstFolderSyncOff:Z

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    invoke-static {v9}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->access$500(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;)I

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    invoke-static {v9}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->access$500(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    :cond_0
    instance-of v9, p1, Lcom/sec/android/gallery3d/data/UnionSCloudItem;

    if-eqz v9, :cond_1

    iget v9, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->skipCloudFileCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->skipCloudFileCount:I

    const/4 v6, 0x1

    :goto_0
    return v6

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaObject;->getContentUri()Landroid/net/Uri;

    move-result-object v8

    if-nez v8, :cond_2

    const-string/jumbo v9, "ShowAlbumCopyMoveDialog"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Wrong uri = NULL , object = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    iget-object v9, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->mMediaSize:Landroid/util/SparseArray;

    if-nez v9, :cond_3

    const/4 v6, 0x1

    goto :goto_0

    :cond_3
    iget-object v9, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->mMediaSize:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/net/Uri;->hashCode()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_1
    iget-object v9, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->val$newAlbumPath:Ljava/lang/String;

    if-nez v9, :cond_5

    const/4 v6, 0x1

    goto :goto_0

    :cond_4
    const-wide/16 v2, 0x0

    goto :goto_1

    :cond_5
    :try_start_0
    new-instance v7, Landroid/os/StatFs;

    iget-object v9, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->val$newAlbumPath:Ljava/lang/String;

    invoke-direct {v7, v9}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/os/StatFs;->getFreeBlocksLong()J

    move-result-wide v10

    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockSizeLong()J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v12

    mul-long v4, v10, v12

    cmp-long v9, v2, v4

    if-lez v9, :cond_6

    iget-object v9, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    invoke-static {v9}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->access$200(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;)Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0a02eb

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->mErrorReason:Ljava/lang/String;

    const/4 v6, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v9, "ShowAlbumCopyMoveDialog"

    const-string/jumbo v10, "error while initiating statFs, path : "

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v9, "ShowAlbumCopyMoveDialog"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    goto :goto_0

    :cond_6
    iget-object v9, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    invoke-static {v9}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->access$500(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;)I

    move-result v9

    if-nez v9, :cond_7

    iget-object v9, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->val$newAlbumPath:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {p0, p1, v9, v10}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->copyOperation(Lcom/sec/android/gallery3d/data/MediaObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    goto/16 :goto_0

    :cond_7
    iget-object v9, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->val$newAlbumPath:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {p0, p1, v9, v10}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->moveOperation(Lcom/sec/android/gallery3d/data/MediaObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    goto/16 :goto_0
.end method


# virtual methods
.method public handleOperation(Lcom/sec/android/gallery3d/data/MediaObject;)Z
    .locals 8

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->mMediaSize:Landroid/util/SparseArray;

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    invoke-static {v5}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->access$000(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;)Lcom/sec/samsung/gallery/util/FileUtil;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    invoke-static {v5}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->access$000(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;)Lcom/sec/samsung/gallery/util/FileUtil;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/util/FileUtil;->getSelectedMediaSize()Landroid/util/SparseArray;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->mMediaSize:Landroid/util/SparseArray;

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->mMediaSize:Landroid/util/SparseArray;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->mMediaSize:Landroid/util/SparseArray;

    sget-object v6, Lcom/sec/samsung/gallery/util/FileUtil;->TOTAL_FILE_SIZE_KEY:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    invoke-static {v5}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->access$300(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->setTotalSize(J)V

    :cond_0
    instance-of v5, p1, Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v5, :cond_3

    move-object v3, p1

    check-cast v3, Lcom/sec/android/gallery3d/data/MediaSet;

    sget-object v6, Lcom/sec/android/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v6

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v7

    invoke-virtual {v3, v5, v7}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v1

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->operation(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_2
    :goto_0
    return v2

    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    :cond_3
    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->operation(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v2

    goto :goto_0
.end method

.method public onCompleted(Z)V
    .locals 11

    const/4 v7, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    invoke-static {v5}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->access$300(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->closeCustomProgressDialog()V

    iput-object v7, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->mMediaSize:Landroid/util/SparseArray;

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    invoke-static {v5, v7}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->access$002(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;Lcom/sec/samsung/gallery/util/FileUtil;)Lcom/sec/samsung/gallery/util/FileUtil;

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    invoke-static {v5, v7}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->access$402(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;Lcom/sec/android/gallery3d/data/OnProgressListener;)Lcom/sec/android/gallery3d/data/OnProgressListener;

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->exitSelectionMode(Z)V

    const-string/jumbo v1, ""

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    invoke-static {v5}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->access$500(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;)I

    move-result v5

    if-ne v5, v8, :cond_2

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    invoke-static {v5}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->access$200(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0481

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    invoke-static {v5}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->access$600(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;)Lcom/sec/samsung/gallery/util/MediaOperations;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    invoke-static {v5}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->access$600(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;)Lcom/sec/samsung/gallery/util/MediaOperations;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/util/MediaOperations;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    invoke-static {v5, v7}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->access$602(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;Lcom/sec/samsung/gallery/util/MediaOperations;)Lcom/sec/samsung/gallery/util/MediaOperations;

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    invoke-static {v5}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->access$200(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/sec/android/gallery3d/common/Utils;->showToastIfNotExist(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    invoke-static {v5}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->access$500(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;)I

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    invoke-static {v5}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->access$200(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0479

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    invoke-static {v5, v7}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->access$602(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;Lcom/sec/samsung/gallery/util/MediaOperations;)Lcom/sec/samsung/gallery/util/MediaOperations;

    if-eqz p1, :cond_4

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->mErrorReason:Ljava/lang/String;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    invoke-static {v5}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->access$200(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->mErrorReason:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/sec/android/gallery3d/common/Utils;->showToastIfNotExist(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    invoke-static {v5}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->access$200(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/sec/android/gallery3d/common/Utils;->showToastIfNotExist(Landroid/content/Context;Ljava/lang/String;)V

    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->val$newAlbumPath:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    array-length v5, v3

    if-nez v5, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v5, "ShowAlbumCopyMoveDialog"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->val$newAlbumPath:Ljava/lang/String;

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->val$fDstFolderName:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->access$700(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, ""

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    invoke-static {v5}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->access$500(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;)I

    move-result v5

    if-ne v5, v8, :cond_d

    iget-boolean v5, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->val$isDstFolderSyncOff:Z

    if-eqz v5, :cond_c

    iget v5, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->skipCloudFileCount:I

    if-lez v5, :cond_c

    iget v5, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->skipCloudFileCount:I

    if-ne v5, v8, :cond_9

    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCloudNameForUSA:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    invoke-static {v5}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->access$200(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0308

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->val$fDstFolderName:Ljava/lang/String;

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :cond_6
    :goto_2
    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    invoke-static {v5}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->access$200(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCloudNameForJapan:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    invoke-static {v5}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->access$200(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0305

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->val$fDstFolderName:Ljava/lang/String;

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_8
    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    invoke-static {v5}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->access$200(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a030a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->val$fDstFolderName:Ljava/lang/String;

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_9
    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCloudNameForUSA:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    invoke-static {v5}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->access$200(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a02a2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Object;

    iget v7, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->skipCloudFileCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->val$fDstFolderName:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_a
    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCloudNameForJapan:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    invoke-static {v5}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->access$200(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a029f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Object;

    iget v7, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->skipCloudFileCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->val$fDstFolderName:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2

    :cond_b
    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    invoke-static {v5}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->access$200(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a02a4

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Object;

    iget v7, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->skipCloudFileCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->val$fDstFolderName:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2

    :cond_c
    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    invoke-static {v5}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->access$200(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0a0272

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2

    :cond_d
    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    invoke-static {v5}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->access$500(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;)I

    move-result v5

    if-nez v5, :cond_6

    iget-boolean v5, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->val$isDstFolderSyncOff:Z

    if-eqz v5, :cond_13

    iget v5, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->skipCloudFileCount:I

    if-lez v5, :cond_13

    iget v5, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->skipCloudFileCount:I

    if-ne v5, v8, :cond_10

    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCloudNameForUSA:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    invoke-static {v5}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->access$200(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0307

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->val$fDstFolderName:Ljava/lang/String;

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2

    :cond_e
    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCloudNameForJapan:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    invoke-static {v5}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->access$200(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0304

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->val$fDstFolderName:Ljava/lang/String;

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2

    :cond_f
    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    invoke-static {v5}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->access$200(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0309

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->val$fDstFolderName:Ljava/lang/String;

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2

    :cond_10
    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCloudNameForUSA:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    if-eqz v5, :cond_11

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    invoke-static {v5}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->access$200(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a02a1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Object;

    iget v7, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->skipCloudFileCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->val$fDstFolderName:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2

    :cond_11
    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCloudNameForJapan:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    if-eqz v5, :cond_12

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    invoke-static {v5}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->access$200(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0216

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Object;

    iget v7, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->skipCloudFileCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->val$fDstFolderName:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2

    :cond_12
    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    invoke-static {v5}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->access$200(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a02a3

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Object;

    iget v7, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->skipCloudFileCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->val$fDstFolderName:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2

    :cond_13
    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    invoke-static {v5}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->access$200(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0a00bd

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2
.end method

.method public onProgress(II)V
    .locals 4

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->access$300(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3, v0}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->increaseProgress(JZ)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
