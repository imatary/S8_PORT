.class public Lcom/sec/android/gallery3d/data/SecureAlbum;
.super Lcom/sec/android/gallery3d/data/MediaSet;
.source "SecureAlbum.java"


# static fields
.field private static final PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "SecureAlbum"

.field private static final mMaxImageId:I = -0x80000000

.field private static final mMaxVideoId:I = -0x80000000

.field private static final mMinImageId:I = 0x7fffffff

.field private static final mMinVideoId:I = 0x7fffffff

.field private static final mWatchUris:[Landroid/net/Uri;


# instance fields
.field private final mAllItemTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mAllItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDataManager:Lcom/sec/android/gallery3d/data/LibraryDataManager;

.field private final mExistingItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

.field private final mShowUnlockItem:Z

.field private final mUnlockItem:Lcom/sec/android/gallery3d/data/MediaItem;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/sec/android/gallery3d/data/SecureAlbum;->PROJECTION:[Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/net/Uri;

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    aput-object v1, v0, v2

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/android/gallery3d/data/SecureAlbum;->mWatchUris:[Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 2

    invoke-static {}, Lcom/sec/android/gallery3d/data/SecureAlbum;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/gallery3d/data/MediaSet;-><init>(Lcom/sec/android/gallery3d/data/Path;J)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/SecureAlbum;->mAllItems:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/SecureAlbum;->mAllItemTypes:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/SecureAlbum;->mExistingItems:Ljava/util/ArrayList;

    invoke-interface {p2}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/SecureAlbum;->mContext:Landroid/content/Context;

    invoke-interface {p2}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getDataManager()Lcom/sec/android/gallery3d/data/LibraryDataManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/SecureAlbum;->mDataManager:Lcom/sec/android/gallery3d/data/LibraryDataManager;

    new-instance v0, Lcom/sec/android/gallery3d/data/ChangeNotifier;

    sget-object v1, Lcom/sec/android/gallery3d/data/SecureAlbum;->mWatchUris:[Landroid/net/Uri;

    invoke-direct {v0, p0, v1, p2}, Lcom/sec/android/gallery3d/data/ChangeNotifier;-><init>(Lcom/sec/android/gallery3d/data/MediaSet;[Landroid/net/Uri;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/SecureAlbum;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    iput-object p3, p0, Lcom/sec/android/gallery3d/data/SecureAlbum;->mUnlockItem:Lcom/sec/android/gallery3d/data/MediaItem;

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/data/SecureAlbum;->isCameraBucketEmpty(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/data/SecureAlbum;->isCameraBucketEmpty(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/gallery3d/data/SecureAlbum;->mShowUnlockItem:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCameraBucketEmpty(Landroid/net/Uri;)Z
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v2, "limit"

    const-string/jumbo v3, "1"

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    new-array v4, v8, [Ljava/lang/String;

    sget v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SecureAlbum;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sec/android/gallery3d/data/SecureAlbum;->PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "bucket_id = ?"

    const/4 v5, 0x0

    const-string/jumbo v6, "SecureAlbum"

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-nez v7, :cond_0

    :goto_0
    return v8

    :cond_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    move v0, v8

    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v8, v0

    goto :goto_0

    :cond_1
    move v0, v9

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private queryExistingIds(Landroid/net/Uri;II)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "II)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const v0, 0x7fffffff

    if-eq p2, v0, :cond_0

    const/high16 v0, -0x80000000

    if-ne p3, v0, :cond_1

    :cond_0
    :goto_0
    return-object v8

    :cond_1
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    const/4 v0, 0x1

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SecureAlbum;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sec/android/gallery3d/data/SecureAlbum;->PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "_id BETWEEN ? AND ?"

    const/4 v5, 0x0

    const-string/jumbo v6, "SecureAlbum"

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    :goto_1
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private updateExistingItems()V
    .locals 9

    const v8, 0x7fffffff

    const/high16 v7, -0x80000000

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/SecureAlbum;->mAllItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    return-void

    :cond_1
    sget-object v6, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v6, v8, v7}, Lcom/sec/android/gallery3d/data/SecureAlbum;->queryExistingIds(Landroid/net/Uri;II)Ljava/util/ArrayList;

    move-result-object v2

    sget-object v6, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v6, v8, v7}, Lcom/sec/android/gallery3d/data/SecureAlbum;->queryExistingIds(Landroid/net/Uri;II)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/SecureAlbum;->mExistingItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/SecureAlbum;->mAllItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/SecureAlbum;->mAllItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/Path;

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/SecureAlbum;->mAllItemTypes:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v3, :cond_3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/SecureAlbum;->mExistingItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/SecureAlbum;->mExistingItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/SecureAlbum;->mExistingItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v6, v3, 0x1

    if-lt p1, v6, :cond_1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    add-int v6, p1, p2

    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/SecureAlbum;->mExistingItems:Ljava/util/ArrayList;

    invoke-virtual {v6, p1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sub-int v6, v2, p1

    new-array v0, v6, [Lcom/sec/android/gallery3d/data/MediaItem;

    new-instance v1, Lcom/sec/android/gallery3d/data/SecureAlbum$1;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/gallery3d/data/SecureAlbum$1;-><init>(Lcom/sec/android/gallery3d/data/SecureAlbum;[Lcom/sec/android/gallery3d/data/MediaItem;)V

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/SecureAlbum;->mDataManager:Lcom/sec/android/gallery3d/data/LibraryDataManager;

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v1, v7}, Lcom/sec/android/gallery3d/data/LibraryDataManager;->mapMediaItems(Ljava/util/ArrayList;Lcom/sec/android/gallery3d/data/MediaSet$ItemConsumer;I)V

    new-instance v4, Ljava/util/ArrayList;

    sub-int v6, v2, p1

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v4, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    iget-boolean v6, p0, Lcom/sec/android/gallery3d/data/SecureAlbum;->mShowUnlockItem:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/SecureAlbum;->mUnlockItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getMediaItemCount()I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SecureAlbum;->mExistingItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/SecureAlbum;->mShowUnlockItem:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "secure"

    return-object v0
.end method

.method public isLeafAlbum()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public reload()J
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SecureAlbum;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/gallery3d/data/SecureAlbum;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/data/SecureAlbum;->mDataVersion:J

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/SecureAlbum;->updateExistingItems()V

    :cond_0
    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/SecureAlbum;->mDataVersion:J

    return-wide v0
.end method
