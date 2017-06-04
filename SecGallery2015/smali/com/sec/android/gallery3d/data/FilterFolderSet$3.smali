.class Lcom/sec/android/gallery3d/data/FilterFolderSet$3;
.super Ljava/lang/Object;
.source "FilterFolderSet.java"

# interfaces
.implements Lcom/sec/android/gallery3d/data/MediaSet$ItemConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/data/FilterFolderSet;->delete(Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/data/FilterFolderSet;

.field final synthetic val$aggregateDbOperation:Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/data/FilterFolderSet;Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/FilterFolderSet$3;->this$0:Lcom/sec/android/gallery3d/data/FilterFolderSet;

    iput-object p2, p0, Lcom/sec/android/gallery3d/data/FilterFolderSet$3;->val$aggregateDbOperation:Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(ILcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 4

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/MediaItem;->getSupportedOperations()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/FilterFolderSet$3;->val$aggregateDbOperation:Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;

    invoke-virtual {p2, v0}, Lcom/sec/android/gallery3d/data/MediaItem;->delete(Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;)Z

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
