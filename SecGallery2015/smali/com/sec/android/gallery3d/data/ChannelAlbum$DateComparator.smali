.class Lcom/sec/android/gallery3d/data/ChannelAlbum$DateComparator;
.super Ljava/lang/Object;
.source "ChannelAlbum.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/data/ChannelAlbum;
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
        "Lcom/sec/android/gallery3d/data/MediaItem;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/data/ChannelAlbum$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/ChannelAlbum$DateComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sec/android/gallery3d/data/MediaItem;Lcom/sec/android/gallery3d/data/MediaItem;)I
    .locals 8

    const/4 v2, 0x1

    const/4 v0, -0x1

    const/4 v1, 0x0

    instance-of v3, p1, Lcom/sec/android/gallery3d/data/LocalMediaItem;

    if-nez v3, :cond_0

    instance-of v3, p1, Lcom/sec/android/gallery3d/data/LocalCameraMediaItem;

    if-nez v3, :cond_0

    instance-of v3, p1, Lcom/sec/android/gallery3d/data/MtpImage;

    if-nez v3, :cond_0

    instance-of v3, p1, Lcom/sec/android/gallery3d/data/UnionMediaItem;

    if-eqz v3, :cond_7

    :cond_0
    instance-of v3, p2, Lcom/sec/android/gallery3d/data/LocalMediaItem;

    if-nez v3, :cond_1

    instance-of v3, p2, Lcom/sec/android/gallery3d/data/LocalCameraMediaItem;

    if-nez v3, :cond_1

    instance-of v3, p2, Lcom/sec/android/gallery3d/data/MtpImage;

    if-nez v3, :cond_1

    instance-of v3, p2, Lcom/sec/android/gallery3d/data/UnionMediaItem;

    if-eqz v3, :cond_7

    :cond_1
    # getter for: Lcom/sec/android/gallery3d/data/ChannelAlbum;->USE_DREAM_STORY_LAYOUT:Z
    invoke-static {}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->access$100()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v4

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-gez v3, :cond_2

    :goto_0
    return v0

    :cond_2
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v4

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v4

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-gez v3, :cond_5

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_6

    move v2, v1

    goto :goto_1

    :cond_6
    move v2, v0

    goto :goto_1

    :cond_7
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/sec/android/gallery3d/data/MediaItem;

    check-cast p2, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/gallery3d/data/ChannelAlbum$DateComparator;->compare(Lcom/sec/android/gallery3d/data/MediaItem;Lcom/sec/android/gallery3d/data/MediaItem;)I

    move-result v0

    return v0
.end method
