.class Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;
.super Ljava/lang/Object;
.source "PreDisplayScreen.java"

# interfaces
.implements Lcom/sec/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/util/PreDisplayScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrepareScreenNailJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sec/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;


# direct methods
.method private constructor <init>(Lcom/sec/android/gallery3d/util/PreDisplayScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/util/PreDisplayScreen;Lcom/sec/android/gallery3d/util/PreDisplayScreen$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;-><init>(Lcom/sec/android/gallery3d/util/PreDisplayScreen;)V

    return-void
.end method

.method private createBitmap(Ljava/lang/String;)V
    .locals 26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$600(Lcom/sec/android/gallery3d/util/PreDisplayScreen;)Ljava/lang/String;

    move-result-object v21

    if-nez v21, :cond_1

    const-string/jumbo v21, "PreDisplayScreen"

    const-string/jumbo v22, "createBitmap() : mFilePath is null!!"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v21, "image"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_3

    const/4 v8, 0x0

    :try_start_0
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$600(Lcom/sec/android/gallery3d/util/PreDisplayScreen;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v22

    const-wide/32 v24, 0x3200000

    cmp-long v21, v22, v24

    if-lez v21, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$300(Lcom/sec/android/gallery3d/util/PreDisplayScreen;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v21

    move-object/from16 v0, v21

    instance-of v0, v0, Lcom/sec/android/gallery3d/app/GalleryActivity;

    move/from16 v21, v0

    if-eqz v21, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$400(Lcom/sec/android/gallery3d/util/PreDisplayScreen;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    :cond_2
    :try_start_1
    new-instance v9, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$600(Lcom/sec/android/gallery3d/util/PreDisplayScreen;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v9}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v6

    new-instance v16, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-static {v6, v0, v1}, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Lcom/sec/android/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v22, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v23, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v17, v21, v22

    invoke-static/range {v17 .. v17}, Lcom/sec/android/gallery3d/common/BitmapUtils;->computeSampleSizeLarger(F)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$600(Lcom/sec/android/gallery3d/util/PreDisplayScreen;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/sec/android/gallery3d/data/DecodeUtils;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$802(Lcom/sec/android/gallery3d/util/PreDisplayScreen;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v9}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    move-object v8, v9

    goto/16 :goto_0

    :catch_0
    move-exception v5

    :goto_1
    :try_start_3
    const-string/jumbo v21, "PreDisplayScreen"

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v21

    :goto_2
    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v21

    :cond_3
    const-string/jumbo v21, "video"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$600(Lcom/sec/android/gallery3d/util/PreDisplayScreen;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/sec/android/gallery3d/common/BitmapUtils;->createVideoThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$802(Lcom/sec/android/gallery3d/util/PreDisplayScreen;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Lcom/sec/android/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$800(Lcom/sec/android/gallery3d/util/PreDisplayScreen;)Landroid/graphics/Bitmap;

    move-result-object v22

    const/16 v23, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v20

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/sec/android/gallery3d/common/BitmapUtils;->resizeDownBySideLength(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$802(Lcom/sec/android/gallery3d/util/PreDisplayScreen;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    sget-object v21, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static/range {v21 .. v21}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v21

    if-nez v21, :cond_4

    sget-object v21, Lcom/sec/samsung/gallery/features/FeatureNames;->UseFullViewModeForVideo:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static/range {v21 .. v21}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v21

    if-eqz v21, :cond_0

    :cond_4
    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$600(Lcom/sec/android/gallery3d/util/PreDisplayScreen;)Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v22, "Video_View_Mode"

    invoke-static/range {v21 .. v22}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getSEFData(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v18

    if-eqz v18, :cond_5

    new-instance v19, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$1000(Lcom/sec/android/gallery3d/util/PreDisplayScreen;)I

    move-result v21

    if-eqz v21, :cond_6

    const-string/jumbo v21, "Full"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$300(Lcom/sec/android/gallery3d/util/PreDisplayScreen;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    iget v0, v15, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v21, v0

    iget v0, v15, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v22, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v12

    iget v0, v15, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v21, v0

    iget v0, v15, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v22, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(II)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$800(Lcom/sec/android/gallery3d/util/PreDisplayScreen;)Landroid/graphics/Bitmap;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$800(Lcom/sec/android/gallery3d/util/PreDisplayScreen;)Landroid/graphics/Bitmap;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$800(Lcom/sec/android/gallery3d/util/PreDisplayScreen;)Landroid/graphics/Bitmap;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$800(Lcom/sec/android/gallery3d/util/PreDisplayScreen;)Landroid/graphics/Bitmap;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(II)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$800(Lcom/sec/android/gallery3d/util/PreDisplayScreen;)Landroid/graphics/Bitmap;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$800(Lcom/sec/android/gallery3d/util/PreDisplayScreen;)Landroid/graphics/Bitmap;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_7

    int-to-float v0, v12

    move/from16 v21, v0

    int-to-float v0, v13

    move/from16 v22, v0

    div-float v14, v21, v22

    int-to-float v0, v10

    move/from16 v21, v0

    int-to-float v0, v11

    move/from16 v22, v0

    div-float v4, v21, v22

    :goto_3
    invoke-static {v4, v14}, Ljava/lang/Float;->compare(FF)I

    move-result v21

    if-eqz v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$800(Lcom/sec/android/gallery3d/util/PreDisplayScreen;)Landroid/graphics/Bitmap;

    move-result-object v22

    const/16 v23, 0x0

    const/16 v24, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v14, v1, v2}, Lcom/sec/android/gallery3d/common/BitmapUtils;->cropCenterByRatio(Landroid/graphics/Bitmap;FIZ)Landroid/graphics/Bitmap;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$802(Lcom/sec/android/gallery3d/util/PreDisplayScreen;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto/16 :goto_0

    :cond_7
    int-to-float v0, v13

    move/from16 v21, v0

    int-to-float v0, v12

    move/from16 v22, v0

    div-float v14, v21, v22

    int-to-float v0, v11

    move/from16 v21, v0

    int-to-float v0, v10

    move/from16 v22, v0

    div-float v4, v21, v22

    goto :goto_3

    :catchall_1
    move-exception v21

    move-object v8, v9

    goto/16 :goto_2

    :catch_1
    move-exception v5

    move-object v8, v9

    goto/16 :goto_1
.end method

.method private fromCamera()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$100(Lcom/sec/android/gallery3d/util/PreDisplayScreen;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "from-Camera"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private getImageData()Lcom/sec/android/gallery3d/data/Path;
    .locals 24

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$300(Lcom/sec/android/gallery3d/util/PreDisplayScreen;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    check-cast v13, Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v13}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$300(Lcom/sec/android/gallery3d/util/PreDisplayScreen;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/16 v16, 0x0

    const/16 v19, 0x0

    sget-object v6, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSCloudOnly:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v6}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$200(Lcom/sec/android/gallery3d/util/PreDisplayScreen;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "com.samsung.cmh"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x6

    new-array v4, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v8, "date_modified"

    aput-object v8, v4, v6

    const/4 v6, 0x1

    const-string/jumbo v8, "orientation"

    aput-object v8, v4, v6

    const/4 v6, 0x2

    const-string/jumbo v8, "_data"

    aput-object v8, v4, v6

    const/4 v6, 0x3

    const-string/jumbo v8, "group_id"

    aput-object v8, v4, v6

    const/4 v6, 0x4

    const-string/jumbo v8, "bucket_id"

    aput-object v8, v4, v6

    const/4 v6, 0x5

    const-string/jumbo v8, "cloud_cached_path"

    aput-object v8, v4, v6

    :goto_0
    const/4 v5, 0x0

    sget-object v6, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnionCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v6}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$200(Lcom/sec/android/gallery3d/util/PreDisplayScreen;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "com.samsung.cmh"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    sget-object v3, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->FILES_TABLE_URI:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "_id = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    invoke-static {v8}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$200(Lcom/sec/android/gallery3d/util/PreDisplayScreen;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_0
    const-string/jumbo v8, "PreDisplayScreen"

    invoke-static/range {v2 .. v8}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    if-eqz v16, :cond_1

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x3

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    const/4 v6, 0x4

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const-wide/16 v8, 0x0

    cmp-long v6, v20, v8

    if-eqz v6, :cond_6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$300(Lcom/sec/android/gallery3d/util/PreDisplayScreen;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    move-wide/from16 v0, v20

    invoke-static {v6, v14, v0, v1}, Lcom/sec/android/gallery3d/util/BurstImageUtils;->getBurstShotUriList(Landroid/content/ContentResolver;IJ)Ljava/util/ArrayList;

    move-result-object v23

    if-eqz v23, :cond_1

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    const/4 v6, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string/jumbo v12, "PreDisplayScreen"

    move-object v6, v2

    move-object v8, v4

    invoke-static/range {v6 .. v12}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    if-eqz v19, :cond_1

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    const/4 v8, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v6, v8, v9}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$502(Lcom/sec/android/gallery3d/util/PreDisplayScreen;J)J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    const/4 v8, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v6, v8}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$702(Lcom/sec/android/gallery3d/util/PreDisplayScreen;I)I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    const/4 v8, 0x2

    move-object/from16 v0, v19

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$602(Lcom/sec/android/gallery3d/util/PreDisplayScreen;Ljava/lang/String;)Ljava/lang/String;

    sget-object v6, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSCloudOnly:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v6}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$200(Lcom/sec/android/gallery3d/util/PreDisplayScreen;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "com.samsung.cmh"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    const/4 v8, 0x5

    move-object/from16 v0, v19

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$902(Lcom/sec/android/gallery3d/util/PreDisplayScreen;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$600(Lcom/sec/android/gallery3d/util/PreDisplayScreen;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$900(Lcom/sec/android/gallery3d/util/PreDisplayScreen;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    invoke-static {v8}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$900(Lcom/sec/android/gallery3d/util/PreDisplayScreen;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$602(Lcom/sec/android/gallery3d/util/PreDisplayScreen;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->fromCamera()Z

    move-result v6

    if-eqz v6, :cond_5

    sget-object v6, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnionCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v6}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v6

    if-eqz v6, :cond_4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$200(Lcom/sec/android/gallery3d/util/PreDisplayScreen;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "com.samsung.cmh"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    sget-object v15, Lcom/sec/android/gallery3d/data/LibraryDataManager$SourceType;->UNION_SOURCE_ONLY:Lcom/sec/android/gallery3d/data/LibraryDataManager$SourceType;

    :goto_2
    const/4 v6, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7, v6, v15}, Lcom/sec/android/gallery3d/data/DataManager;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;Lcom/sec/android/gallery3d/data/LibraryDataManager$SourceType;)Lcom/sec/android/gallery3d/data/Path;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v22

    :cond_1
    :goto_3
    invoke-static/range {v16 .. v16}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    invoke-static/range {v19 .. v19}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_4
    return-object v22

    :cond_2
    const/4 v6, 0x5

    new-array v4, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v8, "date_modified"

    aput-object v8, v4, v6

    const/4 v6, 0x1

    const-string/jumbo v8, "orientation"

    aput-object v8, v4, v6

    const/4 v6, 0x2

    const-string/jumbo v8, "_data"

    aput-object v8, v4, v6

    const/4 v6, 0x3

    const-string/jumbo v8, "group_id"

    aput-object v8, v4, v6

    const/4 v6, 0x4

    const-string/jumbo v8, "bucket_id"

    aput-object v8, v4, v6

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$200(Lcom/sec/android/gallery3d/util/PreDisplayScreen;)Landroid/net/Uri;

    move-result-object v3

    goto/16 :goto_1

    :cond_4
    :try_start_1
    sget-object v15, Lcom/sec/android/gallery3d/data/LibraryDataManager$SourceType;->LOCAL_SOURCE_ONLY:Lcom/sec/android/gallery3d/data/LibraryDataManager$SourceType;

    goto :goto_2

    :cond_5
    const/4 v6, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7, v6}, Lcom/sec/android/gallery3d/data/DataManager;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v22

    goto :goto_3

    :cond_6
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    const/4 v8, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v6, v8, v9}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$502(Lcom/sec/android/gallery3d/util/PreDisplayScreen;J)J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    const/4 v8, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v6, v8}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$702(Lcom/sec/android/gallery3d/util/PreDisplayScreen;I)I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    const/4 v8, 0x2

    move-object/from16 v0, v16

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$602(Lcom/sec/android/gallery3d/util/PreDisplayScreen;Ljava/lang/String;)Ljava/lang/String;

    sget-object v6, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSCloudOnly:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v6}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$200(Lcom/sec/android/gallery3d/util/PreDisplayScreen;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "com.samsung.cmh"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    const/4 v8, 0x5

    move-object/from16 v0, v16

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$902(Lcom/sec/android/gallery3d/util/PreDisplayScreen;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$600(Lcom/sec/android/gallery3d/util/PreDisplayScreen;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$900(Lcom/sec/android/gallery3d/util/PreDisplayScreen;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    invoke-static {v8}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$900(Lcom/sec/android/gallery3d/util/PreDisplayScreen;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$602(Lcom/sec/android/gallery3d/util/PreDisplayScreen;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    :catch_0
    move-exception v18

    :try_start_2
    const-string/jumbo v6, "PreDisplayScreen"

    invoke-virtual/range {v18 .. v18}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static/range {v16 .. v16}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    invoke-static/range {v19 .. v19}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto/16 :goto_4

    :catchall_0
    move-exception v6

    invoke-static/range {v16 .. v16}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    invoke-static/range {v19 .. v19}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v6
.end method

.method private getVideoData()V
    .locals 12

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    invoke-static {v4}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$300(Lcom/sec/android/gallery3d/util/PreDisplayScreen;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v7, 0x0

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSCloudOnly:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    invoke-static {v4}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$200(Lcom/sec/android/gallery3d/util/PreDisplayScreen;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "com.samsung.cmh"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x4

    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v4, "date_modified"

    aput-object v4, v2, v6

    const-string/jumbo v4, "_data"

    aput-object v4, v2, v9

    const-string/jumbo v4, "video_view_mode"

    aput-object v4, v2, v10

    const-string/jumbo v4, "cloud_cached_path"

    aput-object v4, v2, v11

    :goto_0
    const/4 v3, 0x0

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnionCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    invoke-static {v4}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$200(Lcom/sec/android/gallery3d/util/PreDisplayScreen;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "com.samsung.cmh"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->FILES_TABLE_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    invoke-static {v5}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$200(Lcom/sec/android/gallery3d/util/PreDisplayScreen;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    const-string/jumbo v6, "PreDisplayScreen"

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    const/4 v5, 0x0

    invoke-interface {v7, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v4, v10, v11}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$502(Lcom/sec/android/gallery3d/util/PreDisplayScreen;J)J

    iget-object v4, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    const/4 v5, 0x1

    invoke-interface {v7, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$602(Lcom/sec/android/gallery3d/util/PreDisplayScreen;Ljava/lang/String;)Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    const/4 v5, 0x2

    invoke-interface {v7, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v4, v5}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$1002(Lcom/sec/android/gallery3d/util/PreDisplayScreen;I)I

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSCloudOnly:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    invoke-static {v4}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$200(Lcom/sec/android/gallery3d/util/PreDisplayScreen;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "com.samsung.cmh"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    const/4 v5, 0x3

    invoke-interface {v7, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$902(Lcom/sec/android/gallery3d/util/PreDisplayScreen;Ljava/lang/String;)Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    invoke-static {v4}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$600(Lcom/sec/android/gallery3d/util/PreDisplayScreen;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    invoke-static {v4}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$900(Lcom/sec/android/gallery3d/util/PreDisplayScreen;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    iget-object v5, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    invoke-static {v5}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$900(Lcom/sec/android/gallery3d/util/PreDisplayScreen;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$602(Lcom/sec/android/gallery3d/util/PreDisplayScreen;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_2
    return-void

    :cond_1
    new-array v2, v11, [Ljava/lang/String;

    const-string/jumbo v4, "date_modified"

    aput-object v4, v2, v6

    const-string/jumbo v4, "_data"

    aput-object v4, v2, v9

    const-string/jumbo v4, "video_view_mode"

    aput-object v4, v2, v10

    goto/16 :goto_0

    :cond_2
    iget-object v4, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    invoke-static {v4}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$200(Lcom/sec/android/gallery3d/util/PreDisplayScreen;)Landroid/net/Uri;

    move-result-object v1

    goto/16 :goto_1

    :catch_0
    move-exception v8

    :try_start_1
    const-string/jumbo v4, "PreDisplayScreen"

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_2

    :catchall_0
    move-exception v4

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v4
.end method

.method private isFromEmailUri(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "content://com.samsung.android.email.attachmentprovider/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private prepareScreenNailFromLocal()V
    .locals 21

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$300(Lcom/sec/android/gallery3d/util/PreDisplayScreen;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    check-cast v10, Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v10}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$300(Lcom/sec/android/gallery3d/util/PreDisplayScreen;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    sget-object v6, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnionCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v6}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$200(Lcom/sec/android/gallery3d/util/PreDisplayScreen;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "com.samsung.cmh"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$100(Lcom/sec/android/gallery3d/util/PreDisplayScreen;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v14

    :goto_0
    if-nez v14, :cond_1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$400(Lcom/sec/android/gallery3d/util/PreDisplayScreen;Z)V

    :goto_1
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$200(Lcom/sec/android/gallery3d/util/PreDisplayScreen;)Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v14

    goto :goto_0

    :cond_1
    invoke-interface {v10}, Lcom/sec/android/gallery3d/app/GalleryApp;->getImageCacheService()Lcom/sec/android/gallery3d/data/ImageCacheServiceInterface;

    move-result-object v4

    const/4 v6, 0x1

    invoke-static {v6}, Lcom/sec/android/gallery3d/data/MediaItem;->getBytesBufferPool(I)Lcom/sec/android/gallery3d/data/BytesBufferPool;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/BytesBufferPool;->get()Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;

    move-result-object v9

    const/4 v13, 0x0

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->fromCamera()Z

    move-result v6

    if-eqz v6, :cond_9

    sget-object v6, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnionCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v6}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v6

    if-eqz v6, :cond_8

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$200(Lcom/sec/android/gallery3d/util/PreDisplayScreen;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "com.samsung.cmh"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    sget-object v11, Lcom/sec/android/gallery3d/data/LibraryDataManager$SourceType;->UNION_SOURCE_ONLY:Lcom/sec/android/gallery3d/data/LibraryDataManager$SourceType;

    :goto_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$200(Lcom/sec/android/gallery3d/util/PreDisplayScreen;)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v12, v6, v7, v11}, Lcom/sec/android/gallery3d/data/DataManager;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;Lcom/sec/android/gallery3d/data/LibraryDataManager$SourceType;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v5

    :goto_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$500(Lcom/sec/android/gallery3d/util/PreDisplayScreen;)J

    move-result-wide v6

    const-wide/16 v18, 0x0

    cmp-long v6, v6, v18

    if-lez v6, :cond_2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$500(Lcom/sec/android/gallery3d/util/PreDisplayScreen;)J

    move-result-wide v6

    const/4 v8, 0x1

    invoke-interface/range {v4 .. v9}, Lcom/sec/android/gallery3d/data/ImageCacheServiceInterface;->getImageData(Lcom/sec/android/gallery3d/data/Path;JILcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;)Z

    move-result v13

    :cond_2
    if-nez v13, :cond_6

    const-string/jumbo v6, "image"

    invoke-virtual {v14, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$600(Lcom/sec/android/gallery3d/util/PreDisplayScreen;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$700(Lcom/sec/android/gallery3d/util/PreDisplayScreen;)I

    move-result v6

    if-ltz v6, :cond_3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$500(Lcom/sec/android/gallery3d/util/PreDisplayScreen;)J

    move-result-wide v6

    const-wide/16 v18, 0x0

    cmp-long v6, v6, v18

    if-gtz v6, :cond_a

    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->getImageData()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v15

    if-eqz v15, :cond_4

    move-object v5, v15

    :cond_4
    :goto_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$500(Lcom/sec/android/gallery3d/util/PreDisplayScreen;)J

    move-result-wide v6

    const-wide/16 v18, 0x0

    cmp-long v6, v6, v18

    if-lez v6, :cond_5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$500(Lcom/sec/android/gallery3d/util/PreDisplayScreen;)J

    move-result-wide v6

    const/4 v8, 0x1

    invoke-interface/range {v4 .. v9}, Lcom/sec/android/gallery3d/data/ImageCacheServiceInterface;->getImageData(Lcom/sec/android/gallery3d/data/Path;JILcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;)Z

    move-result v13

    :cond_5
    if-nez v13, :cond_6

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->createBitmap(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    if-eqz v13, :cond_7

    new-instance v16, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v16

    iput-object v6, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    iget-object v7, v9, Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;->data:[B

    iget v8, v9, Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;->offset:I

    iget v0, v9, Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;->length:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v16

    move/from16 v2, v19

    invoke-static {v7, v8, v0, v1, v2}, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$802(Lcom/sec/android/gallery3d/util/PreDisplayScreen;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_7
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$800(Lcom/sec/android/gallery3d/util/PreDisplayScreen;)Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_d

    const/4 v6, 0x1

    :goto_5
    invoke-static {v7, v6}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$400(Lcom/sec/android/gallery3d/util/PreDisplayScreen;Z)V

    const/4 v6, 0x1

    invoke-static {v6}, Lcom/sec/android/gallery3d/data/MediaItem;->getBytesBufferPool(I)Lcom/sec/android/gallery3d/data/BytesBufferPool;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/sec/android/gallery3d/data/BytesBufferPool;->recycle(Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;)V

    goto/16 :goto_1

    :cond_8
    :try_start_1
    sget-object v11, Lcom/sec/android/gallery3d/data/LibraryDataManager$SourceType;->LOCAL_SOURCE_ONLY:Lcom/sec/android/gallery3d/data/LibraryDataManager$SourceType;

    goto/16 :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$200(Lcom/sec/android/gallery3d/util/PreDisplayScreen;)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v12, v6, v7}, Lcom/sec/android/gallery3d/data/DataManager;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v5

    goto/16 :goto_3

    :cond_a
    const-string/jumbo v6, "video"

    invoke-virtual {v14, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->getVideoData()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception v6

    move-object v7, v6

    if-eqz v13, :cond_b

    new-instance v16, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v16

    iput-object v6, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    iget-object v8, v9, Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;->data:[B

    iget v0, v9, Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;->offset:I

    move/from16 v18, v0

    iget v0, v9, Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;->length:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v16

    move/from16 v3, v20

    invoke-static {v8, v0, v1, v2, v3}, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$802(Lcom/sec/android/gallery3d/util/PreDisplayScreen;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_b
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$800(Lcom/sec/android/gallery3d/util/PreDisplayScreen;)Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_e

    const/4 v6, 0x1

    :goto_6
    invoke-static {v8, v6}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$400(Lcom/sec/android/gallery3d/util/PreDisplayScreen;Z)V

    const/4 v6, 0x1

    invoke-static {v6}, Lcom/sec/android/gallery3d/data/MediaItem;->getBytesBufferPool(I)Lcom/sec/android/gallery3d/data/BytesBufferPool;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/sec/android/gallery3d/data/BytesBufferPool;->recycle(Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;)V

    throw v7

    :cond_c
    :try_start_2
    const-string/jumbo v6, "PreDisplayScreen"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " mimeType : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " orientation : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    invoke-static {v8}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$700(Lcom/sec/android/gallery3d/util/PreDisplayScreen;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_4

    :cond_d
    const/4 v6, 0x0

    goto/16 :goto_5

    :cond_e
    const/4 v6, 0x0

    goto :goto_6
.end method

.method private prepareScreenNailFromUri(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)V
    .locals 11

    const/4 v5, 0x1

    const/4 v10, -0x1

    const/4 v6, 0x0

    const-string/jumbo v7, "Gallery_Performance"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Gallery prepareScreenNailJob run() mUri["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    invoke-static {v9}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$200(Lcom/sec/android/gallery3d/util/PreDisplayScreen;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v7, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {v5}, Lcom/sec/android/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v4

    :try_start_0
    iget-object v7, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    invoke-static {v7}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$100(Lcom/sec/android/gallery3d/util/PreDisplayScreen;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v7, "video"

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    invoke-static {v7}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$200(Lcom/sec/android/gallery3d/util/PreDisplayScreen;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isEnhancedMessageUri(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    iget-object v8, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    invoke-static {v8}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$300(Lcom/sec/android/gallery3d/util/PreDisplayScreen;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    invoke-static {v9}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$200(Lcom/sec/android/gallery3d/util/PreDisplayScreen;)Landroid/net/Uri;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/android/gallery3d/common/BitmapUtils;->getVideoThumbnail(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$802(Lcom/sec/android/gallery3d/util/PreDisplayScreen;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v7, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    iget-object v8, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    invoke-static {v8}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$800(Lcom/sec/android/gallery3d/util/PreDisplayScreen;)Landroid/graphics/Bitmap;

    move-result-object v8

    if-eqz v8, :cond_4

    :goto_1
    invoke-static {v7, v5}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$400(Lcom/sec/android/gallery3d/util/PreDisplayScreen;Z)V

    :goto_2
    return-void

    :cond_0
    :try_start_1
    iget-object v7, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    invoke-static {v7}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$700(Lcom/sec/android/gallery3d/util/PreDisplayScreen;)I

    move-result v7

    if-ne v7, v10, :cond_2

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isJpeg(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    invoke-static {v7}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$200(Lcom/sec/android/gallery3d/util/PreDisplayScreen;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, ".jpeg"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    invoke-static {v7}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$200(Lcom/sec/android/gallery3d/util/PreDisplayScreen;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, ".jpg"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    if-eqz v7, :cond_2

    :cond_1
    const/4 v1, 0x0

    :try_start_2
    iget-object v7, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    invoke-static {v7}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$300(Lcom/sec/android/gallery3d/util/PreDisplayScreen;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    invoke-static {v8}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$200(Lcom/sec/android/gallery3d/util/PreDisplayScreen;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    iget-object v7, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    invoke-static {v1}, Lcom/sec/android/gallery3d/data/Exif;->getOrientation(Ljava/io/InputStream;)I

    move-result v8

    invoke-static {v7, v8}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$702(Lcom/sec/android/gallery3d/util/PreDisplayScreen;I)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-static {v1}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    iget-object v7, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    invoke-static {v7}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$700(Lcom/sec/android/gallery3d/util/PreDisplayScreen;)I

    move-result v7

    if-ne v7, v10, :cond_2

    iget-object v7, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$702(Lcom/sec/android/gallery3d/util/PreDisplayScreen;I)I

    :cond_2
    :goto_3
    iget-object v7, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    iget-object v8, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    invoke-static {v8}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$300(Lcom/sec/android/gallery3d/util/PreDisplayScreen;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    invoke-static {v9}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$200(Lcom/sec/android/gallery3d/util/PreDisplayScreen;)Landroid/net/Uri;

    move-result-object v9

    invoke-static {p1, v8, v9, v3, v4}, Lcom/sec/android/gallery3d/data/DecodeUtils;->requestDecode(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/gallery3d/data/DecodeUtils;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$802(Lcom/sec/android/gallery3d/util/PreDisplayScreen;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    const-string/jumbo v7, "PreDisplayScreen"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v7, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    iget-object v8, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    invoke-static {v8}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$800(Lcom/sec/android/gallery3d/util/PreDisplayScreen;)Landroid/graphics/Bitmap;

    move-result-object v8

    if-eqz v8, :cond_5

    :goto_4
    invoke-static {v7, v5}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$400(Lcom/sec/android/gallery3d/util/PreDisplayScreen;Z)V

    goto/16 :goto_2

    :catch_1
    move-exception v0

    :try_start_5
    const-string/jumbo v7, "PreDisplayScreen"

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-static {v1}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    iget-object v7, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    invoke-static {v7}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$700(Lcom/sec/android/gallery3d/util/PreDisplayScreen;)I

    move-result v7

    if-ne v7, v10, :cond_2

    iget-object v7, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$702(Lcom/sec/android/gallery3d/util/PreDisplayScreen;I)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v7

    iget-object v8, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    iget-object v9, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    invoke-static {v9}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$800(Lcom/sec/android/gallery3d/util/PreDisplayScreen;)Landroid/graphics/Bitmap;

    move-result-object v9

    if-eqz v9, :cond_6

    :goto_5
    invoke-static {v8, v5}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$400(Lcom/sec/android/gallery3d/util/PreDisplayScreen;Z)V

    throw v7

    :catchall_1
    move-exception v7

    :try_start_7
    invoke-static {v1}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    iget-object v8, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    invoke-static {v8}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$700(Lcom/sec/android/gallery3d/util/PreDisplayScreen;)I

    move-result v8

    if-ne v8, v10, :cond_3

    iget-object v8, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$702(Lcom/sec/android/gallery3d/util/PreDisplayScreen;I)I

    :cond_3
    throw v7
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_4
    move v5, v6

    goto/16 :goto_1

    :cond_5
    move v5, v6

    goto :goto_4

    :cond_6
    move v5, v6

    goto :goto_5
.end method


# virtual methods
.method public bridge synthetic run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 6

    iget-object v4, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    invoke-static {v4}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$100(Lcom/sec/android/gallery3d/util/PreDisplayScreen;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iget-object v4, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    invoke-static {v4}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$200(Lcom/sec/android/gallery3d/util/PreDisplayScreen;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isMmsUri(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isEnhancedMessageUri(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->this$0:Lcom/sec/android/gallery3d/util/PreDisplayScreen;

    invoke-static {v4}, Lcom/sec/android/gallery3d/util/PreDisplayScreen;->access$200(Lcom/sec/android/gallery3d/util/PreDisplayScreen;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isFromGooglePhoto(Landroid/net/Uri;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-direct {p0, v3}, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->isFromEmailUri(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v0, :cond_2

    const-string/jumbo v4, "thread_id"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    const/4 v2, 0x1

    :goto_0
    if-eqz v0, :cond_1

    const-string/jumbo v4, "output"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    if-eqz v1, :cond_1

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "com.android.contacts"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    :cond_1
    if-eqz v2, :cond_3

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->prepareScreenNailFromUri(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)V

    :goto_1
    const/4 v4, 0x0

    return-object v4

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/gallery3d/util/PreDisplayScreen$PrepareScreenNailJob;->prepareScreenNailFromLocal()V

    goto :goto_1
.end method
