.class Lcom/sec/android/gallery3d/data/UriSource;
.super Lcom/sec/android/gallery3d/data/MediaSource;
.source "UriSource.java"


# static fields
.field private static final MMS_AUTHORITY:Ljava/lang/String; = "mms"

.field public static final PATH_PREFIX:Ljava/lang/String; = "uri"

.field private static final TAG:Ljava/lang/String; = "UriSource"


# instance fields
.field private final NO_MATCH:I

.field private final URI_ITEMSET:I

.field private final URI_MMSALBUM_ITEMSET:I

.field private final URI_URI_ITEMSET:I

.field private final mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

.field private final mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

.field private mMimeType:Ljava/lang/String;

.field private final mUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V
    .locals 5

    const/4 v4, 0x5

    const/4 v3, 0x4

    const/4 v2, 0x1

    const/4 v1, -0x1

    const-string/jumbo v0, "uri"

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/data/MediaSource;-><init>(Ljava/lang/String;)V

    iput v2, p0, Lcom/sec/android/gallery3d/data/UriSource;->URI_ITEMSET:I

    iput v3, p0, Lcom/sec/android/gallery3d/data/UriSource;->URI_URI_ITEMSET:I

    iput v4, p0, Lcom/sec/android/gallery3d/data/UriSource;->URI_MMSALBUM_ITEMSET:I

    iput v1, p0, Lcom/sec/android/gallery3d/data/UriSource;->NO_MATCH:I

    new-instance v0, Landroid/content/UriMatcher;

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UriSource;->mUriMatcher:Landroid/content/UriMatcher;

    check-cast p1, Lcom/sec/android/gallery3d/app/GalleryApp;

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/UriSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    new-instance v0, Lcom/sec/android/gallery3d/data/PathMatcher;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/data/PathMatcher;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UriSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UriSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/uri/mediaset/*"

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UriSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/uri/mediaset/thread/*"

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UriSource;->mUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "mms"

    const-string/jumbo v2, "part"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public createMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/Path;->split()[Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UriSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    invoke-virtual {v3, p1}, Lcom/sec/android/gallery3d/data/PathMatcher;->match(Lcom/sec/android/gallery3d/data/Path;)I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    array-length v3, v2

    if-eq v3, v5, :cond_2

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "bad path: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :sswitch_0
    array-length v3, v2

    if-eq v3, v6, :cond_0

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "bad path: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    new-instance v3, Lcom/sec/android/gallery3d/data/UriMediaSet;

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/UriSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    aget-object v5, v2, v5

    invoke-direct {v3, v4, p1, v5}, Lcom/sec/android/gallery3d/data/UriMediaSet;-><init>(Lcom/sec/android/gallery3d/app/GalleryApp;Lcom/sec/android/gallery3d/data/Path;Ljava/lang/String;)V

    :goto_0
    return-object v3

    :sswitch_1
    array-length v3, v2

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "bad path: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    new-instance v3, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet;

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/UriSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    aget-object v5, v2, v6

    invoke-direct {v3, v4, p1, v5}, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet;-><init>(Lcom/sec/android/gallery3d/app/GalleryApp;Lcom/sec/android/gallery3d/data/Path;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    :try_start_0
    aget-object v3, v2, v3

    const-string/jumbo v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UriSource;->mMimeType:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UriSource;->mMimeType:Ljava/lang/String;

    const-string/jumbo v4, "video"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Lcom/sec/android/gallery3d/data/UriVideo;

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/UriSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, p1, v5}, Lcom/sec/android/gallery3d/data/UriVideo;-><init>(Lcom/sec/android/gallery3d/app/GalleryApp;Lcom/sec/android/gallery3d/data/Path;Landroid/net/Uri;)V

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v3, "UriSource"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "UnsupportedEncodingException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    new-instance v3, Lcom/sec/android/gallery3d/data/UriImage;

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/UriSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, p1, v5}, Lcom/sec/android/gallery3d/data/UriImage;-><init>(Lcom/sec/android/gallery3d/app/GalleryApp;Lcom/sec/android/gallery3d/data/Path;Landroid/net/Uri;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method public findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;
    .locals 6

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UriSource;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    iput-object p2, p0, Lcom/sec/android/gallery3d/data/UriSource;->mMimeType:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UriSource;->mMimeType:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UriSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/UriSource;->mMimeType:Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UriSource;->mMimeType:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UriSource;->mMimeType:Ljava/lang/String;

    const-string/jumbo v4, "image"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UriSource;->mMimeType:Ljava/lang/String;

    const-string/jumbo v4, "video"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UriSource;->mMimeType:Ljava/lang/String;

    const-string/jumbo v4, "*/*"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "/uri/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UriSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    check-cast v1, Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getMidFromMmsList(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "/uri/mediaset/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "UriSource"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "UnsupportedEncodingException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
