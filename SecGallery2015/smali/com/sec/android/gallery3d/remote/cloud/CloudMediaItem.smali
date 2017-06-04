.class public abstract Lcom/sec/android/gallery3d/remote/cloud/CloudMediaItem;
.super Lcom/sec/android/gallery3d/remote/RemoteMediaItem;
.source "CloudMediaItem.java"

# interfaces
.implements Lcom/sec/android/gallery3d/data/CursorLoadable;


# static fields
.field private static final TAG:Ljava/lang/String; = "CloudMediaItem"

.field static final mBaseFileUri:Landroid/net/Uri;

.field public static final mBaseImageUri:Landroid/net/Uri;

.field public static final mBaseVideoUri:Landroid/net/Uri;


# instance fields
.field mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/sec/android/cloudagent/CloudStore$Files;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/remote/cloud/CloudMediaItem;->mBaseFileUri:Landroid/net/Uri;

    invoke-static {}, Lcom/sec/android/cloudagent/CloudStore$Images;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/remote/cloud/CloudMediaItem;->mBaseImageUri:Landroid/net/Uri;

    invoke-static {}, Lcom/sec/android/cloudagent/CloudStore$Videos;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/remote/cloud/CloudMediaItem;->mBaseVideoUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/remote/RemoteMediaItem;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    new-instance v0, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    return-void
.end method


# virtual methods
.method public getAlbumId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-object v0, v0, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->album_id:Ljava/lang/String;

    return-object v0
.end method

.method public getCacheStatus()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget v0, v0, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->cache_status:I

    return v0
.end method

.method public getCachedPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-object v0, v0, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->cache_pathname:Ljava/lang/String;

    return-object v0
.end method

.method public getDateInMs()J
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-wide v0, v0, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->date_edited:J

    return-wide v0
.end method

.method public getDetails()Lcom/sec/android/gallery3d/data/MediaDetails;
    .locals 6

    invoke-super {p0}, Lcom/sec/android/gallery3d/remote/RemoteMediaItem;->getDetails()Lcom/sec/android/gallery3d/data/MediaDetails;

    move-result-object v0

    const/16 v1, 0x1f4

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-object v2, v2, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->content_url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-object v2, v2, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-wide v2, v1, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->size:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-wide v2, v2, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->size:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public getGroupId()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-object v0, v0, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->content_type:Ljava/lang/String;

    return-object v0
.end method

.method public getModifiedDateInSec()J
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-wide v0, v0, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->date_edited:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-object v0, v0, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-wide v0, v0, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->size:J

    return-wide v0
.end method

.method public abstract loadFromCursor(Landroid/database/Cursor;)V
.end method

.method updateContent(Landroid/database/Cursor;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/remote/cloud/CloudMediaItem;->updateFromCursor(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/gallery3d/remote/cloud/CloudMediaItem;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudMediaItem;->mDataVersion:J

    :cond_0
    return-void
.end method

.method public abstract updateFromCursor(Landroid/database/Cursor;)Z
.end method
