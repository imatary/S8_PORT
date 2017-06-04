.class Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromFileCacheTask;
.super Ljava/lang/Object;
.source "SlinkImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadFromFileCacheTask"
.end annotation


# static fields
.field private static final LOCAL_MEDIA_STORE_THUMB_MAX:I = 0x200


# instance fields
.field private final imageContainer:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;

.field final synthetic this$0:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromFileCacheTask;->this$0:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromFileCacheTask;->imageContainer:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;

    return-void
.end method

.method private canLoadLocalCopy()Z
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromFileCacheTask;->imageContainer:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;

    # getter for: Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;->mRequest:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;
    invoke-static {v4}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;->access$2(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;)Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->getMediaType()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    return v2

    :sswitch_0
    invoke-virtual {v1}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->getMaxWidth()I

    move-result v4

    invoke-virtual {v1}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->getMaxHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v4, 0x200

    if-ge v0, v4, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->getLocalSourceMediaId()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-gtz v4, :cond_2

    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->getLocalData()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_2
    move v2, v3

    goto :goto_0

    :sswitch_1
    invoke-virtual {v1}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->getLocalSourceMediaId()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    move v2, v3

    goto :goto_0

    :sswitch_2
    invoke-virtual {v1}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->getLocalSourceAlbumId()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    move v2, v3

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_1
        0xc -> :sswitch_2
    .end sparse-switch
.end method

.method private getFileDescriptorForPath(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    invoke-static {v0, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    return-object v1
.end method

.method private loadLocalBitmap()Landroid/graphics/Bitmap;
    .locals 6

    iget-object v3, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromFileCacheTask;->imageContainer:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;

    # getter for: Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;->mRequest:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;
    invoke-static {v3}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;->access$2(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;)Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromFileCacheTask;->imageContainer:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;

    # getter for: Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;->bitmapFactoryOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v3}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;->access$1(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v3

    iget-object v3, v3, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromFileCacheTask;->imageContainer:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;

    # getter for: Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;->bitmapFactoryOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v3}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;->access$1(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v4

    # getter for: Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->sDecodeBuffer:Ljava/lang/ThreadLocal;
    invoke-static {}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->access$6()Ljava/lang/ThreadLocal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    iput-object v3, v4, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    const/4 v0, 0x1

    :cond_0
    :try_start_0
    invoke-virtual {v1}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->getMediaType()I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromFileCacheTask;->imageContainer:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;

    # getter for: Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;->bitmapFactoryOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v3}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;->access$1(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v3

    const/4 v4, 0x0

    iput-object v4, v3, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    :cond_1
    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromFileCacheTask;->this$0:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->getMaxWidth()I

    move-result v4

    invoke-virtual {v1}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->getMaxHeight()I

    move-result v5

    # invokes: Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->createFineScaledBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    invoke-static {v3, v2, v4, v5}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->access$7(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_2
    return-object v2

    :sswitch_0
    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromFileCacheTask;->imageContainer:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;

    # getter for: Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;->bitmapFactoryOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v3}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;->access$1(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromFileCacheTask;->loadLocalBitmapImage(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    :sswitch_1
    iget-object v3, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromFileCacheTask;->imageContainer:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;

    # getter for: Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;->bitmapFactoryOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v3}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;->access$1(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromFileCacheTask;->loadLocalBitmapVideo(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    :sswitch_2
    iget-object v3, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromFileCacheTask;->imageContainer:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;

    # getter for: Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;->bitmapFactoryOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v3}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;->access$1(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromFileCacheTask;->loadLocalBitmapAlbumArt(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_1
        0xc -> :sswitch_2
    .end sparse-switch
.end method

.method private loadLocalBitmapAlbumArt(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 16

    const/4 v12, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->getLocalThumbData()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromFileCacheTask;->this$0:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;

    # getter for: Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->access$1(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "album_art"

    aput-object v6, v4, v5

    const-string/jumbo v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->getLocalSourceAlbumId()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    const/4 v11, 0x0

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v10, v1}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromFileCacheTask;->openAlbumArtInputStream(Landroid/content/ContentResolver;Ljava/lang/String;Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;)Landroid/os/ParcelFileDescriptor;

    move-result-object v11

    const/4 v3, 0x1

    move-object/from16 v0, p2

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {v11}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-static {v3, v4, v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    move-object/from16 v0, p2

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromFileCacheTask;->this$0:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move-object/from16 v0, p2

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move-object/from16 v0, p1

    # invokes: Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->calcScaleFactor(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;II)I
    invoke-static {v3, v0, v4, v5}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->access$2(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;II)I

    move-result v3

    move-object/from16 v0, p2

    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v11}, Landroid/os/ParcelFileDescriptor;->close()V

    const/4 v11, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v10, v1}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromFileCacheTask;->openAlbumArtInputStream(Landroid/content/ContentResolver;Ljava/lang/String;Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;)Landroid/os/ParcelFileDescriptor;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-static {v3, v4, v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v12

    if-eqz v11, :cond_2

    :try_start_1
    invoke-virtual {v11}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    :cond_2
    :goto_0
    return-object v12

    :catch_0
    move-exception v9

    :try_start_2
    sget-boolean v3, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore;->ENABLE_LOGGING:Z

    if-eqz v3, :cond_3

    # getter for: Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->access$0()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Error loading local album art:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    if-eqz v11, :cond_2

    :try_start_3
    invoke-virtual {v11}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v3

    goto :goto_0

    :catchall_0
    move-exception v3

    if-eqz v11, :cond_4

    :try_start_4
    invoke-virtual {v11}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_4
    :goto_1
    throw v3

    :catch_2
    move-exception v4

    goto :goto_1

    :catch_3
    move-exception v3

    goto :goto_0
.end method

.method private loadLocalBitmapImage(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 13

    const/4 v12, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->getMaxWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->getMaxHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v10

    const/4 v11, 0x0

    const/16 v9, 0x200

    invoke-virtual {p1}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->getLocalThumbWidth()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->getLocalThumbHeight()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->getLocalThumbWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->getLocalThumbHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v9

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->getLocalThumbData()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    if-ge v10, v9, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->getLocalThumbData()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromFileCacheTask;->getFileDescriptorForPath(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, p2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v12

    :goto_0
    if-eqz v11, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_c

    iget-object v1, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromFileCacheTask;->this$0:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;

    # invokes: Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->closeInputStreamQuietly(Ljava/io/Closeable;)V
    invoke-static {v1, v11}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->access$8(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;Ljava/io/Closeable;)V

    :goto_1
    const/4 v11, 0x0

    :cond_1
    :goto_2
    return-object v12

    :cond_2
    :try_start_1
    invoke-virtual {p1}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->getLocalSourceMediaId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_3

    if-ge v10, v9, :cond_3

    iget-object v1, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromFileCacheTask;->this$0:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;

    # getter for: Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->access$1(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->getLocalSourceMediaId()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    const/4 v6, 0x1

    move-object v7, p2

    invoke-static/range {v1 .. v7}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JJILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v12

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->getMediaWidth()I

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->getMediaHeight()I

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    const/4 v1, 0x1

    iput-boolean v1, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {p1}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->getLocalData()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromFileCacheTask;->getFileDescriptorForPath(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, p2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/os/ParcelFileDescriptor;->close()V

    const/4 v1, 0x0

    iput-boolean v1, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    :goto_3
    iget-object v1, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromFileCacheTask;->this$0:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;

    iget v2, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    # invokes: Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->calcScaleFactor(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;II)I
    invoke-static {v1, p1, v2, v3}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->access$2(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;II)I

    move-result v1

    iput v1, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {p1}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->getLocalData()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromFileCacheTask;->getFileDescriptorForPath(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, p2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v12

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->getMediaWidth()I

    move-result v1

    iput v1, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {p1}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->getMediaHeight()I

    move-result v1

    iput v1, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_2
    sget-boolean v1, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore;->ENABLE_LOGGING:Z

    if-eqz v1, :cond_6

    # getter for: Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->access$0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "FileNotFoundException for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_6
    if-eqz v11, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_7

    iget-object v1, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromFileCacheTask;->this$0:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;

    # invokes: Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->closeInputStreamQuietly(Ljava/io/Closeable;)V
    invoke-static {v1, v11}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->access$8(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;Ljava/io/Closeable;)V

    :goto_4
    const/4 v11, 0x0

    goto/16 :goto_2

    :cond_7
    :try_start_3
    invoke-virtual {v11}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v8

    :try_start_4
    sget-boolean v1, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore;->ENABLE_LOGGING:Z

    if-eqz v1, :cond_8

    # getter for: Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->access$0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "IOException for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_8
    if-eqz v11, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_9

    iget-object v1, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromFileCacheTask;->this$0:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;

    # invokes: Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->closeInputStreamQuietly(Ljava/io/Closeable;)V
    invoke-static {v1, v11}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->access$8(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;Ljava/io/Closeable;)V

    :goto_5
    const/4 v11, 0x0

    goto/16 :goto_2

    :cond_9
    :try_start_5
    invoke-virtual {v11}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_5

    :catchall_0
    move-exception v1

    if-eqz v11, :cond_a

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_b

    iget-object v2, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromFileCacheTask;->this$0:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;

    # invokes: Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->closeInputStreamQuietly(Ljava/io/Closeable;)V
    invoke-static {v2, v11}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->access$8(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;Ljava/io/Closeable;)V

    :goto_6
    const/4 v11, 0x0

    :cond_a
    throw v1

    :cond_b
    :try_start_6
    invoke-virtual {v11}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_6

    :catch_4
    move-exception v2

    goto :goto_6

    :cond_c
    :try_start_7
    invoke-virtual {v11}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto/16 :goto_1

    :catch_5
    move-exception v1

    goto/16 :goto_1
.end method

.method private loadLocalBitmapVideo(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 10

    const/16 v4, 0x10

    const/4 v9, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->getLocalThumbData()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->getLocalThumbData()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromFileCacheTask;->getFileDescriptorForPath(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, p2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    if-eqz v8, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v4, :cond_5

    iget-object v1, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromFileCacheTask;->this$0:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;

    # invokes: Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->closeInputStreamQuietly(Ljava/io/Closeable;)V
    invoke-static {v1, v8}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->access$8(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;Ljava/io/Closeable;)V

    :cond_0
    :goto_0
    return-object v9

    :catch_0
    move-exception v0

    :try_start_1
    sget-boolean v1, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore;->ENABLE_LOGGING:Z

    if-eqz v1, :cond_1

    # getter for: Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->access$0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "IOException for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    if-eqz v8, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v4, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromFileCacheTask;->this$0:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;

    # invokes: Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->closeInputStreamQuietly(Ljava/io/Closeable;)V
    invoke-static {v1, v8}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->access$8(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;Ljava/io/Closeable;)V

    :goto_1
    const/4 v8, 0x0

    goto :goto_0

    :cond_2
    :try_start_2
    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1

    :catchall_0
    move-exception v1

    if-eqz v8, :cond_3

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v4, :cond_4

    iget-object v2, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromFileCacheTask;->this$0:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;

    # invokes: Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->closeInputStreamQuietly(Ljava/io/Closeable;)V
    invoke-static {v2, v8}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->access$8(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;Ljava/io/Closeable;)V

    :goto_2
    const/4 v8, 0x0

    :cond_3
    throw v1

    :cond_4
    :try_start_3
    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception v2

    goto :goto_2

    :cond_5
    :try_start_4
    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromFileCacheTask;->this$0:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;

    # getter for: Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->access$1(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->getLocalSourceMediaId()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    const/4 v6, 0x1

    move-object v7, p2

    invoke-static/range {v1 .. v7}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JJILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v9

    goto :goto_0
.end method

.method private loadLocalCopy()Z
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromFileCacheTask;->canLoadLocalCopy()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromFileCacheTask;->loadLocalBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromFileCacheTask;->this$0:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;

    iget-object v3, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromFileCacheTask;->imageContainer:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;

    # invokes: Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->dispatchBitmapResult(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;Landroid/graphics/Bitmap;)V
    invoke-static {v2, v3, v0}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->access$9(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;Landroid/graphics/Bitmap;)V

    :cond_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private openAlbumArtInputStream(Landroid/content/ContentResolver;Ljava/lang/String;Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;)Landroid/os/ParcelFileDescriptor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromFileCacheTask;->getFileDescriptorForPath(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromFileCacheTask;->this$0:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;

    # getter for: Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->access$1(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;->isStoragePermissionAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "content://media/external/audio/albumart"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p3}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->getLocalSourceAlbumId()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v2, "r"

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    # getter for: Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->access$0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "EXTERNAL_STORAGE Permission is not available"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private startRemoteLoad(Landroid/net/Uri;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromFileCacheTask;->this$0:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;

    # getter for: Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->mRemoteExecutor:Ljava/util/concurrent/ExecutorService;
    invoke-static {v0}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->access$5(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$FIFOPriofityRunnable;

    new-instance v2, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromRemoteTask;

    iget-object v3, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromFileCacheTask;->this$0:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;

    iget-object v4, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromFileCacheTask;->imageContainer:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;

    invoke-direct {v2, v3, v4, p1}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromRemoteTask;-><init>(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;Landroid/net/Uri;)V

    iget-object v3, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromFileCacheTask;->imageContainer:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;->getRequest()Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->getPriority()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$FIFOPriofityRunnable;-><init>(Ljava/lang/Runnable;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromFileCacheTask;->imageContainer:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;

    # invokes: Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;->isCanceled()Z
    invoke-static {v2}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;->access$0(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v2, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore;->ENABLE_LOGGING:Z

    if-eqz v2, :cond_2

    # getter for: Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->access$0()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "loadFromFileCache start for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromFileCacheTask;->imageContainer:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;->getRequest()Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromFileCacheTask;->loadLocalCopy()Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromFileCacheTask;->imageContainer:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;->getRequest()Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->getRowId()J

    move-result-wide v20

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->getMediaType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Unsupported mediaType "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->getMediaType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " in image request "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_1
    invoke-static/range {v20 .. v21}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Images$Thumbnails;->getEntryUri(J)Landroid/net/Uri;

    move-result-object v3

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromFileCacheTask;->this$0:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;

    # getter for: Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->access$1(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromFileCacheTask;->imageContainer:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;

    # invokes: Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;->isCanceled()Z
    invoke-static {v2}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;->access$0(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v14, :cond_0

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    const/4 v14, 0x0

    goto/16 :goto_0

    :pswitch_2
    invoke-static/range {v20 .. v21}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Video$Thumbnails;->getEntryUri(J)Landroid/net/Uri;

    move-result-object v3

    goto :goto_1

    :pswitch_3
    invoke-static/range {v20 .. v21}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Audio$AlbumArt;->getEntryUri(J)Landroid/net/Uri;

    move-result-object v3

    goto :goto_1

    :pswitch_4
    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->getAlbumId()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Audio$AlbumArt;->getEntryUri(J)Landroid/net/Uri;

    move-result-object v3

    goto :goto_1

    :cond_3
    if-nez v14, :cond_4

    :try_start_1
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromFileCacheTask;->startRemoteLoad(Landroid/net/Uri;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v14, :cond_0

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_4
    :try_start_2
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromFileCacheTask;->startRemoteLoad(Landroid/net/Uri;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v14, :cond_0

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_5
    :try_start_3
    const-string/jumbo v2, "thumb_width"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const-string/jumbo v2, "thumb_height"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const-string/jumbo v2, "width"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const-string/jumbo v2, "height"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const-string/jumbo v2, "full_width"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    const-string/jumbo v2, "full_height"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v16

    if-eqz v14, :cond_6

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    const/4 v14, 0x0

    :cond_6
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v4, "cache_only"

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v4, "group_id"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromFileCacheTask;->imageContainer:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;

    # getter for: Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;->bitmapFactoryOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v2}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;->access$1(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromFileCacheTask;->this$0:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;

    move-object/from16 v0, v19

    # invokes: Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->calcScaleFactor(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;II)I
    invoke-static {v4, v0, v10, v9}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->access$2(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;II)I

    move-result v4

    iput v4, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromFileCacheTask;->this$0:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromFileCacheTask;->imageContainer:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;

    move-object/from16 v0, v18

    # invokes: Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->loadBitmap(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    invoke-static {v2, v4, v0}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->access$3(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromFileCacheTask;->imageContainer:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;

    # invokes: Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;->isCanceled()Z
    invoke-static {v2}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;->access$0(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v8, :cond_0

    move/from16 v0, v17

    if-ge v13, v0, :cond_0

    move/from16 v0, v16

    if-ge v12, v0, :cond_0

    new-instance v11, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkBitmapInfo;

    invoke-direct {v11, v8, v13, v12}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkBitmapInfo;-><init>(Landroid/graphics/Bitmap;II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromFileCacheTask;->this$0:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;

    move-object/from16 v0, v19

    # invokes: Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->isBitmapTooSmall(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkBitmapInfo;Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;)Z
    invoke-static {v2, v11, v0}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->access$4(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkBitmapInfo;Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromFileCacheTask;->startRemoteLoad(Landroid/net/Uri;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    if-eqz v14, :cond_7

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    const/4 v14, 0x0

    :cond_7
    throw v2

    :catch_0
    move-exception v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromFileCacheTask;->imageContainer:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;

    # invokes: Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;->isCanceled()Z
    invoke-static {v2}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;->access$0(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromFileCacheTask;->startRemoteLoad(Landroid/net/Uri;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method
