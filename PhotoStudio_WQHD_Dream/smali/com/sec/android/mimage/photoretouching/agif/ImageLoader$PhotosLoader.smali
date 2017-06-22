.class Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotosLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PhotosLoader"
.end annotation


# instance fields
.field photoToLoad:Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotoToLoad;

.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotoToLoad;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotosLoader;->this$0:Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotosLoader;->photoToLoad:Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotoToLoad;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotosLoader;->this$0:Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;->activity:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotosLoader;->photoToLoad:Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotoToLoad;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotoToLoad;->url:Landroid/net/Uri;

    invoke-static {v3, v4}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_6

    const-string v3, "\\."

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    array-length v3, v15

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v15, v3

    const-string v4, "gif"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance v9, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;

    move-object/from16 v0, v16

    invoke-direct {v9, v0}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->getNumOfFrame()I

    move-result v14

    const/16 v17, 0x0

    invoke-virtual {v9}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->getWidth()I

    move-result v19

    invoke-virtual {v9}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->getHeight()I

    move-result v12

    if-eqz v19, :cond_0

    if-eqz v12, :cond_0

    invoke-virtual {v9}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->getNumOfFrame()I

    move-result v3

    if-gtz v3, :cond_3

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotosLoader;->photoToLoad:Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotoToLoad;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotoToLoad;->url:Landroid/net/Uri;

    if-eqz v3, :cond_1

    invoke-static/range {v16 .. v16}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isCloudFolder(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v9, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotosLoader;->this$0:Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotosLoader;->photoToLoad:Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotoToLoad;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotoToLoad;->url:Landroid/net/Uri;

    const-wide/16 v20, 0x78

    move-wide/from16 v0, v20

    invoke-direct {v9, v3, v4, v0, v1}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    :cond_1
    invoke-virtual {v9}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->getWidth()I

    move-result v19

    invoke-virtual {v9}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->getHeight()I

    move-result v12

    if-eqz v19, :cond_2

    if-eqz v12, :cond_2

    invoke-virtual {v9}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->getNumOfFrame()I

    move-result v3

    if-gtz v3, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/4 v10, 0x0

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v19

    invoke-static {v0, v12, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v14, :cond_5

    sget v3, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->noOfImagesDecoded:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotosLoader;->this$0:Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;

    iget v4, v4, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;->noOBitmapstoLoad:I

    if-ge v3, v4, :cond_5

    invoke-virtual {v9, v10}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->decodeFrame(Landroid/graphics/Bitmap;)I

    move-result v17

    invoke-static {v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    new-instance v3, Landroid/graphics/RectF;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-direct {v3, v4, v5, v6, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v4, Landroid/graphics/RectF;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getPreviewHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getPreviewWidth()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-direct {v4, v5, v6, v8, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v5, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v7, v3, v4, v5}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotosLoader;->this$0:Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;->adapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotosLoader;->photoToLoad:Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotoToLoad;

    iget v4, v4, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotoToLoad;->position:I

    add-int/2addr v4, v13

    invoke-virtual {v3, v4}, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->getItem(I)Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotosLoader;->photoToLoad:Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotoToLoad;

    iget v4, v4, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotoToLoad;->position:I

    add-int/2addr v4, v13

    move-object/from16 v0, v18

    invoke-virtual {v3, v0, v4}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->setBitmap(Landroid/graphics/Bitmap;I)V

    if-nez v10, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotosLoader;->this$0:Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;->removeList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotosLoader;->photoToLoad:Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotoToLoad;

    iget v4, v4, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotoToLoad;->position:I

    add-int/2addr v4, v13

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    sget v3, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->noOfImagesDecoded:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->noOfImagesDecoded:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotosLoader;->this$0:Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;->noOBitmapsLoaded:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->recycleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotosLoader;->this$0:Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;->mWriteFileExecutorService:Ljava/util/concurrent/ExecutorService;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;->access$000(Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;)Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotosLoader;->this$0:Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;->adapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotosLoader;->photoToLoad:Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotoToLoad;

    iget v5, v5, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotoToLoad;->position:I

    add-int/2addr v5, v13

    invoke-virtual {v4, v5}, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->getItem(I)Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->getWritetoFileRunnable()Ljava/lang/Runnable;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_2

    :cond_5
    invoke-static {v10}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->recycleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotosLoader;->this$0:Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;->noOBitmapsLoaded:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotosLoader;->this$0:Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;

    iget v4, v4, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;->noOBitmapstoLoad:I

    if-ne v3, v4, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotosLoader;->this$0:Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;

    iget-boolean v3, v3, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;->dialogDismissed:Z

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotosLoader;->this$0:Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;->activity:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotosLoader;->this$0:Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;->removeList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->dismissDialogAndUpdateLayout(Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotosLoader;->this$0:Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;->dialogDismissed:Z

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotosLoader;->this$0:Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotosLoader;->photoToLoad:Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotoToLoad;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotoToLoad;->url:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotosLoader;->this$0:Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;

    iget-object v5, v5, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;->adapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotosLoader;->photoToLoad:Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotoToLoad;

    iget v6, v6, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotoToLoad;->position:I

    invoke-virtual {v5, v6}, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->getItem(I)Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->getEffectRect()Landroid/graphics/Rect;

    move-result-object v5

    # invokes: Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;->getBitmap(Landroid/net/Uri;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    invoke-static {v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;->access$100(Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;Landroid/net/Uri;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v10

    if-nez v10, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotosLoader;->this$0:Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;->mContext:Landroid/content/Context;

    const v4, 0x7f0200d8

    invoke-static {v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->decodeResource(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotosLoader;->this$0:Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;->removeList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotosLoader;->photoToLoad:Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotoToLoad;

    iget v4, v4, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotoToLoad;->position:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotosLoader;->this$0:Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;->adapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotosLoader;->photoToLoad:Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotoToLoad;

    iget v4, v4, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotoToLoad;->position:I

    invoke-virtual {v3, v4}, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->getItem(I)Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotosLoader;->photoToLoad:Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotoToLoad;

    iget v4, v4, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotoToLoad;->position:I

    invoke-virtual {v3, v11, v4}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->setBitmap(Landroid/graphics/Bitmap;I)V

    :goto_4
    sget v3, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->noOfImagesDecoded:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->noOfImagesDecoded:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotosLoader;->this$0:Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;->noOBitmapsLoaded:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    goto/16 :goto_3

    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotosLoader;->this$0:Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;->adapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotosLoader;->photoToLoad:Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotoToLoad;

    iget v4, v4, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotoToLoad;->position:I

    invoke-virtual {v3, v4}, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->getItem(I)Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotosLoader;->photoToLoad:Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotoToLoad;

    iget v4, v4, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotoToLoad;->position:I

    invoke-virtual {v3, v10, v4}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->setBitmap(Landroid/graphics/Bitmap;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotosLoader;->this$0:Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;->mWriteFileExecutorService:Ljava/util/concurrent/ExecutorService;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;->access$000(Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;)Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotosLoader;->this$0:Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;->adapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotosLoader;->photoToLoad:Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotoToLoad;

    iget v5, v5, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotoToLoad;->position:I

    invoke-virtual {v4, v5}, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->getItem(I)Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->getWritetoFileRunnable()Ljava/lang/Runnable;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_4
.end method
