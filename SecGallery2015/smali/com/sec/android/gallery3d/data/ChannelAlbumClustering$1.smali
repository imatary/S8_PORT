.class Lcom/sec/android/gallery3d/data/ChannelAlbumClustering$1;
.super Ljava/lang/Object;
.source "ChannelAlbumClustering.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/data/ChannelAlbumClustering;->sortByValue(Ljava/util/Map;)Ljava/util/List;
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
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/data/ChannelAlbumClustering;

.field final synthetic val$map:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/data/ChannelAlbumClustering;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumClustering$1;->this$0:Lcom/sec/android/gallery3d/data/ChannelAlbumClustering;

    iput-object p2, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumClustering$1;->val$map:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumClustering$1;->val$map:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumClustering$1;->val$map:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v0, Ljava/lang/Comparable;

    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    return v2
.end method
