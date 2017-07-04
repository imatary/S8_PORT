.class Lcom/sec/android/gallery3d/app/PhotoDataAdapter$CountBurstShotListener;
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
    name = "CountBurstShotListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sec/android/gallery3d/util/FutureListener",
        "<",
        "Ljava/lang/Integer;",
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
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;


# direct methods
.method private constructor <init>(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$CountBurstShotListener;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;Lcom/sec/android/gallery3d/app/PhotoDataAdapter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$CountBurstShotListener;-><init>(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)V

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
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$CountBurstShotListener;->mFuture:Lcom/sec/android/gallery3d/util/Future;

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$CountBurstShotListener;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$1700(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$CountBurstShotListener;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v1}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$1700(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$CountBurstShotListener;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    iget-object v1, v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$CountBurstShotListener;->mFuture:Lcom/sec/android/gallery3d/util/Future;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->setBurstShotCount(I)V

    return-void
.end method
