.class Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum$DateComparator;
.super Ljava/lang/Object;
.source "MapEventViewMarkerAlbum.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DateComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sec/samsung/gallery/mapfragment/MapItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;


# direct methods
.method private constructor <init>(Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum$DateComparator;->this$0:Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum$DateComparator;-><init>(Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sec/samsung/gallery/mapfragment/MapItem;Lcom/sec/samsung/gallery/mapfragment/MapItem;)I
    .locals 4

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum$DateComparator;->this$0:Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;->access$100(Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;)Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getSortByType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-wide v0, p1, Lcom/sec/samsung/gallery/mapfragment/MapItem;->dateInMs:J

    iget-wide v2, p2, Lcom/sec/samsung/gallery/mapfragment/MapItem;->dateInMs:J

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/gallery3d/common/Utils;->compare(JJ)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p2, Lcom/sec/samsung/gallery/mapfragment/MapItem;->dateInMs:J

    iget-wide v2, p1, Lcom/sec/samsung/gallery/mapfragment/MapItem;->dateInMs:J

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/gallery3d/common/Utils;->compare(JJ)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/sec/samsung/gallery/mapfragment/MapItem;

    check-cast p2, Lcom/sec/samsung/gallery/mapfragment/MapItem;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum$DateComparator;->compare(Lcom/sec/samsung/gallery/mapfragment/MapItem;Lcom/sec/samsung/gallery/mapfragment/MapItem;)I

    move-result v0

    return v0
.end method
