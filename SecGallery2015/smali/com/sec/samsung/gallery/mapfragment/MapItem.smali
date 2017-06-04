.class public Lcom/sec/samsung/gallery/mapfragment/MapItem;
.super Ljava/lang/Object;
.source "MapItem.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/sec/samsung/gallery/mapfragment/MapItem;",
        ">;"
    }
.end annotation


# instance fields
.field public final dateInMs:J

.field private filePath:Ljava/lang/String;

.field private final latitude:D

.field private final longitude:D

.field private final originLatitude:D

.field private final originLongitude:D

.field public final path:Lcom/sec/android/gallery3d/data/Path;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;JDDDD)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/mapfragment/MapItem;->path:Lcom/sec/android/gallery3d/data/Path;

    iput-wide p2, p0, Lcom/sec/samsung/gallery/mapfragment/MapItem;->dateInMs:J

    iput-wide p4, p0, Lcom/sec/samsung/gallery/mapfragment/MapItem;->latitude:D

    iput-wide p6, p0, Lcom/sec/samsung/gallery/mapfragment/MapItem;->longitude:D

    iput-wide p8, p0, Lcom/sec/samsung/gallery/mapfragment/MapItem;->originLatitude:D

    iput-wide p10, p0, Lcom/sec/samsung/gallery/mapfragment/MapItem;->originLongitude:D

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;JDDDDLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/mapfragment/MapItem;->path:Lcom/sec/android/gallery3d/data/Path;

    iput-wide p2, p0, Lcom/sec/samsung/gallery/mapfragment/MapItem;->dateInMs:J

    iput-wide p4, p0, Lcom/sec/samsung/gallery/mapfragment/MapItem;->latitude:D

    iput-wide p6, p0, Lcom/sec/samsung/gallery/mapfragment/MapItem;->longitude:D

    iput-wide p8, p0, Lcom/sec/samsung/gallery/mapfragment/MapItem;->originLatitude:D

    iput-wide p10, p0, Lcom/sec/samsung/gallery/mapfragment/MapItem;->originLongitude:D

    iput-object p12, p0, Lcom/sec/samsung/gallery/mapfragment/MapItem;->filePath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/sec/samsung/gallery/mapfragment/MapItem;)I
    .locals 4

    iget-wide v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapItem;->dateInMs:J

    iget-wide v2, p1, Lcom/sec/samsung/gallery/mapfragment/MapItem;->dateInMs:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/sec/samsung/gallery/mapfragment/MapItem;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/mapfragment/MapItem;->compareTo(Lcom/sec/samsung/gallery/mapfragment/MapItem;)I

    move-result v0

    return v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapItem;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    iget-wide v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapItem;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    iget-wide v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapItem;->longitude:D

    return-wide v0
.end method

.method public getOriginLatitude()D
    .locals 2

    iget-wide v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapItem;->originLatitude:D

    return-wide v0
.end method

.method public getOriginLongitude()D
    .locals 2

    iget-wide v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapItem;->originLongitude:D

    return-wide v0
.end method
