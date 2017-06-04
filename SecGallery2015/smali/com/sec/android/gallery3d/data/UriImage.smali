.class public Lcom/sec/android/gallery3d/data/UriImage;
.super Lcom/sec/android/gallery3d/data/MediaItem;
.source "UriImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/data/UriImage$BitmapJob;,
        Lcom/sec/android/gallery3d/data/UriImage$RegionDecoderJob;
    }
.end annotation


# static fields
.field static final ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

.field private static final STATE_DOWNLOADED:I = 0x2

.field private static final STATE_DOWNLOADING:I = 0x1

.field private static final STATE_ERROR:I = -0x1

.field private static final STATE_INIT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "UriImage"

.field private static final VIDEOCOLLAGE_PATH_SEPERATOR:Ljava/lang/String; = "/.face/.collage/"


# instance fields
.field private isdrm:Ljava/lang/Boolean;

.field private mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

.field private mContentType:Ljava/lang/String;

.field private mFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private mHeight:I

.field private mRotation:I

.field private mState:I

.field private mUri:Landroid/net/Uri;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "/uri/mediaset/item"

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/data/UriImage;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/app/GalleryApp;Lcom/sec/android/gallery3d/data/Path;Landroid/net/Uri;)V
    .locals 2

    invoke-static {}, Lcom/sec/android/gallery3d/data/UriImage;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p2, v0, v1}, Lcom/sec/android/gallery3d/data/MediaItem;-><init>(Lcom/sec/android/gallery3d/data/Path;J)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/gallery3d/data/UriImage;->mState:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UriImage;->isdrm:Ljava/lang/Boolean;

    invoke-direct {p0, p1, p3}, Lcom/sec/android/gallery3d/data/UriImage;->init(Lcom/sec/android/gallery3d/app/GalleryApp;Landroid/net/Uri;)V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/UriImage;->updateAttribute()V

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/app/GalleryApp;Lcom/sec/android/gallery3d/data/Path;Landroid/net/Uri;Ljava/lang/String;Z)V
    .locals 6

    invoke-static {}, Lcom/sec/android/gallery3d/data/UriImage;->nextVersionNumber()J

    move-result-wide v4

    invoke-direct {p0, p2, v4, v5}, Lcom/sec/android/gallery3d/data/MediaItem;-><init>(Lcom/sec/android/gallery3d/data/Path;J)V

    const/4 v3, 0x0

    iput v3, p0, Lcom/sec/android/gallery3d/data/UriImage;->mState:I

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sec/android/gallery3d/data/UriImage;->isdrm:Ljava/lang/Boolean;

    invoke-direct {p0, p1, p3}, Lcom/sec/android/gallery3d/data/UriImage;->init(Lcom/sec/android/gallery3d/app/GalleryApp;Landroid/net/Uri;)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UriImage;->mContentType:Ljava/lang/String;

    if-nez v3, :cond_0

    iput-object p4, p0, Lcom/sec/android/gallery3d/data/UriImage;->mContentType:Ljava/lang/String;

    :cond_0
    iput-boolean p5, p0, Lcom/sec/android/gallery3d/data/UriImage;->mExistFile:Z

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/android/gallery3d/data/UriImage;->mIsFromMessage:Z

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v3, "content"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "android.resource"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "file"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UriImage;->mContentType:Ljava/lang/String;

    invoke-static {v3}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isJpeg(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_2

    :try_start_1
    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UriImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    :goto_0
    :try_start_2
    invoke-direct {p0, v1}, Lcom/sec/android/gallery3d/data/UriImage;->getOrientation(Ljava/io/InputStream;)I

    move-result v3

    iput v3, p0, Lcom/sec/android/gallery3d/data/UriImage;->mRotation:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    invoke-static {v1}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/UriImage;->updateAttribute()V

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    const-string/jumbo v3, "UriImage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "FileNotFoundException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-static {v1}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v3
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/data/UriImage;Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/data/UriImage;->prepareInputFile(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/gallery3d/data/UriImage;)Lcom/sec/android/gallery3d/app/GalleryApp;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UriImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/gallery3d/data/UriImage;)Landroid/os/ParcelFileDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/gallery3d/data/UriImage;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/android/gallery3d/data/UriImage;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/data/UriImage;->mWidth:I

    return p1
.end method

.method static synthetic access$602(Lcom/sec/android/gallery3d/data/UriImage;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/data/UriImage;->mHeight:I

    return p1
.end method

.method private getFilePathFromUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 12

    const/4 v11, 0x1

    const/4 v7, 0x0

    const/4 v9, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UriImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v3, "_data"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "UriImage"

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v11, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

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
    const-string/jumbo v0, "UriImage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "createFromUri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

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

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/UriImage;->isDrm()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UriImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

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

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/UriImage;->getFilePath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string/jumbo v3, ".gif"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v2, "image/gif"

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    const-string/jumbo v3, ".golf"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v2, "image/golf"

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ".mpo"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string/jumbo v2, "image/mpo"

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_8

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ".jpeg"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_5
    const-string/jumbo v2, "image/jpeg"

    goto :goto_0

    :cond_6
    const-string/jumbo v3, "http"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {p1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->parseMimetypeFromHttpUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/UriImage;->isDrm()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-direct {p0, v3}, Lcom/sec/android/gallery3d/data/UriImage;->getFilePathFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UriImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDrmUtil()Lcom/sec/android/gallery3d/util/ImageDRMUtil;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_8
    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UriImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0
.end method

.method private getOrientation(Ljava/io/InputStream;)I
    .locals 4

    new-instance v0, Lcom/sec/samsung/gallery/lib/factory/UriImageRotationFactory;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/lib/factory/UriImageRotationFactory;-><init>()V

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UriImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/lib/libinterface/UriRotationExifInterface;

    invoke-interface {v2, p1}, Lcom/sec/samsung/gallery/lib/libinterface/UriRotationExifInterface;->getOrientation(Ljava/io/InputStream;)I

    move-result v1

    return v1
.end method

.method private getVideoCollagePathFromUri()Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string/jumbo v1, ""

    :goto_0
    return-object v1

    :cond_1
    const-string/jumbo v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private init(Lcom/sec/android/gallery3d/app/GalleryApp;Landroid/net/Uri;)V
    .locals 1

    invoke-virtual {p0, p2}, Lcom/sec/android/gallery3d/data/UriImage;->setUri(Landroid/net/Uri;)V

    invoke-static {p1}, Lcom/sec/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/GalleryApp;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UriImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-direct {p0, p2}, Lcom/sec/android/gallery3d/data/UriImage;->getMimeType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UriImage;->mContentType:Ljava/lang/String;

    return-void
.end method

.method private isSharable()Z
    .locals 2

    const-string/jumbo v0, "file"

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isVideoCollageUri(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "/.face/.collage/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private needCheckPrivateImage()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "/external/file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private openFileOrDownloadTempFile(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/data/UriImage;->openOrDownloadInner(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)I

    move-result v0

    monitor-enter p0

    :try_start_0
    iput v0, p0, Lcom/sec/android/gallery3d/data/UriImage;->mState:I

    iget v1, p0, Lcom/sec/android/gallery3d/data/UriImage;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-static {v1}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private openOrDownloadInner(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)I
    .locals 12

    iget-object v9, p0, Lcom/sec/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x0

    const-string/jumbo v9, "content"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string/jumbo v9, "android.resource"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string/jumbo v9, "file"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    :cond_0
    :try_start_0
    iget-object v9, p0, Lcom/sec/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sec/android/gallery3d/data/UriImage;->isVideoCollageUri(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/UriImage;->getVideoCollagePathFromUri()Ljava/lang/String;

    move-result-object v5

    :cond_1
    iget-object v9, p0, Lcom/sec/android/gallery3d/data/UriImage;->mContentType:Ljava/lang/String;

    invoke-static {v9}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isJpeg(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    if-eqz v4, :cond_4

    new-instance v3, Ljava/io/FileInputStream;

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-direct {p0, v3}, Lcom/sec/android/gallery3d/data/UriImage;->getOrientation(Ljava/io/InputStream;)I

    move-result v9

    iput v9, p0, Lcom/sec/android/gallery3d/data/UriImage;->mRotation:I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-object v2, v3

    :goto_0
    :try_start_2
    invoke-direct {p0, v2}, Lcom/sec/android/gallery3d/data/UriImage;->getOrientation(Ljava/io/InputStream;)I

    move-result v9

    iput v9, p0, Lcom/sec/android/gallery3d/data/UriImage;->mRotation:I

    :cond_2
    iget-object v9, p0, Lcom/sec/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "content://mms/part/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    iget-object v9, p0, Lcom/sec/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "content://com.android.contacts"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    iget-object v9, p0, Lcom/sec/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "content://com.microsoft.skydrive"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    if-eqz v4, :cond_5

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v10, 0x10000000

    invoke-static {v9, v10}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/gallery3d/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    :cond_3
    :goto_1
    invoke-interface {p1}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v9

    if-eqz v9, :cond_6

    const/4 v9, 0x0

    invoke-static {v2}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    :goto_2
    return v9

    :cond_4
    :try_start_3
    iget-object v9, p0, Lcom/sec/android/gallery3d/data/UriImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v9}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    goto :goto_0

    :cond_5
    iget-object v9, p0, Lcom/sec/android/gallery3d/data/UriImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v9}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    const-string/jumbo v11, "r"

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/gallery3d/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    :goto_3
    :try_start_4
    const-string/jumbo v9, "UriImage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "fail to open: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/sec/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v9, -0x1

    invoke-static {v2}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_2

    :cond_6
    const/4 v9, 0x2

    invoke-static {v2}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_2

    :catch_1
    move-exception v1

    :goto_4
    :try_start_5
    const-string/jumbo v9, "UriImage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "fail to open: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/sec/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v9, -0x1

    invoke-static {v2}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception v9

    :goto_5
    invoke-static {v2}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v9

    :cond_7
    :try_start_6
    new-instance v9, Ljava/net/URI;

    iget-object v10, p0, Lcom/sec/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/gallery3d/data/UriImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v9}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDownloadCache()Lcom/sec/android/gallery3d/data/DownloadCache;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {v9, p1, v8, v10, v11}, Lcom/sec/android/gallery3d/data/DownloadCache;->download(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;Ljava/net/URL;Ljava/lang/String;Z)Lcom/sec/android/gallery3d/data/DownloadCache$Entry;

    move-result-object v0

    invoke-interface {p1}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result v9

    if-eqz v9, :cond_8

    const/4 v9, 0x0

    invoke-static {v2}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_2

    :cond_8
    if-nez v0, :cond_9

    :try_start_7
    const-string/jumbo v9, "UriImage"

    const-string/jumbo v10, "download failed "

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    const/4 v9, -0x1

    invoke-static {v2}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_2

    :cond_9
    :try_start_8
    iget-object v9, p0, Lcom/sec/android/gallery3d/data/UriImage;->mContentType:Ljava/lang/String;

    invoke-static {v9}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isJpeg(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    new-instance v3, Ljava/io/FileInputStream;

    iget-object v9, v0, Lcom/sec/android/gallery3d/data/DownloadCache$Entry;->cacheFile:Ljava/io/File;

    invoke-direct {v3, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    invoke-direct {p0, v3}, Lcom/sec/android/gallery3d/data/UriImage;->getOrientation(Ljava/io/InputStream;)I

    move-result v9

    iput v9, p0, Lcom/sec/android/gallery3d/data/UriImage;->mRotation:I
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-object v2, v3

    :cond_a
    :try_start_a
    iget-object v9, v0, Lcom/sec/android/gallery3d/data/DownloadCache$Entry;->cacheFile:Ljava/io/File;

    const/high16 v10, 0x10000000

    invoke-static {v9, v10}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/gallery3d/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    const/4 v9, 0x2

    invoke-static {v2}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_2

    :catch_2
    move-exception v7

    :goto_6
    :try_start_b
    const-string/jumbo v9, "UriImage"

    const-string/jumbo v10, "download error"

    invoke-static {v9, v10, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    const/4 v9, -0x1

    invoke-static {v2}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_2

    :catchall_1
    move-exception v9

    :goto_7
    invoke-static {v2}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v9

    :catchall_2
    move-exception v9

    move-object v2, v3

    goto :goto_7

    :catch_3
    move-exception v7

    move-object v2, v3

    goto :goto_6

    :catchall_3
    move-exception v9

    move-object v2, v3

    goto :goto_5

    :catch_4
    move-exception v1

    move-object v2, v3

    goto/16 :goto_4

    :catch_5
    move-exception v1

    move-object v2, v3

    goto/16 :goto_3
.end method

.method private prepareInputFile(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    new-instance v2, Lcom/sec/android/gallery3d/data/UriImage$1;

    invoke-direct {v2, p0}, Lcom/sec/android/gallery3d/data/UriImage$1;-><init>(Lcom/sec/android/gallery3d/data/UriImage;)V

    invoke-interface {p1, v2}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcom/sec/android/gallery3d/util/ThreadPool$CancelListener;)V

    :goto_0
    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit p0

    :goto_1
    return v0

    :cond_0
    iget v2, p0, Lcom/sec/android/gallery3d/data/UriImage;->mState:I

    if-nez v2, :cond_1

    const/4 v2, 0x1

    iput v2, p0, Lcom/sec/android/gallery3d/data/UriImage;->mState:I

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/data/UriImage;->openFileOrDownloadTempFile(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)V

    goto :goto_0

    :cond_1
    :try_start_1
    iget v2, p0, Lcom/sec/android/gallery3d/data/UriImage;->mState:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    :try_start_2
    iget v2, p0, Lcom/sec/android/gallery3d/data/UriImage;->mState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v1

    goto :goto_1

    :cond_3
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_2
.end method

.method private updateAttribute()V
    .locals 8

    const/4 v7, 0x1

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/UriImage;->mContentType:Ljava/lang/String;

    invoke-static {v4}, Lcom/sec/android/gallery3d/common/BitmapUtils;->isMpoSupported(Ljava/lang/String;)Z

    move-result v3

    const-wide/16 v4, 0x2

    invoke-virtual {p0, v4, v5, v3}, Lcom/sec/android/gallery3d/data/UriImage;->setAttribute(JZ)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/UriImage;->getFilePath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-wide/16 v4, 0x10

    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/SoundScene;->isSoundScene(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {p0, v4, v5, v6}, Lcom/sec/android/gallery3d/data/UriImage;->setAttribute(JZ)V

    const-string/jumbo v4, "file"

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/sec/samsung/gallery/lib/factory/SefWrapper;->isValidFile(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x850

    invoke-static {v2, v4}, Lcom/sec/samsung/gallery/lib/factory/SefWrapper;->hasData(Ljava/io/File;I)Z

    move-result v4

    if-eqz v4, :cond_3

    const-wide/16 v4, 0x400

    const/4 v6, 0x1

    invoke-virtual {p0, v4, v5, v6}, Lcom/sec/android/gallery3d/data/UriImage;->setAttribute(JZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/UriImage;->isGolf()Z

    move-result v4

    if-eqz v4, :cond_1

    const-wide/16 v4, 0x80

    invoke-virtual {p0, v4, v5, v7}, Lcom/sec/android/gallery3d/data/UriImage;->setAttribute(JZ)V

    :cond_1
    invoke-static {v1}, Lcom/sec/samsung/gallery/util/Panorama3DUtil;->check3DPanorama(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/sec/android/gallery3d/data/UriImage;->is3dpanorama:Z

    :cond_2
    return-void

    :cond_3
    const/16 v4, 0x870

    :try_start_1
    invoke-static {v2, v4}, Lcom/sec/samsung/gallery/lib/factory/SefWrapper;->hasData(Ljava/io/File;I)Z

    move-result v4

    if-eqz v4, :cond_4

    const-wide/32 v4, 0x40000

    const/4 v6, 0x1

    invoke-virtual {p0, v4, v5, v6}, Lcom/sec/android/gallery3d/data/UriImage;->setAttribute(JZ)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v4, "UriImage"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const/16 v4, 0x8d0

    :try_start_2
    invoke-static {v2, v4}, Lcom/sec/samsung/gallery/lib/factory/SefWrapper;->hasData(Ljava/io/File;I)Z

    move-result v4

    if-eqz v4, :cond_0

    const-wide/32 v4, 0x100000

    const/4 v6, 0x1

    invoke-virtual {p0, v4, v5, v6}, Lcom/sec/android/gallery3d/data/UriImage;->setAttribute(JZ)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getDetails()Lcom/sec/android/gallery3d/data/MediaDetails;
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/16 v8, 0xd

    const/16 v7, 0xc

    invoke-super {p0}, Lcom/sec/android/gallery3d/data/MediaItem;->getDetails()Lcom/sec/android/gallery3d/data/MediaDetails;

    move-result-object v1

    iget v5, p0, Lcom/sec/android/gallery3d/data/UriImage;->mWidth:I

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/sec/android/gallery3d/data/UriImage;->mHeight:I

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/sec/android/gallery3d/data/UriImage;->mWidth:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v7, v5}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    iget v5, p0, Lcom/sec/android/gallery3d/data/UriImage;->mHeight:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v8, v5}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    :cond_0
    iget-object v5, p0, Lcom/sec/android/gallery3d/data/UriImage;->mContentType:Ljava/lang/String;

    if-eqz v5, :cond_1

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/UriImage;->mContentType:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    :cond_1
    const-string/jumbo v5, "file"

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "/data/data"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string/jumbo v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    if-lez v5, :cond_2

    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    aget-object v0, v4, v5

    invoke-virtual {v1, v10, v0}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    :cond_2
    :goto_0
    invoke-static {v1, v3}, Lcom/sec/android/gallery3d/data/MediaDetails;->extractExifInfo(Lcom/sec/android/gallery3d/data/MediaDetails;Ljava/lang/String;)V

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v7}, Lcom/sec/android/gallery3d/data/MediaDetails;->getDetail(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/sec/android/gallery3d/data/UriImage;->mWidth:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v7, v5}, Lcom/sec/android/gallery3d/data/MediaDetails;->replaceDetail(ILjava/lang/Object;)V

    :cond_3
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v8}, Lcom/sec/android/gallery3d/data/MediaDetails;->getDetail(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget v5, p0, Lcom/sec/android/gallery3d/data/UriImage;->mHeight:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v8, v5}, Lcom/sec/android/gallery3d/data/MediaDetails;->replaceDetail(ILjava/lang/Object;)V

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/UriImage;->isDrm()Z

    move-result v5

    if-eqz v5, :cond_6

    const-string/jumbo v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    if-lez v5, :cond_5

    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    aget-object v0, v4, v5

    invoke-virtual {v1, v10, v0}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    :cond_5
    iget-object v5, p0, Lcom/sec/android/gallery3d/data/UriImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v5}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDrmUtil()Lcom/sec/android/gallery3d/util/ImageDRMUtil;

    move-result-object v5

    invoke-virtual {v5, v1, v3}, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->getDetails(Lcom/sec/android/gallery3d/data/MediaDetails;Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaDetails;

    move-result-object v1

    :cond_6
    move-object v2, v1

    :goto_1
    return-object v2

    :cond_7
    const/16 v5, 0x1f4

    invoke-virtual {v1, v5, v3}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    goto :goto_0

    :cond_8
    move-object v2, v1

    goto :goto_1
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 5

    const/4 v2, 0x0

    const-string/jumbo v3, "file"

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/gallery3d/data/UriImage;->isVideoCollageUri(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/UriImage;->getVideoCollagePathFromUri()Ljava/lang/String;

    move-result-object v1

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    move-object v1, v2

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/UriImage;->isDrm()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/UriImage;->needCheckPrivateImage()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-direct {p0, v2}, Lcom/sec/android/gallery3d/data/UriImage;->getFilePathFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    move-object v1, v2

    goto :goto_0
.end method

.method public getGroupId()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/UriImage;->mHeight:I

    return v0
.end method

.method public getMediaType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UriImage;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getRotation()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/UriImage;->mRotation:I

    return v0
.end method

.method public getSupportedOperations()J
    .locals 10

    const-wide/16 v8, 0x4

    const-wide/16 v6, -0x21

    const-wide v2, 0x90000020L

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/UriImage;->isSharable()Z

    move-result v4

    if-eqz v4, :cond_0

    or-long/2addr v2, v8

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/UriImage;->isDrm()Z

    move-result v4

    if-eqz v4, :cond_2

    const-wide/16 v2, 0x400

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/UriImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDrmUtil()Lcom/sec/android/gallery3d/util/ImageDRMUtil;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/UriImage;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/common/BitmapUtils;->isSupportedByRegionDecoder(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-wide/16 v4, 0x40

    or-long/2addr v2, v4

    :cond_1
    iget-object v4, p0, Lcom/sec/android/gallery3d/data/UriImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDrmUtil()Lcom/sec/android/gallery3d/util/ImageDRMUtil;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/UriImage;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->getDrmType(Ljava/lang/String;)I

    move-result v0

    sget v4, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->DRM2_TYPE_SD:I

    if-ne v0, v4, :cond_8

    or-long/2addr v2, v8

    :cond_2
    :goto_0
    iget-boolean v4, p0, Lcom/sec/android/gallery3d/data/UriImage;->mIsFromMessage:Z

    if-eqz v4, :cond_3

    const-wide v2, 0x8000000020L

    :cond_3
    iget-object v4, p0, Lcom/sec/android/gallery3d/data/UriImage;->mContentType:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/UriImage;->mContentType:Ljava/lang/String;

    const-string/jumbo v5, "video"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    and-long/2addr v2, v6

    :cond_4
    iget-object v4, p0, Lcom/sec/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "http://"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    and-long/2addr v2, v6

    :cond_5
    iget-object v4, p0, Lcom/sec/android/gallery3d/data/UriImage;->mContentType:Ljava/lang/String;

    invoke-static {v4}, Lcom/sec/android/gallery3d/common/BitmapUtils;->isSupportedByRegionDecoder(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-wide/16 v4, 0x240

    or-long/2addr v2, v4

    :cond_6
    iget-object v4, p0, Lcom/sec/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "file:///data/data"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-wide/16 v2, 0x400

    :cond_7
    return-wide v2

    :cond_8
    sget v4, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->DRM2_TYPE_FL:I

    if-ne v0, v4, :cond_2

    const-wide/16 v4, 0x20

    or-long/2addr v2, v4

    goto :goto_0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/UriImage;->mWidth:I

    return v0
.end method

.method public isDrm()Z
    .locals 3

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UriImage;->isdrm:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    const-string/jumbo v1, "file"

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UriImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDrmUtil()Lcom/sec/android/gallery3d/util/ImageDRMUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->isDrm(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/UriImage;->isdrm:Ljava/lang/Boolean;

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UriImage;->isdrm:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_1
    return v1

    :cond_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/sec/android/gallery3d/data/UriImage;->getFilePathFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UriImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDrmUtil()Lcom/sec/android/gallery3d/util/ImageDRMUtil;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->isDrm(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/UriImage;->isdrm:Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isGolf()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UriImage;->mContentType:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UriImage;->mContentType:Ljava/lang/String;

    const-string/jumbo v1, "image/golf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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

    new-instance v0, Lcom/sec/android/gallery3d/data/UriImage$BitmapJob;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/gallery3d/data/UriImage$BitmapJob;-><init>(Lcom/sec/android/gallery3d/data/UriImage;I)V

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

    new-instance v0, Lcom/sec/android/gallery3d/data/UriImage$RegionDecoderJob;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/gallery3d/data/UriImage$RegionDecoderJob;-><init>(Lcom/sec/android/gallery3d/data/UriImage;Lcom/sec/android/gallery3d/data/UriImage$1;)V

    return-object v0
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UriImage;->mContentType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/UriImage;->mContentType:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 1

    invoke-static {p1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->checkGoogleUriImage(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    return-void
.end method
