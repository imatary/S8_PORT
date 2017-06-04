.class Lcom/sec/android/gallery3d/data/ChannelAlbumClustering$DateComparator;
.super Ljava/lang/Object;
.source "ChannelAlbumClustering.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/data/ChannelAlbumClustering;
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

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/data/ChannelAlbumClustering$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/ChannelAlbumClustering$DateComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sec/android/gallery3d/data/SmallItem;Lcom/sec/android/gallery3d/data/SmallItem;)I
    .locals 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, -0x1

    sget-boolean v3, Lcom/sec/android/gallery3d/data/Clustering;->USE_DREAM_STORY_LAYOUT:Z

    if-eqz v3, :cond_2

    iget-wide v4, p1, Lcom/sec/android/gallery3d/data/SmallItem;->dateInMs:J

    iget-wide v6, p2, Lcom/sec/android/gallery3d/data/SmallItem;->dateInMs:J

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-wide v4, p1, Lcom/sec/android/gallery3d/data/SmallItem;->dateInMs:J

    iget-wide v6, p2, Lcom/sec/android/gallery3d/data/SmallItem;->dateInMs:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-wide v4, p1, Lcom/sec/android/gallery3d/data/SmallItem;->dateInMs:J

    iget-wide v6, p2, Lcom/sec/android/gallery3d/data/SmallItem;->dateInMs:J

    cmp-long v3, v4, v6

    if-gez v3, :cond_3

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_3
    iget-wide v2, p1, Lcom/sec/android/gallery3d/data/SmallItem;->dateInMs:J

    iget-wide v4, p2, Lcom/sec/android/gallery3d/data/SmallItem;->dateInMs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    move v2, v1

    goto :goto_1

    :cond_4
    move v2, v0

    goto :goto_1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/sec/android/gallery3d/data/SmallItem;

    check-cast p2, Lcom/sec/android/gallery3d/data/SmallItem;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/gallery3d/data/ChannelAlbumClustering$DateComparator;->compare(Lcom/sec/android/gallery3d/data/SmallItem;Lcom/sec/android/gallery3d/data/SmallItem;)I

    move-result v0

    return v0
.end method
