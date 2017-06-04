.class Lcom/sec/samsung/gallery/decoder/LargeImage$LargeImageListener;
.super Ljava/lang/Object;
.source "LargeImage.java"

# interfaces
.implements Lcom/sec/android/gallery3d/util/FutureListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/decoder/LargeImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LargeImageListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sec/android/gallery3d/util/FutureListener",
        "<",
        "Landroid/util/LongSparseArray",
        "<",
        "Lcom/sec/samsung/gallery/decoder/LargeImageTile;",
        ">;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private mFuture:Lcom/sec/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/android/gallery3d/util/Future",
            "<",
            "Landroid/util/LongSparseArray",
            "<",
            "Lcom/sec/samsung/gallery/decoder/LargeImageTile;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/samsung/gallery/decoder/LargeImage;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/decoder/LargeImage;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/decoder/LargeImage$LargeImageListener;->this$0:Lcom/sec/samsung/gallery/decoder/LargeImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/decoder/LargeImage;Lcom/sec/samsung/gallery/decoder/LargeImage$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/decoder/LargeImage$LargeImageListener;-><init>(Lcom/sec/samsung/gallery/decoder/LargeImage;)V

    return-void
.end method


# virtual methods
.method public onFutureDone(Lcom/sec/android/gallery3d/util/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/gallery3d/util/Future",
            "<",
            "Landroid/util/LongSparseArray",
            "<",
            "Lcom/sec/samsung/gallery/decoder/LargeImageTile;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/samsung/gallery/decoder/LargeImage$LargeImageListener;->mFuture:Lcom/sec/android/gallery3d/util/Future;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/decoder/LargeImage$LargeImageListener;->run()V

    return-void
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/LargeImage$LargeImageListener;->this$0:Lcom/sec/samsung/gallery/decoder/LargeImage;

    iget-object v1, p0, Lcom/sec/samsung/gallery/decoder/LargeImage$LargeImageListener;->mFuture:Lcom/sec/android/gallery3d/util/Future;

    # invokes: Lcom/sec/samsung/gallery/decoder/LargeImage;->updateLargeImage(Lcom/sec/android/gallery3d/util/Future;)V
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/decoder/LargeImage;->access$1300(Lcom/sec/samsung/gallery/decoder/LargeImage;Lcom/sec/android/gallery3d/util/Future;)V

    return-void
.end method
