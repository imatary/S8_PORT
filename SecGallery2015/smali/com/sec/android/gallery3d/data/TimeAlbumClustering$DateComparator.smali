.class Lcom/sec/android/gallery3d/data/TimeAlbumClustering$DateComparator;
.super Ljava/lang/Object;
.source "TimeAlbumClustering.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/data/TimeAlbumClustering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DateComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sec/android/gallery3d/data/SmallItem;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/data/TimeAlbumClustering$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/TimeAlbumClustering$DateComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sec/android/gallery3d/data/SmallItem;Lcom/sec/android/gallery3d/data/SmallItem;)I
    .locals 4

    iget-wide v0, p1, Lcom/sec/android/gallery3d/data/SmallItem;->dateInMs:J

    iget-wide v2, p2, Lcom/sec/android/gallery3d/data/SmallItem;->dateInMs:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p1, Lcom/sec/android/gallery3d/data/SmallItem;->dateInMs:J

    iget-wide v2, p2, Lcom/sec/android/gallery3d/data/SmallItem;->dateInMs:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/sec/android/gallery3d/data/SmallItem;

    check-cast p2, Lcom/sec/android/gallery3d/data/SmallItem;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/gallery3d/data/TimeAlbumClustering$DateComparator;->compare(Lcom/sec/android/gallery3d/data/SmallItem;Lcom/sec/android/gallery3d/data/SmallItem;)I

    move-result v0

    return v0
.end method
