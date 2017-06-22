.class Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ThumbLoader;
.super Landroid/os/AsyncTask;
.source "ImageData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ThumbLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ThumbLoader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ThumbLoader;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ThumbLoader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mThumbnail:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->access$700(Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v3

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ThumbLoader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mThumbnail:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->access$700(Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ThumbLoader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mThumbnail:Landroid/graphics/Bitmap;
    invoke-static {v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->access$702(Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ThumbLoader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mPreviewWidth:I
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->access$800(Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;)I

    move-result v3

    const/4 v4, 0x1

    if-lt v3, v4, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ThumbLoader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mPreviewHeight:I
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->access$900(Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;)I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_2

    :cond_1
    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ThumbLoader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mThumbnail:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->access$700(Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;)Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ThumbLoader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mPreviewWidth:I
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->access$800(Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ThumbLoader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mPreviewHeight:I
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->access$900(Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;)I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ThumbLoader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mPreviewInputBuffer:[I
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->access$1000(Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;)[I

    move-result-object v3

    array-length v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ThumbLoader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mPreviewWidth:I
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->access$800(Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ThumbLoader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mPreviewHeight:I
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->access$900(Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;)I

    move-result v5

    mul-int/2addr v4, v5

    if-ne v3, v4, :cond_3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ThumbLoader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mPreviewWidth:I
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->access$800(Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;)I

    move-result v4

    if-ne v3, v4, :cond_3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ThumbLoader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mPreviewHeight:I
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->access$900(Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;)I

    move-result v4

    if-eq v3, v4, :cond_4

    :cond_3
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v3, 0x0

    goto :goto_0

    :cond_4
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ThumbLoader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mPreviewInputBuffer:[I
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->access$1000(Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;)[I

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ThumbLoader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mPreviewWidth:I
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->access$800(Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ThumbLoader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mPreviewWidth:I
    invoke-static {v8}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->access$800(Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ThumbLoader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mPreviewHeight:I
    invoke-static {v9}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->access$900(Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;)I

    move-result v9

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v10, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ThumbLoader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mThumbnail:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->access$700(Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v10, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ThumbLoader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mThumbnail:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->access$700(Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ThumbLoader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mThumbnail:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->access$700(Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ThumbLoader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mPreviewWidth:I
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->access$800(Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;)I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ThumbLoader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mPreviewHeight:I
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->access$900(Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v4, v15

    int-to-float v5, v14

    div-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ThumbLoader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mPreviewHeight:I
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->access$900(Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;)I

    move-result v3

    mul-int/2addr v3, v15

    div-int v18, v3, v14

    new-instance v13, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ThumbLoader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mPreviewWidth:I
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->access$800(Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;)I

    move-result v3

    sub-int v3, v3, v18

    div-int/lit8 v3, v3, 0x2

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ThumbLoader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mPreviewWidth:I
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->access$800(Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;)I

    move-result v5

    add-int v5, v5, v18

    div-int/lit8 v5, v5, 0x2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ThumbLoader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mPreviewHeight:I
    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->access$900(Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;)I

    move-result v6

    invoke-direct {v13, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_1
    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, v15, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v4, 0x0

    invoke-virtual {v10, v2, v13, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Time to update thumbnail: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v16

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->l(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ThumbLoader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ImageDataListener;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->access$400(Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;)Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ImageDataListener;

    move-result-object v3

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ThumbLoader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ImageDataListener;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->access$400(Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;)Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ImageDataListener;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ThumbLoader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mThumbnail:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->access$700(Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ImageDataListener;->onIconUpdated(Landroid/graphics/Bitmap;)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ThumbLoader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ImageDataListener;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->access$400(Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;)Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ImageDataListener;

    move-result-object v3

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ThumbLoader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ImageDataListener;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->access$400(Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;)Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ImageDataListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ImageDataListener;->getServiceId()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ThumbLoader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ImageDataListener;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->access$400(Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;)Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ImageDataListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ImageDataListener;->onEffectThumbsUpdated()V

    :cond_6
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v3, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v11

    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ThumbLoader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mPreviewWidth:I
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->access$800(Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;)I

    move-result v3

    mul-int/2addr v3, v14

    div-int v12, v3, v15

    new-instance v13, Landroid/graphics/Rect;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ThumbLoader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mPreviewHeight:I
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->access$900(Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;)I

    move-result v4

    sub-int/2addr v4, v12

    div-int/lit8 v4, v4, 0x2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ThumbLoader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mPreviewWidth:I
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->access$800(Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData$ThumbLoader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->mPreviewHeight:I
    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->access$900(Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;)I

    move-result v6

    add-int/2addr v6, v12

    div-int/lit8 v6, v6, 0x2

    invoke-direct {v13, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/16 :goto_1
.end method
