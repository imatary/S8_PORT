.class final Lcom/sec/android/gallery3d/data/SearchTimeClustering$1;
.super Ljava/lang/Object;
.source "SearchTimeClustering.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/data/SearchTimeClustering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
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
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sec/android/gallery3d/data/SmallItem;Lcom/sec/android/gallery3d/data/SmallItem;)I
    .locals 4

    iget-wide v0, p2, Lcom/sec/android/gallery3d/data/SmallItem;->dateInMs:J

    iget-wide v2, p1, Lcom/sec/android/gallery3d/data/SmallItem;->dateInMs:J

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/gallery3d/common/Utils;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/sec/android/gallery3d/data/SmallItem;

    check-cast p2, Lcom/sec/android/gallery3d/data/SmallItem;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/gallery3d/data/SearchTimeClustering$1;->compare(Lcom/sec/android/gallery3d/data/SmallItem;Lcom/sec/android/gallery3d/data/SmallItem;)I

    move-result v0

    return v0
.end method
