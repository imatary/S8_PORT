.class public Lcom/sec/android/gallery3d/data/UnionFavoriteAlbumSet;
.super Lcom/sec/android/gallery3d/data/MediaSet;
.source "UnionFavoriteAlbumSet.java"


# static fields
.field private static final CMH_MEDIATYPE_IMAGE:Ljava/lang/String; = "(media_type=1 AND  (file_status = 0 or file_status = 4) "

.field private static final CMH_MEDIATYPE_IMAGES_AND_VIDEOS:Ljava/lang/String; = "((media_type=1 OR media_type=3) AND  (file_status = 0 or file_status = 4) "

.field private static final CMH_MEDIATYPE_VIDEO:Ljava/lang/String; = "(media_type=3 AND  (file_status = 0 or file_status = 4) "

.field private static final COUNT_PROJECTION:[Ljava/lang/String;

.field static final MEDIATYPE_IMAGE:Ljava/lang/String; = "media_type=1"

.field static final MEDIATYPE_IMAGES_AND_VIDEOS:Ljava/lang/String; = "(media_type=1 OR media_type=3)"

.field static final MEDIATYPE_VIDEO:Ljava/lang/String; = "media_type=3"

.field public static final PATH_IMAGE:Lcom/sec/android/gallery3d/data/Path;

.field public static final PATH_VIDEO:Lcom/sec/android/gallery3d/data/Path;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mAlbums:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaSet;",
            ">;"
        }
    .end annotation
.end field

.field private final mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

.field private final mBaseUri:Landroid/net/Uri;

.field private mIsLoading:Z

.field private mLoadBuffer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaSet;",
            ">;"
        }
    .end annotation
.end field

.field mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

.field mPath:Lcom/sec/android/gallery3d/data/Path;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mType:I

.field private final mWhereClause:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string/jumbo v0, "/union/favorite/image"

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/data/UnionFavoriteAlbumSet;->PATH_IMAGE:Lcom/sec/android/gallery3d/data/Path;

    const-string/jumbo v0, "/union/favorite/video"

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/data/UnionFavoriteAlbumSet;->PATH_VIDEO:Lcom/sec/android/gallery3d/data/Path;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "count(*)"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/gallery3d/data/UnionFavoriteAlbumSet;->COUNT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;)V
    .locals 2

    invoke-static {}, Lcom/sec/android/gallery3d/data/UnionFavoriteAlbumSet;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/gallery3d/data/MediaSet;-><init>(Lcom/sec/android/gallery3d/data/Path;J)V

    const-string/jumbo v0, "UnionFavoriteAlbumSet"

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UnionFavoriteAlbumSet;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UnionFavoriteAlbumSet;->mAlbums:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/sec/android/gallery3d/data/UnionFavoriteAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionFavoriteAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UnionFavoriteAlbumSet;->mResolver:Landroid/content/ContentResolver;

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/UnionFavoriteAlbumSet;->mPath:Lcom/sec/android/gallery3d/data/Path;

    sget-object v0, Lcom/sec/android/gallery3d/data/UnionFavoriteAlbumSet;->CMH_BASE_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UnionFavoriteAlbumSet;->mBaseUri:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "is_favorite=1"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UnionFavoriteAlbumSet;->mWhereClause:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/data/UnionFavoriteAlbumSet;->getTypeFromPath(Lcom/sec/android/gallery3d/data/Path;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/UnionFavoriteAlbumSet;->mType:I

    new-instance v0, Lcom/sec/android/gallery3d/data/ChangeNotifier;

    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->CMH_ALL_WATCH_URI:[Landroid/net/Uri;

    invoke-direct {v0, p0, v1, p2}, Lcom/sec/android/gallery3d/data/ChangeNotifier;-><init>(Lcom/sec/android/gallery3d/data/MediaSet;[Landroid/net/Uri;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UnionFavoriteAlbumSet;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    return-void
.end method

.method private loadSubMediaSets()Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaSet;",
            ">;"
        }
    .end annotation

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    const/4 v9, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionFavoriteAlbumSet;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionFavoriteAlbumSet;->mBaseUri:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/gallery3d/data/UnionFavoriteAlbumSet;->COUNT_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/UnionFavoriteAlbumSet;->mWhereClause:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/UnionFavoriteAlbumSet;->makeWhereClause()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/UnionFavoriteAlbumSet;->TAG:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-nez v9, :cond_0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v9}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_0
    return-object v7

    :cond_0
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/common/Utils;->assertTrue(Z)V

    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionFavoriteAlbumSet;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "favoriteCount is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v11, :cond_1

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v9}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :cond_1
    :try_start_2
    sget v8, Lcom/sec/android/gallery3d/data/LogicalBucketList;->FAVORITE_BUCKET_ID:I

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionFavoriteAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/gallery3d/data/UnionFavoriteAlbumSet;->mType:I

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionFavoriteAlbumSet;->mPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {p0, v0, v1, v2, v8}, Lcom/sec/android/gallery3d/data/UnionFavoriteAlbumSet;->getUnionAlbum(Lcom/sec/android/gallery3d/data/DataManager;ILcom/sec/android/gallery3d/data/Path;I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v9}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :catch_0
    move-exception v10

    :try_start_3
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionFavoriteAlbumSet;->TAG:Ljava/lang/String;

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v9}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v9}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionFavoriteAlbumSet;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionFavoriteAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaSet;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionFavoriteAlbumSet;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSubMediaSetCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionFavoriteAlbumSet;->mAlbums:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionFavoriteAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getTypeFromPath(Lcom/sec/android/gallery3d/data/Path;)I
    .locals 5

    const/4 v4, 0x2

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/Path;->split()[Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "null"

    aget-object v2, v0, v4

    const-string/jumbo v3, "all"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v1, "all"

    :goto_0
    invoke-static {v1}, Lcom/sec/android/gallery3d/data/UnionFavoriteAlbumSet;->getTypeFromString(Ljava/lang/String;)I

    move-result v2

    return v2

    :cond_0
    aget-object v2, v0, v4

    const-string/jumbo v3, "image"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v1, "image"

    goto :goto_0

    :cond_1
    aget-object v2, v0, v4

    const-string/jumbo v3, "video"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v1, "video"

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method getUnionAlbum(Lcom/sec/android/gallery3d/data/DataManager;ILcom/sec/android/gallery3d/data/Path;I)Lcom/sec/android/gallery3d/data/MediaSet;
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p3, p4}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/sec/android/gallery3d/data/DataManager;->peekMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v2

    if-eqz v2, :cond_0

    check-cast v2, Lcom/sec/android/gallery3d/data/MediaSet;

    :goto_0
    return-object v2

    :cond_0
    packed-switch p2, :pswitch_data_0

    :pswitch_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :pswitch_1
    new-instance v2, Lcom/sec/android/gallery3d/data/UnionFavoriteAlbum;

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/UnionFavoriteAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-direct {v2, v3, v5, p4, v8}, Lcom/sec/android/gallery3d/data/UnionFavoriteAlbum;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;IZ)V

    goto :goto_0

    :pswitch_2
    new-instance v2, Lcom/sec/android/gallery3d/data/UnionFavoriteAlbum;

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/UnionFavoriteAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-direct {v2, v3, v5, p4, v7}, Lcom/sec/android/gallery3d/data/UnionFavoriteAlbum;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;IZ)V

    goto :goto_0

    :pswitch_3
    sget-object v5, Lcom/sec/android/gallery3d/data/UnionFavoriteAlbumSet;->PATH_IMAGE:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {p0, p1, v9, v5, p4}, Lcom/sec/android/gallery3d/data/UnionFavoriteAlbumSet;->getUnionAlbum(Lcom/sec/android/gallery3d/data/DataManager;ILcom/sec/android/gallery3d/data/Path;I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v1

    const/4 v5, 0x4

    sget-object v6, Lcom/sec/android/gallery3d/data/UnionFavoriteAlbumSet;->PATH_VIDEO:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {p0, p1, v5, v6, p4}, Lcom/sec/android/gallery3d/data/UnionFavoriteAlbumSet;->getUnionAlbum(Lcom/sec/android/gallery3d/data/DataManager;ILcom/sec/android/gallery3d/data/Path;I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v4

    sget-object v0, Lcom/sec/android/gallery3d/data/DataManager;->sDateTakenComparator:Ljava/util/Comparator;

    new-instance v2, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/UnionFavoriteAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    new-array v6, v9, [Lcom/sec/android/gallery3d/data/MediaSet;

    aput-object v1, v6, v7

    aput-object v4, v6, v8

    invoke-direct {v2, v3, v0, v5, v6}, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;-><init>(Lcom/sec/android/gallery3d/data/Path;Ljava/util/Comparator;Lcom/sec/android/gallery3d/app/GalleryApp;[Lcom/sec/android/gallery3d/data/MediaSet;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public isLoading()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/UnionFavoriteAlbumSet;->mIsLoading:Z

    return v0
.end method

.method makeWhereClause()Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, ""

    iget v1, p0, Lcom/sec/android/gallery3d/data/UnionFavoriteAlbumSet;->mType:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/sec/android/gallery3d/data/UnionFavoriteAlbumSet;->mType:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "((media_type=1 OR media_type=3) AND  (file_status = 0 or file_status = 4) )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget v1, p0, Lcom/sec/android/gallery3d/data/UnionFavoriteAlbumSet;->mType:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(media_type=1 AND  (file_status = 0 or file_status = 4) )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/sec/android/gallery3d/data/UnionFavoriteAlbumSet;->mType:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(media_type=3 AND  (file_status = 0 or file_status = 4) )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public declared-synchronized reload()J
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionFavoriteAlbumSet;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionFavoriteAlbumSet;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/data/UnionFavoriteAlbumSet;->mIsLoading:Z

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/UnionFavoriteAlbumSet;->loadSubMediaSets()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/UnionFavoriteAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/data/UnionFavoriteAlbumSet;->mIsLoading:Z

    invoke-static {}, Lcom/sec/android/gallery3d/data/UnionFavoriteAlbumSet;->nextVersionNumber()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/gallery3d/data/UnionFavoriteAlbumSet;->mDataVersion:J

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionFavoriteAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionFavoriteAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/UnionFavoriteAlbumSet;->mAlbums:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/UnionFavoriteAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionFavoriteAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->reload()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/sec/android/gallery3d/data/UnionFavoriteAlbumSet;->nextVersionNumber()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/gallery3d/data/UnionFavoriteAlbumSet;->mDataVersion:J

    :cond_2
    iget-wide v2, p0, Lcom/sec/android/gallery3d/data/UnionFavoriteAlbumSet;->mDataVersion:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide v2
.end method
