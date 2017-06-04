.class Lcom/sec/android/gallery3d/data/TagClustering$1;
.super Ljava/lang/Object;
.source "TagClustering.java"

# interfaces
.implements Lcom/sec/android/gallery3d/data/MediaSet$ItemConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/data/TagClustering;->run(Lcom/sec/android/gallery3d/data/MediaSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/data/TagClustering;

.field final synthetic val$map:Ljava/util/TreeMap;

.field final synthetic val$untagged:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/data/TagClustering;Ljava/util/ArrayList;Ljava/util/TreeMap;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/TagClustering$1;->this$0:Lcom/sec/android/gallery3d/data/TagClustering;

    iput-object p2, p0, Lcom/sec/android/gallery3d/data/TagClustering$1;->val$untagged:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/sec/android/gallery3d/data/TagClustering$1;->val$map:Ljava/util/TreeMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(ILcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 8

    const/4 v7, 0x1

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/MediaItem;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v2

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/MediaItem;->getTags()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    array-length v4, v3

    if-nez v4, :cond_2

    :cond_0
    iget-object v4, p0, Lcom/sec/android/gallery3d/data/TagClustering$1;->val$untagged:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return v7

    :cond_2
    array-length v5, v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v0, v3, v4

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/TagClustering$1;->val$map:Ljava/util/TreeMap;

    invoke-virtual {v6, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/TagClustering$1;->val$map:Ljava/util/TreeMap;

    invoke-virtual {v6, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method
