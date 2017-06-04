.class public abstract Lcom/sec/android/gallery3d/remote/RemotePhotoEntry;
.super Lcom/sec/android/gallery3d/remote/RemoteBaseEntry;
.source "RemotePhotoEntry.java"


# instance fields
.field public album_id:Ljava/lang/String;

.field public cache_pathname:Ljava/lang/String;

.field public cache_status:I

.field public content_type:Ljava/lang/String;

.field public content_url:Ljava/lang/String;

.field public date_edited:J

.field public date_taken:J

.field private display_index:I

.field public height:I

.field public latitude:D

.field public longitude:D

.field public rotation:I

.field private screennail_url:Ljava/lang/String;

.field public size:J

.field public source_id:Ljava/lang/String;

.field public thumbnail_url:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/remote/RemoteBaseEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 6

    const-wide/16 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/sec/android/gallery3d/remote/RemoteBaseEntry;->clear()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/RemotePhotoEntry;->source_id:Ljava/lang/String;

    iput v1, p0, Lcom/sec/android/gallery3d/remote/RemotePhotoEntry;->cache_status:I

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/RemotePhotoEntry;->cache_pathname:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/RemotePhotoEntry;->album_id:Ljava/lang/String;

    iput v1, p0, Lcom/sec/android/gallery3d/remote/RemotePhotoEntry;->display_index:I

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/RemotePhotoEntry;->title:Ljava/lang/String;

    iput-wide v2, p0, Lcom/sec/android/gallery3d/remote/RemotePhotoEntry;->date_edited:J

    iput-wide v2, p0, Lcom/sec/android/gallery3d/remote/RemotePhotoEntry;->date_taken:J

    iput v1, p0, Lcom/sec/android/gallery3d/remote/RemotePhotoEntry;->width:I

    iput v1, p0, Lcom/sec/android/gallery3d/remote/RemotePhotoEntry;->height:I

    iput v1, p0, Lcom/sec/android/gallery3d/remote/RemotePhotoEntry;->rotation:I

    iput-wide v2, p0, Lcom/sec/android/gallery3d/remote/RemotePhotoEntry;->size:J

    iput-wide v4, p0, Lcom/sec/android/gallery3d/remote/RemotePhotoEntry;->latitude:D

    iput-wide v4, p0, Lcom/sec/android/gallery3d/remote/RemotePhotoEntry;->longitude:D

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/RemotePhotoEntry;->thumbnail_url:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/RemotePhotoEntry;->screennail_url:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/RemotePhotoEntry;->content_url:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/RemotePhotoEntry;->content_type:Ljava/lang/String;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/sec/android/gallery3d/remote/RemotePhotoEntry;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/sec/android/gallery3d/remote/RemotePhotoEntry;

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/RemotePhotoEntry;->source_id:Ljava/lang/String;

    iget-object v3, v0, Lcom/sec/android/gallery3d/remote/RemotePhotoEntry;->source_id:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/common/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sec/android/gallery3d/remote/RemotePhotoEntry;->cache_status:I

    iget v3, v0, Lcom/sec/android/gallery3d/remote/RemotePhotoEntry;->cache_status:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/RemotePhotoEntry;->cache_pathname:Ljava/lang/String;

    iget-object v3, v0, Lcom/sec/android/gallery3d/remote/RemotePhotoEntry;->cache_pathname:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/common/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/RemotePhotoEntry;->album_id:Ljava/lang/String;

    iget-object v3, v0, Lcom/sec/android/gallery3d/remote/RemotePhotoEntry;->album_id:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/common/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sec/android/gallery3d/remote/RemotePhotoEntry;->display_index:I

    iget v3, v0, Lcom/sec/android/gallery3d/remote/RemotePhotoEntry;->display_index:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/RemotePhotoEntry;->title:Ljava/lang/String;

    iget-object v3, v0, Lcom/sec/android/gallery3d/remote/RemotePhotoEntry;->title:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/common/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/sec/android/gallery3d/remote/RemotePhotoEntry;->date_edited:J

    iget-wide v4, v0, Lcom/sec/android/gallery3d/remote/RemotePhotoEntry;->date_edited:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/sec/android/gallery3d/remote/RemotePhotoEntry;->date_taken:J

    iget-wide v4, v0, Lcom/sec/android/gallery3d/remote/RemotePhotoEntry;->date_taken:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget v2, p0, Lcom/sec/android/gallery3d/remote/RemotePhotoEntry;->width:I

    iget v3, v0, Lcom/sec/android/gallery3d/remote/RemotePhotoEntry;->width:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/sec/android/gallery3d/remote/RemotePhotoEntry;->height:I

    iget v3, v0, Lcom/sec/android/gallery3d/remote/RemotePhotoEntry;->height:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/sec/android/gallery3d/remote/RemotePhotoEntry;->rotation:I

    iget v3, v0, Lcom/sec/android/gallery3d/remote/RemotePhotoEntry;->rotation:I

    if-ne v2, v3, :cond_0

    iget-wide v2, p0, Lcom/sec/android/gallery3d/remote/RemotePhotoEntry;->size:J

    iget-wide v4, v0, Lcom/sec/android/gallery3d/remote/RemotePhotoEntry;->size:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/sec/android/gallery3d/remote/RemotePhotoEntry;->latitude:D

    iget-wide v4, v0, Lcom/sec/android/gallery3d/remote/RemotePhotoEntry;->latitude:D

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/gallery3d/common/Utils;->equals(DD)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/sec/android/gallery3d/remote/RemotePhotoEntry;->longitude:D

    iget-wide v4, v0, Lcom/sec/android/gallery3d/remote/RemotePhotoEntry;->longitude:D

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/gallery3d/common/Utils;->equals(DD)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/RemotePhotoEntry;->thumbnail_url:Ljava/lang/String;

    iget-object v3, v0, Lcom/sec/android/gallery3d/remote/RemotePhotoEntry;->thumbnail_url:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/common/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/RemotePhotoEntry;->screennail_url:Ljava/lang/String;

    iget-object v3, v0, Lcom/sec/android/gallery3d/remote/RemotePhotoEntry;->screennail_url:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/common/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/RemotePhotoEntry;->content_url:Ljava/lang/String;

    iget-object v3, v0, Lcom/sec/android/gallery3d/remote/RemotePhotoEntry;->content_url:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/common/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto/16 :goto_0
.end method
