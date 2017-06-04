.class Lcom/sec/android/gallery3d/data/ClusterAlbumSet$4;
.super Ljava/lang/Object;
.source "ClusterAlbumSet.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/data/ClusterAlbumSet;
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
        "Lcom/sec/android/gallery3d/data/ClusterAlbum;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/data/ClusterAlbumSet;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/data/ClusterAlbumSet;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet$4;->this$0:Lcom/sec/android/gallery3d/data/ClusterAlbumSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sec/android/gallery3d/data/ClusterAlbum;Lcom/sec/android/gallery3d/data/ClusterAlbum;)I
    .locals 2

    iget v0, p1, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mGroupId:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p2, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mGroupId:I

    if-nez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/sec/android/gallery3d/data/ClusterAlbum;

    check-cast p2, Lcom/sec/android/gallery3d/data/ClusterAlbum;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/gallery3d/data/ClusterAlbumSet$4;->compare(Lcom/sec/android/gallery3d/data/ClusterAlbum;Lcom/sec/android/gallery3d/data/ClusterAlbum;)I

    move-result v0

    return v0
.end method
