.class Lcom/sec/samsung/gallery/util/QvMediaOperations;
.super Landroid/os/AsyncTask;
.source "QvMediaOperations.java"


# annotations
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
.field private final mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

.field private final mDataManager:Lcom/sec/android/gallery3d/data/CameraDataManager;

.field private final mItem:Lcom/sec/android/gallery3d/data/MediaItem;

.field private final mOnProgressListener:Lcom/sec/samsung/gallery/util/QvFileUtil$OnProgressListener;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/data/MediaItem;Lcom/sec/samsung/gallery/util/QvFileUtil$OnProgressListener;Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/sec/samsung/gallery/util/QvMediaOperations;->mOnProgressListener:Lcom/sec/samsung/gallery/util/QvFileUtil$OnProgressListener;

    iput-object p3, p0, Lcom/sec/samsung/gallery/util/QvMediaOperations;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/QvMediaOperations;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getAppContext()Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getDataManager()Lcom/sec/android/gallery3d/data/LibraryDataManager;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/CameraDataManager;

    iput-object v0, p0, Lcom/sec/samsung/gallery/util/QvMediaOperations;->mDataManager:Lcom/sec/android/gallery3d/data/CameraDataManager;

    iput-object p1, p0, Lcom/sec/samsung/gallery/util/QvMediaOperations;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/sec/samsung/gallery/util/QvMediaOperations;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getSelectionManager()Lcom/sec/android/gallery3d/ui/LibrarySelectionManager;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/util/QvMediaOperations;->mOnProgressListener:Lcom/sec/samsung/gallery/util/QvFileUtil$OnProgressListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/util/QvMediaOperations;->mOnProgressListener:Lcom/sec/samsung/gallery/util/QvFileUtil$OnProgressListener;

    iget-object v3, p0, Lcom/sec/samsung/gallery/util/QvMediaOperations;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-interface {v2, v3}, Lcom/sec/samsung/gallery/util/QvFileUtil$OnProgressListener;->handleOperation(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v0

    :cond_1
    if-nez v0, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/util/QvMediaOperations;->mOnProgressListener:Lcom/sec/samsung/gallery/util/QvFileUtil$OnProgressListener;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/util/QvMediaOperations;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/util/QvMediaOperations;->mOnProgressListener:Lcom/sec/samsung/gallery/util/QvFileUtil$OnProgressListener;

    invoke-interface {v2, v0}, Lcom/sec/samsung/gallery/util/QvFileUtil$OnProgressListener;->onCompleted(Z)V

    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    :cond_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/util/QvMediaOperations;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 2

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/QvMediaOperations;->mDataManager:Lcom/sec/android/gallery3d/data/CameraDataManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/data/CameraDataManager;->setChangeNotifierActive(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/QvMediaOperations;->mOnProgressListener:Lcom/sec/samsung/gallery/util/QvFileUtil$OnProgressListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/QvMediaOperations;->mOnProgressListener:Lcom/sec/samsung/gallery/util/QvFileUtil$OnProgressListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/samsung/gallery/util/QvFileUtil$OnProgressListener;->onCompleted(Z)V

    :cond_0
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/QvMediaOperations;->mDataManager:Lcom/sec/android/gallery3d/data/CameraDataManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/data/CameraDataManager;->setChangeNotifierActive(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/QvMediaOperations;->mOnProgressListener:Lcom/sec/samsung/gallery/util/QvFileUtil$OnProgressListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/util/QvMediaOperations;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/QvMediaOperations;->mOnProgressListener:Lcom/sec/samsung/gallery/util/QvFileUtil$OnProgressListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/samsung/gallery/util/QvFileUtil$OnProgressListener;->onCompleted(Z)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/util/QvMediaOperations;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/QvMediaOperations;->mDataManager:Lcom/sec/android/gallery3d/data/CameraDataManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/data/CameraDataManager;->setChangeNotifierActive(Z)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/QvMediaOperations;->mOnProgressListener:Lcom/sec/samsung/gallery/util/QvFileUtil$OnProgressListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/util/QvMediaOperations;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/QvMediaOperations;->mOnProgressListener:Lcom/sec/samsung/gallery/util/QvFileUtil$OnProgressListener;

    invoke-interface {v0, v1, v1}, Lcom/sec/samsung/gallery/util/QvFileUtil$OnProgressListener;->onProgress(II)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/util/QvMediaOperations;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
