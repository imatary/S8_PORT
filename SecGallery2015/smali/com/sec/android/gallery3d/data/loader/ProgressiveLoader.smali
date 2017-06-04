.class abstract Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;
.super Ljava/lang/Object;
.source "ProgressiveLoader.java"

# interfaces
.implements Lcom/sec/android/gallery3d/data/loader/DataLoader;


# static fields
.field private static final INDEX_NOT_FOUND:I = -0x1

.field private static final MAX_PATH_SIZE:I = 0x28

.field private static final TAG:Ljava/lang/String; = "ProgressiveLoader"

.field private static final VALUE_UNCOUNTED:I = -0x1


# instance fields
.field private final lock:Ljava/util/concurrent/locks/ReadWriteLock;

.field private final mContext:Landroid/content/Context;

.field private mEndIndex:I

.field private mFilterBit:I

.field final mLoaderHelper:Lcom/sec/android/gallery3d/data/loader/LoaderHelper;

.field private final mMediaIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation
.end field

.field private final mReadLock:Ljava/util/concurrent/locks/Lock;

.field private mStartIndex:I

.field private mTotalMediaItemCount:I

.field private final mWriteLock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->mPaths:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->mMediaIds:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->mReadLock:Ljava/util/concurrent/locks/Lock;

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->mTotalMediaItemCount:I

    iput v2, p0, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->mFilterBit:I

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->mContext:Landroid/content/Context;

    iput v2, p0, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->mStartIndex:I

    const/16 v0, 0x27

    iput v0, p0, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->mEndIndex:I

    new-instance v0, Lcom/sec/android/gallery3d/data/loader/LoaderHelper;

    invoke-direct {v0, p1}, Lcom/sec/android/gallery3d/data/loader/LoaderHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->mLoaderHelper:Lcom/sec/android/gallery3d/data/loader/LoaderHelper;

    iget v0, p0, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->mFilterBit:I

    or-int/2addr v0, p2

    iput v0, p0, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->mFilterBit:I

    return-void
.end method

.method private doGetCount()I
    .locals 2

    const/4 v0, -0x1

    iget v1, p0, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->mTotalMediaItemCount:I

    if-eq v1, v0, :cond_0

    iget v0, p0, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->mTotalMediaItemCount:I

    :cond_0
    return v0
.end method

.method private doGetRangePathFromCache(II)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->isOutOfRange(II)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v4, p0, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->mStartIndex:I

    sub-int v0, p1, v4

    :goto_0
    if-gt v0, p2, :cond_0

    if-ge v0, v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private doGetRangePathFromDB(II)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->load(II)Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method private doIndexOf(Lcom/sec/android/gallery3d/data/Path;)I
    .locals 3

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->IsUPSM:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/Path;->split()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x2

    if-gt v1, v2, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->findTargetIndex(Lcom/sec/android/gallery3d/data/Path;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string/jumbo v1, "ProgressiveLoader"

    const-string/jumbo v2, "not found in cache!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->queryTargetIndex(Lcom/sec/android/gallery3d/data/Path;)I

    move-result v0

    goto :goto_0
.end method

.method private doLoad()Z
    .locals 7

    const/4 v3, 0x0

    iput v3, p0, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->mStartIndex:I

    const/16 v4, 0x27

    iput v4, p0, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->mEndIndex:I

    const/4 v0, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    :try_start_0
    invoke-direct {p0, v4, v5, v6}, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->getCursor(IILcom/sec/android/gallery3d/data/Path;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->mMediaIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    const/4 v4, 0x0

    iput v4, p0, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->mTotalMediaItemCount:I

    const/4 v4, 0x0

    iput v4, p0, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->mStartIndex:I

    const/4 v4, 0x0

    iput v4, p0, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->mEndIndex:I

    const-string/jumbo v4, "ProgressiveLoader"

    const-string/jumbo v5, "query fail: load"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_0
    return v3

    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->mMediaIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    iput v4, p0, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->mTotalMediaItemCount:I

    iget v4, p0, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->mTotalMediaItemCount:I

    if-nez v4, :cond_1

    const/4 v4, 0x0

    iput v4, p0, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->mStartIndex:I

    const/4 v4, 0x0

    iput v4, p0, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->mEndIndex:I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :cond_1
    :try_start_2
    iget v2, p0, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->mStartIndex:I

    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->mEndIndex:I

    if-gt v2, v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->convertCursorToPath(Landroid/database/Cursor;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->mMediaIds:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->convertCursorToMediaId(Landroid/database/Cursor;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->mEndIndex:I
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v0}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_2
    const/4 v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    const-string/jumbo v3, "ProgressiveLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SQLiteException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v0}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_2

    :catchall_0
    move-exception v3

    invoke-static {v0}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v3
.end method

.method private doLoad(II)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, v3}, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->getCursor(IILcom/sec/android/gallery3d/data/Path;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->mMediaIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    const-string/jumbo v3, "ProgressiveLoader"

    const-string/jumbo v4, "query fail:"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    invoke-static {v0}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_0
    return v3

    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->mMediaIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iput p1, p0, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->mStartIndex:I

    move v2, p1

    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    if-gt v2, p2, :cond_2

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->convertCursorToPath(Landroid/database/Cursor;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->mMediaIds:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->convertCursorToMediaId(Landroid/database/Cursor;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->mEndIndex:I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_2
    const/4 v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string/jumbo v3, "ProgressiveLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SQLiteException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v0}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_2

    :catchall_0
    move-exception v3

    invoke-static {v0}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v3
.end method

.method private findTargetIndex(Lcom/sec/android/gallery3d/data/Path;)I
    .locals 8

    const/4 v5, -0x1

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->mMediaIds:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "/local/image/item"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v6, "/local/video/item"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    const/4 v6, -0x1

    :goto_0
    return v6

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/Path;->split()[Ljava/lang/String;

    move-result-object v3

    array-length v6, v3

    add-int/lit8 v6, v6, -0x1

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget v0, p0, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->mStartIndex:I

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->mMediaIds:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_3

    move v5, v0

    :cond_2
    move v6, v5

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private getCursor(IILcom/sec/android/gallery3d/data/Path;)Landroid/database/Cursor;
    .locals 7

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz p3, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->mLoaderHelper:Lcom/sec/android/gallery3d/data/loader/LoaderHelper;

    invoke-virtual {v1, p3}, Lcom/sec/android/gallery3d/data/loader/LoaderHelper;->load(Lcom/sec/android/gallery3d/data/Path;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v4

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, p3}, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->getProjection(Lcom/sec/android/gallery3d/data/Path;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p3}, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->getWhere(Lcom/sec/android/gallery3d/data/Path;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->getSortOrder(II)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "ProgressiveLoader"

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    goto :goto_0
.end method

.method private isOutOfRange(II)Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->mStartIndex:I

    if-lt p1, v1, :cond_0

    iget v1, p0, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->mEndIndex:I

    if-ge v1, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->mEndIndex:I

    if-lt v1, p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private queryTargetIndex(Lcom/sec/android/gallery3d/data/Path;)I
    .locals 6

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    :try_start_0
    invoke-direct {p0, v3, v4, p1}, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->getCursor(IILcom/sec/android/gallery3d/data/Path;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v3, "ProgressiveLoader"

    const-string/jumbo v4, "query fail: queryTargetIndex"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_1
    return v0

    :cond_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    const-string/jumbo v3, "ProgressiveLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SQLiteException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v1}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_0
    move-exception v3

    invoke-static {v1}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v3
.end method


# virtual methods
.method protected abstract convertCursorToMediaId(Landroid/database/Cursor;)I
.end method

.method protected abstract convertCursorToPath(Landroid/database/Cursor;)Lcom/sec/android/gallery3d/data/Path;
.end method

.method public getCount()I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->doGetCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method protected abstract getProjection(Lcom/sec/android/gallery3d/data/Path;)[Ljava/lang/String;
.end method

.method public getRangePath(II)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation

    add-int v2, p2, p1

    add-int/lit8 v0, v2, -0x1

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->doGetRangePathFromCache(II)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    if-nez v1, :cond_0

    :try_start_1
    invoke-direct {p0, p1, v0}, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->doGetRangePathFromDB(II)Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    :cond_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2

    :catchall_1
    move-exception v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2
.end method

.method protected abstract getSortOrder(II)Ljava/lang/String;
.end method

.method protected abstract getUri()Landroid/net/Uri;
.end method

.method protected abstract getWhere(Lcom/sec/android/gallery3d/data/Path;)Ljava/lang/String;
.end method

.method hasFilter(I)Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->mFilterBit:I

    and-int/2addr v1, p1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public indexOf(Lcom/sec/android/gallery3d/data/Path;)I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->doIndexOf(Lcom/sec/android/gallery3d/data/Path;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public load(II)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->doLoad(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public loadAll()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->doLoad()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/loader/ProgressiveLoader;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
