.class Lcom/sec/android/gallery3d/data/Clustering$1;
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

.field final synthetic val$locationMap:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/data/Clustering;Ljava/util/HashMap;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/Clustering$1;->this$0:Lcom/sec/android/gallery3d/data/Clustering;

    iput-object p2, p0, Lcom/sec/android/gallery3d/data/Clustering$1;->val$locationMap:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/sec/android/gallery3d/data/Clustering$1;->val$items:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(ILcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    if-eqz p2, :cond_1

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

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/Clustering$1;->val$locationMap:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string/jumbo v4, "%.3f"

    new-array v5, v8, [Ljava/lang/Object;

    iget-wide v6, v0, Lcom/sec/android/gallery3d/data/SmallItem;->lat:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string/jumbo v4, "%.3f"

    new-array v5, v8, [Ljava/lang/Object;

    iget-wide v6, v0, Lcom/sec/android/gallery3d/data/SmallItem;->lng:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/sec/android/gallery3d/data/SmallItem;->addr:Ljava/lang/String;

    sget-boolean v1, Lcom/sec/android/gallery3d/data/Clustering;->USE_DREAM_STORY_LAYOUT:Z

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/MediaItem;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/sec/android/gallery3d/data/SmallItem;->width:I

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/MediaItem;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/sec/android/gallery3d/data/SmallItem;->height:I

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v1

    iput v1, v0, Lcom/sec/android/gallery3d/data/SmallItem;->orientation:I

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/Clustering$1;->val$items:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return v8
.end method
