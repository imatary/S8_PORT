.class public Lcom/sec/android/gallery3d/data/FestivalClusterAlbumSet;
.super Lcom/sec/android/gallery3d/data/ClusterAlbumSet;
.source "FestivalClusterAlbumSet.java"


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;Lcom/sec/android/gallery3d/data/MediaSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;Lcom/sec/android/gallery3d/data/MediaSet;I)V

    new-instance v0, Lcom/sec/android/gallery3d/data/ChangeNotifier;

    const-string/jumbo v1, "external"

    invoke-static {v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2}, Lcom/sec/android/gallery3d/data/ChangeNotifier;-><init>(Lcom/sec/android/gallery3d/data/MediaSet;Landroid/net/Uri;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/FestivalClusterAlbumSet;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/FestivalClusterAlbumSet;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChangeNotifier;->clearDirty()V

    return-void
.end method
