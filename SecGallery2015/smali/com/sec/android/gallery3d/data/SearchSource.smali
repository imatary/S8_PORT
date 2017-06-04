.class public Lcom/sec/android/gallery3d/data/SearchSource;
.super Lcom/sec/android/gallery3d/data/MediaSource;
.source "SearchSource.java"


# static fields
.field private static final LOCAL_SEARCH_IMAGE:I = 0x2

.field private static final LOCAL_SEARCH_VIDEO:I = 0x4

.field public static final PATH_PREFIX:Ljava/lang/String; = "search"

.field private static final TAG:Ljava/lang/String; = "SearchSource"

.field private static final UNION_LOCAL_SEARCH_IMAGE:I = 0x0

.field private static final UNION_SCLOUD_SEARCH_IMAGE:I = 0x1

.field private static final UNION_SEARCH_VIDEO:I = 0x3


# instance fields
.field private final mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

.field private final mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;


# direct methods
.method protected constructor <init>(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V
    .locals 3

    const-string/jumbo v0, "search"

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/data/MediaSource;-><init>(Ljava/lang/String;)V

    check-cast p1, Lcom/sec/android/gallery3d/app/GalleryApp;

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/SearchSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    new-instance v0, Lcom/sec/android/gallery3d/data/PathMatcher;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/data/PathMatcher;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/SearchSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SearchSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/search/union/local/image/*"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SearchSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/search/union/scloud/image/*"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SearchSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/search/local/image/*"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SearchSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/search/union/video/*"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SearchSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/search/local/video/*"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    return-void
.end method

.method private createSearchItem(ZLandroid/database/Cursor;Lcom/sec/android/gallery3d/data/Path;Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaItem;
    .locals 3

    if-eqz p1, :cond_1

    const/16 v1, 0x13

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/data/UnionSCloudSearchImage;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/SearchSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-direct {v0, p3, v1, p4, p2}, Lcom/sec/android/gallery3d/data/UnionSCloudSearchImage;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;Ljava/lang/String;Landroid/database/Cursor;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/sec/android/gallery3d/data/UnionLocalSearchImage;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/SearchSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-direct {v0, p3, v1, p4, p2}, Lcom/sec/android/gallery3d/data/UnionLocalSearchImage;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;Ljava/lang/String;Landroid/database/Cursor;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/sec/android/gallery3d/data/LocalSearchImage;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/SearchSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-direct {v0, p3, v1, p4, p2}, Lcom/sec/android/gallery3d/data/LocalSearchImage;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;Ljava/lang/String;Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method private getDuplicatePaths(ILjava/util/HashMap;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaSource$PathId;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaSource$PathId;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    array-length v6, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v0, v1, v5

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaSource$PathId;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method private getSelectionOfIds(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "_id IN ("

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v1, :cond_0

    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private processMapMediaItems(Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/sec/android/gallery3d/data/MediaSet$ItemConsumer;Z)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Lcom/sec/android/gallery3d/data/Path;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/gallery3d/data/Path;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaSource$PathId;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/sec/android/gallery3d/data/MediaSet$ItemConsumer;",
            "Z)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p1}, Lcom/sec/android/gallery3d/data/SearchSource;->getSelectionOfIds(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v6

    if-eqz p6, :cond_1

    sget-object v5, Lcom/sec/android/gallery3d/data/UnionImage;->PROJECTION:[Ljava/lang/String;

    :goto_0
    if-eqz p6, :cond_2

    sget-object v4, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->IMAGES_TABLE_URI:Landroid/net/Uri;

    :goto_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/data/SearchSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string/jumbo v9, "SearchSource"

    invoke-static/range {v3 .. v9}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v10

    const/4 v7, 0x0

    if-nez v10, :cond_4

    :try_start_1
    const-string/jumbo v3, "SearchSource"

    const-string/jumbo v8, "query fail"

    invoke-static {v3, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v10, :cond_0

    if-eqz v7, :cond_3

    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_4

    :cond_0
    :goto_2
    return-void

    :cond_1
    sget-object v5, Lcom/sec/android/gallery3d/data/LocalImage;->PROJECTION:[Ljava/lang/String;

    goto :goto_0

    :cond_2
    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_3
    invoke-virtual {v7, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_2

    :catch_1
    move-exception v13

    :goto_3
    const-string/jumbo v3, "SearchSource"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "failed to processMapMediaItems. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v13}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    :try_start_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_2

    :catch_2
    move-exception v13

    goto :goto_3

    :cond_4
    :try_start_5
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eq v3, v8, :cond_5

    const-string/jumbo v3, "SearchSource"

    const-string/jumbo v8, "queried item size is not matched."

    invoke-static {v3, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v3, 0x0

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v15}, Lcom/sec/android/gallery3d/data/Path;->getParent()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move/from16 v1, p6

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v10, v15, v2}, Lcom/sec/android/gallery3d/data/SearchSource;->createSearchItem(ZLandroid/database/Cursor;Lcom/sec/android/gallery3d/data/Path;Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, p5

    invoke-interface {v0, v3, v14}, Lcom/sec/android/gallery3d/data/MediaSet$ItemConsumer;->consume(ILcom/sec/android/gallery3d/data/MediaItem;)Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v3

    if-nez v3, :cond_7

    if-eqz v10, :cond_0

    if-eqz v7, :cond_6

    :try_start_6
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_2

    :catch_3
    move-exception v3

    :try_start_7
    invoke-virtual {v7, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :catch_4
    move-exception v13

    goto/16 :goto_3

    :cond_6
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Landroid/database/SQLException; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_2

    :cond_7
    :try_start_8
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v12, v1}, Lcom/sec/android/gallery3d/data/SearchSource;->getDuplicatePaths(ILjava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/sec/android/gallery3d/data/MediaSource$PathId;

    move-object/from16 v0, v16

    iget-object v15, v0, Lcom/sec/android/gallery3d/data/MediaSource$PathId;->path:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v15}, Lcom/sec/android/gallery3d/data/Path;->getParent()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move/from16 v1, p6

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v10, v15, v2}, Lcom/sec/android/gallery3d/data/SearchSource;->createSearchItem(ZLandroid/database/Cursor;Lcom/sec/android/gallery3d/data/Path;Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v14

    move-object/from16 v0, v16

    iget v8, v0, Lcom/sec/android/gallery3d/data/MediaSource$PathId;->id:I

    move-object/from16 v0, p5

    invoke-interface {v0, v8, v14}, Lcom/sec/android/gallery3d/data/MediaSet$ItemConsumer;->consume(ILcom/sec/android/gallery3d/data/MediaItem;)Z
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result v8

    if-nez v8, :cond_8

    if-eqz v10, :cond_0

    if-eqz v7, :cond_9

    :try_start_9
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Landroid/database/SQLException; {:try_start_9 .. :try_end_9} :catch_4

    goto/16 :goto_2

    :catch_5
    move-exception v3

    :try_start_a
    invoke-virtual {v7, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :cond_9
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_2
    .catch Landroid/database/SQLException; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_2

    :cond_a
    if-eqz v10, :cond_0

    if-eqz v7, :cond_b

    :try_start_b
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_6
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b .. :try_end_b} :catch_2
    .catch Landroid/database/SQLException; {:try_start_b .. :try_end_b} :catch_4

    goto/16 :goto_2

    :catch_6
    move-exception v3

    :try_start_c
    invoke-virtual {v7, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :cond_b
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c .. :try_end_c} :catch_2
    .catch Landroid/database/SQLException; {:try_start_c .. :try_end_c} :catch_4

    goto/16 :goto_2

    :catch_7
    move-exception v3

    :try_start_d
    throw v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :catchall_0
    move-exception v7

    move-object/from16 v18, v7

    move-object v7, v3

    move-object/from16 v3, v18

    :goto_4
    if-eqz v10, :cond_c

    if-eqz v7, :cond_d

    :try_start_e
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_8
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_e .. :try_end_e} :catch_2
    .catch Landroid/database/SQLException; {:try_start_e .. :try_end_e} :catch_4

    :cond_c
    :goto_5
    :try_start_f
    throw v3

    :catch_8
    move-exception v8

    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_d
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_f .. :try_end_f} :catch_2
    .catch Landroid/database/SQLException; {:try_start_f .. :try_end_f} :catch_4

    goto :goto_5

    :catchall_1
    move-exception v3

    goto :goto_4
.end method


# virtual methods
.method public createMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;
    .locals 8

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SearchSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    move-object v3, p1

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/Path;->getParent()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/SearchSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    invoke-virtual {v5, v3}, Lcom/sec/android/gallery3d/data/PathMatcher;->match(Lcom/sec/android/gallery3d/data/Path;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "bad path: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "; calculated match id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :pswitch_0
    new-instance v5, Lcom/sec/android/gallery3d/data/UnionLocalSearchImage;

    invoke-direct {v5, p1, v0, v1, v4}, Lcom/sec/android/gallery3d/data/UnionLocalSearchImage;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;ILjava/lang/String;)V

    :goto_0
    return-object v5

    :pswitch_1
    new-instance v5, Lcom/sec/android/gallery3d/data/UnionSCloudSearchImage;

    invoke-direct {v5, p1, v0, v1, v4}, Lcom/sec/android/gallery3d/data/UnionSCloudSearchImage;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;ILjava/lang/String;)V

    goto :goto_0

    :pswitch_2
    new-instance v5, Lcom/sec/android/gallery3d/data/LocalSearchImage;

    invoke-direct {v5, p1, v0, v1, v4}, Lcom/sec/android/gallery3d/data/LocalSearchImage;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;ILjava/lang/String;)V

    goto :goto_0

    :pswitch_3
    new-instance v5, Lcom/sec/android/gallery3d/data/UnionSearchVideo;

    invoke-direct {v5, p1, v0, v1, v4}, Lcom/sec/android/gallery3d/data/UnionSearchVideo;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;ILjava/lang/String;)V

    goto :goto_0

    :pswitch_4
    new-instance v5, Lcom/sec/android/gallery3d/data/LocalSearchVideo;

    invoke-direct {v5, p1, v0, v1, v4}, Lcom/sec/android/gallery3d/data/LocalSearchVideo;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;ILjava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public mapMediaItems(Ljava/util/ArrayList;Lcom/sec/android/gallery3d/data/MediaSet$ItemConsumer;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaSource$PathId;",
            ">;",
            "Lcom/sec/android/gallery3d/data/MediaSet$ItemConsumer;",
            ")V"
        }
    .end annotation

    const/4 v7, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/gallery3d/data/MediaSource$PathId;

    sget-object v6, Lcom/sec/android/gallery3d/data/LibraryDataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-object v13, v11, Lcom/sec/android/gallery3d/data/MediaSource$PathId;->path:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "union"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    iget-object v13, v11, Lcom/sec/android/gallery3d/data/MediaSource$PathId;->path:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/data/Path;->getObject()Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v10

    if-nez v10, :cond_1

    iget-object v13, v11, Lcom/sec/android/gallery3d/data/MediaSource$PathId;->path:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/data/SearchSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    iget-object v14, v11, Lcom/sec/android/gallery3d/data/MediaSource$PathId;->path:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v14}, Lcom/sec/android/gallery3d/data/Path;->getParent()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/sec/android/gallery3d/data/PathMatcher;->match(Lcom/sec/android/gallery3d/data/Path;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v13

    packed-switch v13, :pswitch_data_0

    :try_start_1
    iget-object v13, v11, Lcom/sec/android/gallery3d/data/MediaSource$PathId;->path:Lcom/sec/android/gallery3d/data/Path;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/gallery3d/data/SearchSource;->createMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v10

    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v10, :cond_0

    :try_start_3
    iget v6, v11, Lcom/sec/android/gallery3d/data/MediaSource$PathId;->id:I

    check-cast v10, Lcom/sec/android/gallery3d/data/MediaItem;

    move-object/from16 v0, p2

    invoke-interface {v0, v6, v10}, Lcom/sec/android/gallery3d/data/MediaSet$ItemConsumer;->consume(ILcom/sec/android/gallery3d/data/MediaItem;)Z
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v6

    if-nez v6, :cond_0

    :cond_2
    :goto_2
    return-void

    :pswitch_0
    :try_start_4
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v5, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    :cond_3
    :try_start_5
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v13, v11, Lcom/sec/android/gallery3d/data/MediaSource$PathId;->path:Lcom/sec/android/gallery3d/data/Path;

    iget v14, v11, Lcom/sec/android/gallery3d/data/MediaSource$PathId;->id:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v3, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget-object v14, v11, Lcom/sec/android/gallery3d/data/MediaSource$PathId;->path:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v4, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catch_0
    move-exception v12

    const-string/jumbo v13, "SearchSource"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "cannot create media object: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v11, Lcom/sec/android/gallery3d/data/MediaSource$PathId;->path:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v8

    const-string/jumbo v6, "SearchSource"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "ClassCastException at mapMediaItems."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v8}, Ljava/lang/ClassCastException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v6, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    move-object/from16 v1, p0

    move-object/from16 v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/gallery3d/data/SearchSource;->processMapMediaItems(Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/sec/android/gallery3d/data/MediaSet$ItemConsumer;Z)V

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
