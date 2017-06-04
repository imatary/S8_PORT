.class public abstract Lcom/sec/android/gallery3d/data/MediaObject;
.super Ljava/lang/Object;
.source "MediaObject.java"


# static fields
.field public static final INVALID_DATA_VERSION:J = -0x1L

.field public static final MEDIA_TYPE_ALL:I = 0x6

.field private static final MEDIA_TYPE_ALL_STRING:Ljava/lang/String; = "all"

.field private static final MEDIA_TYPE_HIDDEN:Ljava/lang/String; = "hiddenalbum"

.field public static final MEDIA_TYPE_IMAGE:I = 0x2

.field private static final MEDIA_TYPE_IMAGE_STRING:Ljava/lang/String; = "image"

.field private static final MEDIA_TYPE_LOCAL_ALL:Ljava/lang/String; = "localall"

.field protected static final MEDIA_TYPE_UNKNOWN:I = 0x1

.field public static final MEDIA_TYPE_VIDEO:I = 0x4

.field private static final MEDIA_TYPE_VIDEO_STRING:Ljava/lang/String; = "video"

.field public static final SUPPORT_3D_PANORAMA:J = 0x4000000000L

.field public static final SUPPORT_ACTION:I = 0x4000

.field public static final SUPPORT_ADD_TAG:J = 0x10000000000000L

.field public static final SUPPORT_ADD_TO_EVENT:J = 0x4000000L

.field public static final SUPPORT_AGIF_MAKER:J = 0x4000000000000000L

.field public static final SUPPORT_ALL:J = -0x1L

.field public static final SUPPORT_ASSIGN_NAME:J = 0x100000000000000L

.field static final SUPPORT_BACK:I = 0x2000

.field public static final SUPPORT_BURST_SHOT_PLAY:J = 0x80000000000L

.field public static final SUPPORT_CAMERA_SHORTCUT:I = 0x8000

.field public static final SUPPORT_CHANGECOVERIMAGE:J = 0x80000L

.field public static final SUPPORT_COLLAGE:J = 0x2000000000L

.field public static final SUPPORT_COPY:J = 0x8000000000000L

.field public static final SUPPORT_COPY_TO_ALBUM:J = 0x400000L

.field public static final SUPPORT_COPY_TO_CLIPBOARD:J = 0x400000000000000L

.field public static final SUPPORT_COPY_TO_EVENT:J = 0x800000L

.field public static final SUPPORT_CREATE_VIDEO_ALBUM:J = 0x10000000L

.field public static final SUPPORT_CROP:I = 0x8

.field public static final SUPPORT_DELETE:I = 0x1

.field public static final SUPPORT_DOWNLOAD_SLINK:J = 0x800000000000L

.field public static final SUPPORT_DOWNLOAD_VIA_DOWNLOAD_MANAGER:J = 0x400000000000L

.field public static final SUPPORT_EDIT:I = 0x200

.field public static final SUPPORT_FLASH_ANNOTATE:I = 0x40000

.field public static final SUPPORT_FULL_IMAGE:I = 0x40

.field public static final SUPPORT_IMPORT:J = 0x20000000000L

.field public static final SUPPORT_INFO:I = 0x400

.field public static final SUPPORT_MMS_SAVE:J = 0x8000000000L

.field public static final SUPPORT_MOBILEPRINT:J = 0x1000000000000000L

.field public static final SUPPORT_MOVE:J = 0x4000000000000L

.field public static final SUPPORT_MOVE_TO_ALBUM:J = 0x100000L

.field public static final SUPPORT_MOVE_TO_KNOX:J = 0x2000000L

.field public static final SUPPORT_MOVE_TO_SECRETBOX:J = 0x40000000L

.field public static final SUPPORT_NEARBY_PLAY:J = 0x80000000L

.field public static final SUPPORT_NEW_ALBUM:J = 0x2000000000000L

.field public static final SUPPORT_PLAY:I = 0x80

.field public static final SUPPORT_REMOVE_FROM_KNOX:J = 0x1000000L

.field public static final SUPPORT_REMOVE_FROM_SECRETBOX:J = 0x20000000L

.field public static final SUPPORT_REMOVE_TAG:J = 0x40000000000000L

.field public static final SUPPORT_RENAME:J = 0x800000000000000L

.field public static final SUPPORT_ROTATE:I = 0x2

.field public static final SUPPORT_SAVE_COPY_IN_ALBUM:J = 0x2000000000000000L

.field public static final SUPPORT_SEND_TO_OTHER_DEVICES:I = 0x20000

.field public static final SUPPORT_SETAS:I = 0x20

.field public static final SUPPORT_SHARE:I = 0x4

.field public static final SUPPORT_SLIDESHOW:J = 0x200000000000L

.field static final SUPPORT_UNLOCK:I = 0x1000

.field private static final TAG:Ljava/lang/String; = "MediaObject"

.field public static final UNSUPPORT_ALL:J

.field private static sArcVersionSerial:J

.field private static sVersionSerial:J


# instance fields
.field mArcDataVersion:J

.field protected mDataVersion:J

.field protected final mPath:Lcom/sec/android/gallery3d/data/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/sec/android/gallery3d/data/MediaObject;->sVersionSerial:J

    sput-wide v0, Lcom/sec/android/gallery3d/data/MediaObject;->sArcVersionSerial:J

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/data/MediaObject;->mArcDataVersion:J

    invoke-virtual {p1, p0}, Lcom/sec/android/gallery3d/data/Path;->setObject(Lcom/sec/android/gallery3d/data/MediaObject;)V

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/MediaObject;->mPath:Lcom/sec/android/gallery3d/data/Path;

    iput-wide p2, p0, Lcom/sec/android/gallery3d/data/MediaObject;->mDataVersion:J

    return-void
.end method

.method static declared-synchronized getArcVersionNumber()J
    .locals 4

    const-class v0, Lcom/sec/android/gallery3d/data/MediaObject;

    monitor-enter v0

    :try_start_0
    sget-wide v2, Lcom/sec/android/gallery3d/data/MediaObject;->sArcVersionSerial:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-wide v2

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static getTypeFromString(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x6

    const-string/jumbo v1, "all"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "localall"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string/jumbo v1, "image"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "video"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "hiddenalbum"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static declared-synchronized nextVersionNumber()J
    .locals 6

    const-class v1, Lcom/sec/android/gallery3d/data/MediaObject;

    monitor-enter v1

    :try_start_0
    sget-wide v2, Lcom/sec/android/gallery3d/data/MediaObject;->sVersionSerial:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    sput-wide v2, Lcom/sec/android/gallery3d/data/MediaObject;->sVersionSerial:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized setArcVersionNumber()V
    .locals 6

    const-class v1, Lcom/sec/android/gallery3d/data/MediaObject;

    monitor-enter v1

    :try_start_0
    sget-wide v2, Lcom/sec/android/gallery3d/data/MediaObject;->sArcVersionSerial:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    sput-wide v2, Lcom/sec/android/gallery3d/data/MediaObject;->sArcVersionSerial:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setVersion()V
    .locals 2

    const-class v0, Lcom/sec/android/gallery3d/data/MediaObject;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/sec/android/gallery3d/data/MediaObject;->setArcVersionNumber()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public copy(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public copyBurstShotItem(Ljava/lang/String;J)Z
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public delete(ZLcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public delete(Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;)Z
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getCacheStatus()I
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "MediaObject"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "should implement getContentUri."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "MediaObject"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "The object was created from path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/MediaObject;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method public getDataVersion()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/MediaObject;->mDataVersion:J

    return-wide v0
.end method

.method public getDataVersion(I)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/MediaObject;->mDataVersion:J

    return-wide v0
.end method

.method public getDetails()Lcom/sec/android/gallery3d/data/MediaDetails;
    .locals 1

    new-instance v0, Lcom/sec/android/gallery3d/data/MediaDetails;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/data/MediaDetails;-><init>()V

    return-object v0
.end method

.method public getMediaType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getPath()Lcom/sec/android/gallery3d/data/Path;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MediaObject;->mPath:Lcom/sec/android/gallery3d/data/Path;

    return-object v0
.end method

.method public getPlayUri()Landroid/net/Uri;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getServerId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSize()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSupportedOperations()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getUnionContentUri()Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public move(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public moveToSecretBox(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public rotate(I)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
