.class public Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;
.super Lcom/sec/android/gallery3d/remote/RemotePhotoEntry;
.source "SLinkItemEntry.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SLinkItemEntry"


# instance fields
.field public device_id:I

.field public device_type:Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/remote/RemotePhotoEntry;-><init>()V

    return-void
.end method

.method private setPropertyFromCursor(Landroid/database/Cursor;)V
    .locals 4

    :try_start_0
    const-string/jumbo v1, "_display_name"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;->title:Ljava/lang/String;

    const-string/jumbo v1, "_data"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;->content_url:Ljava/lang/String;

    const-string/jumbo v1, "width"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;->width:I

    const-string/jumbo v1, "height"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;->height:I

    const-string/jumbo v1, "mime_type"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;->content_type:Ljava/lang/String;

    const-string/jumbo v1, "orientation"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;->rotation:I

    const-string/jumbo v1, "datetaken"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;->date_taken:J

    invoke-static {p1}, Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;->getDevicePhysicalType(Landroid/database/Cursor;)Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;->device_type:Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SLinkItemEntry"

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    invoke-super {p0}, Lcom/sec/android/gallery3d/remote/RemotePhotoEntry;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;->device_id:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;->device_type:Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;

    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/remote/RemotePhotoEntry;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;->device_id:I

    iget v3, v0, Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;->device_id:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;->device_type:Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;

    iget-object v3, v0, Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;->device_type:Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/common/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setProperty(Ljava/lang/Object;)V
    .locals 2

    instance-of v0, p1, Landroid/database/Cursor;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/database/Cursor;

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;->setPropertyFromCursor(Landroid/database/Cursor;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Source is wrong"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
