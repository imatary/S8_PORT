.class Lcom/sec/android/gallery3d/app/PhotoDataAdapter$FullImageListener;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"

# interfaces
.implements Lcom/sec/android/gallery3d/util/FutureListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/app/PhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FullImageListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sec/android/gallery3d/util/FutureListener",
        "<",
        "Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private mFuture:Lcom/sec/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/android/gallery3d/util/Future",
            "<",
            "Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private final mItem:Lcom/sec/android/gallery3d/data/MediaItem;

.field private final mPath:Lcom/sec/android/gallery3d/data/Path;

.field final synthetic this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;


# direct methods
.method private constructor <init>(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$FullImageListener;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/MediaItem;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$FullImageListener;->mPath:Lcom/sec/android/gallery3d/data/Path;

    iput-object p2, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$FullImageListener;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;Lcom/sec/android/gallery3d/data/MediaItem;Lcom/sec/android/gallery3d/app/PhotoDataAdapter$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$FullImageListener;-><init>(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;Lcom/sec/android/gallery3d/data/MediaItem;)V

    return-void
.end method


# virtual methods
.method public onFutureDone(Lcom/sec/android/gallery3d/util/Future;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/gallery3d/util/Future",
            "<",
            "Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$FullImageListener;->mFuture:Lcom/sec/android/gallery3d/util/Future;

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$FullImageListener;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    # getter for: Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$1700(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$FullImageListener;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    # getter for: Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$1700(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$FullImageListener;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$FullImageListener;->mPath:Lcom/sec/android/gallery3d/data/Path;

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$FullImageListener;->mFuture:Lcom/sec/android/gallery3d/util/Future;

    iget-object v3, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$FullImageListener;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    # invokes: Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->updateFullImage(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/util/Future;Lcom/sec/android/gallery3d/data/MediaItem;)V
    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$1800(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/util/Future;Lcom/sec/android/gallery3d/data/MediaItem;)V

    return-void
.end method
