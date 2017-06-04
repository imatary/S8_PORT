.class public Lcom/sec/samsung/gallery/util/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.java"


# static fields
.field private static final FILE_COPY_CHUNK_SIZE:I = 0x2000

.field private static final TAG:Ljava/lang/String; = "FileUtil"

.field public static final TOTAL_FILE_SIZE_KEY:Ljava/lang/Integer;

.field public static final USE_FILE_SIZE:I = -0x1

.field public static final USE_FILE_SKIP:I = -0x2

.field private static mOperateMediaAsyncTask:Lcom/sec/samsung/gallery/util/MediaOperations;

.field private static mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field private static final mTasks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/sec/android/gallery3d/data/OnProgressListener;",
            "Lcom/sec/samsung/gallery/util/MediaOperations;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/util/LibFileUtil;->TOTAL_FILE_SIZE_KEY:Ljava/lang/Integer;

    sput-object v0, Lcom/sec/samsung/gallery/util/FileUtil;->TOTAL_FILE_SIZE_KEY:Ljava/lang/Integer;

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/samsung/gallery/util/FileUtil;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/samsung/gallery/util/FileUtil;->mTasks:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/util/FileUtil;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/util/FileUtil;->mTasks:Ljava/util/HashMap;

    return-object v0
.end method

.method private static addPostfix(Ljava/io/File;I)Ljava/lang/String;
    .locals 8

    const/16 v7, 0x29

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x2e

    invoke-virtual {v1, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const/4 v6, -0x1

    if-eq v2, v6, :cond_0

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v1, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    return-object v4

    :cond_0
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static cancelOperateMediaAsyncTask()V
    .locals 4

    :try_start_0
    sget-object v1, Lcom/sec/samsung/gallery/util/FileUtil;->mOperateMediaAsyncTask:Lcom/sec/samsung/gallery/util/MediaOperations;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/samsung/gallery/util/FileUtil;->mOperateMediaAsyncTask:Lcom/sec/samsung/gallery/util/MediaOperations;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/util/MediaOperations;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/sec/samsung/gallery/util/FileUtil;->mOperateMediaAsyncTask:Lcom/sec/samsung/gallery/util/MediaOperations;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/util/MediaOperations;->cancel(Z)Z

    const/4 v1, 0x0

    sput-object v1, Lcom/sec/samsung/gallery/util/FileUtil;->mOperateMediaAsyncTask:Lcom/sec/samsung/gallery/util/MediaOperations;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "TAG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static copyFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v12, 0x0

    const/4 v5, 0x0

    if-eqz p3, :cond_1

    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-direct {v13, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    :goto_0
    :try_start_0
    invoke-static {p0}, Lcom/sec/samsung/gallery/util/FileUtil;->setPowerWakeLock(Landroid/content/Context;)V

    new-instance v11, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    move-object/from16 v0, p2

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {v11}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v12

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    sget-object v13, Lcom/sec/samsung/gallery/util/FileUtil;->mTasks:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    const/16 v13, 0x2000

    invoke-static {v13}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    :cond_0
    invoke-virtual {v12, v2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v8

    const/4 v13, -0x1

    if-eq v8, v13, :cond_5

    const/16 v13, 0x2000

    if-ne v8, v13, :cond_2

    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :goto_1
    invoke-virtual {v5, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    const/16 v13, 0x2000

    if-ne v8, v13, :cond_3

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    :goto_2
    invoke-static {}, Lcom/sec/samsung/gallery/util/FileUtil;->isTaskCancelled()Z

    move-result v13

    if-eqz v13, :cond_4

    new-instance v13, Ljava/io/IOException;

    const-string/jumbo v14, "Task is canceled"

    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catch_0
    move-exception v6

    move-object v3, v4

    move-object v10, v11

    :goto_3
    :try_start_3
    invoke-static/range {p2 .. p2}, Lcom/sec/samsung/gallery/util/FileUtil;->deleteFile(Ljava/lang/String;)V

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v13

    :goto_4
    invoke-static {}, Lcom/sec/samsung/gallery/util/FileUtil;->releasePowerWakeLock()V

    invoke-static {v10}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v3}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v12}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v5}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v13

    :cond_1
    invoke-static/range {p1 .. p2}, Lcom/sec/samsung/gallery/util/FileUtil;->getDstFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_2
    :try_start_4
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    goto :goto_1

    :catchall_1
    move-exception v13

    move-object v3, v4

    move-object v10, v11

    goto :goto_4

    :cond_3
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_2

    :cond_4
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/gallery3d/data/OnProgressListener;

    const/4 v14, -0x1

    invoke-interface {v9, v8, v14}, Lcom/sec/android/gallery3d/data/OnProgressListener;->onProgress(II)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_5

    :cond_5
    invoke-static {}, Lcom/sec/samsung/gallery/util/FileUtil;->releasePowerWakeLock()V

    invoke-static {v11}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v4}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v12}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v5}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    return-object p2

    :catchall_2
    move-exception v13

    move-object v10, v11

    goto :goto_4

    :catch_1
    move-exception v6

    goto :goto_3

    :catch_2
    move-exception v6

    move-object v10, v11

    goto :goto_3
.end method

.method public static deleteFile(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method public static getDstFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v2, Ljava/io/File;

    invoke-static {v3, v1}, Lcom/sec/samsung/gallery/util/FileUtil;->addPostfix(Ljava/io/File;I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getImageContentUriFromFileUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 14

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "_id"

    aput-object v4, v2, v3

    const-string/jumbo v3, "_data=? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v9, v4, v5

    const/4 v5, 0x0

    const-string/jumbo v6, "FileUtil"

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "content://media/external/images/media"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    :cond_0
    :goto_0
    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_1
    return-object v10

    :cond_1
    :try_start_1
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v0, "_data"

    invoke-virtual {v13, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v13}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v10

    goto :goto_0

    :catch_0
    move-exception v8

    :try_start_2
    const-string/jumbo v0, "FileUtil"

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method

.method public static isExist(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaObject;Ljava/lang/String;)Z
    .locals 6

    instance-of v4, p1, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;

    if-eqz v4, :cond_0

    new-instance v2, Ljava/io/File;

    check-cast p1, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->getPathOnFileSystem()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    :goto_0
    return v4

    :cond_0
    instance-of v4, p1, Lcom/sec/android/gallery3d/data/LocalMergeAlbum;

    if-eqz v4, :cond_1

    new-instance v2, Ljava/io/File;

    check-cast p1, Lcom/sec/android/gallery3d/data/LocalMergeAlbum;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/LocalMergeAlbum;->getPathOnFileSystem()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    goto :goto_0

    :cond_1
    instance-of v4, p1, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    if-eqz v4, :cond_2

    check-cast p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryApplication()Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->getInstance(Lcom/sec/android/gallery3d/app/GalleryApp;)Lcom/sec/android/gallery3d/data/ChannelAlbumManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->checkChannelExist(Ljava/lang/String;)Z

    move-result v4

    goto :goto_0

    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private static isPrivateTaskCancelled()Z
    .locals 3

    sget-object v1, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mPrivateTasks:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/util/SecretboxOperations;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/util/SecretboxOperations;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isTaskCancelled()Z
    .locals 3

    sget-object v1, Lcom/sec/samsung/gallery/util/FileUtil;->mTasks:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/util/MediaOperations;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/util/MediaOperations;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static moveFileForPrivate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v12, 0x0

    const/4 v5, 0x0

    if-eqz p3, :cond_1

    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-direct {v13, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    :goto_0
    :try_start_0
    invoke-static {p0}, Lcom/sec/samsung/gallery/util/FileUtil;->setPowerWakeLock(Landroid/content/Context;)V

    new-instance v11, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    move-object/from16 v0, p2

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {v11}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v12

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    sget-object v13, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mPrivateTasks:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    const/16 v13, 0x2000

    invoke-static {v13}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    :cond_0
    invoke-virtual {v12, v2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v8

    const/4 v13, -0x1

    if-eq v8, v13, :cond_5

    const/16 v13, 0x2000

    if-ne v8, v13, :cond_2

    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :goto_1
    invoke-virtual {v5, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    const/16 v13, 0x2000

    if-ne v8, v13, :cond_3

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    :goto_2
    invoke-static {}, Lcom/sec/samsung/gallery/util/FileUtil;->isPrivateTaskCancelled()Z

    move-result v13

    if-eqz v13, :cond_4

    new-instance v13, Ljava/io/IOException;

    const-string/jumbo v14, "Task is canceled"

    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catch_0
    move-exception v6

    move-object v3, v4

    move-object v10, v11

    :goto_3
    :try_start_3
    invoke-static/range {p2 .. p2}, Lcom/sec/samsung/gallery/util/FileUtil;->deleteFile(Ljava/lang/String;)V

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v13

    :goto_4
    invoke-static {}, Lcom/sec/samsung/gallery/util/FileUtil;->releasePowerWakeLock()V

    invoke-static {v10}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v3}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v12}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v5}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v13

    :cond_1
    invoke-static/range {p1 .. p2}, Lcom/sec/samsung/gallery/util/FileUtil;->getDstFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_2
    :try_start_4
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    goto :goto_1

    :catchall_1
    move-exception v13

    move-object v3, v4

    move-object v10, v11

    goto :goto_4

    :cond_3
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_2

    :cond_4
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/samsung/gallery/util/SecretboxOperations$OnSecretboxListener;

    const/4 v14, -0x1

    invoke-interface {v9, v8, v14}, Lcom/sec/samsung/gallery/util/SecretboxOperations$OnSecretboxListener;->onProgress(II)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_5

    :cond_5
    invoke-static {}, Lcom/sec/samsung/gallery/util/FileUtil;->releasePowerWakeLock()V

    invoke-static {v11}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v4}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v12}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v5}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    return-object p2

    :catchall_2
    move-exception v13

    move-object v10, v11

    goto :goto_4

    :catch_1
    move-exception v6

    goto :goto_3

    :catch_2
    move-exception v6

    move-object v10, v11

    goto :goto_3
.end method

.method private static releasePowerWakeLock()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/util/FileUtil;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/samsung/gallery/util/FileUtil;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/samsung/gallery/util/FileUtil;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/samsung/gallery/util/FileUtil;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_0
    return-void
.end method

.method private static setPowerWakeLock(Landroid/content/Context;)V
    .locals 3

    const-string/jumbo v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string/jumbo v2, "Gallery-Copy"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/sec/samsung/gallery/util/FileUtil;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    sget-object v1, Lcom/sec/samsung/gallery/util/FileUtil;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/sec/samsung/gallery/util/FileUtil;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_0
    return-void
.end method

.method public static skipFile(Landroid/content/Context;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/sec/samsung/gallery/util/FileUtil;->setPowerWakeLock(Landroid/content/Context;)V

    sget-object v2, Lcom/sec/samsung/gallery/util/FileUtil;->mTasks:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {}, Lcom/sec/samsung/gallery/util/FileUtil;->isTaskCancelled()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Task is canceled"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v2

    invoke-static {}, Lcom/sec/samsung/gallery/util/FileUtil;->releasePowerWakeLock()V

    throw v2

    :cond_0
    :try_start_1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/OnProgressListener;

    const/4 v3, -0x2

    invoke-interface {v1, p1, v3}, Lcom/sec/android/gallery3d/data/OnProgressListener;->onProgress(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/sec/samsung/gallery/util/FileUtil;->releasePowerWakeLock()V

    return-void
.end method


# virtual methods
.method public cancelOperation()V
    .locals 3

    sget-object v1, Lcom/sec/samsung/gallery/util/FileUtil;->mTasks:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/util/MediaOperations;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/util/MediaOperations;->cancel(Z)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getSelectedMediaSize()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/util/FileUtil;->getSelectedMediaSize(Z)Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedMediaSize(Z)Landroid/util/SparseArray;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/util/FileUtil;->mContext:Landroid/content/Context;

    check-cast v15, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v15}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v10

    new-instance v7, Ljava/util/ArrayList;

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getTotalItemList()Ljava/util/LinkedList;

    move-result-object v15

    invoke-direct {v7, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    const-wide/16 v12, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_8

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/gallery3d/data/MediaObject;

    if-nez v6, :cond_0

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v8, 0x0

    instance-of v15, v6, Lcom/sec/android/gallery3d/data/LocalImage;

    if-eqz v15, :cond_3

    if-eqz p1, :cond_2

    move-object v15, v6

    check-cast v15, Lcom/sec/android/gallery3d/data/LocalImage;

    invoke-virtual {v15}, Lcom/sec/android/gallery3d/data/LocalImage;->getGroupId()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v15, v16, v18

    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/util/FileUtil;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object v15, v6

    check-cast v15, Lcom/sec/android/gallery3d/data/LocalImage;

    move-object/from16 v0, v16

    invoke-static {v0, v15}, Lcom/sec/android/gallery3d/util/BurstImageUtils;->getSizeBurstShot(Landroid/content/Context;Lcom/sec/android/gallery3d/data/LocalImage;)I

    move-result v15

    int-to-long v8, v15

    :cond_1
    :goto_2
    add-long/2addr v12, v8

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaObject;->getContentUri()Landroid/net/Uri;

    move-result-object v14

    if-eqz v14, :cond_7

    invoke-virtual {v14}, Landroid/net/Uri;->hashCode()I

    move-result v15

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaObject;->getSize()J

    move-result-wide v8

    goto :goto_2

    :cond_3
    instance-of v15, v6, Lcom/sec/android/gallery3d/data/UnionImage;

    if-eqz v15, :cond_5

    if-eqz p1, :cond_4

    move-object v15, v6

    check-cast v15, Lcom/sec/android/gallery3d/data/UnionImage;

    invoke-virtual {v15}, Lcom/sec/android/gallery3d/data/UnionImage;->getGroupId()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v15, v16, v18

    if-eqz v15, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/util/FileUtil;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object v15, v6

    check-cast v15, Lcom/sec/android/gallery3d/data/UnionImage;

    move-object/from16 v0, v16

    invoke-static {v0, v15}, Lcom/sec/android/gallery3d/util/BurstImageUtils;->getSizeUnionBurstShot(Landroid/content/Context;Lcom/sec/android/gallery3d/data/UnionImage;)I

    move-result v15

    int-to-long v8, v15

    goto :goto_2

    :cond_4
    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaObject;->getSize()J

    move-result-wide v8

    goto :goto_2

    :cond_5
    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaObject;->getDetails()Lcom/sec/android/gallery3d/data/MediaDetails;

    move-result-object v3

    if-eqz v3, :cond_6

    const/16 v15, 0xe

    invoke-virtual {v3, v15}, Lcom/sec/android/gallery3d/data/MediaDetails;->getDetail(I)Ljava/lang/Object;

    move-result-object v11

    :goto_3
    if-eqz v11, :cond_1

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    goto :goto_2

    :cond_6
    const/4 v11, 0x0

    goto :goto_3

    :cond_7
    const-string/jumbo v15, "FileUtil"

    const-string/jumbo v16, "getSelectedMediaSize : uri is null"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_8
    sget-object v15, Lcom/sec/samsung/gallery/util/FileUtil;->TOTAL_FILE_SIZE_KEY:Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v4
.end method

.method public operateMedias(Lcom/sec/android/gallery3d/data/OnProgressListener;)Lcom/sec/samsung/gallery/util/MediaOperations;
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v1, v0, v1}, Lcom/sec/samsung/gallery/util/FileUtil;->operateMedias(Lcom/sec/android/gallery3d/data/OnProgressListener;Ljava/lang/String;ZLcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;)Lcom/sec/samsung/gallery/util/MediaOperations;

    move-result-object v0

    return-object v0
.end method

.method public operateMedias(Lcom/sec/android/gallery3d/data/OnProgressListener;Ljava/lang/String;)Lcom/sec/samsung/gallery/util/MediaOperations;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sec/samsung/gallery/util/FileUtil;->operateMedias(Lcom/sec/android/gallery3d/data/OnProgressListener;Ljava/lang/String;ZLcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;)Lcom/sec/samsung/gallery/util/MediaOperations;

    move-result-object v0

    return-object v0
.end method

.method public operateMedias(Lcom/sec/android/gallery3d/data/OnProgressListener;Ljava/lang/String;ZLcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;)Lcom/sec/samsung/gallery/util/MediaOperations;
    .locals 6

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/util/FileUtil;->cancelOperation()V

    new-instance v1, Lcom/sec/samsung/gallery/util/FileUtil$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/samsung/gallery/util/FileUtil$1;-><init>(Lcom/sec/samsung/gallery/util/FileUtil;Lcom/sec/android/gallery3d/data/OnProgressListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/FileUtil;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setReloadRequiredOnResume(Z)V

    new-instance v0, Lcom/sec/samsung/gallery/util/MediaOperations;

    iget-object v2, p0, Lcom/sec/samsung/gallery/util/FileUtil;->mContext:Landroid/content/Context;

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/samsung/gallery/util/MediaOperations;-><init>(Lcom/sec/android/gallery3d/data/OnProgressListener;Landroid/content/Context;Ljava/lang/String;ZLcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;)V

    sput-object v0, Lcom/sec/samsung/gallery/util/FileUtil;->mOperateMediaAsyncTask:Lcom/sec/samsung/gallery/util/MediaOperations;

    sget-object v0, Lcom/sec/samsung/gallery/util/FileUtil;->mTasks:Ljava/util/HashMap;

    sget-object v2, Lcom/sec/samsung/gallery/util/FileUtil;->mOperateMediaAsyncTask:Lcom/sec/samsung/gallery/util/MediaOperations;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/util/FileUtil;->mOperateMediaAsyncTask:Lcom/sec/samsung/gallery/util/MediaOperations;

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v2, v3}, Lcom/sec/samsung/gallery/util/MediaOperations;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    sget-object v0, Lcom/sec/samsung/gallery/util/FileUtil;->mOperateMediaAsyncTask:Lcom/sec/samsung/gallery/util/MediaOperations;

    return-object v0
.end method

.method public operateMedias(Lcom/sec/android/gallery3d/data/OnProgressListener;Z)Lcom/sec/samsung/gallery/util/MediaOperations;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, v0}, Lcom/sec/samsung/gallery/util/FileUtil;->operateMedias(Lcom/sec/android/gallery3d/data/OnProgressListener;Ljava/lang/String;ZLcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;)Lcom/sec/samsung/gallery/util/MediaOperations;

    move-result-object v0

    return-object v0
.end method

.method public rename(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/sec/samsung/gallery/util/DestAlreadyExistException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "File name is same : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sec/samsung/gallery/util/DestAlreadyExistException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/sec/samsung/gallery/util/DestAlreadyExistException;

    const-string/jumbo v3, "A target already exist : "

    invoke-direct {v2, v3}, Lcom/sec/samsung/gallery/util/DestAlreadyExistException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "File.renameTo() returns false"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    return-void
.end method
