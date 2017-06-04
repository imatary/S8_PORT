.class final Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility;
.super Ljava/lang/Object;
.source "SlinkMediaStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ThumbnailUtility"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;
    }
.end annotation


# static fields
.field private static final THUMB_PROJECTION:[Ljava/lang/String;

.field private static final sTaskMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility;->sTaskMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "width"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "height"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "thumb_width"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "thumb_height"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "full_width"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "full_height"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility;->THUMB_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelThumbnailRequest(Landroid/content/ContentResolver;Ljava/lang/String;JJ)V
    .locals 10

    const/4 v6, 0x0

    const/4 v9, 0x0

    new-instance v1, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;

    move-wide v2, p2

    move-wide v4, p4

    move v7, v6

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;-><init>(JJII)V

    sget-object v2, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility;->sTaskMap:Ljava/util/concurrent/ConcurrentHashMap;

    # getter for: Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;->mHashKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;->access$0(Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;

    if-eqz v1, :cond_0

    sget-object v2, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility;->sTaskMap:Ljava/util/concurrent/ConcurrentHashMap;

    # getter for: Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;->mHashKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;->access$0(Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;->access$2(Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;Z)V

    invoke-static {p2, p3, p1}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore;->buildEntryIdUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v2, "cancel"

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string/jumbo v2, "group_id"

    invoke-static {p4, p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    move-object v2, p0

    move-object v4, v9

    move-object v5, v9

    move-object v6, v9

    move-object v7, v9

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void
.end method

.method public static getThumbnailImage(Landroid/content/ContentResolver;Ljava/lang/String;JJIIZZLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 28

    const/16 v24, 0x0

    new-instance v5, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-direct/range {v5 .. v11}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;-><init>(JJII)V

    sget-object v6, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility;->sTaskMap:Ljava/util/concurrent/ConcurrentHashMap;

    # getter for: Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;->mHashKey:Ljava/lang/String;
    invoke-static {v5}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;->access$0(Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    move/from16 v12, p6

    move/from16 v13, p7

    move/from16 v14, p8

    move/from16 v15, p9

    :try_start_0
    invoke-static/range {v5 .. v15}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility;->getThumbnailUri(Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;Landroid/content/ContentResolver;Ljava/lang/String;JJIIZZ)Landroid/net/Uri;

    move-result-object v27

    iget v6, v5, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;->mWidth:I

    iget v7, v5, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;->mHeight:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v19

    const/16 v17, 0x0

    :try_start_1
    # getter for: Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;->mCancelled:Z
    invoke-static {v5}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;->access$1(Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;)Z

    move-result v6

    if-nez v6, :cond_6

    move-object/from16 v0, p10

    iget-boolean v6, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-nez v6, :cond_6

    iget v6, v5, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;->mActualWidth:I

    if-lez v6, :cond_0

    iget v6, v5, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;->mActualHeight:I

    if-gtz v6, :cond_4

    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v17

    if-nez v17, :cond_3

    sget-boolean v6, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore;->ENABLE_LOGGING:Z

    if-eqz v6, :cond_1

    # getter for: Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore;->access$0()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Unable to open inputStream for bitmap. origId:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, p2

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    if-eqz v17, :cond_2

    :try_start_2
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    :goto_0
    sget-object v6, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility;->sTaskMap:Ljava/util/concurrent/ConcurrentHashMap;

    # getter for: Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;->mHashKey:Ljava/lang/String;
    invoke-static {v5}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;->access$0(Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    const/4 v6, 0x0

    :goto_1
    return-object v6

    :cond_3
    const/4 v6, 0x1

    :try_start_3
    move-object/from16 v0, p10

    iput-boolean v6, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v6, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p10

    invoke-static {v0, v6, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-object/from16 v0, p10

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v6, v5, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;->mActualWidth:I

    move-object/from16 v0, p10

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v6, v5, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;->mActualHeight:I

    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V

    move-wide/from16 v0, p2

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore;->buildEntryIdUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string/jumbo v6, "width"

    iget v7, v5, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;->mWidth:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string/jumbo v6, "height"

    iget v7, v5, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;->mHeight:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string/jumbo v6, "skip_cache_get"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string/jumbo v6, "skip_cache_put"

    invoke-static/range {p9 .. p9}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v27

    :cond_4
    const/16 v25, 0x1

    iget v6, v5, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;->mActualHeight:I

    iget v7, v5, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;->mActualWidth:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v18

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_5

    move/from16 v0, v18

    int-to-float v6, v0

    move/from16 v0, v19

    int-to-float v7, v0

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v25

    :cond_5
    const/4 v6, 0x1

    move/from16 v0, v25

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v25

    const/4 v6, 0x0

    move-object/from16 v0, p10

    iput-boolean v6, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    move/from16 v0, v25

    move-object/from16 v1, p10

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    sget-boolean v6, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore;->ENABLE_LOGGING:Z

    if-eqz v6, :cond_6

    # getter for: Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore;->access$0()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "::getThumbnailImage scaleFactor:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " requested:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v5, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;->mWidth:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x78

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v5, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;->mHeight:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " bitmap:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v5, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;->mActualWidth:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x78

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v5, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;->mActualHeight:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    # getter for: Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;->mCancelled:Z
    invoke-static {v5}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;->access$1(Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;)Z

    move-result v6

    if-nez v6, :cond_a

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v17

    if-nez v17, :cond_9

    :try_start_4
    sget-boolean v6, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore;->ENABLE_LOGGING:Z

    if-eqz v6, :cond_7

    # getter for: Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore;->access$0()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Unable to open inputStream for bitmap. origId:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, p2

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_7
    if-eqz v17, :cond_8

    :try_start_5
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_8
    :goto_2
    sget-object v6, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility;->sTaskMap:Ljava/util/concurrent/ConcurrentHashMap;

    # getter for: Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;->mHashKey:Ljava/lang/String;
    invoke-static {v5}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;->access$0(Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    const/4 v6, 0x0

    goto/16 :goto_1

    :cond_9
    const/4 v6, 0x0

    :try_start_6
    move-object/from16 v0, v17

    move-object/from16 v1, p10

    invoke-static {v0, v6, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v24

    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V

    if-eqz v24, :cond_a

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v18

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_a

    move/from16 v0, v19

    int-to-float v6, v0

    move/from16 v0, v18

    int-to-float v7, v0

    div-float v23, v6, v7

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    move/from16 v0, v18

    if-ne v0, v6, :cond_c

    move/from16 v21, v19

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v23

    float-to-int v0, v6

    move/from16 v20, v0

    :goto_3
    if-lez v21, :cond_a

    if-lez v20, :cond_a

    const/4 v6, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v21

    move/from16 v2, v20

    invoke-static {v0, v1, v2, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v26

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object/from16 v24, v26

    :cond_a
    :goto_4
    if-eqz v17, :cond_b

    :try_start_7
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_b
    :goto_5
    sget-object v6, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility;->sTaskMap:Ljava/util/concurrent/ConcurrentHashMap;

    # getter for: Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;->mHashKey:Ljava/lang/String;
    invoke-static {v5}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;->access$0(Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-object/from16 v6, v24

    goto/16 :goto_1

    :cond_c
    :try_start_8
    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Bitmap;->getWidth()I
    :try_end_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v23

    float-to-int v0, v6

    move/from16 v21, v0

    move/from16 v20, v19

    goto :goto_3

    :catch_0
    move-exception v22

    :try_start_9
    sget-boolean v6, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore;->ENABLE_LOGGING:Z

    if-eqz v6, :cond_a

    if-eqz v24, :cond_e

    # getter for: Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore;->access$0()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Unable to rescale bitmap. origId:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, p2

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v22

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_4

    :catch_1
    move-exception v16

    :try_start_a
    sget-boolean v6, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore;->ENABLE_LOGGING:Z

    if-eqz v6, :cond_d

    # getter for: Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore;->access$0()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Unable to decode bitmap. origId:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, p2

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_d
    if-eqz v17, :cond_b

    :try_start_b
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_5

    :catch_2
    move-exception v6

    goto :goto_5

    :cond_e
    :try_start_c
    # getter for: Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore;->access$0()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Unable to decode bitmap. origId:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, p2

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v22

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception v6

    if-eqz v17, :cond_f

    :try_start_d
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :cond_f
    :goto_6
    :try_start_e
    throw v6
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :catchall_1
    move-exception v6

    sget-object v7, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility;->sTaskMap:Ljava/util/concurrent/ConcurrentHashMap;

    # getter for: Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;->mHashKey:Ljava/lang/String;
    invoke-static {v5}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;->access$0(Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    throw v6

    :catch_3
    move-exception v6

    goto/16 :goto_0

    :catch_4
    move-exception v6

    goto/16 :goto_2

    :catch_5
    move-exception v7

    goto :goto_6

    :catch_6
    move-exception v6

    goto/16 :goto_5
.end method

.method public static getThumbnailInputStream(Landroid/content/ContentResolver;Ljava/lang/String;JJIIZZ)Ljava/io/InputStream;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    new-instance v1, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;-><init>(JJII)V

    sget-object v2, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility;->sTaskMap:Ljava/util/concurrent/ConcurrentHashMap;

    # getter for: Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;->mHashKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;->access$0(Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, p0

    move-object v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    :try_start_0
    invoke-static/range {v1 .. v11}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility;->getThumbnailUri(Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;Landroid/content/ContentResolver;Ljava/lang/String;JJIIZZ)Landroid/net/Uri;

    move-result-object v13

    const/4 v12, 0x0

    # getter for: Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;->mCancelled:Z
    invoke-static {v1}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;->access$1(Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v13}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v12

    :cond_0
    sget-object v2, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility;->sTaskMap:Ljava/util/concurrent/ConcurrentHashMap;

    # getter for: Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;->mHashKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;->access$0(Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    :goto_0
    return-object v12

    :catch_0
    move-exception v0

    :try_start_1
    sget-boolean v2, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore;->ENABLE_LOGGING:Z

    if-eqz v2, :cond_1

    # getter for: Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore;->access$0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ThumbnailUtility.getThumbnailUri failed:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    sget-object v2, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility;->sTaskMap:Ljava/util/concurrent/ConcurrentHashMap;

    # getter for: Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;->mHashKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;->access$0(Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    const/4 v12, 0x0

    goto :goto_0

    :catchall_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility;->sTaskMap:Ljava/util/concurrent/ConcurrentHashMap;

    # getter for: Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;->mHashKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;->access$0(Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    throw v2
.end method

.method private static getThumbnailUri(Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;Landroid/content/ContentResolver;Ljava/lang/String;JJIIZZ)Landroid/net/Uri;
    .locals 19

    move-wide/from16 v0, p3

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore;->buildEntryIdUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/16 v17, -0x1

    const/16 v16, -0x1

    if-nez p9, :cond_1

    sget-object v6, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility;->THUMB_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    if-eqz v11, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    const/4 v4, 0x1

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    const/4 v4, 0x2

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;->mActualWidth:I

    const/4 v4, 0x3

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;->mActualHeight:I

    const/4 v4, 0x4

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;->mFullWidth:I

    const/4 v4, 0x5

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;->mFullHeight:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;->mFullWidth:I

    if-lez v4, :cond_0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;->mFullHeight:I

    if-lez v4, :cond_0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;->mWidth:I

    int-to-long v6, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;->mHeight:I

    int-to-long v8, v4

    mul-long v14, v6, v8

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;->mFullWidth:I

    int-to-long v6, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;->mFullHeight:I

    int-to-long v8, v4

    mul-long v12, v6, v8

    cmp-long v4, v14, v12

    if-lez v4, :cond_0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;->mFullWidth:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;->mWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;->mFullHeight:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;->mHeight:I

    :cond_0
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_1
    # getter for: Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;->mCancelled:Z
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;->access$1(Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v10

    const-string/jumbo v4, "width"

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v4, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string/jumbo v4, "height"

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v4, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string/jumbo v6, "skip_cache_get"

    if-nez p9, :cond_3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;->mWidth:I

    move/from16 v0, v17

    if-gt v4, v0, :cond_3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;->mHeight:I

    move/from16 v0, v16

    if-gt v4, v0, :cond_3

    const/4 v4, 0x0

    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v6, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string/jumbo v4, "skip_cache_put"

    invoke-static/range {p10 .. p10}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v4, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v10}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    :cond_2
    return-object v5

    :cond_3
    const/4 v4, 0x1

    goto :goto_0
.end method
