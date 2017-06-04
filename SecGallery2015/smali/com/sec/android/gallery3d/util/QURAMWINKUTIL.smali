.class public Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;
.super Ljava/lang/Object;
.source "QURAMWINKUTIL.java"


# static fields
.field static final MAXSUPPORTAGIFSIZE:I = 0x3200000

.field private static final TAG:Ljava/lang/String; = "QURAMWINKUTIL"

.field static mURLConnection:Ljava/net/URLConnection;


# instance fields
.field private mAllshare:Z

.field private mBeforBitmap:Landroid/graphics/Bitmap;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mDuration:J

.field private mLoadGIF:Lcom/sec/android/gallery3d/util/QuramWinkUtileAGIFThread;

.field private mLoadedItemDateModified:Ljava/lang/Long;

.field private mLoadedItemPath:Ljava/lang/String;

.field private mMovie:Landroid/graphics/Movie;

.field private mMovieStart:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->mURLConnection:Ljava/net/URLConnection;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->mBeforBitmap:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->mCanvas:Landroid/graphics/Canvas;

    iput-object v1, p0, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->mMovie:Landroid/graphics/Movie;

    iput-wide v2, p0, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->mMovieStart:J

    iput-wide v2, p0, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->mDuration:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->mAllshare:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->mLoadedItemPath:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->mLoadedItemDateModified:Ljava/lang/Long;

    iput-object v1, p0, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->mLoadGIF:Lcom/sec/android/gallery3d/util/QuramWinkUtileAGIFThread;

    return-void
.end method

.method private byteToStream([B)Ljava/io/InputStream;
    .locals 3

    const/high16 v0, 0x3200000

    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    array-length v1, p1

    if-le v1, v0, :cond_2

    :goto_1
    new-instance v1, Ljava/io/ByteArrayInputStream;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    goto :goto_0

    :cond_2
    array-length v0, p1

    goto :goto_1
.end method

.method static create()Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;
    .locals 1

    new-instance v0, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;-><init>()V

    return-object v0
.end method

.method public static isAGIF(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 9

    if-nez p1, :cond_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    monitor-enter p1

    :try_start_0
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getAgifMode()Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    monitor-exit p1

    move v3, v7

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v1

    if-eqz v5, :cond_2

    const-string/jumbo v7, "gif"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_2

    if-nez v1, :cond_3

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    :try_start_2
    invoke-static {v2}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    :goto_1
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/graphics/Movie;->duration()I

    move-result v7

    if-lez v7, :cond_2

    const-string/jumbo v7, "QURAMWINKUTIL"

    const-string/jumbo v8, "isAGIF Decode Agif  Success"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    :cond_2
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v7

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    :catch_0
    move-exception v0

    const/4 v4, 0x0

    :try_start_3
    const-string/jumbo v7, "QURAMWINKUTIL"

    const-string/jumbo v8, "isAGIF Err"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {v2}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_1
    move-exception v7

    invoke-static {v2}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v7

    :cond_3
    invoke-static {v1}, Landroid/graphics/Movie;->decodeFile(Ljava/lang/String;)Landroid/graphics/Movie;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v4

    goto :goto_1
.end method

.method private loadGIF(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;Z)Z
    .locals 24

    const/16 v16, 0x0

    if-nez p2, :cond_0

    const/16 v20, 0x0

    :goto_0
    return v20

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->mLoadedItemPath:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/gallery3d/data/MediaItem;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->mLoadedItemDateModified:Ljava/lang/Long;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/gallery3d/data/MediaItem;->getDateModifiedInSec()J

    move-result-wide v22

    cmp-long v20, v20, v22

    if-nez v20, :cond_1

    invoke-static/range {p1 .. p2}, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->isAGIF(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v20

    goto :goto_0

    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/gallery3d/data/MediaItem;->isDrm()Z

    move-result v20

    if-eqz v20, :cond_6

    const-string/jumbo v20, "QURAMWINKUTIL"

    const-string/jumbo v21, "WINK AGIF Start Decode DRM"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v14

    new-instance v6, Landroid/drm/DrmManagerClient;

    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-direct {v6, v0}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    new-instance v20, Ljava/io/File;

    move-object/from16 v0, v20

    invoke-direct {v0, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->length()J

    move-result-wide v10

    const/16 v20, 0x7

    move/from16 v0, v20

    invoke-virtual {v6, v14, v0}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v17

    if-nez v17, :cond_5

    new-instance v5, Landroid/drm/DrmInfoRequest;

    sget v20, Lcom/sec/samsung/gallery/lib/factory/DrmInfoRequestWrapper;->TYPE_GET_DECRYPT_IMAGE:I

    const-string/jumbo v21, "application/vnd.oma.drm.content"

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v5, v0, v1}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    sget-object v20, Lcom/sec/samsung/gallery/lib/factory/DrmInfoRequestWrapper;->DRM_PATH:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v5, v0, v14}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v20, "LENGTH"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v6, v5}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v15

    if-nez v15, :cond_2

    const-string/jumbo v20, "QURAMWINKUTIL"

    const-string/jumbo v21, "DrmInfo resultInfo is null"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v20, 0x0

    goto/16 :goto_0

    :cond_2
    sget-object v20, Lcom/sec/samsung/gallery/lib/factory/DrmInfoRequestWrapper;->STATUS:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    sget-object v20, Lcom/sec/samsung/gallery/lib/factory/DrmInfoRequestWrapper;->SUCCESS:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    invoke-virtual {v15}, Landroid/drm/DrmInfo;->getData()[B

    move-result-object v4

    if-nez v4, :cond_3

    const-string/jumbo v20, "QURAMWINKUTIL"

    const-string/jumbo v21, "DRM decrypt Faild"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const-string/jumbo v20, "QURAMWINKUTIL"

    const-string/jumbo v21, "WINK AGIF Decode DRM complete"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    move/from16 v20, v16

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->byteToStream([B)Ljava/io/InputStream;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->setGIFtoMovie(Ljava/io/InputStream;)Z

    move-result v16

    const-string/jumbo v20, "QURAMWINKUTIL"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "array size = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    array-length v0, v4

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v20, "QURAMWINKUTIL"

    const-string/jumbo v21, "DRM decrypt Complete!!"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const-string/jumbo v20, "QURAMWINKUTIL"

    const-string/jumbo v21, "DRM decrypt Faild"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    const-string/jumbo v20, "QURAMWINKUTIL"

    const-string/jumbo v21, "QURAMWINK AGIF - RightsStatus is invalid"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v20, 0x0

    goto/16 :goto_0

    :cond_6
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->mMovie:Landroid/graphics/Movie;

    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->mMovieStart:J

    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->mDuration:J

    if-eqz p3, :cond_8

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->mAllshare:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->mLoadGIF:Lcom/sec/android/gallery3d/util/QuramWinkUtileAGIFThread;

    move-object/from16 v20, v0

    if-eqz v20, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->mLoadGIF:Lcom/sec/android/gallery3d/util/QuramWinkUtileAGIFThread;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/gallery3d/util/QuramWinkUtileAGIFThread;->setTerminate()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->mLoadGIF:Lcom/sec/android/gallery3d/util/QuramWinkUtileAGIFThread;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/gallery3d/util/QuramWinkUtileAGIFThread;->interrupt()V

    :cond_7
    :try_start_0
    new-instance v19, Ljava/net/URL;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v20

    sput-object v20, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->mURLConnection:Ljava/net/URLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    new-instance v20, Lcom/sec/android/gallery3d/util/QuramWinkUtileAGIFThread;

    invoke-direct/range {v20 .. v20}, Lcom/sec/android/gallery3d/util/QuramWinkUtileAGIFThread;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->mLoadGIF:Lcom/sec/android/gallery3d/util/QuramWinkUtileAGIFThread;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->mLoadGIF:Lcom/sec/android/gallery3d/util/QuramWinkUtileAGIFThread;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/gallery3d/util/QuramWinkUtileAGIFThread;->start()V

    const/16 v20, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v7

    const-string/jumbo v20, "QURAMWINKUTIL"

    const-string/jumbo v21, "openConnection fail!: "

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :cond_8
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->mAllshare:Z

    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->mMovieStart:J

    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->mDuration:J

    const/4 v12, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_a

    const/4 v9, 0x0

    :try_start_1
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v9

    invoke-static {v9}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v12

    invoke-static {v9}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    :goto_4
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->mMovie:Landroid/graphics/Movie;

    if-nez v12, :cond_b

    const-string/jumbo v20, "QURAMWINKUTIL"

    const-string/jumbo v21, "Decode AGIF Failed"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_5
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->mDuration:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-eqz v20, :cond_c

    const/16 v16, 0x1

    :goto_6
    if-eqz v16, :cond_d

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/gallery3d/data/MediaItem;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->mLoadedItemPath:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/gallery3d/data/MediaItem;->getDateModifiedInSec()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->mLoadedItemDateModified:Ljava/lang/Long;

    goto/16 :goto_2

    :catch_1
    move-exception v7

    const/4 v12, 0x0

    invoke-static {v9}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_4

    :catchall_0
    move-exception v20

    invoke-static {v9}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v20

    :cond_a
    invoke-static {v8}, Landroid/graphics/Movie;->decodeFile(Ljava/lang/String;)Landroid/graphics/Movie;

    move-result-object v12

    goto :goto_4

    :cond_b
    invoke-virtual {v12}, Landroid/graphics/Movie;->duration()I

    move-result v20

    if-lez v20, :cond_9

    const-string/jumbo v20, "QURAMWINKUTIL"

    const-string/jumbo v21, "Decode Agif  Success"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->mMovieStart:J

    invoke-virtual {v12}, Landroid/graphics/Movie;->duration()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->mDuration:J

    goto :goto_5

    :cond_c
    const/16 v16, 0x0

    goto :goto_6

    :cond_d
    const-string/jumbo v20, ""

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->mLoadedItemPath:Ljava/lang/String;

    const-wide/16 v20, 0x0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->mLoadedItemDateModified:Ljava/lang/Long;

    goto/16 :goto_2
.end method

.method private setGIFtoMovie(Ljava/io/InputStream;)Z
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v0, 0x1

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->mMovie:Landroid/graphics/Movie;

    iput-wide v4, p0, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->mMovieStart:J

    iput-wide v4, p0, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->mDuration:J

    if-nez p1, :cond_2

    const-string/jumbo v2, "QURAMWINKUTIL"

    const-string/jumbo v3, "AGIF stream is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    iget-wide v2, p0, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->mDuration:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    const/4 v0, 0x0

    :cond_1
    return v0

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->mMovieStart:J

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/io/InputStream;->mark(I)V

    invoke-static {p1}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->mMovie:Landroid/graphics/Movie;

    if-nez v1, :cond_3

    const-string/jumbo v2, "QURAMWINKUTIL"

    const-string/jumbo v3, "Decode AGIF Failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Landroid/graphics/Movie;->duration()I

    move-result v2

    if-lez v2, :cond_0

    const-string/jumbo v2, "QURAMWINKUTIL"

    const-string/jumbo v3, "Decode Agif  Success"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->mMovieStart:J

    invoke-virtual {v1}, Landroid/graphics/Movie;->duration()I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->mDuration:J

    goto :goto_0
.end method

.method static streamToBytesAllShare(Ljava/io/InputStream;I)[B
    .locals 11

    const/4 v10, 0x0

    new-array v0, p1, [B

    move v4, p1

    const/4 v7, 0x0

    :cond_0
    if-ge v7, v4, :cond_2

    sub-int v8, v4, v7

    const/16 v9, 0x2000

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v3, :cond_0

    const/4 v1, 0x0

    sub-int v8, v3, v6

    :try_start_0
    invoke-virtual {p0, v0, v7, v8}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    const/4 v8, -0x1

    if-ne v1, v8, :cond_1

    new-array v5, v7, [B

    invoke-static {v0, v10, v5, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_2
    return-object v5

    :catch_0
    move-exception v2

    const-string/jumbo v8, "QURAMWINKUTIL"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    add-int/2addr v6, v1

    add-int/2addr v7, v1

    goto :goto_0

    :cond_2
    new-array v5, v7, [B

    invoke-static {v0, v10, v5, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2
.end method


# virtual methods
.method public initAGIF(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;Z)Z
    .locals 5

    const/4 v1, 0x0

    if-nez p2, :cond_0

    const-string/jumbo v2, "QURAMWINKUTIL"

    const-string/jumbo v3, "AGIF item is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_0
    monitor-enter p2

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->loadGIF(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    :try_start_1
    invoke-virtual {p2, v1}, Lcom/sec/android/gallery3d/data/MediaItem;->resetAgifMode(Z)V

    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v2, "QURAMWINKUTIL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Load agif fail"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public updateAGIF(Lcom/sec/android/gallery3d/ui/GifPlayer;Lcom/sec/android/gallery3d/ui/GifPlayer;)V
    .locals 18

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->mMovieStart:J

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-nez v13, :cond_0

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->mMovieStart:J

    :cond_0
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->mMovieStart:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->mDuration:J

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->mAllshare:Z

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->mLoadGIF:Lcom/sec/android/gallery3d/util/QuramWinkUtileAGIFThread;

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/util/QuramWinkUtileAGIFThread;->isReadyToDraw()Z

    move-result v13

    if-nez v13, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->mAllshare:Z

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->mLoadGIF:Lcom/sec/android/gallery3d/util/QuramWinkUtileAGIFThread;

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/util/QuramWinkUtileAGIFThread;->getMovieStart()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->mLoadGIF:Lcom/sec/android/gallery3d/util/QuramWinkUtileAGIFThread;

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/util/QuramWinkUtileAGIFThread;->getDuration()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->mLoadGIF:Lcom/sec/android/gallery3d/util/QuramWinkUtileAGIFThread;

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/util/QuramWinkUtileAGIFThread;->getMovie()Landroid/graphics/Movie;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->mMovie:Landroid/graphics/Movie;

    :cond_3
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->mMovie:Landroid/graphics/Movie;

    if-eqz v13, :cond_1

    const-wide/16 v14, 0x0

    cmp-long v13, v4, v14

    if-eqz v13, :cond_1

    sub-long v14, v10, v8

    rem-long/2addr v14, v4

    long-to-int v7, v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v13, v7}, Landroid/graphics/Movie;->setTime(I)Z

    move-result v13

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v13}, Landroid/graphics/Movie;->width()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v13}, Landroid/graphics/Movie;->height()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->mBeforBitmap:Landroid/graphics/Bitmap;

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->mBeforBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    if-ne v12, v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->mBeforBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    if-eq v6, v13, :cond_6

    :cond_4
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->mBeforBitmap:Landroid/graphics/Bitmap;

    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->mBeforBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v13

    if-nez v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->mBeforBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5
    invoke-static {v12, v6, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->mBeforBitmap:Landroid/graphics/Bitmap;

    new-instance v13, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->mBeforBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v13, v14}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->mCanvas:Landroid/graphics/Canvas;

    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->mCanvas:Landroid/graphics/Canvas;

    const/4 v14, 0x0

    sget-object v15, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->mMovie:Landroid/graphics/Movie;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->mCanvas:Landroid/graphics/Canvas;

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FF)V

    invoke-interface/range {p1 .. p1}, Lcom/sec/android/gallery3d/ui/GifPlayer;->getTileImageView()Lcom/sec/android/gallery3d/ui/TileImageView;

    move-result-object v13

    new-instance v14, Lcom/sec/android/gallery3d/ui/TiledScreenNail;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->mBeforBitmap:Landroid/graphics/Bitmap;

    new-instance v16, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$TiledTextureResources;

    invoke-direct/range {v16 .. v16}, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$TiledTextureResources;-><init>()V

    invoke-direct/range {v14 .. v16}, Lcom/sec/android/gallery3d/ui/TiledScreenNail;-><init>(Landroid/graphics/Bitmap;Lcom/sec/android/gallery3d/glrenderer/TiledTexture$TiledTextureResources;)V

    const/4 v15, 0x1

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Lcom/sec/android/gallery3d/ui/TileImageView;->invalidateScreenNail(Lcom/sec/android/gallery3d/ui/ScreenNail;ZZ)V

    if-eqz p2, :cond_1

    invoke-interface/range {p2 .. p2}, Lcom/sec/android/gallery3d/ui/GifPlayer;->getTileImageView()Lcom/sec/android/gallery3d/ui/TileImageView;

    move-result-object v13

    new-instance v14, Lcom/sec/android/gallery3d/ui/TiledScreenNail;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->mBeforBitmap:Landroid/graphics/Bitmap;

    new-instance v16, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$TiledTextureResources;

    invoke-direct/range {v16 .. v16}, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$TiledTextureResources;-><init>()V

    invoke-direct/range {v14 .. v16}, Lcom/sec/android/gallery3d/ui/TiledScreenNail;-><init>(Landroid/graphics/Bitmap;Lcom/sec/android/gallery3d/glrenderer/TiledTexture$TiledTextureResources;)V

    const/4 v15, 0x1

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Lcom/sec/android/gallery3d/ui/TileImageView;->invalidateScreenNail(Lcom/sec/android/gallery3d/ui/ScreenNail;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v3

    const-string/jumbo v13, "QURAMWINKUTIL"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "AGIF updateAGIF fail :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
