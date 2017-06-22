.class public Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;
.super Ljava/lang/Object;
.source "BitmapInfo.java"


# static fields
.field private static final EXT:Ljava/lang/String; = ".raw"

.field private static final TAG:Ljava/lang/String; = "PEDIT_BitmapInfo"

.field private static final TMP:Ljava/lang/String; = "tmp"


# instance fields
.field buffer:Ljava/nio/IntBuffer;

.field channel:Ljava/nio/channels/FileChannel;

.field public counter:I

.field public effectRect:Landroid/graphics/Rect;

.field public faceRect:Landroid/graphics/Rect;

.field file:Ljava/io/RandomAccessFile;

.field public filePath:Ljava/lang/String;

.field public id:I

.field private isCommited:Z

.field public isPrivateFile:Z

.field private mFileHandler:I

.field public mImageHeight:I

.field public mImageWidth:I

.field public mOrgBitmap:Landroid/graphics/Bitmap;

.field private mThumbnail:Landroid/graphics/Bitmap;

.field private mWriteToFileRunnable:Ljava/lang/Runnable;

.field public mainImageView:Landroid/widget/ImageView;

.field private markedForDelete:Z

.field public uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mOrgBitmap:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mThumbnail:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->faceRect:Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->effectRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->isPrivateFile:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mFileHandler:I

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->file:Ljava/io/RandomAccessFile;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->channel:Ljava/nio/channels/FileChannel;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->buffer:Ljava/nio/IntBuffer;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mWriteToFileRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->uri:Landroid/net/Uri;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mOrgBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mOrgBitmap:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mThumbnail:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->faceRect:Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->effectRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->isPrivateFile:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mFileHandler:I

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->file:Ljava/io/RandomAccessFile;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->channel:Ljava/nio/channels/FileChannel;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->buffer:Ljava/nio/IntBuffer;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mWriteToFileRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->uri:Landroid/net/Uri;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mOrgBitmap:Landroid/graphics/Bitmap;

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->counter:I

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mFileHandler:I

    return v0
.end method


# virtual methods
.method public closeFileBuffer()V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->buffer:Ljava/nio/IntBuffer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->buffer:Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->buffer:Ljava/nio/IntBuffer;

    :cond_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->channel:Ljava/nio/channels/FileChannel;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->file:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mFileHandler:I

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/agif/util/FileHandler;->delete(I)Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mOrgBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mOrgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mOrgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mOrgBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mainImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mainImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mThumbnail:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mThumbnail:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mainImageView:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->faceRect:Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->uri:Landroid/net/Uri;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mWriteToFileRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public getBitmapHeight()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mImageHeight:I

    return v0
.end method

.method public getBitmapWidth()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mImageWidth:I

    return v0
.end method

.method public getEffectRect()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->effectRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getFaceRect(Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;Landroid/graphics/Rect;Landroid/graphics/RectF;Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;)Landroid/graphics/RectF;
    .locals 10

    const/4 v9, 0x0

    if-eqz p2, :cond_0

    sget-object v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;->aOrig:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    if-ne p4, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->getBitmapWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->getBitmapHeight()I

    move-result v2

    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    sub-int v3, v1, v3

    if-ge v0, v3, :cond_2

    const/4 v6, 0x1

    :cond_2
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    sub-int v3, v2, v3

    if-ge v0, v3, :cond_3

    const/4 v7, 0x1

    :cond_3
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    sub-int v3, v2, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    sub-int v3, v1, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float v8, v0, v3

    move-object v0, p0

    move-object v3, p2

    invoke-virtual/range {v0 .. v8}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->getFaceRectRegionfromBitmap(IILandroid/graphics/Rect;IIZZF)Landroid/graphics/RectF;

    move-result-object v9

    move-object v0, v9

    goto :goto_0
.end method

.method public getFaceRectRegionfromBitmap(IILandroid/graphics/Rect;IIZZF)Landroid/graphics/RectF;
    .locals 11

    if-nez p3, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    int-to-float v7, p2

    mul-float v7, v7, p8

    int-to-float v8, p1

    cmpg-float v7, v7, v8

    if-gez v7, :cond_8

    int-to-float v7, p2

    mul-float v7, v7, p8

    float-to-int v4, v7

    move v3, p2

    if-eqz p6, :cond_4

    iget v7, p3, Landroid/graphics/Rect;->left:I

    if-ge v4, v7, :cond_3

    div-int/lit8 v7, v4, 0x2

    sub-int v7, p4, v7

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int v1, v7, v8

    :goto_1
    if-gez v1, :cond_1

    const/4 v1, 0x0

    :cond_1
    sub-int v7, p1, v4

    if-le v1, v7, :cond_2

    sub-int v1, p1, v4

    :cond_2
    new-instance v2, Landroid/graphics/RectF;

    int-to-float v7, v1

    const/4 v8, 0x0

    add-int v9, v1, v4

    int-to-float v9, v9

    int-to-float v10, v3

    invoke-direct {v2, v7, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_0

    :cond_3
    iget v7, p3, Landroid/graphics/Rect;->left:I

    iget v8, p3, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    sub-int/2addr v7, v4

    div-int/lit8 v1, v7, 0x2

    goto :goto_1

    :cond_4
    sub-int v7, p1, v4

    iget v8, p3, Landroid/graphics/Rect;->right:I

    if-le v7, v8, :cond_7

    div-int/lit8 v7, v4, 0x2

    sub-int v7, p4, v7

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int v5, v7, v8

    :goto_2
    sub-int v5, p1, v5

    sub-int v7, v5, v4

    if-gez v7, :cond_5

    move v5, v4

    :cond_5
    if-le v5, p1, :cond_6

    move v5, p1

    :cond_6
    new-instance v2, Landroid/graphics/RectF;

    sub-int v7, v5, v4

    int-to-float v7, v7

    const/4 v8, 0x0

    int-to-float v9, v5

    int-to-float v10, v3

    invoke-direct {v2, v7, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_0

    :cond_7
    mul-int/lit8 v7, p1, 0x2

    iget v8, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v8

    iget v8, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    sub-int/2addr v7, v4

    div-int/lit8 v5, v7, 0x2

    goto :goto_2

    :cond_8
    move v4, p1

    int-to-float v7, p1

    div-float v7, v7, p8

    float-to-int v3, v7

    if-eqz p7, :cond_c

    iget v7, p3, Landroid/graphics/Rect;->top:I

    if-ge v3, v7, :cond_b

    div-int/lit8 v7, v3, 0x2

    sub-int v7, p5, v7

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int v6, v7, v8

    :goto_3
    if-gez v6, :cond_9

    const/4 v6, 0x0

    :cond_9
    sub-int v7, p2, v3

    if-le v6, v7, :cond_a

    sub-int v6, p2, v3

    :cond_a
    new-instance v2, Landroid/graphics/RectF;

    const/4 v7, 0x0

    int-to-float v8, v6

    int-to-float v9, v4

    add-int v10, v6, v3

    int-to-float v10, v10

    invoke-direct {v2, v7, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto/16 :goto_0

    :cond_b
    iget v7, p3, Landroid/graphics/Rect;->top:I

    iget v8, p3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v8

    sub-int/2addr v7, v3

    div-int/lit8 v6, v7, 0x2

    goto :goto_3

    :cond_c
    sub-int v7, p2, v3

    iget v8, p3, Landroid/graphics/Rect;->bottom:I

    if-le v7, v8, :cond_f

    div-int/lit8 v7, v3, 0x2

    sub-int v7, p5, v7

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int v0, v7, v8

    :goto_4
    sub-int v0, p2, v0

    sub-int v7, v0, v3

    if-gez v7, :cond_d

    move v0, v3

    :cond_d
    if-le v0, p2, :cond_e

    move v0, p2

    :cond_e
    new-instance v2, Landroid/graphics/RectF;

    const/4 v7, 0x0

    sub-int v8, v0, v3

    int-to-float v8, v8

    int-to-float v9, v4

    int-to-float v10, v0

    invoke-direct {v2, v7, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto/16 :goto_0

    :cond_f
    mul-int/lit8 v7, p2, 0x2

    iget v8, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    iget v8, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    sub-int/2addr v7, v3

    div-int/lit8 v0, v7, 0x2

    goto :goto_4
.end method

.method public getIntArray()[I
    .locals 11

    const/4 v10, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/mimage/photoretouching/agif/util/Constants;->FILE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mFileHandler:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".raw"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->filePath:Ljava/lang/String;

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mFileHandler:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->filePath:Ljava/lang/String;

    const-string v2, "r"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->file:Ljava/io/RandomAccessFile;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->channel:Ljava/nio/channels/FileChannel;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->channel:Ljava/nio/channels/FileChannel;

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/MappedByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/IntBuffer;->remaining()I

    move-result v0

    new-array v8, v0, [I

    invoke-virtual {v6, v8}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v8

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    move-object v8, v10

    goto :goto_0

    :cond_0
    move-object v8, v10

    goto :goto_0
.end method

.method public getOrgBitmap()Landroid/graphics/Bitmap;
    .locals 7

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mOrgBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mOrgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->openFileBuffer()Ljava/nio/IntBuffer;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->getIntArray()[I

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mImageWidth:I

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mImageWidth:I

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mImageHeight:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v0 .. v5}, Landroid/graphics/Bitmap;->createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v6

    :cond_2
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mOrgBitmap:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_0
.end method

.method public getRect()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->faceRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getThumbnailBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mThumbnail:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public getWritetoFileRunnable()Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mWriteToFileRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method public isCommited()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->isCommited:Z

    return v0
.end method

.method public isMarkedForDelete()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->markedForDelete:Z

    return v0
.end method

.method public openFileBuffer()Ljava/nio/IntBuffer;
    .locals 10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/mimage/photoretouching/agif/util/Constants;->FILE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mFileHandler:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".raw"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->filePath:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->buffer:Ljava/nio/IntBuffer;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mFileHandler:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->filePath:Ljava/lang/String;

    const-string v2, "r"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->file:Ljava/io/RandomAccessFile;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->channel:Ljava/nio/channels/FileChannel;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->channel:Ljava/nio/channels/FileChannel;

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/MappedByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->buffer:Ljava/nio/IntBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const-string v0, "Performance"

    const-string v1, "get original data(%dx%d) to file: %d ms"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mImageWidth:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mImageHeight:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->buffer:Ljava/nio/IntBuffer;

    :goto_0
    return-object v0

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public recycleBitmap()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mOrgBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mOrgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mOrgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mOrgBitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->closeFileBuffer()V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->recycleBitmap()V

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mOrgBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mOrgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mImageHeight:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mOrgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mImageWidth:I

    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;I)V
    .locals 5

    const/high16 v3, 0x43700000    # 240.0f

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->closeFileBuffer()V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->recycleBitmap()V

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mOrgBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mOrgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mImageHeight:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mOrgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mImageWidth:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mThumbnail:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mThumbnail:Landroid/graphics/Bitmap;

    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mImageWidth:I

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mImageHeight:I

    if-ge v1, v2, :cond_1

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mImageWidth:I

    int-to-float v1, v1

    div-float v0, v3, v1

    :goto_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mOrgBitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mImageWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mImageHeight:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v3, v3

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mThumbnail:Landroid/graphics/Bitmap;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo$1;

    invoke-direct {v1, p0, p2}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo$1;-><init>(Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;I)V

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mWriteToFileRunnable:Ljava/lang/Runnable;

    return-void

    :cond_1
    iget v1, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mImageHeight:I

    int-to-float v1, v1

    div-float v0, v3, v1

    goto :goto_0
.end method

.method public setCommited(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->isCommited:Z

    return-void
.end method

.method public setEffectRect(Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->effectRect:Landroid/graphics/Rect;

    return-void
.end method

.method public setFaceRect(Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->faceRect:Landroid/graphics/Rect;

    return-void
.end method

.method public setFileHandler(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mFileHandler:I

    return-void
.end method

.method public setMarkedForDelete(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->markedForDelete:Z

    return-void
.end method

.method public updateBitmap(Landroid/graphics/Bitmap;I)V
    .locals 12

    const/4 v9, 0x1

    const/high16 v4, 0x43700000    # 240.0f

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->closeFileBuffer()V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->recycleBitmap()V

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mOrgBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mOrgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mImageHeight:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mOrgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mImageWidth:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mThumbnail:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mThumbnail:Landroid/graphics/Bitmap;

    const/high16 v8, 0x3f800000    # 1.0f

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mImageWidth:I

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mImageHeight:I

    if-ge v0, v3, :cond_2

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mImageWidth:I

    int-to-float v0, v0

    div-float v8, v4, v0

    :goto_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mOrgBitmap:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mImageWidth:I

    int-to-float v3, v3

    mul-float/2addr v3, v8

    float-to-int v3, v3

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mImageHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v8

    float-to-int v4, v4

    invoke-static {v0, v3, v4, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mThumbnail:Landroid/graphics/Bitmap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mFileHandler:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mImageWidth:I

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mImageHeight:I

    mul-int/2addr v0, v3

    new-array v1, v0, [I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mOrgBitmap:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mImageWidth:I

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mImageWidth:I

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mImageHeight:I

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mFileHandler:I

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/agif/util/FileHandler;->delete(I)Z

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mFileHandler:I

    invoke-static {v1, v0}, Lcom/sec/android/mimage/photoretouching/agif/util/FileHandler;->update([II)Z

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->recycleBitmap()V

    const-string v0, "PEDIT_BitmapInfo"

    const-string v3, "update original data(%dx%d) to file: %d : %d ms"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mImageWidth:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mImageHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v9

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v0, "PEDIT_BitmapInfo"

    const-string v2, "mFileHandler = -1"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mImageHeight:I

    int-to-float v0, v0

    div-float v8, v4, v0

    goto :goto_0
.end method

.method public updateSelectedRect(Landroid/graphics/RectF;Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;FF)V
    .locals 19

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->getRect()Landroid/graphics/Rect;

    move-result-object v14

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v14, v2, v3}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->getFaceRect(Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;Landroid/graphics/Rect;Landroid/graphics/RectF;Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;)Landroid/graphics/RectF;

    move-result-object v13

    if-eqz v13, :cond_0

    sget-object v14, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;->aOrig:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    move-object/from16 v0, p2

    if-ne v0, v14, :cond_1

    :cond_0
    const/high16 v10, 0x3f800000    # 1.0f

    sget-object v14, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo$2;->$SwitchMap$com$sec$android$mimage$photoretouching$agif$MotionPhotoActivity$ASPECT_RATIO:[I

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;->ordinal()I

    move-result v15

    aget v14, v14, v15

    packed-switch v14, :pswitch_data_0

    :goto_0
    const/high16 v14, -0x40800000    # -1.0f

    cmpl-float v14, v10, v14

    if-nez v14, :cond_7

    new-instance v13, Landroid/graphics/RectF;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mImageWidth:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mImageHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-direct/range {v13 .. v17}, Landroid/graphics/RectF;-><init>(FFFF)V

    :cond_1
    :goto_1
    iget v14, v13, Landroid/graphics/RectF;->left:F

    add-float v6, v14, p3

    iget v14, v13, Landroid/graphics/RectF;->top:F

    add-float v12, v14, p4

    iget v14, v13, Landroid/graphics/RectF;->right:F

    add-float v11, v14, p3

    iget v14, v13, Landroid/graphics/RectF;->bottom:F

    add-float v4, v14, p4

    new-instance v5, Landroid/graphics/RectF;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mImageWidth:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mImageHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v5, v14, v15, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9, v6, v12, v11, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v5, v9}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v14

    if-nez v14, :cond_6

    iget v14, v5, Landroid/graphics/RectF;->left:F

    cmpg-float v14, v6, v14

    if-gez v14, :cond_2

    iget v6, v5, Landroid/graphics/RectF;->left:F

    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v14

    add-float v11, v6, v14

    :cond_2
    iget v14, v5, Landroid/graphics/RectF;->top:F

    cmpg-float v14, v12, v14

    if-gez v14, :cond_3

    iget v12, v5, Landroid/graphics/RectF;->top:F

    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v14

    add-float v4, v12, v14

    :cond_3
    iget v14, v5, Landroid/graphics/RectF;->right:F

    cmpl-float v14, v11, v14

    if-lez v14, :cond_4

    iget v11, v5, Landroid/graphics/RectF;->right:F

    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v14

    sub-float v6, v11, v14

    :cond_4
    iget v14, v5, Landroid/graphics/RectF;->bottom:F

    cmpl-float v14, v4, v14

    if-lez v14, :cond_5

    iget v4, v5, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v14

    sub-float v12, v4, v14

    :cond_5
    invoke-virtual {v9, v6, v12, v11, v4}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_6
    new-instance v14, Landroid/graphics/Rect;

    iget v15, v9, Landroid/graphics/RectF;->left:F

    float-to-int v15, v15

    iget v0, v9, Landroid/graphics/RectF;->top:F

    move/from16 v16, v0

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    iget v0, v9, Landroid/graphics/RectF;->right:F

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    iget v0, v9, Landroid/graphics/RectF;->bottom:F

    move/from16 v18, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    invoke-direct/range {v14 .. v18}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->faceRect:Landroid/graphics/Rect;

    return-void

    :pswitch_0
    const/high16 v10, 0x3f800000    # 1.0f

    goto/16 :goto_0

    :pswitch_1
    const v10, 0x3faaaaab

    goto/16 :goto_0

    :pswitch_2
    const/high16 v10, 0x3f400000    # 0.75f

    goto/16 :goto_0

    :pswitch_3
    const v10, 0x3fe38e39

    goto/16 :goto_0

    :pswitch_4
    const/high16 v10, 0x3f100000    # 0.5625f

    goto/16 :goto_0

    :pswitch_5
    const/high16 v10, -0x40800000    # -1.0f

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mImageWidth:I

    int-to-float v14, v14

    div-float v7, v14, v10

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mImageHeight:I

    int-to-float v14, v14

    mul-float v8, v10, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mImageHeight:I

    int-to-float v14, v14

    cmpg-float v14, v7, v14

    if-gtz v14, :cond_9

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mImageWidth:I

    int-to-float v8, v14

    :cond_8
    :goto_2
    new-instance v13, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mImageWidth:I

    int-to-float v14, v14

    sub-float/2addr v14, v8

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mImageHeight:I

    int-to-float v15, v15

    sub-float/2addr v15, v7

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mImageWidth:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    sub-float v16, v16, v8

    const/high16 v17, 0x40000000    # 2.0f

    div-float v16, v16, v17

    add-float v16, v16, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mImageHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-float v17, v17, v7

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    add-float v17, v17, v7

    invoke-direct/range {v13 .. v17}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto/16 :goto_1

    :cond_9
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mImageWidth:I

    int-to-float v14, v14

    cmpg-float v14, v8, v14

    if-gtz v14, :cond_8

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mImageHeight:I

    int-to-float v7, v14

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public updateTextureRect(Landroid/graphics/RectF;Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;)Landroid/graphics/RectF;
    .locals 9

    const/4 v6, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->getRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {p0, p0, v4, p1, p2}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->getFaceRect(Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;Landroid/graphics/Rect;Landroid/graphics/RectF;Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;)Landroid/graphics/RectF;

    move-result-object v3

    if-eqz v3, :cond_0

    sget-object v4, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;->aOrig:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    if-ne p2, v4, :cond_1

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    sget-object v4, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo$2;->$SwitchMap$com$sec$android$mimage$photoretouching$agif$MotionPhotoActivity$ASPECT_RATIO:[I

    invoke-virtual {p2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    :goto_0
    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v4, v2, v4

    if-nez v4, :cond_2

    new-instance v3, Landroid/graphics/RectF;

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mImageWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mImageHeight:I

    int-to-float v5, v5

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    :cond_1
    :goto_1
    return-object v3

    :pswitch_0
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :pswitch_1
    const v2, 0x3faaaaab

    goto :goto_0

    :pswitch_2
    const/high16 v2, 0x3f400000    # 0.75f

    goto :goto_0

    :pswitch_3
    const v2, 0x3fe38e39

    goto :goto_0

    :pswitch_4
    const/high16 v2, 0x3f100000    # 0.5625f

    goto :goto_0

    :pswitch_5
    const/high16 v2, -0x40800000    # -1.0f

    goto :goto_0

    :cond_2
    iget v4, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mImageWidth:I

    int-to-float v4, v4

    div-float v0, v4, v2

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mImageHeight:I

    int-to-float v4, v4

    mul-float v1, v2, v4

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mImageHeight:I

    int-to-float v4, v4

    cmpg-float v4, v0, v4

    if-gtz v4, :cond_4

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mImageWidth:I

    int-to-float v1, v4

    :cond_3
    :goto_2
    new-instance v3, Landroid/graphics/RectF;

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mImageWidth:I

    int-to-float v4, v4

    sub-float/2addr v4, v1

    div-float/2addr v4, v8

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mImageHeight:I

    int-to-float v5, v5

    sub-float/2addr v5, v0

    div-float/2addr v5, v8

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mImageWidth:I

    int-to-float v6, v6

    sub-float/2addr v6, v1

    div-float/2addr v6, v8

    add-float/2addr v6, v1

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mImageHeight:I

    int-to-float v7, v7

    sub-float/2addr v7, v0

    div-float/2addr v7, v8

    add-float/2addr v7, v0

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_1

    :cond_4
    iget v4, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mImageWidth:I

    int-to-float v4, v4

    cmpg-float v4, v1, v4

    if-gtz v4, :cond_3

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mImageHeight:I

    int-to-float v0, v4

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
