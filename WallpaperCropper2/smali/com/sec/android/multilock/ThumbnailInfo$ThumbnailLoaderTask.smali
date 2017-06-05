.class public Lcom/sec/android/multilock/ThumbnailInfo$ThumbnailLoaderTask;
.super Landroid/os/AsyncTask;
.source "ThumbnailInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/multilock/ThumbnailInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThumbnailLoaderTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private mImageView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mInfo:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/android/multilock/ThumbnailInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/android/multilock/ThumbnailInfo$OnLoadFinishListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v2, 0x0

    new-instance v1, Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/sec/android/multilock/ThumbnailInfo$ThumbnailLoaderTask;->mImageView:Ljava/lang/ref/WeakReference;

    new-instance v1, Ljava/lang/ref/WeakReference;

    const/4 v0, 0x1

    aget-object v0, p1, v0

    check-cast v0, Lcom/sec/android/multilock/ThumbnailInfo;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/sec/android/multilock/ThumbnailInfo$ThumbnailLoaderTask;->mInfo:Ljava/lang/ref/WeakReference;

    new-instance v1, Ljava/lang/ref/WeakReference;

    const/4 v0, 0x2

    aget-object v0, p1, v0

    check-cast v0, Lcom/sec/android/multilock/ThumbnailInfo$OnLoadFinishListener;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/sec/android/multilock/ThumbnailInfo$ThumbnailLoaderTask;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/sec/android/multilock/ThumbnailInfo$ThumbnailLoaderTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/multilock/ThumbnailInfo$ThumbnailLoaderTask;->mInfo:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/multilock/ThumbnailInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/multilock/ThumbnailInfo;->loadThumbnail()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/multilock/ThumbnailInfo;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/multilock/ThumbnailInfo$ThumbnailLoaderTask;->doInBackground([Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/multilock/ThumbnailInfo$ThumbnailLoaderTask;->mImageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/multilock/ThumbnailInfo$ThumbnailLoaderTask;->mInfo:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/multilock/ThumbnailInfo;

    iget-object v2, p0, Lcom/sec/android/multilock/ThumbnailInfo$ThumbnailLoaderTask;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/multilock/ThumbnailInfo$OnLoadFinishListener;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/multilock/ThumbnailInfo;

    if-ne v3, v1, :cond_1

    if-eqz p1, :cond_2

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    invoke-interface {v2, v0}, Lcom/sec/android/multilock/ThumbnailInfo$OnLoadFinishListener;->onLoadFinished(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz v2, :cond_1

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Lcom/sec/android/multilock/ThumbnailInfo$OnLoadFinishListener;->onLoadFinished(Z)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/sec/android/multilock/ThumbnailInfo$ThumbnailLoaderTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
