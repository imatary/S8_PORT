.class Lcom/sec/android/gallery3d/data/FilterTypeSet$3;
.super Ljava/lang/Object;
.source "FilterTypeSet.java"

# interfaces
.implements Lcom/sec/android/gallery3d/data/MediaSet$ItemConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/data/FilterTypeSet;->updateMediaItemData(Lcom/sec/android/gallery3d/data/MediaSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/data/FilterTypeSet;

.field final synthetic val$total:I


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/data/FilterTypeSet;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet$3;->this$0:Lcom/sec/android/gallery3d/data/FilterTypeSet;

    iput p2, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet$3;->val$total:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(ILcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet$3;->this$0:Lcom/sec/android/gallery3d/data/FilterTypeSet;

    # getter for: Lcom/sec/android/gallery3d/data/FilterTypeSet;->mMediaType:I
    invoke-static {v2}, Lcom/sec/android/gallery3d/data/FilterTypeSet;->access$000(Lcom/sec/android/gallery3d/data/FilterTypeSet;)I

    move-result v2

    if-ne v1, v2, :cond_0

    if-ltz p1, :cond_0

    iget v1, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet$3;->val$total:I

    if-lt p1, v1, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/MediaItem;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet$3;->this$0:Lcom/sec/android/gallery3d/data/FilterTypeSet;

    # invokes: Lcom/sec/android/gallery3d/data/FilterTypeSet;->isFilteredItem(Lcom/sec/android/gallery3d/data/MediaItem;)Z
    invoke-static {v1, p2}, Lcom/sec/android/gallery3d/data/FilterTypeSet;->access$100(Lcom/sec/android/gallery3d/data/FilterTypeSet;Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet$3;->this$0:Lcom/sec/android/gallery3d/data/FilterTypeSet;

    # getter for: Lcom/sec/android/gallery3d/data/FilterTypeSet;->mPaths:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/gallery3d/data/FilterTypeSet;->access$200(Lcom/sec/android/gallery3d/data/FilterTypeSet;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
