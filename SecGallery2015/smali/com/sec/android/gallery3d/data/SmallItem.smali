.class public Lcom/sec/android/gallery3d/data/SmallItem;
.super Ljava/lang/Object;
.source "SmallItem.java"


# instance fields
.field addr:Ljava/lang/String;

.field dateInMs:J

.field height:I

.field lat:D

.field lng:D

.field orientation:I

.field path:Lcom/sec/android/gallery3d/data/Path;

.field width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/gallery3d/data/SmallItem;->orientation:I

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SmallItem;->addr:Ljava/lang/String;

    return-object v0
.end method

.method public getDateInMs()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/SmallItem;->dateInMs:J

    return-wide v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/SmallItem;->height:I

    return v0
.end method

.method public getLatitude()D
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/SmallItem;->lat:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/SmallItem;->lng:D

    return-wide v0
.end method

.method public getOrientation()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/SmallItem;->orientation:I

    return v0
.end method

.method public getPath()Lcom/sec/android/gallery3d/data/Path;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SmallItem;->path:Lcom/sec/android/gallery3d/data/Path;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/SmallItem;->width:I

    return v0
.end method

.method public setDateInMs(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sec/android/gallery3d/data/SmallItem;->dateInMs:J

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/data/SmallItem;->height:I

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/data/SmallItem;->orientation:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/data/SmallItem;->width:I

    return-void
.end method
