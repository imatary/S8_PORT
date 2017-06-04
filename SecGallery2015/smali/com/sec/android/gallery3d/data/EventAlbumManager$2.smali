.class Lcom/sec/android/gallery3d/data/EventAlbumManager$2;
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
        "Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/data/EventAlbumManager;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/data/EventAlbumManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager$2;->this$0:Lcom/sec/android/gallery3d/data/EventAlbumManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumEntry;Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumEntry;)I
    .locals 4

    iget-wide v0, p2, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumEntry;->albumCreateTime:J

    iget-wide v2, p1, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumEntry;->albumCreateTime:J

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/gallery3d/common/Utils;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumEntry;

    check-cast p2, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumEntry;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/gallery3d/data/EventAlbumManager$2;->compare(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumEntry;Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumEntry;)I

    move-result v0

    return v0
.end method
