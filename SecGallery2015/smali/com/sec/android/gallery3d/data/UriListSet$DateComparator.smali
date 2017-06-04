.class Lcom/sec/android/gallery3d/data/UriListSet$DateComparator;
.super Ljava/lang/Object;
.source "UriListSet.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/data/UriListSet;
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

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/data/UriListSet$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/UriListSet$DateComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sec/android/gallery3d/data/MediaItem;Lcom/sec/android/gallery3d/data/MediaItem;)I
    .locals 4

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/gallery3d/common/Utils;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/sec/android/gallery3d/data/MediaItem;

    check-cast p2, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/gallery3d/data/UriListSet$DateComparator;->compare(Lcom/sec/android/gallery3d/data/MediaItem;Lcom/sec/android/gallery3d/data/MediaItem;)I

    move-result v0

    return v0
.end method
