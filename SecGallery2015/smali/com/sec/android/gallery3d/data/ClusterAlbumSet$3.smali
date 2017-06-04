.class Lcom/sec/android/gallery3d/data/ClusterAlbumSet$3;
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

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet$3;->this$0:Lcom/sec/android/gallery3d/data/ClusterAlbumSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sec/android/gallery3d/data/ClusterAlbum;Lcom/sec/android/gallery3d/data/ClusterAlbum;)I
    .locals 5

    const/4 v2, -0x1

    const/4 v3, 0x1

    iget v4, p1, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mPersonId:I

    if-le v4, v3, :cond_3

    iget v4, p2, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mPersonId:I

    if-le v4, v3, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v0, v2, v3

    :goto_0
    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v1, v2, v3

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    :cond_0
    :goto_2
    return v2

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    iget v4, p2, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mPersonId:I

    if-le v4, v3, :cond_4

    move v2, v3

    goto :goto_2

    :cond_4
    iget v4, p1, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mGroupId:I

    if-nez v4, :cond_5

    move v2, v3

    goto :goto_2

    :cond_5
    iget v4, p2, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mGroupId:I

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "_"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v0, v2, v3

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "_"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v1, v2, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/sec/android/gallery3d/data/ClusterAlbum;

    check-cast p2, Lcom/sec/android/gallery3d/data/ClusterAlbum;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/gallery3d/data/ClusterAlbumSet$3;->compare(Lcom/sec/android/gallery3d/data/ClusterAlbum;Lcom/sec/android/gallery3d/data/ClusterAlbum;)I

    move-result v0

    return v0
.end method
