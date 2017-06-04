.class Lcom/sec/android/gallery3d/data/EventAlbumManager$1;
.super Ljava/lang/Object;
.source "EventAlbumManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/data/EventAlbumManager;
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
        "Ljava/util/ArrayList",
        "<",
        "Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/data/EventAlbumManager;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/data/EventAlbumManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager$1;->this$0:Lcom/sec/android/gallery3d/data/EventAlbumManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/util/ArrayList;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/gallery3d/data/EventAlbumManager$1;->compare(Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/util/ArrayList;Ljava/util/ArrayList;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;",
            ">;)I"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;

    # getter for: Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;->dateInMs:J
    invoke-static {v0}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;->access$100(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;)J

    move-result-wide v2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;

    # getter for: Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;->dateInMs:J
    invoke-static {v0}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;->access$100(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;)J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Lcom/sec/android/gallery3d/common/Utils;->compare(JJ)I

    move-result v0

    return v0
.end method
