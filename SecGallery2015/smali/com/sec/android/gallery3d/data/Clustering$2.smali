.class Lcom/sec/android/gallery3d/data/Clustering$2;
.super Ljava/lang/Object;
.source "Clustering.java"

# interfaces
.implements Lcom/sec/android/gallery3d/data/MediaSet$ItemConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/data/Clustering;->enumerateMediaItems(Lcom/sec/android/gallery3d/data/MediaSet;Ljava/util/ArrayList;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/data/Clustering;

.field final synthetic val$items:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/data/Clustering;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/Clustering$2;->this$0:Lcom/sec/android/gallery3d/data/Clustering;

    iput-object p2, p0, Lcom/sec/android/gallery3d/data/Clustering$2;->val$items:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(ILcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 4

    if-eqz p2, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/data/SmallItem;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/data/SmallItem;-><init>()V

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/MediaItem;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/gallery3d/data/SmallItem;->path:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/MediaItem;->getLatitude()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/sec/android/gallery3d/data/SmallItem;->lat:D

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/MediaItem;->getLongitude()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/sec/android/gallery3d/data/SmallItem;->lng:D

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/sec/android/gallery3d/data/SmallItem;->dateInMs:J

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/Clustering$2;->val$items:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v1, 0x1

    return v1
.end method
