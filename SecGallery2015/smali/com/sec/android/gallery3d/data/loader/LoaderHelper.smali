.class Lcom/sec/android/gallery3d/data/loader/LoaderHelper;
.super Ljava/lang/Object;
.source "LoaderHelper.java"


# static fields
.field private static final DATETAKEN_INDEX:I = 0x1

.field private static final GROUPID_INDEX:I = 0x2

.field private static final INVALID_VALUE:I = -0x1

.field private static final MEDIAID_INDEX:I = 0x0

.field private static final TAG:Ljava/lang/String; = "LoaderHelper"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDateTaken:J

.field private mGroupId:I

.field private mMediaId:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/sec/android/gallery3d/data/loader/LoaderHelper;->mMediaId:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/android/gallery3d/data/loader/LoaderHelper;->mDateTaken:J

    iput v2, p0, Lcom/sec/android/gallery3d/data/loader/LoaderHelper;->mGroupId:I

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/loader/LoaderHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getProjectionForDateAndMediaId()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "media_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "datetaken"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "group_id"

    aput-object v2, v0, v1

    return-object v0
.end method

.method private getWhereClauseForDateAndMediaId(Lcom/sec/android/gallery3d/data/Path;I)Ljava/lang/String;
    .locals 4

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "/scloud/image/item"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "/scloud/video/item"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "cloud_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_1
    const-string/jumbo v2, "/union/image/item"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "/union/video/item"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "clusterFileId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "media_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_0
.end method

.method private resetData()V
    .locals 3

    const/4 v2, -0x1

    iput v2, p0, Lcom/sec/android/gallery3d/data/loader/LoaderHelper;->mMediaId:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/android/gallery3d/data/loader/LoaderHelper;->mDateTaken:J

    iput v2, p0, Lcom/sec/android/gallery3d/data/loader/LoaderHelper;->mGroupId:I

    return-void
.end method


# virtual methods
.method getDateTaken()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/loader/LoaderHelper;->mDateTaken:J

    return-wide v0
.end method

.method public getGroupId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/loader/LoaderHelper;->mGroupId:I

    return v0
.end method

.method public getMediaId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/loader/LoaderHelper;->mMediaId:I

    return v0
.end method

.method public load(Lcom/sec/android/gallery3d/data/Path;)Z
    .locals 14

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/loader/LoaderHelper;->resetData()V

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/Path;->split()[Ljava/lang/String;

    move-result-object v10

    array-length v1, v10

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v10, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/loader/LoaderHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v7, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/loader/LoaderHelper;->getProjectionForDateAndMediaId()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v9}, Lcom/sec/android/gallery3d/data/loader/LoaderHelper;->getWhereClauseForDateAndMediaId(Lcom/sec/android/gallery3d/data/Path;I)Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHProviderTimeInterface;->VIEW_URI__TIMELINE:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "getDateAndMediaIdForPath"

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string/jumbo v1, "LoaderHelper"

    const-string/jumbo v4, "query fail: getDateAndMediaIdForPath"

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_0
    return v1

    :cond_1
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/gallery3d/data/loader/LoaderHelper;->mMediaId:I

    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/gallery3d/data/loader/LoaderHelper;->mDateTaken:J

    const/4 v1, 0x2

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/gallery3d/data/loader/LoaderHelper;->mGroupId:I

    iget v1, p0, Lcom/sec/android/gallery3d/data/loader/LoaderHelper;->mMediaId:I

    const/4 v4, -0x1

    if-eq v1, v4, :cond_2

    iget-wide v4, p0, Lcom/sec/android/gallery3d/data/loader/LoaderHelper;->mDateTaken:J
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v12, -0x1

    cmp-long v1, v4, v12

    if-nez v1, :cond_3

    :cond_2
    const/4 v1, 0x0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :cond_3
    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v8

    :try_start_2
    const-string/jumbo v1, "LoaderHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SQLiteException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v1
.end method
