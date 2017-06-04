.class Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser$timeDescCompare;
.super Ljava/lang/Object;
.source "MapMarkerOptionsChooser.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "timeDescCompare"
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


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser$timeDescCompare;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sec/samsung/gallery/mapfragment/MapItem;Lcom/sec/samsung/gallery/mapfragment/MapItem;)I
    .locals 4

    iget-wide v0, p1, Lcom/sec/samsung/gallery/mapfragment/MapItem;->dateInMs:J

    iget-wide v2, p2, Lcom/sec/samsung/gallery/mapfragment/MapItem;->dateInMs:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p1, Lcom/sec/samsung/gallery/mapfragment/MapItem;->dateInMs:J

    iget-wide v2, p2, Lcom/sec/samsung/gallery/mapfragment/MapItem;->dateInMs:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/sec/samsung/gallery/mapfragment/MapItem;

    check-cast p2, Lcom/sec/samsung/gallery/mapfragment/MapItem;

    invoke-virtual {p0, p1, p2}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser$timeDescCompare;->compare(Lcom/sec/samsung/gallery/mapfragment/MapItem;Lcom/sec/samsung/gallery/mapfragment/MapItem;)I

    move-result v0

    return v0
.end method
