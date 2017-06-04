.class public Lcom/sec/android/gallery3d/data/OneItemAlbum;
.super Lcom/sec/android/gallery3d/data/MediaSet;
.source "OneItemAlbum.java"

# interfaces
.implements Lcom/sec/android/gallery3d/data/ContentListener;


# static fields
.field private static final COUNT_PROJECTION:[Ljava/lang/String;

.field private static final INVALID_COUNT:I = -0x1

.field private static final TAG:Ljava/lang/String; = "OneItemAlbum"

.field public static final TYPE_LOCAL:I = 0x0

.field public static final TYPE_SCLOUD:I = 0x1

.field public static final TYPE_UNION:I = 0x64

.field private static final WATCH_URI_IMAGE:[Landroid/net/Uri;

.field private static final WATCH_URI_SCLOUD_IMAGE:[Landroid/net/Uri;

.field private static final WATCH_URI_SCLOUD_VIDEO:[Landroid/net/Uri;

.field private static final WATCH_URI_UNION_IMAGE:[Landroid/net/Uri;

.field private static final WATCH_URI_UNION_VIDEO:[Landroid/net/Uri;

.field private static final WATCH_URI_VIDEO:[Landroid/net/Uri;


# instance fields
.field private final mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

.field private mBaseUri:Landroid/net/Uri;

.field private mCachedCount:I

.field private mIsImage:Z

.field private final mItemType:I

.field private final mMediaId:I

.field private final mMediaType:I

.field private final mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

.field private final mResolver:Landroid/content/ContentResolver;

.field private mWatchUri:[Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "count(*)"

    aput-object v1, v0, v2

    sput-object v0, Lcom/sec/android/gallery3d/data/OneItemAlbum;->COUNT_PROJECTION:[Ljava/lang/String;

    new-array v0, v3, [Landroid/net/Uri;

    sget-object v1, Lcom/sec/android/gallery3d/data/OneItemAlbum;->IMAGE_URI:Landroid/net/Uri;

    aput-object v1, v0, v2

    sput-object v0, Lcom/sec/android/gallery3d/data/OneItemAlbum;->WATCH_URI_IMAGE:[Landroid/net/Uri;

    new-array v0, v3, [Landroid/net/Uri;

    sget-object v1, Lcom/sec/android/gallery3d/data/OneItemAlbum;->VIDEO_URI:Landroid/net/Uri;

    aput-object v1, v0, v2

    sput-object v0, Lcom/sec/android/gallery3d/data/OneItemAlbum;->WATCH_URI_VIDEO:[Landroid/net/Uri;

    new-array v0, v3, [Landroid/net/Uri;

    invoke-static {}, Lcom/samsung/android/scloud/cloudagent/CloudStore$Images;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v2

    sput-object v0, Lcom/sec/android/gallery3d/data/OneItemAlbum;->WATCH_URI_SCLOUD_IMAGE:[Landroid/net/Uri;

    new-array v0, v3, [Landroid/net/Uri;

    invoke-static {}, Lcom/samsung/android/scloud/cloudagent/CloudStore$Videos;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v2

    sput-object v0, Lcom/sec/android/gallery3d/data/OneItemAlbum;->WATCH_URI_SCLOUD_VIDEO:[Landroid/net/Uri;

    new-array v0, v3, [Landroid/net/Uri;

    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->CMH_IMAGE_WATCH_URI:Landroid/net/Uri;

    aput-object v1, v0, v2

    sput-object v0, Lcom/sec/android/gallery3d/data/OneItemAlbum;->WATCH_URI_UNION_IMAGE:[Landroid/net/Uri;

    new-array v0, v3, [Landroid/net/Uri;

    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->CMH_VIDEO_WATCH_URI:Landroid/net/Uri;

    aput-object v1, v0, v2

    sput-object v0, Lcom/sec/android/gallery3d/data/OneItemAlbum;->WATCH_URI_UNION_VIDEO:[Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/app/GalleryApp;Lcom/sec/android/gallery3d/data/Path;III)V
    .locals 3

    invoke-static {}, Lcom/sec/android/gallery3d/data/OneItemAlbum;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p2, v0, v1}, Lcom/sec/android/gallery3d/data/MediaSet;-><init>(Lcom/sec/android/gallery3d/data/Path;J)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/gallery3d/data/OneItemAlbum;->mCachedCount:I

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/OneItemAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {p1}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/OneItemAlbum;->mResolver:Landroid/content/ContentResolver;

    iput p3, p0, Lcom/sec/android/gallery3d/data/OneItemAlbum;->mMediaType:I

    iput p4, p0, Lcom/sec/android/gallery3d/data/OneItemAlbum;->mMediaId:I

    iput p5, p0, Lcom/sec/android/gallery3d/data/OneItemAlbum;->mItemType:I

    iget v0, p0, Lcom/sec/android/gallery3d/data/OneItemAlbum;->mMediaType:I

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/data/OneItemAlbum;->initInfoByType(I)V

    new-instance v0, Lcom/sec/android/gallery3d/data/ChangeNotifier;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/OneItemAlbum;->mWatchUri:[Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/OneItemAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/gallery3d/data/ChangeNotifier;-><init>(Lcom/sec/android/gallery3d/data/MediaSet;[Landroid/net/Uri;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/OneItemAlbum;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    return-void
.end method

.method private getAlbumName(I)Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/OneItemAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const v1, 0x7f0a003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const v1, 0x7f0a04c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getLocalMediaItem()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget v1, p0, Lcom/sec/android/gallery3d/data/OneItemAlbum;->mMediaId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/OneItemAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    iget-boolean v3, p0, Lcom/sec/android/gallery3d/data/OneItemAlbum;->mIsImage:Z

    invoke-static {v2, v3, v0}, Lcom/sec/android/gallery3d/data/LocalAlbum;->getMediaItemById(Lcom/sec/android/gallery3d/app/GalleryApp;ZLjava/util/ArrayList;)[Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method private getSCloudMediaItem()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget v1, p0, Lcom/sec/android/gallery3d/data/OneItemAlbum;->mMediaId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/OneItemAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    iget-boolean v3, p0, Lcom/sec/android/gallery3d/data/OneItemAlbum;->mIsImage:Z

    invoke-static {v2, v3, v0}, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbum;->getMediaItemById(Lcom/sec/android/gallery3d/app/GalleryApp;ZLjava/util/ArrayList;)[Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method private getUnionMediaItem()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget v1, p0, Lcom/sec/android/gallery3d/data/OneItemAlbum;->mMediaId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/OneItemAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    iget-boolean v3, p0, Lcom/sec/android/gallery3d/data/OneItemAlbum;->mIsImage:Z

    invoke-static {v2, v3, v0}, Lcom/sec/android/gallery3d/data/UnionAlbum;->getMediaItemById(Lcom/sec/android/gallery3d/app/GalleryApp;ZLjava/util/ArrayList;)[Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method private initInfoByType(I)V
    .locals 3

    const/16 v2, 0x64

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    iput-boolean v1, p0, Lcom/sec/android/gallery3d/data/OneItemAlbum;->mIsImage:Z

    sget-object v0, Lcom/sec/android/gallery3d/data/OneItemAlbum;->IMAGE_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/OneItemAlbum;->mBaseUri:Landroid/net/Uri;

    sget-object v0, Lcom/sec/android/gallery3d/data/OneItemAlbum;->WATCH_URI_IMAGE:[Landroid/net/Uri;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/OneItemAlbum;->mWatchUri:[Landroid/net/Uri;

    :goto_0
    return-void

    :pswitch_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/data/OneItemAlbum;->mIsImage:Z

    iget v0, p0, Lcom/sec/android/gallery3d/data/OneItemAlbum;->mItemType:I

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/samsung/android/scloud/cloudagent/CloudStore$Videos;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/OneItemAlbum;->mBaseUri:Landroid/net/Uri;

    sget-object v0, Lcom/sec/android/gallery3d/data/OneItemAlbum;->WATCH_URI_SCLOUD_VIDEO:[Landroid/net/Uri;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/OneItemAlbum;->mWatchUri:[Landroid/net/Uri;

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/sec/android/gallery3d/data/OneItemAlbum;->mItemType:I

    if-ne v0, v2, :cond_1

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->VIDEOS_TABLE_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/OneItemAlbum;->mBaseUri:Landroid/net/Uri;

    sget-object v0, Lcom/sec/android/gallery3d/data/OneItemAlbum;->WATCH_URI_UNION_VIDEO:[Landroid/net/Uri;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/OneItemAlbum;->mWatchUri:[Landroid/net/Uri;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/sec/android/gallery3d/data/OneItemAlbum;->VIDEO_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/OneItemAlbum;->mBaseUri:Landroid/net/Uri;

    sget-object v0, Lcom/sec/android/gallery3d/data/OneItemAlbum;->WATCH_URI_VIDEO:[Landroid/net/Uri;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/OneItemAlbum;->mWatchUri:[Landroid/net/Uri;

    goto :goto_0

    :pswitch_2
    iput-boolean v1, p0, Lcom/sec/android/gallery3d/data/OneItemAlbum;->mIsImage:Z

    iget v0, p0, Lcom/sec/android/gallery3d/data/OneItemAlbum;->mItemType:I

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/samsung/android/scloud/cloudagent/CloudStore$Images;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/OneItemAlbum;->mBaseUri:Landroid/net/Uri;

    sget-object v0, Lcom/sec/android/gallery3d/data/OneItemAlbum;->WATCH_URI_SCLOUD_IMAGE:[Landroid/net/Uri;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/OneItemAlbum;->mWatchUri:[Landroid/net/Uri;

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/sec/android/gallery3d/data/OneItemAlbum;->mItemType:I

    if-ne v0, v2, :cond_3

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->IMAGES_TABLE_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/OneItemAlbum;->mBaseUri:Landroid/net/Uri;

    sget-object v0, Lcom/sec/android/gallery3d/data/OneItemAlbum;->WATCH_URI_UNION_IMAGE:[Landroid/net/Uri;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/OneItemAlbum;->mWatchUri:[Landroid/net/Uri;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/sec/android/gallery3d/data/OneItemAlbum;->IMAGE_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/OneItemAlbum;->mBaseUri:Landroid/net/Uri;

    sget-object v0, Lcom/sec/android/gallery3d/data/OneItemAlbum;->WATCH_URI_IMAGE:[Landroid/net/Uri;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/OneItemAlbum;->mWatchUri:[Landroid/net/Uri;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    iget v1, p0, Lcom/sec/android/gallery3d/data/OneItemAlbum;->mItemType:I

    sparse-switch v1, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :sswitch_0
    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/OneItemAlbum;->getLocalMediaItem()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/OneItemAlbum;->getSCloudMediaItem()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/OneItemAlbum;->getUnionMediaItem()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x64 -> :sswitch_2
    .end sparse-switch
.end method

.method public getMediaItemCount()I
    .locals 10

    const/4 v9, 0x0

    iget v0, p0, Lcom/sec/android/gallery3d/data/OneItemAlbum;->mCachedCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v7, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/OneItemAlbum;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/OneItemAlbum;->mBaseUri:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/gallery3d/data/OneItemAlbum;->COUNT_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/gallery3d/data/OneItemAlbum;->mMediaId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "OneItemAlbum"

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-nez v7, :cond_0

    const-string/jumbo v0, "OneItemAlbum"

    const-string/jumbo v1, "query fail"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    move v0, v9

    :goto_0
    return v0

    :cond_0
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/common/Utils;->assertTrue(Z)V

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/OneItemAlbum;->mCachedCount:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :cond_1
    :goto_1
    iget v0, p0, Lcom/sec/android/gallery3d/data/OneItemAlbum;->mCachedCount:I

    goto :goto_0

    :catch_0
    move-exception v8

    :try_start_2
    const-string/jumbo v0, "OneItemAlbum"

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

.method public getName()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/OneItemAlbum;->mMediaType:I

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/data/OneItemAlbum;->getAlbumName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onContentDirty()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/OneItemAlbum;->notifyContentChanged()V

    return-void
.end method

.method public reload()J
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/OneItemAlbum;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/OneItemAlbum;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/gallery3d/data/OneItemAlbum;->mCachedCount:I

    invoke-static {}, Lcom/sec/android/gallery3d/data/OneItemAlbum;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/data/OneItemAlbum;->mDataVersion:J

    :cond_0
    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/OneItemAlbum;->mDataVersion:J

    return-wide v0
.end method
