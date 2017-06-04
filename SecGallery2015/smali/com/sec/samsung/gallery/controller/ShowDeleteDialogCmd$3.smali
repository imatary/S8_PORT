.class Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$3;
.super Ljava/lang/Object;
.source "ShowDeleteDialogCmd.java"

# interfaces
.implements Lcom/sec/android/gallery3d/data/OnProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->handleDeleteMedias()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;

.field final synthetic val$dataProxy:Lcom/sec/android/gallery3d/data/DataManager;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;Lcom/sec/android/gallery3d/data/DataManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;

    iput-object p2, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$3;->val$dataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleOperation(Lcom/sec/android/gallery3d/data/MediaObject;)Z
    .locals 9

    const/4 v6, 0x0

    const/4 v4, 0x1

    instance-of v5, p1, Lcom/sec/android/gallery3d/data/LocalMediaItem;

    if-nez v5, :cond_0

    instance-of v5, p1, Lcom/sec/android/gallery3d/data/UnionLocalItem;

    if-eqz v5, :cond_3

    :cond_0
    instance-of v5, p1, Lcom/sec/android/gallery3d/data/LocalMediaItem;

    if-eqz v5, :cond_1

    move-object v5, p1

    check-cast v5, Lcom/sec/android/gallery3d/data/LocalMediaItem;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/LocalMediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v3

    :goto_0
    if-nez v3, :cond_2

    const-string/jumbo v5, "ShowDeleteDialogCmd"

    const-string/jumbo v7, "FilePath is null when deleting."

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    :goto_1
    return v5

    :cond_1
    move-object v5, p1

    check-cast v5, Lcom/sec/android/gallery3d/data/UnionLocalItem;

    invoke-interface {v5}, Lcom/sec/android/gallery3d/data/UnionLocalItem;->getFilePath()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "ShowDeleteDialogCmd"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "File is not exist. Data will be deleted. filePath = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$3;->val$dataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mAggregateDbOperation:Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;
    invoke-static {v6}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->access$900(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;)Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;

    move-result-object v6

    invoke-virtual {v5, p1, v6}, Lcom/sec/android/gallery3d/data/DataManager;->deleteItem(Lcom/sec/android/gallery3d/data/MediaObject;Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;)Z

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mStateManager:Lcom/sec/android/gallery3d/app/StateManager;
    invoke-static {v5}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->access$1600(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;)Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v2

    instance-of v5, v2, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mEventType:I
    invoke-static {v5}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->access$1800(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;)I

    move-result v5

    sget v7, Lcom/sec/samsung/gallery/core/Event;->EVENT_DELETE_MEDIA:I

    if-ne v5, v7, :cond_5

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->access$300(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;)Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryApplication()Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->getInstance(Lcom/sec/android/gallery3d/app/GalleryApp;)Lcom/sec/android/gallery3d/data/EventAlbumManager;

    move-result-object v7

    move-object v5, p1

    check-cast v5, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v8

    move-object v5, p1

    check-cast v5, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaItem;->getItemId()I

    move-result v5

    invoke-virtual {v7, v0, v8, v5, v6}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->setFavorite(Lcom/sec/android/gallery3d/app/GalleryApp;Ljava/lang/String;IZ)V

    check-cast p1, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {p1, v6}, Lcom/sec/android/gallery3d/data/MediaItem;->setIsFavorite(Z)V

    :goto_2
    invoke-static {}, Lcom/sec/samsung/gallery/lib/factory/GateConfigWrapper;->isGateEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string/jumbo v5, "GATE"

    const-string/jumbo v6, "<GATE-M>PICTURE_DELETED: filePath is removed due to security </GATE-M>"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-string/jumbo v5, "ShowDeleteDialogCmd"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "handleDeleteMedias: result is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v4

    goto/16 :goto_1

    :cond_5
    instance-of v5, v2, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->access$300(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;)Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryApplication()Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v0

    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->getInstance(Lcom/sec/android/gallery3d/app/GalleryApp;)Lcom/sec/android/gallery3d/data/ChannelAlbumManager;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->access$300(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v1, v5, p1, v6}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->deleteChannelItem(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaObject;Z)V

    :cond_6
    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mIsLocalEventItemDelete:Z
    invoke-static {v5}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->access$1900(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$3;->val$dataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mAggregateDbOperation:Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;
    invoke-static {v6}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->access$900(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;)Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;

    move-result-object v6

    invoke-virtual {v5, p1, v6}, Lcom/sec/android/gallery3d/data/DataManager;->deleteLocalEventItem(Lcom/sec/android/gallery3d/data/MediaObject;Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;)Z

    move-result v4

    goto :goto_2

    :cond_7
    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$3;->val$dataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mAggregateDbOperation:Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;
    invoke-static {v6}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->access$900(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;)Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;

    move-result-object v6

    invoke-virtual {v5, p1, v6}, Lcom/sec/android/gallery3d/data/DataManager;->deleteItem(Lcom/sec/android/gallery3d/data/MediaObject;Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;)Z

    move-result v4

    goto :goto_2
.end method

.method public onCompleted(Z)V
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mAggregateDbOperation:Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;
    invoke-static {v6}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->access$900(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;)Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;->execute()V

    sget-object v6, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v6}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->access$300(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v7, v11}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->access$300(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "external"

    invoke-static {v7}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7, v11}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    const-string/jumbo v6, "ShowDeleteDialogCmd"

    const-string/jumbo v7, "delete completed. send notifyChange"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string/jumbo v6, "ShowDeleteDialogCmd"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onCompleted: result is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->access$300(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;)Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryApplication()Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/android/gallery3d/app/GalleryApp;->isFestivalMode()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->access$300(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;)Landroid/content/Context;

    move-result-object v6

    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v8, "com.sec.android.widget.myeventwidget.intent.action.ACTION_DATASET_CHANGED"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    if-eqz p1, :cond_1

    sget-object v6, Lcom/sec/samsung/gallery/features/FeatureNames;->UseLowStorageMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v6}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->access$300(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;)Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "is_low_storage"

    invoke-static {v6, v7, v9}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;

    # invokes: Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->checkLowStorageMode()V
    invoke-static {v6}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->access$1100(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;)V

    :cond_1
    if-nez p1, :cond_3

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mIsCancelled:Z
    invoke-static {v6}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->access$1200(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;

    # invokes: Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->getNumberOfItemsToDelete()I
    invoke-static {v6}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->access$1300(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;)I

    move-result v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mProgressDialogHelper:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;
    invoke-static {v6}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->access$700(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mProgressDialogHelper:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;
    invoke-static {v6}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->access$700(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->getCurrentCount()I

    move-result v6

    sub-int/2addr v5, v6

    :cond_2
    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;

    # invokes: Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->getMediaTypeOfItemsToDelete()I
    invoke-static {v6}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->access$1400(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->access$300(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0a0199

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_1
    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->access$300(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3
    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v6}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->access$500(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v6

    iget v6, v6, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/4 v7, 0x7

    if-ne v6, v7, :cond_a

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->access$300(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;)Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "GMDE"

    const-string/jumbo v8, "Long press"

    invoke-static {v6, v7, v8}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;

    # setter for: Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mFileUtils:Lcom/sec/samsung/gallery/util/FileUtil;
    invoke-static {v6, v11}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->access$1502(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;Lcom/sec/samsung/gallery/util/FileUtil;)Lcom/sec/samsung/gallery/util/FileUtil;

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mStateManager:Lcom/sec/android/gallery3d/app/StateManager;
    invoke-static {v6}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->access$1600(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;)Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->access$300(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v6

    const-string/jumbo v7, "EXIT_SELECTION_MODE"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    invoke-static {v6}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->access$1700(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v6

    sget-object v7, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_SCLOUDVIEW:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v6, v7, :cond_4

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->access$300(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v6

    const-string/jumbo v7, "REFRESH_ACTIONBAR"

    invoke-virtual {v6, v7}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;)V

    :cond_4
    const/4 v1, 0x0

    sget-object v6, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeleteVI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v6}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v6

    if-eqz v6, :cond_5

    instance-of v6, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    if-eqz v6, :cond_b

    const/16 v1, 0x5dc

    :cond_5
    :goto_3
    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mProgressDialogHelper:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;
    invoke-static {v6}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->access$700(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mProgressDialogHelper:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;
    invoke-static {v6}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->access$700(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->closeCustomProgressDialog(I)V

    :cond_6
    return-void

    :cond_7
    new-instance v2, Lcom/sec/samsung/gallery/lib/factory/MediaScannerFactory;

    invoke-direct {v2}, Lcom/sec/samsung/gallery/lib/factory/MediaScannerFactory;-><init>()V

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->access$300(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-interface {v2, v6}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/samsung/gallery/lib/libinterface/MediaScannerInterface;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->EXTERNAL_SD_DIRECTORY:Ljava/lang/String;
    invoke-static {}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->access$1000()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Lcom/sec/samsung/gallery/lib/libinterface/MediaScannerInterface;->broadcast(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1
    if-le v5, v10, :cond_8

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->access$300(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0a0198

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    :cond_8
    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->access$300(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0a0197

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    :pswitch_2
    if-le v5, v10, :cond_9

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->access$300(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0a019b

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    :cond_9
    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->access$300(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0a019a

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    :cond_a
    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->access$300(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;)Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "GMDE"

    const-string/jumbo v8, "Menu"

    invoke-static {v6, v7, v8}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_b
    const/16 v1, 0x2bc

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onProgress(II)V
    .locals 4

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mProgressDialogHelper:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->access$700(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mProgressDialogHelper:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->access$700(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v0

    int-to-long v2, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->increaseProgress(JZ)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->mProgressDialogHelper:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->access$700(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v0

    int-to-long v2, p1

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v3, v1}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->increaseProgress(JZ)V

    :cond_0
    return-void
.end method
