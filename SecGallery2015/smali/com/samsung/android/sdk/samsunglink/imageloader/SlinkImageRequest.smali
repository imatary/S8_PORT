.class public Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;
.super Ljava/lang/Object;
.source "SlinkImageRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private albumId:J

.field private isChacheOnly:Z

.field private localData:Ljava/lang/String;

.field private localSourceAlbumId:J

.field private localSourceMediaId:J

.field private localThumbData:Ljava/lang/String;

.field private localThumbHeight:I

.field private localThumbWidth:I

.field private maxHeight:I

.field private maxWidth:I

.field private mediaHeight:I

.field private mediaType:I

.field private mediaWidth:I

.field private orientation:I

.field private priority:I

.field private rowId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest$1;

    invoke-direct {v0}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->rowId:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->mediaType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->orientation:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->localSourceMediaId:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->albumId:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->localSourceAlbumId:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->localData:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->maxWidth:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->maxHeight:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->priority:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p1, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->rowId:J

    iput-wide v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->rowId:J

    iget v0, p1, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->mediaType:I

    iput v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->mediaType:I

    iget v0, p1, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->orientation:I

    iput v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->orientation:I

    iget-wide v0, p1, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->localSourceMediaId:J

    iput-wide v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->localSourceMediaId:J

    iget-wide v0, p1, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->albumId:J

    iput-wide v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->albumId:J

    iget-wide v0, p1, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->localSourceAlbumId:J

    iput-wide v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->localSourceAlbumId:J

    iget-object v0, p1, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->localData:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->localData:Ljava/lang/String;

    iget v0, p1, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->maxWidth:I

    iput v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->maxWidth:I

    iget v0, p1, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->maxHeight:I

    iput v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->maxHeight:I

    iget v0, p1, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->priority:I

    iput v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->priority:I

    iget-object v0, p1, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->localThumbData:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->localThumbData:Ljava/lang/String;

    iget v0, p1, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->localThumbWidth:I

    iput v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->localThumbWidth:I

    iget v0, p1, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->localThumbHeight:I

    iput v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->localThumbHeight:I

    iget v0, p1, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->mediaWidth:I

    iput v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->mediaWidth:I

    iget v0, p1, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->mediaHeight:I

    iput v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->mediaHeight:I

    iget-boolean v0, p1, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->isChacheOnly:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->isChacheOnly:Z

    return-void
.end method

.method public static createFromCursor(Landroid/database/Cursor;III)Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->createFromCursorInternal(Landroid/database/Cursor;IIIZZ)Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;

    move-result-object v0

    return-object v0
.end method

.method public static createFromCursorByFileBrowser(Landroid/database/Cursor;III)Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->createFromCursorInternal(Landroid/database/Cursor;IIIZZ)Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;

    move-result-object v0

    return-object v0
.end method

.method public static createFromCursorCached(Landroid/database/Cursor;III)Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->createFromCursorInternal(Landroid/database/Cursor;IIIZZ)Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;

    move-result-object v0

    return-object v0
.end method

.method private static createFromCursorInternal(Landroid/database/Cursor;IIIZZ)Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;
    .locals 10

    new-instance v1, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;

    invoke-direct {v1}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;-><init>()V

    iput p1, v1, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->maxWidth:I

    iput p2, v1, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->maxHeight:I

    iput p3, v1, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->priority:I

    iput-boolean p5, v1, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->isChacheOnly:Z

    if-eqz p4, :cond_b

    const-string/jumbo v5, "asp_media_id"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v1, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->rowId:J

    :goto_0
    const-string/jumbo v5, "media_type"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v1, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->mediaType:I

    iget v5, v1, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->mediaType:I

    const/4 v8, 0x1

    if-ne v5, v8, :cond_0

    const-string/jumbo v5, "orientation"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v1, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->orientation:I

    :cond_0
    const-string/jumbo v5, "local_source_media_id"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_1

    iput-wide v6, v1, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->localSourceMediaId:J

    :cond_1
    const-string/jumbo v5, "local_data"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->localData:Ljava/lang/String;

    :cond_2
    const-string/jumbo v5, "local_thumb_data"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_3

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->localThumbData:Ljava/lang/String;

    :cond_3
    const-string/jumbo v5, "width"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_4

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v1, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->mediaWidth:I

    :cond_4
    const-string/jumbo v5, "height"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_5

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v1, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->mediaHeight:I

    :cond_5
    const-string/jumbo v5, "local_thumb_width"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_6

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v1, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->localThumbWidth:I

    :cond_6
    const-string/jumbo v5, "local_thumb_height"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_7

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v1, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->localThumbHeight:I

    :cond_7
    iget v5, v1, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->mediaType:I

    const/4 v8, 0x2

    if-eq v5, v8, :cond_8

    iget v5, v1, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->mediaType:I

    const/16 v8, 0xc

    if-eq v5, v8, :cond_8

    iget v5, v1, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->mediaType:I

    const/16 v8, 0xd

    if-eq v5, v8, :cond_8

    iget v5, v1, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->mediaType:I

    const/16 v8, 0xe

    if-ne v5, v8, :cond_a

    :cond_8
    iget v5, v1, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->mediaType:I

    const/16 v8, 0xc

    if-eq v5, v8, :cond_9

    const-string/jumbo v5, "album_id"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v1, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->albumId:J

    :cond_9
    const-string/jumbo v5, "local_source_album_id"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_a

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v8, 0x0

    cmp-long v5, v2, v8

    if-lez v5, :cond_a

    iput-wide v2, v1, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->localSourceAlbumId:J

    :cond_a
    return-object v1

    :cond_b
    const-string/jumbo v5, "_id"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v1, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->rowId:J

    goto/16 :goto_0
.end method

.method public static createFromRequest(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;III)Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;-><init>(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;)V

    iput p1, v0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->maxWidth:I

    iput p2, v0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->maxHeight:I

    iput p3, v0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->priority:I

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAlbumId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->albumId:J

    return-wide v0
.end method

.method public getLocalData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->localData:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalSourceAlbumId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->localSourceAlbumId:J

    return-wide v0
.end method

.method public getLocalSourceMediaId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->localSourceMediaId:J

    return-wide v0
.end method

.method public getLocalThumbData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->localThumbData:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalThumbHeight()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->localThumbHeight:I

    return v0
.end method

.method public getLocalThumbWidth()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->localThumbWidth:I

    return v0
.end method

.method public getMaxHeight()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->maxHeight:I

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->maxWidth:I

    return v0
.end method

.method public getMediaHeight()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->mediaHeight:I

    return v0
.end method

.method public getMediaType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->mediaType:I

    return v0
.end method

.method public getMediaWidth()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->mediaWidth:I

    return v0
.end method

.method public getOrientation()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->orientation:I

    return v0
.end method

.method public getPriority()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->priority:I

    return v0
.end method

.method public getRowId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->rowId:J

    return-wide v0
.end method

.method public isChacheOnly()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->isChacheOnly:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "SlinkImageRequest [rowId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->rowId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", maxWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->maxWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", maxHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->maxHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->priority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->rowId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->mediaType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->orientation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->localSourceMediaId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->albumId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->localSourceAlbumId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->localData:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->maxWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->maxHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->priority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
