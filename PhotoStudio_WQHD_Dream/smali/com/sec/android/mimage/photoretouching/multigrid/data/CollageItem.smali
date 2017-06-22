.class public Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;
.super Ljava/lang/Object;
.source "CollageItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;,
        Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$CollageItemListener;
    }
.end annotation


# static fields
.field public static final ANIM:I = 0x1

.field public static final BOTTOM:I = 0x3

.field public static final DRAG:I = 0x2

.field public static final IDLE:I = 0x0

.field public static final LEFT:I = 0x0

.field public static final RIGHT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "PEDIT_CollageItem"

.field public static final TOP:I = 0x1

.field private static final mDec:F = 0.0025f


# instance fields
.field private SCALE_FLING_DELAY:J

.field public isReplace:Z

.field private mAnimValues:[F

.field private mAnimation:Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mContext:Landroid/content/Context;

.field private mDLInfo:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;

.field private mExecutor:Ljava/util/concurrent/ExecutorService;

.field private mFilePath:Ljava/lang/String;

.field private mFitScale:F

.field private mHeight:F

.field private mImageRect:Landroid/graphics/RectF;

.field mInitialScale:F

.field private mIsScaling:Z

.field private mItemInfo:[F

.field private mLeft:F

.field private mListener:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$CollageItemListener;

.field private mPOI:Landroid/graphics/PointF;

.field private mPreviousUpdate:J

.field private mRefHeight:F

.field private mRefWidth:F

.field private mRefX:F

.field private mRefY:F

.field private mScaleEndTime:J

.field private mTop:F

.field private mUserScale:F

.field private mVelocityFactor:F

.field private mVelx:F

.field private mVely:F

.field private mWidth:F

.field private zoomedHeight:F

.field private zoomedWidth:F


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$CollageItemListener;Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->isReplace:Z

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mInitialScale:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mFilePath:Ljava/lang/String;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v2, v2, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mImageRect:Landroid/graphics/RectF;

    const v0, 0x3bf5c290    # 0.0075000003f

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mVelocityFactor:F

    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->SCALE_FLING_DELAY:J

    const/16 v0, 0xa

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mAnimValues:[F

    iput-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mIsScaling:Z

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mExecutor:Ljava/util/concurrent/ExecutorService;

    iput-object p3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mListener:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$CollageItemListener;

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mVelx:F

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mVely:F

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mUserScale:F

    new-instance v0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;-><init>(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mDLInfo:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils$ImageMetaData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->decodeImage(Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils$ImageMetaData;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;)[F
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mItemInfo:[F

    return-object v0
.end method

.method private calcFitScale()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getHeight()F

    move-result v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getWidth()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mFitScale:F

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getHeight()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mFitScale:F

    goto :goto_0
.end method

.method private decodeImage(Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils$ImageMetaData;)V
    .locals 34

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils$ImageMetaData;->getPath()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_0

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "dng"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mListener:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$CollageItemListener;

    move-object/from16 v0, p0

    invoke-interface {v5, v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$CollageItemListener;->onDecodeFailed(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;)V

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v31, v0

    new-instance v24, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v24 .. v24}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v5, 0x1

    move-object/from16 v0, v24

    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/16 v19, 0x0

    const/16 v18, 0x0

    :try_start_0
    new-instance v20, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mFilePath:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-direct {v0, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v19, v20

    :cond_1
    :goto_1
    if-nez v19, :cond_4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mListener:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$CollageItemListener;

    move-object/from16 v0, p0

    invoke-interface {v5, v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$CollageItemListener;->onDecodeFailed(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;)V

    goto :goto_0

    :catch_0
    move-exception v13

    invoke-virtual {v13}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mFilePath:Ljava/lang/String;

    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isCloudFolder(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils$ImageMetaData;->getUri()Landroid/net/Uri;

    move-result-object v6

    const-string v7, "r"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v18

    if-eqz v18, :cond_2

    new-instance v20, Ljava/io/FileInputStream;

    invoke-virtual/range {v18 .. v18}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-direct {v0, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v19, v20

    :cond_2
    if-eqz v18, :cond_1

    :try_start_2
    invoke-virtual/range {v18 .. v18}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v12

    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v12

    :try_start_3
    invoke-virtual {v12}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v18, :cond_1

    :try_start_4
    invoke-virtual/range {v18 .. v18}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    :catch_3
    move-exception v12

    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_4
    move-exception v12

    :try_start_5
    invoke-virtual {v12}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v18, :cond_1

    :try_start_6
    invoke-virtual/range {v18 .. v18}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_1

    :catch_5
    move-exception v12

    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v5

    if-eqz v18, :cond_3

    :try_start_7
    invoke-virtual/range {v18 .. v18}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    :cond_3
    :goto_2
    throw v5

    :catch_6
    move-exception v12

    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-static {v0, v5, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v24

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move-object/from16 v0, v24

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int/2addr v5, v6

    int-to-float v5, v5

    const/high16 v6, 0x4a000000    # 2097152.0f

    invoke-static {v5, v6}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils;->getResizeRatio(FF)F

    move-result v27

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isLowResolutionDevice(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_5

    move-object/from16 v0, v24

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move-object/from16 v0, v24

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mContext:Landroid/content/Context;

    invoke-static {v5, v6, v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getScreenRatio(IILandroid/content/Context;)F

    move-result v27

    :cond_5
    move-object/from16 v0, v24

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v5, v5

    div-float v5, v5, v27

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v22

    move-object/from16 v0, v24

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v5, v5

    div-float v5, v5, v27

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v21

    const/16 v26, 0x1

    if-eqz v15, :cond_11

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "jpg"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "jpeg"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    :cond_6
    if-eqz v23, :cond_11

    const-string v5, "jpg"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "jpeg"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_11

    :cond_7
    :try_start_8
    new-instance v5, Landroid/media/ExifInterface;

    invoke-direct {v5, v15}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string v6, "Orientation"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    move-result v26

    :goto_3
    new-instance v25, Lcom/quramsoft/images/QrBitmapFactory$Options;

    invoke-direct/range {v25 .. v25}, Lcom/quramsoft/images/QrBitmapFactory$Options;-><init>()V

    const/4 v5, 0x7

    move-object/from16 v0, v25

    iput v5, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inPreferredConfig:I

    :try_start_9
    new-instance v30, Ljava/io/FileInputStream;

    move-object/from16 v0, v30

    invoke-direct {v0, v15}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v30

    move/from16 v1, v22

    move/from16 v2, v21

    move-object/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/quramsoft/images/QrBitmapFactory;->decodeStream(Ljava/io/InputStream;IILcom/quramsoft/images/QrBitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_a

    const/4 v5, 0x6

    move/from16 v0, v26

    if-eq v0, v5, :cond_8

    const/4 v5, 0x3

    move/from16 v0, v26

    if-eq v0, v5, :cond_8

    const/16 v5, 0x8

    move/from16 v0, v26

    if-ne v0, v5, :cond_10

    :cond_8
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    const/4 v5, 0x6

    move/from16 v0, v26

    if-ne v0, v5, :cond_e

    const/high16 v5, 0x42b40000    # 90.0f

    invoke-virtual {v9, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    :cond_9
    :goto_4
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v10, 0x1

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    :cond_a
    :goto_5
    invoke-virtual/range {v30 .. v30}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_8
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9

    :cond_b
    :goto_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_18

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    if-nez v5, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mBitmap:Landroid/graphics/Bitmap;

    new-instance v11, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v11, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v11, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    :cond_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mFilePath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mContext:Landroid/content/Context;

    move/from16 v0, v26

    invoke-static {v5, v0, v6}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getFaceInfo(Ljava/lang/String;ILandroid/content/Context;)Landroid/graphics/PointF;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->setPOI(Landroid/graphics/PointF;)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->calcFitScale()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->reset()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mListener:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$CollageItemListener;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-interface {v5, v0, v6}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$CollageItemListener;->onDecodeFinished(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    const-string v5, "PEDIT_CollageItem"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " filePath is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "decodeImage total time "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v32, v16, v28

    move-wide/from16 v0, v32

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v31, :cond_d

    invoke-virtual/range {v31 .. v31}, Landroid/graphics/Bitmap;->recycle()V

    const/16 v31, 0x0

    :cond_d
    :goto_7
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->setReplace(Z)V

    goto/16 :goto_0

    :catch_7
    move-exception v12

    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    :cond_e
    const/4 v5, 0x3

    move/from16 v0, v26

    if-ne v0, v5, :cond_f

    const/high16 v5, 0x43340000    # 180.0f

    :try_start_a
    invoke-virtual {v9, v5}, Landroid/graphics/Matrix;->postRotate(F)Z
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_8
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    goto/16 :goto_4

    :catch_8
    move-exception v12

    invoke-virtual {v12}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto/16 :goto_6

    :cond_f
    const/16 v5, 0x8

    move/from16 v0, v26

    if-ne v0, v5, :cond_9

    const/high16 v5, 0x43870000    # 270.0f

    :try_start_b
    invoke-virtual {v9, v5}, Landroid/graphics/Matrix;->postRotate(F)Z
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_8
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    goto/16 :goto_4

    :catch_9
    move-exception v12

    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_6

    :cond_10
    :try_start_c
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_8
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    const/4 v4, 0x0

    goto/16 :goto_5

    :cond_11
    const/4 v5, 0x0

    move-object/from16 v0, v24

    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    move-object/from16 v0, v24

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move-object/from16 v0, v24

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int/2addr v5, v6

    const/high16 v6, 0x200000

    invoke-static {v5, v6}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils;->getSampleSize(II)I

    move-result v5

    move-object/from16 v0, v24

    iput v5, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isLowResolutionDevice(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_12

    move/from16 v0, v27

    float-to-int v5, v0

    move-object/from16 v0, v24

    iput v5, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :cond_12
    move-object/from16 v0, v24

    invoke-static {v15, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isGraceUX()Z

    move-result v5

    if-eqz v5, :cond_b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v5, :cond_b

    const/16 v30, 0x0

    :try_start_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils$ImageMetaData;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v30

    const/4 v5, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-static {v0, v5, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v15, :cond_b

    invoke-static {v15}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isCloudFolder(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "jpg"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_13

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "jpeg"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_b

    move-result v5

    if-eqz v5, :cond_b

    :cond_13
    :try_start_e
    new-instance v5, Landroid/media/ExifInterface;

    invoke-direct {v5, v15}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string v6, "Orientation"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v26

    const/4 v5, 0x6

    move/from16 v0, v26

    if-eq v0, v5, :cond_14

    const/4 v5, 0x3

    move/from16 v0, v26

    if-eq v0, v5, :cond_14

    const/16 v5, 0x8

    move/from16 v0, v26

    if-ne v0, v5, :cond_b

    :cond_14
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v5, 0x6

    move/from16 v0, v26

    if-ne v0, v5, :cond_16

    const/high16 v5, 0x42b40000    # 90.0f

    invoke-virtual {v9, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    :cond_15
    :goto_8
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v10, 0x1

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_b

    goto/16 :goto_6

    :catch_a
    move-exception v12

    :try_start_f
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_b

    goto/16 :goto_6

    :catch_b
    move-exception v14

    invoke-virtual {v14}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto/16 :goto_6

    :cond_16
    const/4 v5, 0x3

    move/from16 v0, v26

    if-ne v0, v5, :cond_17

    const/high16 v5, 0x43340000    # 180.0f

    :try_start_10
    invoke-virtual {v9, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_8

    :cond_17
    const/16 v5, 0x8

    move/from16 v0, v26

    if-ne v0, v5, :cond_15

    const/high16 v5, 0x43870000    # 270.0f

    invoke-virtual {v9, v5}, Landroid/graphics/Matrix;->postRotate(F)Z
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_a
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_b

    goto :goto_8

    :cond_18
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->isReplace:Z

    if-eqz v5, :cond_19

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mBitmap:Landroid/graphics/Bitmap;

    :cond_19
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mListener:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$CollageItemListener;

    move-object/from16 v0, p0

    invoke-interface {v5, v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$CollageItemListener;->onDecodeFailed(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;)V

    goto/16 :goto_7
.end method

.method private static getFaceInfo(Ljava/lang/String;ILandroid/content/Context;)Landroid/graphics/PointF;
    .locals 17

    const/4 v9, 0x0

    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data = \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->SMARTCROP_VIEW_URI:Landroid/net/Uri;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "pos_left"

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const-string v6, "pos_top"

    aput-object v6, v3, v5

    const/4 v5, 0x2

    const-string v6, "pos_right"

    aput-object v6, v3, v5

    const/4 v5, 0x3

    const-string v6, "pos_bottom"

    aput-object v6, v3, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v9

    :goto_1
    if-nez v9, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v16

    invoke-virtual/range {v16 .. v16}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    const/4 v9, 0x0

    goto :goto_1

    :catch_1
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v9, 0x0

    goto :goto_1

    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v7

    new-array v10, v7, [Landroid/graphics/Rect;

    const/4 v12, 0x0

    :goto_2
    add-int/lit8 v13, v12, 0x1

    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v5, 0x2

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v6, 0x3

    invoke-interface {v9, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-direct {v1, v2, v3, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v10, v12

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v1, 0x0

    aget-object v11, v10, v1

    array-length v2, v10

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v2, :cond_3

    aget-object v15, v10, v1

    const-string v3, "PEDIT_CollageItem"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Rect is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v5

    mul-int/2addr v3, v5

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v6

    mul-int/2addr v5, v6

    if-ge v3, v5, :cond_2

    move-object v11, v15

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    new-instance v14, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v14}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v14, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    const/4 v1, 0x6

    move/from16 v0, p1

    if-eq v0, v1, :cond_4

    const/16 v1, 0x8

    move/from16 v0, p1

    if-ne v0, v1, :cond_5

    :cond_4
    new-instance v1, Landroid/graphics/PointF;

    invoke-virtual {v11}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    iget v3, v14, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v11}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    iget v5, v14, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v5, v5

    div-float/2addr v3, v5

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    goto/16 :goto_0

    :cond_5
    new-instance v1, Landroid/graphics/PointF;

    invoke-virtual {v11}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    iget v3, v14, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v11}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    iget v5, v14, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v5, v5

    div-float/2addr v3, v5

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    goto/16 :goto_0

    :cond_6
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_7
    move v12, v13

    goto/16 :goto_2
.end method


# virtual methods
.method public adjustImageRect(ZZ)V
    .locals 4

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mImageRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mImageRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mImageRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mVelx:F

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mImageRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mImageRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mImageRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    neg-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/RectF;->offset(FF)V

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mVely:F

    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mListener:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$CollageItemListener;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mImageRect:Landroid/graphics/RectF;

    invoke-interface {v0, p0, v1, p2}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$CollageItemListener;->onImageMoved(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;Landroid/graphics/RectF;Z)V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mImageRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mImageRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mImageRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float v1, v3, v1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mVelx:F

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mImageRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mImageRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mImageRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float v1, v3, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/RectF;->offset(FF)V

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mVely:F

    goto :goto_1
.end method

.method public cleanUp()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method

.method public clearAnimation()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mAnimation:Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;

    return-void
.end method

.method public getAnimValues()[F
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mAnimValues:[F

    return-object v0
.end method

.method public getAnimation()Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mAnimation:Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;

    return-object v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getDLInfo()Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mDLInfo:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;

    return-object v0
.end method

.method public getHeight()F
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mHeight:F

    return v0
.end method

.method public getImageRect()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mImageRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getItemInfo()[F
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mItemInfo:[F

    return-object v0
.end method

.method public getLeft()F
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mLeft:F

    return v0
.end method

.method public getPOI()Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mPOI:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getReplace()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->isReplace:Z

    return v0
.end method

.method public getScale()F
    .locals 2

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mUserScale:F

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mFitScale:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public getTop()F
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mTop:F

    return v0
.end method

.method public getUserScale()F
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mUserScale:F

    return v0
.end method

.method public getWidth()F
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mWidth:F

    return v0
.end method

.method public getmFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public isAnimating()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mAnimation:Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mAnimation:Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadImage(Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils$ImageMetaData;)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils$ImageMetaData;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mFilePath:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mPOI:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mFilePath:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$1;-><init>(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils$ImageMetaData;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mListener:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$CollageItemListener;

    invoke-interface {v0, p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$CollageItemListener;->onDecodeFailed(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;)V

    goto :goto_0
.end method

.method public onFling(FF)V
    .locals 7

    const/high16 v6, 0x43fa0000    # 500.0f

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mIsScaling:Z

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mScaleEndTime:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->SCALE_FLING_DELAY:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v6

    if-lez v0, :cond_2

    neg-float v0, p1

    :goto_0
    iput v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mVelx:F

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v6

    if-lez v0, :cond_0

    neg-float v1, p2

    :cond_0
    iput v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mVely:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mPreviousUpdate:J

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->update()V

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public onLongPress()V
    .locals 0

    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)V
    .locals 12

    const/4 v11, 0x1

    const/high16 v8, 0x41200000    # 10.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v10, 0x40000000    # 2.0f

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v4

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mUserScale:F

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v5

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mInitialScale:F

    mul-float/2addr v6, v4

    iput v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mUserScale:F

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mUserScale:F

    cmpg-float v6, v6, v7

    if-gez v6, :cond_2

    iput v7, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mUserScale:F

    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mFitScale:F

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mUserScale:F

    mul-float/2addr v6, v7

    iput v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->zoomedWidth:F

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mFitScale:F

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mUserScale:F

    mul-float/2addr v6, v7

    iput v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->zoomedHeight:F

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mUserScale:F

    div-float v4, v6, v3

    div-float/2addr v5, v4

    div-float/2addr v2, v4

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mImageRect:Landroid/graphics/RectF;

    div-float v7, v5, v10

    sub-float v7, v0, v7

    div-float v8, v2, v10

    sub-float v8, v1, v8

    div-float v9, v5, v10

    add-float/2addr v9, v0

    div-float v10, v2, v10

    add-float/2addr v10, v1

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p0, v11, v11}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->adjustImageRect(ZZ)V

    :cond_1
    return-void

    :cond_2
    iget v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mUserScale:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_0

    iput v8, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mUserScale:F

    goto :goto_0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)V
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mUserScale:F

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mInitialScale:F

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mVelx:F

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mVely:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mIsScaling:Z

    return-void
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_MAIN:Ljava/lang/String;

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_ZOOM_IN:Ljava/lang/String;

    const-string v3, "Zoom in"

    invoke-static {v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mIsScaling:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mScaleEndTime:J

    return-void

    :cond_0
    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_MAIN:Ljava/lang/String;

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_ZOOM_OUT:Ljava/lang/String;

    const-string v3, "Zoom out"

    invoke-static {v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onScroll(FF)V
    .locals 4

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mIsScaling:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mImageRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->zoomedWidth:F

    div-float v1, p1, v1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->zoomedHeight:F

    div-float v2, p2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {p0, v3, v3}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->adjustImageRect(ZZ)V

    :cond_0
    return-void
.end method

.method public onTouchDown()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mVelx:F

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mVely:F

    return-void
.end method

.method public reset()V
    .locals 6

    const/4 v5, 0x1

    const/high16 v4, 0x40000000    # 2.0f

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mUserScale:F

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mFitScale:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mUserScale:F

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->zoomedWidth:F

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mFitScale:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mUserScale:F

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->zoomedHeight:F

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->zoomedWidth:F

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getWidth()F

    move-result v3

    sub-float/2addr v2, v3

    div-float v0, v2, v4

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->zoomedHeight:F

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getHeight()F

    move-result v3

    sub-float/2addr v2, v3

    div-float v1, v2, v4

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mPOI:Landroid/graphics/PointF;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mPOI:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->zoomedWidth:F

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getWidth()F

    move-result v3

    div-float/2addr v3, v4

    sub-float v0, v2, v3

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mPOI:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->zoomedHeight:F

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getHeight()F

    move-result v3

    div-float/2addr v3, v4

    sub-float v1, v2, v3

    :cond_0
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mImageRect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->zoomedWidth:F

    div-float v3, v0, v3

    iput v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mImageRect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->zoomedHeight:F

    div-float v3, v1, v3

    iput v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mImageRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mImageRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->zoomedWidth:F

    mul-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getWidth()F

    move-result v4

    add-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->zoomedWidth:F

    div-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mImageRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mImageRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->zoomedHeight:F

    mul-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getHeight()F

    move-result v4

    add-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->zoomedHeight:F

    div-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, v5, v5}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->adjustImageRect(ZZ)V

    const-string v2, "PEDIT_CollageItem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ImageRect is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public setAnimation(Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mAnimation:Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;

    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->calcFitScale()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p3}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->updateDimensions(IZZ)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mListener:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$CollageItemListener;

    invoke-interface {v0, p0, p3}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$CollageItemListener;->onDecodeFinished(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;Z)V

    return-void
.end method

.method public setImageRect(Landroid/graphics/RectF;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method

.method public setItemInfo([F)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mItemInfo:[F

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mItemInfo:[F

    aget v0, v0, v2

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mRefX:F

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mItemInfo:[F

    aget v0, v0, v3

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mRefY:F

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mItemInfo:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mRefWidth:F

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mItemInfo:[F

    const/4 v1, 0x3

    aget v0, v0, v1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mRefHeight:F

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mDLInfo:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;->init()V

    invoke-virtual {p0, v2, v3, v2}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->updateDimensions(IZZ)V

    return-void
.end method

.method public setPOI(Landroid/graphics/PointF;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mPOI:Landroid/graphics/PointF;

    return-void
.end method

.method public setReplace(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->isReplace:Z

    return-void
.end method

.method public setUserScale(F)V
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mUserScale:F

    return-void
.end method

.method public setZoom(F)V
    .locals 11

    const/4 v10, 0x1

    const/high16 v7, 0x41200000    # 10.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    iput v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mVelx:F

    iput v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mVely:F

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_1

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mUserScale:F

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mUserScale:F

    mul-float/2addr v5, p1

    iput v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mUserScale:F

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mUserScale:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_2

    iput v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mUserScale:F

    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mFitScale:F

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mUserScale:F

    mul-float/2addr v5, v6

    iput v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->zoomedWidth:F

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mFitScale:F

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mUserScale:F

    mul-float/2addr v5, v6

    iput v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->zoomedHeight:F

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mUserScale:F

    div-float p1, v5, v3

    div-float/2addr v4, p1

    div-float/2addr v2, p1

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mImageRect:Landroid/graphics/RectF;

    div-float v6, v4, v9

    sub-float v6, v0, v6

    div-float v7, v2, v9

    sub-float v7, v1, v7

    div-float v8, v4, v9

    add-float/2addr v8, v0

    div-float v9, v2, v9

    add-float/2addr v9, v1

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p0, v10, v10}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->adjustImageRect(ZZ)V

    :cond_1
    return-void

    :cond_2
    iget v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mUserScale:F

    cmpl-float v5, v5, v7

    if-lez v5, :cond_0

    iput v7, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mUserScale:F

    goto :goto_0
.end method

.method public update()V
    .locals 11

    const/4 v10, 0x1

    const v7, 0x3b23d70a    # 0.0025f

    const-wide v8, 0x3f9eb851eb851eb8L    # 0.03

    const/4 v6, 0x0

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mVelx:F

    cmpl-float v0, v0, v6

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mVely:F

    cmpl-float v0, v0, v6

    if-eqz v0, :cond_3

    :cond_0
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mVelx:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mPreviousUpdate:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    mul-float/2addr v1, v7

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mVelx:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mVelx:F

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mVely:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mPreviousUpdate:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    mul-float/2addr v1, v7

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mVely:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mVely:F

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mVelx:F

    cmpl-float v0, v0, v6

    if-nez v0, :cond_1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mVely:F

    cmpl-float v0, v0, v6

    if-eqz v0, :cond_3

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mPreviousUpdate:J

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mImageRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mVelx:F

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mVelocityFactor:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->zoomedWidth:F

    div-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mVely:F

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mVelocityFactor:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->zoomedHeight:F

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {p0, v10, v10}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->adjustImageRect(ZZ)V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mVelx:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpg-double v0, v0, v8

    if-gez v0, :cond_2

    iput v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mVelx:F

    :cond_2
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mVely:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpg-double v0, v0, v8

    if-gez v0, :cond_3

    iput v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mVely:F

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->updateAnimation()V

    return-void
.end method

.method public updateAnimation()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mAnimation:Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mAnimation:Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mListener:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$CollageItemListener;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mAnimation:Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;->updateValues()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v2, v2, v2}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->updateDimensions(IZZ)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public updateDimensions(IZZ)V
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/high16 v6, 0x40000000    # 2.0f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CollageItem::updateDimension = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->findCaller(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->l(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mListener:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$CollageItemListener;

    invoke-interface {v3}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$CollageItemListener;->getMargin()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mListener:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$CollageItemListener;

    invoke-interface {v3}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$CollageItemListener;->getWidth()F

    move-result v1

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mListener:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$CollageItemListener;

    invoke-interface {v3}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$CollageItemListener;->getHeight()F

    move-result v0

    if-nez p1, :cond_3

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mRefWidth:F

    sub-float v4, v1, v2

    mul-float/2addr v3, v4

    sub-float/2addr v3, v2

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mWidth:F

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mRefHeight:F

    sub-float v4, v0, v2

    mul-float/2addr v3, v4

    sub-float/2addr v3, v2

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mHeight:F

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDimensions::IDLE left, top, width, height:: animating:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mLeft:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mTop:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mWidth:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mHeight:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->l(Ljava/lang/String;)V

    div-float v3, v2, v6

    sub-float v4, v1, v2

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mRefX:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mWidth:F

    div-float/2addr v4, v6

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mLeft:F

    div-float v3, v2, v6

    sub-float v4, v0, v2

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mRefY:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mHeight:F

    div-float/2addr v4, v6

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mTop:F

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mLeft:F

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mDLInfo:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;

    invoke-virtual {v4, v9}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;->getMargin(I)F

    move-result v4

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mLeft:F

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mTop:F

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mDLInfo:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;

    invoke-virtual {v4, v7}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;->getMargin(I)F

    move-result v4

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mTop:F

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mWidth:F

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mDLInfo:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;

    invoke-virtual {v4, v9}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;->getMargin(I)F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mDLInfo:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;

    invoke-virtual {v5, v10}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;->getMargin(I)F

    move-result v5

    add-float/2addr v4, v5

    mul-float/2addr v4, v1

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mWidth:F

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mHeight:F

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mDLInfo:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;

    invoke-virtual {v4, v7}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;->getMargin(I)F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mDLInfo:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;->getMargin(I)F

    move-result v5

    add-float/2addr v4, v5

    mul-float/2addr v4, v0

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mHeight:F

    :cond_0
    :goto_0
    iput v8, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mVelx:F

    iput v8, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mVely:F

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mFitScale:F

    cmpl-float v3, v3, v8

    if-nez v3, :cond_4

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->calcFitScale()V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->reset()V

    :cond_1
    :goto_1
    if-eqz p2, :cond_2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mListener:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$CollageItemListener;

    invoke-interface {v3, p0, p3}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$CollageItemListener;->onDimensionsUpdated(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;Z)V

    :cond_2
    return-void

    :cond_3
    if-ne p1, v7, :cond_0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mAnimValues:[F

    aget v3, v3, v10

    sub-float v4, v1, v2

    mul-float/2addr v3, v4

    sub-float/2addr v3, v2

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mWidth:F

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mAnimValues:[F

    const/4 v4, 0x3

    aget v3, v3, v4

    sub-float v4, v0, v2

    mul-float/2addr v3, v4

    sub-float/2addr v3, v2

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mHeight:F

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDimensions::ANIM left, top, width, height:: animating:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mLeft:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mTop:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mWidth:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mHeight:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->l(Ljava/lang/String;)V

    div-float v3, v2, v6

    sub-float v4, v1, v2

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mAnimValues:[F

    aget v5, v5, v9

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mWidth:F

    div-float/2addr v4, v6

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mLeft:F

    div-float v3, v2, v6

    sub-float v4, v0, v2

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mAnimValues:[F

    aget v5, v5, v7

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mHeight:F

    div-float/2addr v4, v6

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mTop:F

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mLeft:F

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mAnimValues:[F

    const/4 v5, 0x4

    aget v4, v4, v5

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mLeft:F

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mTop:F

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mAnimValues:[F

    const/4 v5, 0x5

    aget v4, v4, v5

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mTop:F

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mWidth:F

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mAnimValues:[F

    const/4 v5, 0x4

    aget v4, v4, v5

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mAnimValues:[F

    const/4 v6, 0x6

    aget v5, v5, v6

    add-float/2addr v4, v5

    mul-float/2addr v4, v1

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mWidth:F

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mHeight:F

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mAnimValues:[F

    const/4 v5, 0x5

    aget v4, v4, v5

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mAnimValues:[F

    const/4 v6, 0x7

    aget v5, v5, v6

    add-float/2addr v4, v5

    mul-float/2addr v4, v0

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mHeight:F

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mImageRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mAnimValues:[F

    const/16 v5, 0x8

    aget v4, v4, v5

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mImageRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mAnimValues:[F

    const/16 v6, 0x9

    aget v5, v5, v6

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mImageRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->offset(FF)V

    goto/16 :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->calcFitScale()V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mFitScale:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mUserScale:F

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->zoomedWidth:F

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mFitScale:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mUserScale:F

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->zoomedHeight:F

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mImageRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mImageRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->zoomedWidth:F

    mul-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getWidth()F

    move-result v5

    add-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->zoomedWidth:F

    div-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mImageRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mImageRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->zoomedHeight:F

    mul-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getHeight()F

    move-result v5

    add-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->zoomedHeight:F

    div-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, p2, p3}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->adjustImageRect(ZZ)V

    goto/16 :goto_1
.end method
