.class public Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/FaceDecodeAsyncTask;
.super Landroid/os/AsyncTask;
.source "FaceDecodeAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mPath:Ljava/lang/String;

.field private final mRect:Landroid/graphics/RectF;

.field private final mRotation:I

.field private final mView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/RectF;I)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string/jumbo v0, "FaceDecodeAsyncTask"

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/FaceDecodeAsyncTask;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/FaceDecodeAsyncTask;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/FaceDecodeAsyncTask;->mView:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/FaceDecodeAsyncTask;->mPath:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/FaceDecodeAsyncTask;->mRect:Landroid/graphics/RectF;

    iput p5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/FaceDecodeAsyncTask;->mRotation:I

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v5, 0x1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const-string/jumbo v2, "FaceDecodeAsyncTask"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/FaceDecodeAsyncTask;->mPath:Ljava/lang/String;

    invoke-static {v5}, Lcom/sec/android/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/data/DecodeUtils;->decodeSampledBitmap(Ljava/lang/String;I)Landroid/graphics/BitmapFactory$Options;

    move-result-object v6

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/FaceDecodeAsyncTask;->mPath:Ljava/lang/String;

    invoke-static {v1, v6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/FaceDecodeAsyncTask;->mRect:Landroid/graphics/RectF;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/FaceDecodeAsyncTask;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getFaceRectOfObject(Landroid/graphics/RectF;II)Landroid/graphics/Rect;

    move-result-object v7

    if-eqz v7, :cond_0

    iget v1, v7, Landroid/graphics/Rect;->left:I

    iget v2, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static/range {v0 .. v5}, Lcom/sec/android/gallery3d/common/BitmapUtils;->cropFaceByRect(Landroid/graphics/Bitmap;IIIIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/FaceDecodeAsyncTask;->mRotation:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/FaceDecodeAsyncTask;->mRotation:I

    invoke-static {v0, v1, v5}, Lcom/sec/android/gallery3d/common/BitmapUtils;->rotateBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/FaceDecodeAsyncTask;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, v5}, Lcom/sec/android/gallery3d/common/BitmapUtils;->getCircleBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/FaceDecodeAsyncTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/FaceDecodeAsyncTask;->mView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/FaceDecodeAsyncTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
