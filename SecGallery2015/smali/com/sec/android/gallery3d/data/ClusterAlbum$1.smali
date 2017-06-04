.class final Lcom/sec/android/gallery3d/data/ClusterAlbum$1;
.super Ljava/lang/Object;
.source "ClusterAlbum.java"

# interfaces
.implements Lcom/sec/android/gallery3d/data/MediaSet$ItemConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/data/ClusterAlbum;->getMediaItemFromPath(Ljava/util/ArrayList;IILcom/sec/android/gallery3d/data/DataManager;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$buf:[Lcom/sec/android/gallery3d/data/MediaItem;


# direct methods
.method constructor <init>([Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum$1;->val$buf:[Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(ILcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum$1;->val$buf:[Lcom/sec/android/gallery3d/data/MediaItem;

    aput-object p2, v0, p1

    const/4 v0, 0x1

    return v0
.end method
