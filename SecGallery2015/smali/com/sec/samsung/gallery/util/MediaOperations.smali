.class public Lcom/sec/samsung/gallery/util/MediaOperations;
.super Landroid/os/AsyncTask;
.source "MediaOperations.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/util/MediaOperations$RCODE;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final asyncDbOperations:Z

.field private final mAggregateDbOperation:Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;

.field private final mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

.field private final mOnProgressListener:Lcom/sec/android/gallery3d/data/OnProgressListener;

.field private mPath:Ljava/lang/String;

.field private final mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

.field private mTotal:I


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/data/OnProgressListener;Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object v1, p0, Lcom/sec/samsung/gallery/util/MediaOperations;->mPath:Ljava/lang/String;

    move-object v0, p2

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/util/MediaOperations;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    iput-object p1, p0, Lcom/sec/samsung/gallery/util/MediaOperations;->mOnProgressListener:Lcom/sec/android/gallery3d/data/OnProgressListener;

    check-cast p2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/util/MediaOperations;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iput-object p3, p0, Lcom/sec/samsung/gallery/util/MediaOperations;->mPath:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/sec/samsung/gallery/util/MediaOperations;->asyncDbOperations:Z

    iput-object v1, p0, Lcom/sec/samsung/gallery/util/MediaOperations;->mAggregateDbOperation:Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/data/OnProgressListener;Landroid/content/Context;Ljava/lang/String;ZLcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/util/MediaOperations;->mPath:Ljava/lang/String;

    move-object v0, p2

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/util/MediaOperations;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    iput-object p1, p0, Lcom/sec/samsung/gallery/util/MediaOperations;->mOnProgressListener:Lcom/sec/android/gallery3d/data/OnProgressListener;

    check-cast p2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/util/MediaOperations;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iput-object p3, p0, Lcom/sec/samsung/gallery/util/MediaOperations;->mPath:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/sec/samsung/gallery/util/MediaOperations;->asyncDbOperations:Z

    iput-object p5, p0, Lcom/sec/samsung/gallery/util/MediaOperations;->mAggregateDbOperation:Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 10

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/sec/samsung/gallery/util/MediaOperations;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    if-nez v7, :cond_1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    :cond_0
    :goto_0
    return-object v7

    :cond_1
    iget-object v7, p0, Lcom/sec/samsung/gallery/util/MediaOperations;->mPath:Ljava/lang/String;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/sec/samsung/gallery/util/MediaOperations;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    iget-object v8, p0, Lcom/sec/samsung/gallery/util/MediaOperations;->mPath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v6

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v7

    invoke-virtual {v6, v9, v7}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    iput v7, p0, Lcom/sec/samsung/gallery/util/MediaOperations;->mTotal:I

    iget-object v7, p0, Lcom/sec/samsung/gallery/util/MediaOperations;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/DataManager;->getApplication()Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v7

    invoke-interface {v7}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;->getInstance(Landroid/content/Context;)Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;

    move-result-object v4

    iget-boolean v7, p0, Lcom/sec/samsung/gallery/util/MediaOperations;->asyncDbOperations:Z

    if-eqz v7, :cond_2

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;->beginAsync()V

    :cond_2
    const/4 v0, 0x0

    :goto_2
    :try_start_0
    iget v7, p0, Lcom/sec/samsung/gallery/util/MediaOperations;->mTotal:I

    if-ge v0, v7, :cond_c

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/util/MediaOperations;->isCancelled()Z

    move-result v7

    if-nez v7, :cond_c

    if-ltz v0, :cond_3

    iget v7, p0, Lcom/sec/samsung/gallery/util/MediaOperations;->mTotal:I

    if-lt v0, v7, :cond_5

    :cond_3
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    iget-boolean v8, p0, Lcom/sec/samsung/gallery/util/MediaOperations;->asyncDbOperations:Z

    if-eqz v8, :cond_0

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;->finishAsync()V

    goto :goto_0

    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/sec/samsung/gallery/util/MediaOperations;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    :cond_5
    :try_start_1
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaObject;

    if-nez v1, :cond_6

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    iget-object v7, p0, Lcom/sec/samsung/gallery/util/MediaOperations;->mOnProgressListener:Lcom/sec/android/gallery3d/data/OnProgressListener;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/sec/samsung/gallery/util/MediaOperations;->mOnProgressListener:Lcom/sec/android/gallery3d/data/OnProgressListener;

    invoke-interface {v7, v1}, Lcom/sec/android/gallery3d/data/OnProgressListener;->handleOperation(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v5

    :cond_7
    if-nez v5, :cond_a

    iget-object v7, p0, Lcom/sec/samsung/gallery/util/MediaOperations;->mOnProgressListener:Lcom/sec/android/gallery3d/data/OnProgressListener;

    if-eqz v7, :cond_9

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/util/MediaOperations;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/sec/samsung/gallery/util/MediaOperations;->mAggregateDbOperation:Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/sec/samsung/gallery/util/MediaOperations;->mAggregateDbOperation:Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;->execute()V

    :cond_8
    iget-object v7, p0, Lcom/sec/samsung/gallery/util/MediaOperations;->mOnProgressListener:Lcom/sec/android/gallery3d/data/OnProgressListener;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Lcom/sec/android/gallery3d/data/OnProgressListener;->onCompleted(Z)V

    :cond_9
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    iget-boolean v8, p0, Lcom/sec/samsung/gallery/util/MediaOperations;->asyncDbOperations:Z

    if-eqz v8, :cond_0

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;->finishAsync()V

    goto/16 :goto_0

    :cond_a
    add-int/lit8 v3, v3, 0x1

    const/4 v7, 0x1

    :try_start_2
    new-array v7, v7, [Ljava/lang/Integer;

    const/4 v8, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {p0, v7}, Lcom/sec/samsung/gallery/util/MediaOperations;->publishProgress([Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v7

    iget-boolean v8, p0, Lcom/sec/samsung/gallery/util/MediaOperations;->asyncDbOperations:Z

    if-eqz v8, :cond_b

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;->finishAsync()V

    :cond_b
    throw v7

    :cond_c
    :try_start_3
    iget-object v7, p0, Lcom/sec/samsung/gallery/util/MediaOperations;->mAggregateDbOperation:Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/sec/samsung/gallery/util/MediaOperations;->mAggregateDbOperation:Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;->execute()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_d
    iget-boolean v7, p0, Lcom/sec/samsung/gallery/util/MediaOperations;->asyncDbOperations:Z

    if-eqz v7, :cond_e

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;->finishAsync()V

    :cond_e
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/util/MediaOperations;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 2

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/MediaOperations;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/data/DataManager;->setChangeNotifierActive(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/MediaOperations;->mOnProgressListener:Lcom/sec/android/gallery3d/data/OnProgressListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/MediaOperations;->mOnProgressListener:Lcom/sec/android/gallery3d/data/OnProgressListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/gallery3d/data/OnProgressListener;->onCompleted(Z)V

    :cond_0
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/MediaOperations;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/data/DataManager;->setChangeNotifierActive(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/MediaOperations;->mOnProgressListener:Lcom/sec/android/gallery3d/data/OnProgressListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/util/MediaOperations;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/MediaOperations;->mOnProgressListener:Lcom/sec/android/gallery3d/data/OnProgressListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/gallery3d/data/OnProgressListener;->onCompleted(Z)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/util/MediaOperations;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/MediaOperations;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/data/DataManager;->setChangeNotifierActive(Z)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/MediaOperations;->mOnProgressListener:Lcom/sec/android/gallery3d/data/OnProgressListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/util/MediaOperations;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/MediaOperations;->mOnProgressListener:Lcom/sec/android/gallery3d/data/OnProgressListener;

    const/4 v1, 0x1

    iget v2, p0, Lcom/sec/samsung/gallery/util/MediaOperations;->mTotal:I

    invoke-interface {v0, v1, v2}, Lcom/sec/android/gallery3d/data/OnProgressListener;->onProgress(II)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/util/MediaOperations;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
