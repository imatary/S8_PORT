.class Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker$BitmapWorkerTask;
.super Landroid/os/AsyncTask;
.source "ImageWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapWorkerTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final imageViewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private final mCropRect:Landroid/graphics/RectF;

.field private final mData:Ljava/lang/Object;

.field private final mFaceRect:Landroid/graphics/RectF;

.field private final mIsVideo:Z

.field private final mOrientation:I

.field private final mPath:Ljava/lang/String;

.field private final mVideoThumbPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;Landroid/widget/ImageView;)V
    .locals 3

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker$BitmapWorkerTask;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    invoke-virtual {p2}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->getDataPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker$BitmapWorkerTask;->mData:Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->getCropRect()Landroid/graphics/RectF;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker$BitmapWorkerTask;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {p2}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->getFaceRect()Landroid/graphics/RectF;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker$BitmapWorkerTask;->mFaceRect:Landroid/graphics/RectF;

    invoke-virtual {p2}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->getOrientation()I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker$BitmapWorkerTask;->mOrientation:I

    invoke-virtual {p2}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->isVideo()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker$BitmapWorkerTask;->mIsVideo:Z

    invoke-virtual {p2}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->getUri()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker$BitmapWorkerTask;->mPath:Ljava/lang/String;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker$BitmapWorkerTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->getScenePosition()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->getItemId()I

    move-result v1

    if-lez v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->getSubCategory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker$BitmapWorkerTask;->mVideoThumbPath:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker$BitmapWorkerTask;->mVideoThumbPath:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker$BitmapWorkerTask;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker$BitmapWorkerTask;->mData:Ljava/lang/Object;

    return-object v0
.end method

.method private checkIsDNGFile(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;->access$1600()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const-string/jumbo v0, "dng"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->parseMetadata(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getAttachedImageView()Landroid/widget/ImageView;
    .locals 3

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker$BitmapWorkerTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;->access$1500(Landroid/widget/ImageView;)Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker$BitmapWorkerTask;

    move-result-object v0

    if-ne p0, v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker$BitmapWorkerTask;->mData:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const/4 v2, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker$BitmapWorkerTask;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;->access$200(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker$BitmapWorkerTask;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;->access$300(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker$BitmapWorkerTask;->isCancelled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker$BitmapWorkerTask;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;->access$200(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v13

    :try_start_2
    const-string/jumbo v3, "ImageWorker"

    invoke-virtual {v13}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    :cond_0
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker$BitmapWorkerTask;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker$BitmapWorkerTask;->getAttachedImageView()Landroid/widget/ImageView;

    move-result-object v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker$BitmapWorkerTask;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;->access$400(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker$BitmapWorkerTask;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker$BitmapWorkerTask;->mPath:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;->access$500(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_1
    invoke-static {}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;->access$600()Z

    move-result v3

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker$BitmapWorkerTask;->mPath:Ljava/lang/String;

    const-string/jumbo v4, "searchfaceitem"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v14, 0x1

    :goto_1
    if-nez v2, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker$BitmapWorkerTask;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker$BitmapWorkerTask;->getAttachedImageView()Landroid/widget/ImageView;

    move-result-object v3

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker$BitmapWorkerTask;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;->access$400(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;)Z

    move-result v3

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker$BitmapWorkerTask;->mIsVideo:Z

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker$BitmapWorkerTask;->mVideoThumbPath:Ljava/lang/String;

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker$BitmapWorkerTask;->mVideoThumbPath:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker$BitmapWorkerTask;->mVideoThumbPath:Ljava/lang/String;

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    :goto_2
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;->access$700()I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/sec/android/gallery3d/common/BitmapUtils;->resizeDownAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_2
    :goto_3
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker$BitmapWorkerTask;->writeBitmapToByteBuffer(Landroid/graphics/Bitmap;)Ljava/nio/ByteBuffer;

    move-result-object v17

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker$BitmapWorkerTask;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;->access$1000(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;)Lcom/sec/android/gallery3d/data/ImageCacheServiceInterface;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker$BitmapWorkerTask;->mPath:Ljava/lang/String;

    invoke-static {v3}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v5

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    invoke-virtual/range {v17 .. v17}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    invoke-interface/range {v4 .. v9}, Lcom/sec/android/gallery3d/data/ImageCacheServiceInterface;->putImageData(Lcom/sec/android/gallery3d/data/Path;JI[B)V

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker$BitmapWorkerTask;->mOrientation:I

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker$BitmapWorkerTask;->mOrientation:I

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/sec/android/gallery3d/common/BitmapUtils;->rotateBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_4
    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker$BitmapWorkerTask;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;->access$1100(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v2, v4}, Lcom/sec/android/gallery3d/common/BitmapUtils;->getCircleBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_5
    if-eqz v2, :cond_e

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_e

    new-instance v12, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker$BitmapWorkerTask;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;->access$1200(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;)Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v12, v3, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v11, v12

    :goto_4
    return-object v11

    :cond_6
    const/4 v14, 0x0

    goto/16 :goto_1

    :cond_7
    invoke-static {v10}, Lcom/sec/android/gallery3d/common/BitmapUtils;->createVideoThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker$BitmapWorkerTask;->mData:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker$BitmapWorkerTask;->checkIsDNGFile(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker$BitmapWorkerTask;->mData:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->decodeDNGPreview(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_9
    :goto_5
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker$BitmapWorkerTask;->mFaceRect:Landroid/graphics/RectF;

    if-nez v3, :cond_2

    if-eqz v14, :cond_d

    invoke-static {}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;->access$800()I

    move-result v3

    :goto_6
    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/sec/android/gallery3d/common/BitmapUtils;->resizeDownAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v2

    goto/16 :goto_3

    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker$BitmapWorkerTask;->mData:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    if-eqz v14, :cond_b

    invoke-static {}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;->access$800()I

    move-result v4

    :goto_7
    invoke-static {v3, v4}, Lcom/sec/android/gallery3d/data/DecodeUtils;->decodeSampledBitmap(Ljava/lang/String;I)Landroid/graphics/BitmapFactory$Options;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker$BitmapWorkerTask;->mData:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, v15}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker$BitmapWorkerTask;->mFaceRect:Landroid/graphics/RectF;

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker$BitmapWorkerTask;->mFaceRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getFaceRectOfObject(Landroid/graphics/RectF;II)Landroid/graphics/Rect;

    move-result-object v16

    if-eqz v16, :cond_9

    move-object/from16 v0, v16

    iget v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v16

    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->height()I

    move-result v6

    const/4 v7, 0x1

    invoke-static/range {v2 .. v7}, Lcom/sec/android/gallery3d/common/BitmapUtils;->cropFaceByRect(Landroid/graphics/Bitmap;IIIIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_5

    :cond_b
    invoke-static {}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;->access$700()I

    move-result v4

    goto :goto_7

    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker$BitmapWorkerTask;->mCropRect:Landroid/graphics/RectF;

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker$BitmapWorkerTask;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker$BitmapWorkerTask;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    iget v7, v15, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-static {v3, v4, v5, v6, v7}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;->access$900(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;Landroid/graphics/RectF;FFI)Landroid/graphics/RectF;

    move-result-object v16

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, v16

    invoke-static {v2, v0, v3, v4, v5}, Lcom/sec/android/gallery3d/common/BitmapUtils;->cropFaceByRatio(Landroid/graphics/Bitmap;Landroid/graphics/RectF;FIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    goto/16 :goto_5

    :cond_d
    invoke-static {}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;->access$700()I

    move-result v3

    goto/16 :goto_6

    :cond_e
    new-instance v12, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker$BitmapWorkerTask;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;->access$1200(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;)Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker$BitmapWorkerTask;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker$BitmapWorkerTask;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;->access$1100(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;)Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker$BitmapWorkerTask;->mIsVideo:Z

    invoke-static {v4, v5, v6, v14}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;->access$1300(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;Landroid/content/Context;ZZ)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v12, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_1

    move-object v11, v12

    goto/16 :goto_4

    :catch_1
    move-exception v13

    const-string/jumbo v3, "ImageWorker"

    invoke-virtual {v13}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker$BitmapWorkerTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker$BitmapWorkerTask;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;->access$200(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker$BitmapWorkerTask;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;->access$200(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker$BitmapWorkerTask;->onCancelled(Landroid/graphics/drawable/BitmapDrawable;)V

    return-void
.end method

.method protected onPostExecute(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker$BitmapWorkerTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker$BitmapWorkerTask;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;->access$400(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 p1, 0x0

    :cond_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker$BitmapWorkerTask;->getAttachedImageView()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker$BitmapWorkerTask;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker$BitmapWorkerTask;->mPath:Ljava/lang/String;

    const-string/jumbo v3, "searchfaceitem"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-static {v1, v0, p1, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;->access$1400(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Z)V

    :cond_2
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker$BitmapWorkerTask;->onPostExecute(Landroid/graphics/drawable/BitmapDrawable;)V

    return-void
.end method

.method writeBitmapToByteBuffer(Landroid/graphics/Bitmap;)Ljava/nio/ByteBuffer;
    .locals 13

    const/4 v10, 0x0

    invoke-static {p1}, Lcom/sec/android/gallery3d/common/BitmapUtils;->compressToBytes(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    const/4 v3, 0x0

    :try_start_0
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v8, 0x0

    :try_start_1
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-direct {v5, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v9, 0x0

    const/4 v11, 0x0

    :try_start_2
    invoke-virtual {v5, v11}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result-object v3

    if-eqz v5, :cond_0

    if-eqz v10, :cond_5

    :try_start_3
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    if-eqz v10, :cond_8

    :try_start_4
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_1
    :goto_1
    array-length v1, v0

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    array-length v4, v3

    :cond_2
    add-int v8, v1, v4

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    if-eqz v3, :cond_3

    invoke-virtual {v7, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :cond_3
    return-object v7

    :catch_0
    move-exception v11

    :try_start_5
    invoke-virtual {v9, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catch_1
    move-exception v8

    :try_start_6
    throw v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception v9

    move-object v10, v8

    move-object v8, v9

    :goto_2
    if-eqz v6, :cond_4

    if-eqz v10, :cond_9

    :try_start_7
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_4
    :goto_3
    :try_start_8
    throw v8
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    :catch_2
    move-exception v2

    const-string/jumbo v8, "ImageWorker"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    :try_start_9
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v8

    goto :goto_2

    :catch_3
    move-exception v8

    :try_start_a
    throw v8
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :catchall_2
    move-exception v9

    move-object v12, v9

    move-object v9, v8

    move-object v8, v12

    :goto_4
    if-eqz v5, :cond_6

    if-eqz v9, :cond_7

    :try_start_b
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :cond_6
    :goto_5
    :try_start_c
    throw v8

    :catch_4
    move-exception v11

    invoke-virtual {v9, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_7
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_5

    :catch_5
    move-exception v9

    :try_start_d
    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_8
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V

    goto :goto_1

    :catch_6
    move-exception v9

    invoke-virtual {v10, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_9
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2

    goto :goto_3

    :catchall_3
    move-exception v8

    move-object v9, v10

    goto :goto_4
.end method
