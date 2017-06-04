.class Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$ContentData;
.super Ljava/lang/Object;
.source "UriMediaMMSAlbumSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContentData"
.end annotation


# instance fields
.field date:J

.field filePath:Ljava/lang/String;

.field mThumbUri:Landroid/net/Uri;

.field mUri:Landroid/net/Uri;

.field mediaType:Ljava/lang/String;

.field messageType:Ljava/lang/String;

.field partId:J

.field status:J

.field thumbnailPath:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$ContentData;->messageType:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$ContentData;->filePath:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$ContentData;->thumbnailPath:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$ContentData;->mUri:Landroid/net/Uri;

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$ContentData;->mThumbUri:Landroid/net/Uri;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$ContentData;-><init>()V

    return-void
.end method

.method private getMimeType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getDate()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$ContentData;->date:J

    return-wide v0
.end method

.method public getStatus()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$ContentData;->status:J

    return-wide v0
.end method

.method public getThumbUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$ContentData;->mThumbUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 6

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$ContentData;->mUri:Landroid/net/Uri;

    if-nez v1, :cond_0

    const-string/jumbo v1, "mms"

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$ContentData;->messageType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "content://mms"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v2, "part"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$ContentData;->partId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$ContentData;->mUri:Landroid/net/Uri;

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$ContentData;->mUri:Landroid/net/Uri;

    return-object v1

    :cond_1
    const-string/jumbo v1, "ft"

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$ContentData;->messageType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$ContentData;->filePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-wide v2, p0, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$ContentData;->status:J

    const-wide/16 v4, 0x3

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    iget-wide v2, p0, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$ContentData;->status:J

    const-wide/16 v4, 0x9

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    iget-wide v2, p0, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$ContentData;->status:J

    const-wide/16 v4, 0x64

    cmp-long v1, v2, v4

    if-nez v1, :cond_4

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$ContentData;->filePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$ContentData;->mUri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$ContentData;->mediaType:Ljava/lang/String;

    const-string/jumbo v2, "image"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$ContentData;->mUri:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$ContentData;->getMimeType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$ContentData;->mThumbUri:Landroid/net/Uri;

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$ContentData;->mUri:Landroid/net/Uri;

    :cond_3
    const-string/jumbo v1, "UriMediaMMSAlbumSet"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getUri() mUri is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$ContentData;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " status is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$ContentData;->status:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$ContentData;->mThumbUri:Landroid/net/Uri;

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$ContentData;->mUri:Landroid/net/Uri;

    const-string/jumbo v1, "UriMediaMMSAlbumSet"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getUri() mUri is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$ContentData;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
