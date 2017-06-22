.class public Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossSmallItem;
.super Ljava/lang/Object;
.source "CrossSmallItem.java"


# static fields
.field private static final FILE_PROJECTION:[Ljava/lang/String;

.field private static final INDEX_ID:I = 0x0

.field private static final INDEX_SIZE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CrossSmallItem"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mFileSize:I

.field private mMediaId:I

.field private final mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_size"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossSmallItem;->FILE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossSmallItem;->mFileSize:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossSmallItem;->mMediaId:I

    iput-object p1, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossSmallItem;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossSmallItem;->mUri:Landroid/net/Uri;

    invoke-direct {p0}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossSmallItem;->loadData()V

    return-void
.end method

.method private loadData()V
    .locals 9

    const-string v0, "CrossSmallItem"

    const-string v1, "loadData"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossSmallItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossSmallItem;->mUri:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossSmallItem;->FILE_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossSmallItem;->mMediaId:I

    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossSmallItem;->mFileSize:I

    const-string v0, "CrossSmallItem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadData mediaId ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossSmallItem;->mMediaId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v6, :cond_1

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v6, 0x0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v8

    const-string v0, "CrossSmallItem"

    const-string v1, "fail to close"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v7

    :try_start_2
    const-string v0, "CrossSmallItem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load date fail"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_1

    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    const/4 v6, 0x0

    goto :goto_0

    :catch_2
    move-exception v8

    const-string v0, "CrossSmallItem"

    const-string v1, "fail to close"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    const/4 v6, 0x0

    :cond_2
    :goto_1
    throw v0

    :catch_3
    move-exception v8

    const-string v1, "CrossSmallItem"

    const-string v2, "fail to close"

    invoke-static {v1, v2, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public getFileSize()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossSmallItem;->mFileSize:I

    return v0
.end method

.method public getMediaId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossSmallItem;->mMediaId:I

    return v0
.end method
