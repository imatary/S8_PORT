.class Lcom/sec/android/gallery3d/data/FilterFolderSet$1;
.super Ljava/lang/Object;
.source "FilterFolderSet.java"

# interfaces
.implements Lcom/sec/android/gallery3d/data/MediaSet$ItemConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/data/FilterFolderSet;->updateData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/data/FilterFolderSet;

.field final synthetic val$buf:[Lcom/sec/android/gallery3d/data/Path;

.field final synthetic val$total:I


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/data/FilterFolderSet;I[Lcom/sec/android/gallery3d/data/Path;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/FilterFolderSet$1;->this$0:Lcom/sec/android/gallery3d/data/FilterFolderSet;

    iput p2, p0, Lcom/sec/android/gallery3d/data/FilterFolderSet$1;->val$total:I

    iput-object p3, p0, Lcom/sec/android/gallery3d/data/FilterFolderSet$1;->val$buf:[Lcom/sec/android/gallery3d/data/Path;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(ILcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 3

    const/4 v2, 0x1

    if-ltz p1, :cond_0

    iget v1, p0, Lcom/sec/android/gallery3d/data/FilterFolderSet$1;->val$total:I

    if-lt p1, v1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/MediaItem;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/FilterFolderSet$1;->this$0:Lcom/sec/android/gallery3d/data/FilterFolderSet;

    # invokes: Lcom/sec/android/gallery3d/data/FilterFolderSet;->isFilteredItem(Lcom/sec/android/gallery3d/data/MediaItem;)Z
    invoke-static {v1, p2}, Lcom/sec/android/gallery3d/data/FilterFolderSet;->access$000(Lcom/sec/android/gallery3d/data/FilterFolderSet;Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/FilterFolderSet$1;->val$buf:[Lcom/sec/android/gallery3d/data/Path;

    aput-object v0, v1, p1

    goto :goto_0
.end method
