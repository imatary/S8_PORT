.class public Lcom/android/providers/media/MediaDocumentsProvider;
.super Landroid/provider/DocumentsProvider;
.source "MediaDocumentsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/media/MediaDocumentsProvider$AlbumQuery;,
        Lcom/android/providers/media/MediaDocumentsProvider$ArtistQuery;,
        Lcom/android/providers/media/MediaDocumentsProvider$Ident;,
        Lcom/android/providers/media/MediaDocumentsProvider$ImageOrientationQuery;,
        Lcom/android/providers/media/MediaDocumentsProvider$ImageQuery;,
        Lcom/android/providers/media/MediaDocumentsProvider$ImageThumbnailQuery;,
        Lcom/android/providers/media/MediaDocumentsProvider$ImagesBucketQuery;,
        Lcom/android/providers/media/MediaDocumentsProvider$ImagesBucketThumbnailQuery;,
        Lcom/android/providers/media/MediaDocumentsProvider$SongQuery;,
        Lcom/android/providers/media/MediaDocumentsProvider$VideoQuery;,
        Lcom/android/providers/media/MediaDocumentsProvider$VideoThumbnailQuery;,
        Lcom/android/providers/media/MediaDocumentsProvider$VideosBucketQuery;,
        Lcom/android/providers/media/MediaDocumentsProvider$VideosBucketThumbnailQuery;
    }
.end annotation


# static fields
.field private static final AUDIO_MIME_TYPES:Ljava/lang/String;

.field private static final AUTHORITY:Ljava/lang/String; = "com.android.providers.media.documents"

.field private static final DEFAULT_DOCUMENT_PROJECTION:[Ljava/lang/String;

.field private static final DEFAULT_ROOT_PROJECTION:[Ljava/lang/String;

.field private static final DOCUI_PKG_NAME:Ljava/lang/String; = "com.android.documentsui"

.field private static final IMAGE_MIME_TYPES:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "MediaDocumentsProvider"

.field private static final TYPE_ALBUM:Ljava/lang/String; = "album"

.field private static final TYPE_ARTIST:Ljava/lang/String; = "artist"

.field private static final TYPE_AUDIO:Ljava/lang/String; = "audio"

.field private static final TYPE_AUDIO_ROOT:Ljava/lang/String; = "audio_root"

.field private static final TYPE_IMAGE:Ljava/lang/String; = "image"

.field private static final TYPE_IMAGES_BUCKET:Ljava/lang/String; = "images_bucket"

.field private static final TYPE_IMAGES_ROOT:Ljava/lang/String; = "images_root"

.field private static final TYPE_VIDEO:Ljava/lang/String; = "video"

.field private static final TYPE_VIDEOS_BUCKET:Ljava/lang/String; = "videos_bucket"

.field private static final TYPE_VIDEOS_ROOT:Ljava/lang/String; = "videos_root"

.field private static final VIDEO_MIME_TYPES:Ljava/lang/String;

.field private static sReturnedAudioEmpty:Z

.field private static sReturnedImagesEmpty:Z

.field private static sReturnedVideosEmpty:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "root_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "flags"

    aput-object v1, v0, v4

    const-string/jumbo v1, "icon"

    aput-object v1, v0, v5

    const-string/jumbo v1, "title"

    aput-object v1, v0, v6

    const-string/jumbo v1, "document_id"

    aput-object v1, v0, v7

    const-string/jumbo v1, "mime_types"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/providers/media/MediaDocumentsProvider;->DEFAULT_ROOT_PROJECTION:[Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "document_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "mime_type"

    aput-object v1, v0, v4

    const-string/jumbo v1, "_display_name"

    aput-object v1, v0, v5

    const-string/jumbo v1, "last_modified"

    aput-object v1, v0, v6

    const-string/jumbo v1, "flags"

    aput-object v1, v0, v7

    const-string/jumbo v1, "_size"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/providers/media/MediaDocumentsProvider;->DEFAULT_DOCUMENT_PROJECTION:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "image/*"

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/android/providers/media/MediaDocumentsProvider;->joinNewline([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/media/MediaDocumentsProvider;->IMAGE_MIME_TYPES:Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "video/*"

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/android/providers/media/MediaDocumentsProvider;->joinNewline([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/media/MediaDocumentsProvider;->VIDEO_MIME_TYPES:Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "audio/*"

    aput-object v1, v0, v3

    const-string/jumbo v1, "application/ogg"

    aput-object v1, v0, v4

    const-string/jumbo v1, "application/x-flac"

    aput-object v1, v0, v5

    invoke-static {v0}, Lcom/android/providers/media/MediaDocumentsProvider;->joinNewline([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/media/MediaDocumentsProvider;->AUDIO_MIME_TYPES:Ljava/lang/String;

    sput-boolean v3, Lcom/android/providers/media/MediaDocumentsProvider;->sReturnedImagesEmpty:Z

    sput-boolean v3, Lcom/android/providers/media/MediaDocumentsProvider;->sReturnedVideosEmpty:Z

    sput-boolean v3, Lcom/android/providers/media/MediaDocumentsProvider;->sReturnedAudioEmpty:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/provider/DocumentsProvider;-><init>()V

    return-void
.end method

.method private cleanUpMediaDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "<unknown>"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/android/providers/media/MediaDocumentsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private copyNotificationUri(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/providers/media/MediaDocumentsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-interface {p2}, Landroid/database/Cursor;->getNotificationUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/database/MatrixCursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-void
.end method

.method private static getDocIdForIdent(Ljava/lang/String;J)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getIdentForDocId(Ljava/lang/String;)Lcom/android/providers/media/MediaDocumentsProvider$Ident;
    .locals 4

    new-instance v0, Lcom/android/providers/media/MediaDocumentsProvider$Ident;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/providers/media/MediaDocumentsProvider$Ident;-><init>(Lcom/android/providers/media/MediaDocumentsProvider$Ident;)V

    const/16 v2, 0x3a

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iput-object p0, v0, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->type:Ljava/lang/String;

    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->id:J

    :goto_0
    return-object v0

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->type:Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->id:J

    goto :goto_0
.end method

.method private getImageForBucketCleared(J)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/providers/media/MediaDocumentsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v6, 0x0

    :try_start_0
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/media/MediaDocumentsProvider$ImagesBucketThumbnailQuery;->PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "bucket_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "date_modified DESC"

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-wide v2

    :cond_0
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    new-instance v1, Ljava/io/FileNotFoundException;

    const-string/jumbo v2, "No video found for bucket"

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1
.end method

.method private getUriForDocumentId(Ljava/lang/String;)Landroid/net/Uri;
    .locals 6

    const-wide/16 v4, -0x1

    invoke-static {p1}, Lcom/android/providers/media/MediaDocumentsProvider;->getIdentForDocId(Ljava/lang/String;)Lcom/android/providers/media/MediaDocumentsProvider$Ident;

    move-result-object v0

    const-string/jumbo v1, "image"

    iget-object v2, v0, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v2, v0, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->id:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, v0, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->id:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    return-object v1

    :cond_0
    const-string/jumbo v1, "video"

    iget-object v2, v0, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v2, v0, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->id:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, v0, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->id:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    return-object v1

    :cond_1
    const-string/jumbo v1, "audio"

    iget-object v2, v0, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v2, v0, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->id:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, v0, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->id:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    return-object v1

    :cond_2
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsupported document "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getVideoForBucketCleared(J)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/providers/media/MediaDocumentsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v6, 0x0

    :try_start_0
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/media/MediaDocumentsProvider$VideosBucketThumbnailQuery;->PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "bucket_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "date_modified DESC"

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-wide v2

    :cond_0
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    new-instance v1, Ljava/io/FileNotFoundException;

    const-string/jumbo v2, "No video found for bucket"

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1
.end method

.method private includeAlbum(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V
    .locals 6

    const/4 v4, 0x0

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-string/jumbo v4, "album"

    invoke-static {v4, v2, v3}, Lcom/android/providers/media/MediaDocumentsProvider;->getDocIdForIdent(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v1

    const-string/jumbo v4, "document_id"

    invoke-virtual {v1, v4, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const-string/jumbo v4, "_display_name"

    const/4 v5, 0x1

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/providers/media/MediaDocumentsProvider;->cleanUpMediaDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const-string/jumbo v4, "mime_type"

    const-string/jumbo v5, "vnd.android.document/directory"

    invoke-virtual {v1, v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    return-void
.end method

.method private includeArtist(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V
    .locals 6

    const/4 v4, 0x0

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-string/jumbo v4, "artist"

    invoke-static {v4, v2, v3}, Lcom/android/providers/media/MediaDocumentsProvider;->getDocIdForIdent(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v1

    const-string/jumbo v4, "document_id"

    invoke-virtual {v1, v4, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const-string/jumbo v4, "_display_name"

    const/4 v5, 0x1

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/providers/media/MediaDocumentsProvider;->cleanUpMediaDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const-string/jumbo v4, "mime_type"

    const-string/jumbo v5, "vnd.android.document/directory"

    invoke-virtual {v1, v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    return-void
.end method

.method private includeAudio(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V
    .locals 11

    const/4 v10, 0x4

    const/4 v4, 0x0

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-string/jumbo v4, "audio"

    invoke-static {v4, v2, v3}, Lcom/android/providers/media/MediaDocumentsProvider;->getDocIdForIdent(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v1

    const-string/jumbo v4, "document_id"

    invoke-virtual {v1, v4, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const-string/jumbo v4, "_display_name"

    const/4 v5, 0x1

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const-string/jumbo v4, "_size"

    const/4 v5, 0x3

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const-string/jumbo v4, "mime_type"

    const/4 v5, 0x2

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const-string/jumbo v4, "last_modified"

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const-string/jumbo v4, "flags"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    return-void
.end method

.method private includeAudioRoot(Landroid/database/MatrixCursor;)V
    .locals 5

    const/4 v0, 0x2

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v2}, Lcom/android/providers/media/MediaDocumentsProvider;->isEmpty(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v0, 0x10002

    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/providers/media/MediaDocumentsProvider;->sReturnedAudioEmpty:Z

    :cond_0
    invoke-virtual {p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v1

    const-string/jumbo v2, "root_id"

    const-string/jumbo v3, "audio_root"

    invoke-virtual {v1, v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const-string/jumbo v2, "flags"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const-string/jumbo v2, "title"

    invoke-virtual {p0}, Lcom/android/providers/media/MediaDocumentsProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f070009

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const-string/jumbo v2, "document_id"

    const-string/jumbo v3, "audio_root"

    invoke-virtual {v1, v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const-string/jumbo v2, "mime_types"

    sget-object v3, Lcom/android/providers/media/MediaDocumentsProvider;->AUDIO_MIME_TYPES:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    return-void
.end method

.method private includeAudioRootDocument(Landroid/database/MatrixCursor;)V
    .locals 4

    invoke-virtual {p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    const-string/jumbo v1, "document_id"

    const-string/jumbo v2, "audio_root"

    invoke-virtual {v0, v1, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const-string/jumbo v1, "_display_name"

    invoke-virtual {p0}, Lcom/android/providers/media/MediaDocumentsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f070009

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const-string/jumbo v1, "mime_type"

    const-string/jumbo v2, "vnd.android.document/directory"

    invoke-virtual {v0, v1, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    return-void
.end method

.method private includeImage(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V
    .locals 10

    const/4 v4, 0x0

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-string/jumbo v4, "image"

    invoke-static {v4, v2, v3}, Lcom/android/providers/media/MediaDocumentsProvider;->getDocIdForIdent(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v1

    const-string/jumbo v4, "document_id"

    invoke-virtual {v1, v4, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const-string/jumbo v4, "_display_name"

    const/4 v5, 0x1

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const-string/jumbo v4, "_size"

    const/4 v5, 0x3

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const-string/jumbo v4, "mime_type"

    const/4 v5, 0x2

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const-string/jumbo v4, "last_modified"

    const/4 v5, 0x4

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const-string/jumbo v4, "flags"

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    return-void
.end method

.method private includeImagesBucket(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V
    .locals 10

    const/4 v4, 0x0

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-string/jumbo v4, "images_bucket"

    invoke-static {v4, v2, v3}, Lcom/android/providers/media/MediaDocumentsProvider;->getDocIdForIdent(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v1

    const-string/jumbo v4, "document_id"

    invoke-virtual {v1, v4, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const-string/jumbo v4, "_display_name"

    const/4 v5, 0x1

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const-string/jumbo v4, "mime_type"

    const-string/jumbo v5, "vnd.android.document/directory"

    invoke-virtual {v1, v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const-string/jumbo v4, "last_modified"

    const/4 v5, 0x2

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const-string/jumbo v4, "flags"

    const/16 v5, 0x31

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    return-void
.end method

.method private includeImagesRoot(Landroid/database/MatrixCursor;)V
    .locals 5

    const/4 v0, 0x6

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v2}, Lcom/android/providers/media/MediaDocumentsProvider;->isEmpty(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v0, 0x10006

    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/providers/media/MediaDocumentsProvider;->sReturnedImagesEmpty:Z

    :cond_0
    invoke-virtual {p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v1

    const-string/jumbo v2, "root_id"

    const-string/jumbo v3, "images_root"

    invoke-virtual {v1, v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const-string/jumbo v2, "flags"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const-string/jumbo v2, "title"

    invoke-virtual {p0}, Lcom/android/providers/media/MediaDocumentsProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f070007

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const-string/jumbo v2, "document_id"

    const-string/jumbo v3, "images_root"

    invoke-virtual {v1, v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const-string/jumbo v2, "mime_types"

    sget-object v3, Lcom/android/providers/media/MediaDocumentsProvider;->IMAGE_MIME_TYPES:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    return-void
.end method

.method private includeImagesRootDocument(Landroid/database/MatrixCursor;)V
    .locals 4

    invoke-virtual {p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    const-string/jumbo v1, "document_id"

    const-string/jumbo v2, "images_root"

    invoke-virtual {v0, v1, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const-string/jumbo v1, "_display_name"

    invoke-virtual {p0}, Lcom/android/providers/media/MediaDocumentsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f070007

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const-string/jumbo v1, "flags"

    const/16 v2, 0x30

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const-string/jumbo v1, "mime_type"

    const-string/jumbo v2, "vnd.android.document/directory"

    invoke-virtual {v0, v1, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    return-void
.end method

.method private includeVideo(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V
    .locals 10

    const/4 v4, 0x0

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-string/jumbo v4, "video"

    invoke-static {v4, v2, v3}, Lcom/android/providers/media/MediaDocumentsProvider;->getDocIdForIdent(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v1

    const-string/jumbo v4, "document_id"

    invoke-virtual {v1, v4, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const-string/jumbo v4, "_display_name"

    const/4 v5, 0x1

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const-string/jumbo v4, "_size"

    const/4 v5, 0x3

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const-string/jumbo v4, "mime_type"

    const/4 v5, 0x2

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const-string/jumbo v4, "last_modified"

    const/4 v5, 0x4

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const-string/jumbo v4, "flags"

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    return-void
.end method

.method private includeVideosBucket(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V
    .locals 10

    const/4 v4, 0x0

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-string/jumbo v4, "videos_bucket"

    invoke-static {v4, v2, v3}, Lcom/android/providers/media/MediaDocumentsProvider;->getDocIdForIdent(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v1

    const-string/jumbo v4, "document_id"

    invoke-virtual {v1, v4, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const-string/jumbo v4, "_display_name"

    const/4 v5, 0x1

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const-string/jumbo v4, "mime_type"

    const-string/jumbo v5, "vnd.android.document/directory"

    invoke-virtual {v1, v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const-string/jumbo v4, "last_modified"

    const/4 v5, 0x2

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const-string/jumbo v4, "flags"

    const/16 v5, 0x31

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    return-void
.end method

.method private includeVideosRoot(Landroid/database/MatrixCursor;)V
    .locals 5

    const/4 v0, 0x6

    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v2}, Lcom/android/providers/media/MediaDocumentsProvider;->isEmpty(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v0, 0x10006

    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/providers/media/MediaDocumentsProvider;->sReturnedVideosEmpty:Z

    :cond_0
    invoke-virtual {p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v1

    const-string/jumbo v2, "root_id"

    const-string/jumbo v3, "videos_root"

    invoke-virtual {v1, v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const-string/jumbo v2, "flags"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const-string/jumbo v2, "title"

    invoke-virtual {p0}, Lcom/android/providers/media/MediaDocumentsProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f070008

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const-string/jumbo v2, "document_id"

    const-string/jumbo v3, "videos_root"

    invoke-virtual {v1, v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const-string/jumbo v2, "mime_types"

    sget-object v3, Lcom/android/providers/media/MediaDocumentsProvider;->VIDEO_MIME_TYPES:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    return-void
.end method

.method private includeVideosRootDocument(Landroid/database/MatrixCursor;)V
    .locals 4

    invoke-virtual {p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    const-string/jumbo v1, "document_id"

    const-string/jumbo v2, "videos_root"

    invoke-virtual {v0, v1, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const-string/jumbo v1, "_display_name"

    invoke-virtual {p0}, Lcom/android/providers/media/MediaDocumentsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f070008

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const-string/jumbo v1, "flags"

    const/16 v2, 0x30

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const-string/jumbo v1, "mime_type"

    const-string/jumbo v2, "vnd.android.document/directory"

    invoke-virtual {v0, v1, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    return-void
.end method

.method private isEmpty(Landroid/net/Uri;)Z
    .locals 11

    const/4 v7, 0x1

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/android/providers/media/MediaDocumentsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    const/4 v6, 0x0

    const/4 v1, 0x1

    :try_start_0
    new-array v2, v1, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move v1, v7

    :goto_0
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :cond_1
    move v1, v10

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method private static varargs joinNewline([Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "\n"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static notifyRootsChanged(Landroid/content/Context;)V
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "com.android.providers.media.documents"

    invoke-static {v1}, Landroid/provider/DocumentsContract;->buildRootsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    return-void
.end method

.method static onMediaStoreDelete(Landroid/content/Context;Ljava/lang/String;IJ)V
    .locals 5

    const/4 v3, -0x1

    const-string/jumbo v1, "external"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    const-string/jumbo v1, "com.android.providers.media.documents"

    const-string/jumbo v2, "image"

    invoke-static {v2, p3, p4}, Lcom/android/providers/media/MediaDocumentsProvider;->getDocIdForIdent(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/provider/DocumentsContract;->buildDocumentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v1, 0x3

    if-ne p2, v1, :cond_3

    const-string/jumbo v1, "com.android.providers.media.documents"

    const-string/jumbo v2, "video"

    invoke-static {v2, p3, p4}, Lcom/android/providers/media/MediaDocumentsProvider;->getDocIdForIdent(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/provider/DocumentsContract;->buildDocumentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    const-string/jumbo v1, "com.android.providers.media.documents"

    const-string/jumbo v2, "audio"

    invoke-static {v2, p3, p4}, Lcom/android/providers/media/MediaDocumentsProvider;->getDocIdForIdent(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/provider/DocumentsContract;->buildDocumentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    goto :goto_0
.end method

.method static onMediaStoreInsert(Landroid/content/Context;Ljava/lang/String;IJ)V
    .locals 2

    const/4 v1, 0x0

    const-string/jumbo v0, "external"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    sget-boolean v0, Lcom/android/providers/media/MediaDocumentsProvider;->sReturnedImagesEmpty:Z

    if-eqz v0, :cond_2

    sput-boolean v1, Lcom/android/providers/media/MediaDocumentsProvider;->sReturnedImagesEmpty:Z

    invoke-static {p0}, Lcom/android/providers/media/MediaDocumentsProvider;->notifyRootsChanged(Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x3

    if-ne p2, v0, :cond_3

    sget-boolean v0, Lcom/android/providers/media/MediaDocumentsProvider;->sReturnedVideosEmpty:Z

    if-eqz v0, :cond_3

    sput-boolean v1, Lcom/android/providers/media/MediaDocumentsProvider;->sReturnedVideosEmpty:Z

    invoke-static {p0}, Lcom/android/providers/media/MediaDocumentsProvider;->notifyRootsChanged(Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    sget-boolean v0, Lcom/android/providers/media/MediaDocumentsProvider;->sReturnedAudioEmpty:Z

    if-eqz v0, :cond_1

    sput-boolean v1, Lcom/android/providers/media/MediaDocumentsProvider;->sReturnedAudioEmpty:Z

    invoke-static {p0}, Lcom/android/providers/media/MediaDocumentsProvider;->notifyRootsChanged(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private openImageThumbnailCleared(JLandroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/android/providers/media/MediaDocumentsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v7, 0x0

    :try_start_0
    sget-object v1, Landroid/provider/MediaStore$Images$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/media/MediaDocumentsProvider$ImageThumbnailQuery;->PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "image_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    invoke-static {v1, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v1

    :cond_0
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v9

    :catchall_0
    move-exception v1

    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1
.end method

.method private openOrCreateImageThumbnailCleared(JLandroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/providers/media/MediaDocumentsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/media/MediaDocumentsProvider;->openImageThumbnailCleared(JLandroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v2, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {v10, p1, p2, v2, v8}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/media/MediaDocumentsProvider;->openImageThumbnailCleared(JLandroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    const-string/jumbo v0, "r"

    invoke-virtual {v10, v7, v0, p3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/media/MediaDocumentsProvider;->queryOrientationForImage(JLandroid/os/CancellationSignal;)I

    move-result v9

    if-eqz v9, :cond_2

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6, v2}, Landroid/os/Bundle;-><init>(I)V

    const-string/jumbo v0, "android.provider.extra.ORIENTATION"

    invoke-virtual {v6, v0, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_0
    new-instance v0, Landroid/content/res/AssetFileDescriptor;

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    invoke-direct/range {v0 .. v6}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJLandroid/os/Bundle;)V

    return-object v0

    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private openOrCreateVideoThumbnailCleared(JLandroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/providers/media/MediaDocumentsProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/media/MediaDocumentsProvider;->openVideoThumbnailCleared(JLandroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {v2, p1, p2, v4, v1}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/media/MediaDocumentsProvider;->openVideoThumbnailCleared(JLandroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private openVideoThumbnailCleared(JLandroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/providers/media/MediaDocumentsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v8, 0x0

    :try_start_0
    sget-object v1, Landroid/provider/MediaStore$Video$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/media/MediaDocumentsProvider$VideoThumbnailQuery;->PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "video_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v8

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v2, Landroid/content/res/AssetFileDescriptor;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000000

    invoke-static {v1, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    const-wide/16 v4, 0x0

    const-wide/16 v6, -0x1

    invoke-direct/range {v2 .. v7}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v2

    :cond_0
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v7

    :catchall_0
    move-exception v1

    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1
.end method

.method private queryOrientationForImage(JLandroid/os/CancellationSignal;)I
    .locals 9

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/providers/media/MediaDocumentsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v7, 0x0

    :try_start_0
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/media/MediaDocumentsProvider$ImageOrientationQuery;->PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return v1

    :cond_0
    :try_start_1
    const-string/jumbo v1, "MediaDocumentsProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Missing orientation data for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return v8

    :catchall_0
    move-exception v1

    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1
.end method

.method private static resolveDocumentProjection([Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    sget-object p0, Lcom/android/providers/media/MediaDocumentsProvider;->DEFAULT_DOCUMENT_PROJECTION:[Ljava/lang/String;

    goto :goto_0
.end method

.method private static resolveRootProjection([Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    sget-object p0, Lcom/android/providers/media/MediaDocumentsProvider;->DEFAULT_ROOT_PROJECTION:[Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public deleteDocument(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaDocumentsProvider;->getUriForDocumentId(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    invoke-virtual {p0}, Lcom/android/providers/media/MediaDocumentsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v0, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public getAbsolutePath(Landroid/net/Uri;)Ljava/lang/String;
    .locals 12

    const/4 v7, 0x0

    const-string/jumbo v6, ""

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_data"

    const/4 v1, 0x0

    aput-object v0, v2, v1

    invoke-virtual {p0}, Lcom/android/providers/media/MediaDocumentsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    :cond_0
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return-object v6

    :catch_0
    move-exception v8

    :try_start_1
    const-string/jumbo v0, "MediaDocumentsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getAbsolutePath():"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public onCreate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public openDocument(Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-direct/range {p0 .. p1}, Lcom/android/providers/media/MediaDocumentsProvider;->getUriForDocumentId(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    const-string/jumbo v11, "r"

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v14, "Media is read-only"

    invoke-direct {v11, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    invoke-static {v11}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/MediaDocumentsProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v8, 0x1

    :try_start_0
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v11, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v9, :cond_1

    iget v11, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v11, v3, :cond_1

    if-eqz v2, :cond_1

    const-string/jumbo v11, "com.android.documentsui"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    if-eqz v11, :cond_2

    :cond_1
    :goto_0
    if-nez v8, :cond_3

    new-instance v11, Ljava/io/FileNotFoundException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "NON-Whitelisted App tried to open DLP Download Document : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v11, v14}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/providers/media/MediaDocumentsProvider;->getAbsolutePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/samsung/android/knox/dlp/XattrManager;->getXattrManager()Lcom/samsung/android/knox/dlp/XattrManager;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/MediaDocumentsProvider;->getContext()Landroid/content/Context;

    move-result-object v11

    const/4 v14, 0x1

    invoke-virtual {v5, v6, v11, v14}, Lcom/samsung/android/knox/dlp/XattrManager;->isAccessible(Ljava/lang/String;Landroid/content/Context;Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v8

    goto :goto_0

    :catch_0
    move-exception v7

    const-string/jumbo v11, "DLP_MediaDocumentsProvider"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, " Failure:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    goto :goto_0

    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/MediaDocumentsProvider;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v10, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v11

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v11

    :catchall_0
    move-exception v11

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v11
.end method

.method public openDocumentThumbnail(Ljava/lang/String;Landroid/graphics/Point;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/providers/media/MediaDocumentsProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {p1}, Lcom/android/providers/media/MediaDocumentsProvider;->getIdentForDocId(Ljava/lang/String;)Lcom/android/providers/media/MediaDocumentsProvider$Ident;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_0
    const-string/jumbo v6, "images_bucket"

    iget-object v7, v2, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-wide v6, v2, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->id:J

    invoke-direct {p0, v6, v7}, Lcom/android/providers/media/MediaDocumentsProvider;->getImageForBucketCleared(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Lcom/android/providers/media/MediaDocumentsProvider;->openOrCreateImageThumbnailCleared(JLandroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v6

    :cond_0
    :try_start_1
    const-string/jumbo v6, "image"

    iget-object v7, v2, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-wide v6, v2, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->id:J

    invoke-direct {p0, v6, v7, p3}, Lcom/android/providers/media/MediaDocumentsProvider;->openOrCreateImageThumbnailCleared(JLandroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v6

    :cond_1
    :try_start_2
    const-string/jumbo v6, "videos_bucket"

    iget-object v7, v2, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-wide v6, v2, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->id:J

    invoke-direct {p0, v6, v7}, Lcom/android/providers/media/MediaDocumentsProvider;->getVideoForBucketCleared(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Lcom/android/providers/media/MediaDocumentsProvider;->openOrCreateVideoThumbnailCleared(JLandroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v6

    :cond_2
    :try_start_3
    const-string/jumbo v6, "video"

    iget-object v7, v2, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-wide v6, v2, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->id:J

    invoke-direct {p0, v6, v7, p3}, Lcom/android/providers/media/MediaDocumentsProvider;->openOrCreateVideoThumbnailCleared(JLandroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v6

    :cond_3
    :try_start_4
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unsupported document "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method public queryChildDocuments(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/MediaDocumentsProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v14, Landroid/database/MatrixCursor;

    invoke-static/range {p2 .. p2}, Lcom/android/providers/media/MediaDocumentsProvider;->resolveDocumentProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v14, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/android/providers/media/MediaDocumentsProvider;->getIdentForDocId(Ljava/lang/String;)Lcom/android/providers/media/MediaDocumentsProvider$Ident;

    move-result-object v9

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    const/4 v8, 0x0

    :try_start_0
    const-string/jumbo v3, "images_root"

    iget-object v4, v9, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/providers/media/MediaDocumentsProvider$ImagesBucketQuery;->PROJECTION:[Ljava/lang/String;

    const-string/jumbo v7, "bucket_id, date_modified DESC"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v8}, Lcom/android/providers/media/MediaDocumentsProvider;->copyNotificationUri(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    const-wide/high16 v12, -0x8000000000000000L

    :cond_0
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x0

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    cmp-long v3, v12, v10

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v8}, Lcom/android/providers/media/MediaDocumentsProvider;->includeImagesBucket(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    move-wide v12, v10

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "images_bucket"

    iget-object v4, v9, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/providers/media/MediaDocumentsProvider$ImageQuery;->PROJECTION:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "bucket_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v9, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v8}, Lcom/android/providers/media/MediaDocumentsProvider;->copyNotificationUri(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v8}, Lcom/android/providers/media/MediaDocumentsProvider;->includeImage(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_2
    :try_start_1
    const-string/jumbo v3, "videos_root"

    iget-object v4, v9, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/providers/media/MediaDocumentsProvider$VideosBucketQuery;->PROJECTION:[Ljava/lang/String;

    const-string/jumbo v7, "bucket_id, date_modified DESC"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v8}, Lcom/android/providers/media/MediaDocumentsProvider;->copyNotificationUri(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    const-wide/high16 v12, -0x8000000000000000L

    :cond_3
    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x0

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    cmp-long v3, v12, v10

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v8}, Lcom/android/providers/media/MediaDocumentsProvider;->includeVideosBucket(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    move-wide v12, v10

    goto :goto_2

    :cond_4
    const-string/jumbo v3, "videos_bucket"

    iget-object v4, v9, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/providers/media/MediaDocumentsProvider$VideoQuery;->PROJECTION:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "bucket_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v9, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v8}, Lcom/android/providers/media/MediaDocumentsProvider;->copyNotificationUri(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    :goto_3
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v8}, Lcom/android/providers/media/MediaDocumentsProvider;->includeVideo(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    goto :goto_3

    :cond_5
    const-string/jumbo v3, "audio_root"

    iget-object v4, v9, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v3, Landroid/provider/MediaStore$Audio$Artists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/providers/media/MediaDocumentsProvider$ArtistQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v8}, Lcom/android/providers/media/MediaDocumentsProvider;->copyNotificationUri(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    :goto_4
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v8}, Lcom/android/providers/media/MediaDocumentsProvider;->includeArtist(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    goto :goto_4

    :cond_6
    const-string/jumbo v3, "artist"

    iget-object v4, v9, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string/jumbo v3, "external"

    iget-wide v4, v9, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->id:J

    invoke-static {v3, v4, v5}, Landroid/provider/MediaStore$Audio$Artists$Albums;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/android/providers/media/MediaDocumentsProvider$AlbumQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v8}, Lcom/android/providers/media/MediaDocumentsProvider;->copyNotificationUri(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    :goto_5
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v8}, Lcom/android/providers/media/MediaDocumentsProvider;->includeAlbum(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    goto :goto_5

    :cond_7
    const-string/jumbo v3, "album"

    iget-object v4, v9, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/providers/media/MediaDocumentsProvider$SongQuery;->PROJECTION:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "album_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v9, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v8}, Lcom/android/providers/media/MediaDocumentsProvider;->copyNotificationUri(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    :goto_6
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v8}, Lcom/android/providers/media/MediaDocumentsProvider;->includeAudio(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    goto :goto_6

    :cond_8
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unsupported document "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_9
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v14
.end method

.method public queryDocument(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/providers/media/MediaDocumentsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v8, Landroid/database/MatrixCursor;

    invoke-static {p2}, Lcom/android/providers/media/MediaDocumentsProvider;->resolveDocumentProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/providers/media/MediaDocumentsProvider;->getIdentForDocId(Ljava/lang/String;)Lcom/android/providers/media/MediaDocumentsProvider$Ident;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    const/4 v6, 0x0

    :try_start_0
    const-string/jumbo v1, "images_root"

    iget-object v2, v7, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v8}, Lcom/android/providers/media/MediaDocumentsProvider;->includeImagesRootDocument(Landroid/database/MatrixCursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v8

    :cond_1
    :try_start_1
    const-string/jumbo v1, "images_bucket"

    iget-object v2, v7, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/media/MediaDocumentsProvider$ImagesBucketQuery;->PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "bucket_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v7, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "bucket_id, date_modified DESC"

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    invoke-direct {p0, v8, v6}, Lcom/android/providers/media/MediaDocumentsProvider;->copyNotificationUri(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v8, v6}, Lcom/android/providers/media/MediaDocumentsProvider;->includeImagesBucket(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    :cond_2
    :try_start_2
    const-string/jumbo v1, "image"

    iget-object v2, v7, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/media/MediaDocumentsProvider$ImageQuery;->PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v7, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    invoke-direct {p0, v8, v6}, Lcom/android/providers/media/MediaDocumentsProvider;->copyNotificationUri(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v8, v6}, Lcom/android/providers/media/MediaDocumentsProvider;->includeImage(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "videos_root"

    iget-object v2, v7, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, v8}, Lcom/android/providers/media/MediaDocumentsProvider;->includeVideosRootDocument(Landroid/database/MatrixCursor;)V

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v1, "videos_bucket"

    iget-object v2, v7, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/media/MediaDocumentsProvider$VideosBucketQuery;->PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "bucket_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v7, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "bucket_id, date_modified DESC"

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    invoke-direct {p0, v8, v6}, Lcom/android/providers/media/MediaDocumentsProvider;->copyNotificationUri(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v8, v6}, Lcom/android/providers/media/MediaDocumentsProvider;->includeVideosBucket(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v1, "video"

    iget-object v2, v7, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/media/MediaDocumentsProvider$VideoQuery;->PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v7, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    invoke-direct {p0, v8, v6}, Lcom/android/providers/media/MediaDocumentsProvider;->copyNotificationUri(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v8, v6}, Lcom/android/providers/media/MediaDocumentsProvider;->includeVideo(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v1, "audio_root"

    iget-object v2, v7, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-direct {p0, v8}, Lcom/android/providers/media/MediaDocumentsProvider;->includeAudioRootDocument(Landroid/database/MatrixCursor;)V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v1, "artist"

    iget-object v2, v7, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v1, Landroid/provider/MediaStore$Audio$Artists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/media/MediaDocumentsProvider$ArtistQuery;->PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v7, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    invoke-direct {p0, v8, v6}, Lcom/android/providers/media/MediaDocumentsProvider;->copyNotificationUri(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v8, v6}, Lcom/android/providers/media/MediaDocumentsProvider;->includeArtist(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v1, "album"

    iget-object v2, v7, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v1, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/media/MediaDocumentsProvider$AlbumQuery;->PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v7, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    invoke-direct {p0, v8, v6}, Lcom/android/providers/media/MediaDocumentsProvider;->copyNotificationUri(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v8, v6}, Lcom/android/providers/media/MediaDocumentsProvider;->includeAlbum(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v1, "audio"

    iget-object v2, v7, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/media/MediaDocumentsProvider$SongQuery;->PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v7, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    invoke-direct {p0, v8, v6}, Lcom/android/providers/media/MediaDocumentsProvider;->copyNotificationUri(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v8, v6}, Lcom/android/providers/media/MediaDocumentsProvider;->includeAudio(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    goto/16 :goto_0

    :cond_a
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsupported document "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public queryRecentDocuments(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/16 v10, 0x40

    invoke-virtual {p0}, Lcom/android/providers/media/MediaDocumentsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v7, Landroid/database/MatrixCursor;

    invoke-static {p2}, Lcom/android/providers/media/MediaDocumentsProvider;->resolveDocumentProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    const/4 v6, 0x0

    :try_start_0
    const-string/jumbo v1, "images_root"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/media/MediaDocumentsProvider$ImageQuery;->PROJECTION:[Ljava/lang/String;

    const-string/jumbo v5, "date_modified DESC"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    invoke-direct {p0, v7, v6}, Lcom/android/providers/media/MediaDocumentsProvider;->copyNotificationUri(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v7}, Landroid/database/MatrixCursor;->getCount()I

    move-result v1

    if-ge v1, v10, :cond_2

    invoke-direct {p0, v7, v6}, Lcom/android/providers/media/MediaDocumentsProvider;->includeImage(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    :cond_0
    :try_start_1
    const-string/jumbo v1, "videos_root"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/media/MediaDocumentsProvider$VideoQuery;->PROJECTION:[Ljava/lang/String;

    const-string/jumbo v5, "date_modified DESC"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    invoke-direct {p0, v7, v6}, Lcom/android/providers/media/MediaDocumentsProvider;->copyNotificationUri(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v7}, Landroid/database/MatrixCursor;->getCount()I

    move-result v1

    if-ge v1, v10, :cond_2

    invoke-direct {p0, v7, v6}, Lcom/android/providers/media/MediaDocumentsProvider;->includeVideo(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsupported root "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v7
.end method

.method public queryRoots([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    new-instance v0, Landroid/database/MatrixCursor;

    invoke-static {p1}, Lcom/android/providers/media/MediaDocumentsProvider;->resolveRootProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/providers/media/MediaDocumentsProvider;->includeImagesRoot(Landroid/database/MatrixCursor;)V

    invoke-direct {p0, v0}, Lcom/android/providers/media/MediaDocumentsProvider;->includeVideosRoot(Landroid/database/MatrixCursor;)V

    invoke-direct {p0, v0}, Lcom/android/providers/media/MediaDocumentsProvider;->includeAudioRoot(Landroid/database/MatrixCursor;)V

    return-object v0
.end method
