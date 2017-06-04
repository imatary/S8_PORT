.class Lcom/sec/android/gallery3d/data/FilterFolderSet$2;
.super Ljava/lang/Object;
.source "FilterFolderSet.java"

# interfaces
.implements Lcom/sec/android/gallery3d/data/MediaSet$ItemConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/data/FilterFolderSet;->updateMediaItemData(Lcom/sec/android/gallery3d/data/MediaSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/data/FilterFolderSet;

.field final synthetic val$total:I


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/data/FilterFolderSet;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/FilterFolderSet$2;->this$0:Lcom/sec/android/gallery3d/data/FilterFolderSet;

    iput p2, p0, Lcom/sec/android/gallery3d/data/FilterFolderSet$2;->val$total:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(ILcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 3

    const/4 v2, 0x1

    if-ltz p1, :cond_0

    iget v1, p0, Lcom/sec/android/gallery3d/data/FilterFolderSet$2;->val$total:I

    if-lt p1, v1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/MediaItem;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/FilterFolderSet$2;->this$0:Lcom/sec/android/gallery3d/data/FilterFolderSet;

    # invokes: Lcom/sec/android/gallery3d/data/FilterFolderSet;->isFilteredItem(Lcom/sec/android/gallery3d/data/MediaItem;)Z
    invoke-static {v1, p2}, Lcom/sec/android/gallery3d/data/FilterFolderSet;->access$000(Lcom/sec/android/gallery3d/data/FilterFolderSet;Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/FilterFolderSet$2;->this$0:Lcom/sec/android/gallery3d/data/FilterFolderSet;

    # getter for: Lcom/sec/android/gallery3d/data/FilterFolderSet;->mPaths:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/gallery3d/data/FilterFolderSet;->access$100(Lcom/sec/android/gallery3d/data/FilterFolderSet;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
