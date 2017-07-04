.class Lcom/sec/android/gallery3d/data/EventAlbumManager$9;
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
        "Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/data/EventAlbumManager;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/data/EventAlbumManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager$9;->this$0:Lcom/sec/android/gallery3d/data/EventAlbumManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumInfo;Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumInfo;)I
    .locals 4

    invoke-static {p2}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumInfo;->access$2300(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumInfo;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {p1}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumInfo;->access$2300(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumInfo;)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/gallery3d/common/Utils;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumInfo;

    check-cast p2, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumInfo;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/gallery3d/data/EventAlbumManager$9;->compare(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumInfo;Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumInfo;)I

    move-result v0

    return v0
.end method
