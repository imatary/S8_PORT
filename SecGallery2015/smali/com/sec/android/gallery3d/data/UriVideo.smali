.class public Lcom/sec/android/gallery3d/data/UriVideo;
.super Lcom/sec/android/gallery3d/data/MediaItem;
.source "UriVideo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/data/UriVideo$BitmapJob;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UriVideo"


# instance fields
.field private isdrm:Ljava/lang/Boolean;

.field private final mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

.field private final mContentType:Ljava/lang/String;

.field private mThumbUri:Landroid/net/Uri;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/app/GalleryApp;Lcom/sec/android/gallery3d/data/Path;Landroid/net/Uri;)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/sec/android/gallery3d/data/UriVideo;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p2, v0, v1}, Lcom/sec/android/gallery3d/data/MediaItem;-><init>(Lcom/sec/android/gallery3d/data/Path;J)V

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/UriVideo;->mThumbUri:Landroid/net/Uri;

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/UriVideo;->isdrm:Ljava/lang/Boolean;

    iput-object p3, p0, Lcom/sec/android/gallery3d/data/UriVideo;->mUri:Landroid/net/Uri;

    invoke-static {p1}, Lcom/sec/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/GalleryApp;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UriVideo;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-direct {p0, p3}, Lcom/sec/android/gallery3d/data/UriVideo;->getMimeType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UriVideo;->mContentType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/app/GalleryApp;Lcom/sec/android/gallery3d/data/Path;Landroid/net/Uri;Z)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/sec/android/gallery3d/data/UriVideo;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p2, v0, v1}, Lcom/sec/android/gallery3d/data/MediaItem;-><init>(Lcom/sec/android/gallery3d/data/Path;J)V

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/UriVideo;->mThumbUri:Landroid/net/Uri;

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/UriVideo;->isdrm:Ljava/lang/Boolean;

    iput-object p3, p0, Lcom/sec/android/gallery3d/data/UriVideo;->mUri:Landroid/net/Uri;

    invoke-static {p1}, Lcom/sec/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/GalleryApp;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UriVideo;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-direct {p0, p3}, Lcom/sec/android/gallery3d/data/UriVideo;->getMimeType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UriVideo;->mContentType:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/sec/android/gallery3d/data/UriVideo;->mExistFile:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/data/UriVideo;->mIsFromMessage:Z

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/gallery3d/data/UriVideo;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UriVideo;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/data/UriVideo;)Lcom/sec/android/gallery3d/app/GalleryApp;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UriVideo;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/gallery3d/data/UriVideo;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UriVideo;->mThumbUri:Landroid/net/Uri;

    return-object v0
.end method

.method private getFilePathFromUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 11

    const/4 v7, 0x0

    const/4 v9, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UriVideo;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const-string/jumbo v3, "_data is not null"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "UriVideo"

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    const-string/jumbo v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    :cond_0
    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    move-object v10, v9

    :goto_0
    return-object v10

    :catch_0
    move-exception v8

    :try_start_1
    const-string/jumbo v0, "UriVideo"

    const-string/jumbo v1, "createFromUri: Exception"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    move-object v10, v9

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method

.method private getMimeType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 5

    const-string/jumbo v3, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/UriVideo;->isDrm()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UriVideo;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDrmUtil()Lcom/sec/android/gallery3d/util/ImageDRMUtil;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/UriVideo;->getFilePath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string/jumbo v3, ".gif"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string/jumbo v2, "image/gif"

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "http"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->parseMimetypeFromHttpUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/UriVideo;->isDrm()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UriVideo;->mUri:Landroid/net/Uri;

    invoke-direct {p0, v3}, Lcom/sec/android/gallery3d/data/UriVideo;->getFilePathFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UriVideo;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDrmUtil()Lcom/sec/android/gallery3d/util/ImageDRMUtil;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UriVideo;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public getContentUri()Landroid/net/Uri;
    .locals 3

    const-string/jumbo v1, "file"

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UriVideo;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UriVideo;->mThumbUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UriVideo;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/gallery3d/data/UriVideo;->setDownloaded(Z)Z

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UriVideo;->mThumbUri:Landroid/net/Uri;

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UriVideo;->mUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "file"

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UriVideo;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UriVideo;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/UriVideo;->isDrm()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UriVideo;->mUri:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/data/UriVideo;->getFilePathFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGroupId()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getHeight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMediaType()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UriVideo;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayUri()Landroid/net/Uri;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/UriVideo;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedOperations()J
    .locals 4

    const-wide/32 v0, 0x10000080

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/data/UriVideo;->mIsFromMessage:Z

    if-eqz v2, :cond_0

    const-wide v2, 0x8000000000L

    or-long/2addr v0, v2

    :cond_0
    return-wide v0
.end method

.method public getWidth()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDrm()Z
    .locals 3

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UriVideo;->isdrm:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    const-string/jumbo v1, "file"

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UriVideo;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UriVideo;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDrmUtil()Lcom/sec/android/gallery3d/util/ImageDRMUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UriVideo;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->isDrm(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/UriVideo;->isdrm:Ljava/lang/Boolean;

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UriVideo;->isdrm:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_1
    return v1

    :cond_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UriVideo;->mUri:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/sec/android/gallery3d/data/UriVideo;->getFilePathFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UriVideo;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDrmUtil()Lcom/sec/android/gallery3d/util/ImageDRMUtil;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->isDrm(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/UriVideo;->isdrm:Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public requestImage(I)Lcom/sec/android/gallery3d/util/ThreadPool$Job;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/sec/android/gallery3d/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/sec/android/gallery3d/data/UriVideo$BitmapJob;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/gallery3d/data/UriVideo$BitmapJob;-><init>(Lcom/sec/android/gallery3d/data/UriVideo;I)V

    return-object v0
.end method

.method public requestLargeImage()Lcom/sec/android/gallery3d/util/ThreadPool$Job;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sec/android/gallery3d/util/ThreadPool$Job",
            "<",
            "Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Cannot regquest a large image to a local video!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public rotate(I)V
    .locals 0

    return-void
.end method

.method public setThumbUri(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/UriVideo;->mThumbUri:Landroid/net/Uri;

    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/UriVideo;->mUri:Landroid/net/Uri;

    return-void
.end method
