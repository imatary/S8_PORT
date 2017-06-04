.class Lcom/sec/android/gallery3d/app/PhotoDataAdapter$CountBurstShotJob;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"

# interfaces
.implements Lcom/sec/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/app/PhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CountBurstShotJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sec/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final mItem:Lcom/sec/android/gallery3d/data/MediaItem;

.field final synthetic this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$CountBurstShotJob;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$CountBurstShotJob;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    return-void
.end method


# virtual methods
.method public run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Integer;
    .locals 5

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$CountBurstShotJob;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    iget-object v1, v1, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getModel()Lcom/sec/android/gallery3d/interfaces/LibraryModel;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$CountBurstShotJob;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-interface {v1, v2}, Lcom/sec/android/gallery3d/interfaces/LibraryModel;->getBurstShotCount(Lcom/sec/android/gallery3d/data/MediaItem;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$CountBurstShotJob;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    const-wide/16 v2, 0x200

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/gallery3d/data/MediaItem;->setAttribute(JZ)V

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$CountBurstShotJob;->run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
