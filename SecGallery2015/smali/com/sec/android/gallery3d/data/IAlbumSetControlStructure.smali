.class public interface abstract Lcom/sec/android/gallery3d/data/IAlbumSetControlStructure;
.super Ljava/lang/Object;
.source "IAlbumSetControlStructure.java"


# virtual methods
.method public abstract addAlbumForType(Lcom/sec/android/gallery3d/data/BucketHelper$BucketEntry;Ljava/util/ArrayList;Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/gallery3d/data/BucketHelper$BucketEntry;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaSet;",
            ">;",
            "Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;",
            ")V"
        }
    .end annotation
.end method

.method public abstract addAlbumSet(I[Lcom/sec/android/gallery3d/data/BucketHelper$BucketEntry;Ljava/util/ArrayList;[ILcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lcom/sec/android/gallery3d/data/BucketHelper$BucketEntry;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaSet;",
            ">;[I",
            "Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;",
            ")V"
        }
    .end annotation
.end method

.method public abstract initializeAlbumListData()V
.end method
