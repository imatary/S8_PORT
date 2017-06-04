.class Lcom/sec/samsung/gallery/view/eventview/FindNewEvent$2;
.super Ljava/lang/Object;
.source "FindNewEvent.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent$2;->this$0:Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sec/android/gallery3d/data/MediaItem;Lcom/sec/android/gallery3d/data/MediaItem;)I
    .locals 4

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/gallery3d/common/Utils;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/sec/android/gallery3d/data/MediaItem;

    check-cast p2, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {p0, p1, p2}, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent$2;->compare(Lcom/sec/android/gallery3d/data/MediaItem;Lcom/sec/android/gallery3d/data/MediaItem;)I

    move-result v0

    return v0
.end method
