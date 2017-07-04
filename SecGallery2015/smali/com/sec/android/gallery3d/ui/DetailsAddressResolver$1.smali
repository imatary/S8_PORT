.class Lcom/sec/android/gallery3d/ui/DetailsAddressResolver$1;
.super Ljava/lang/Object;
.source "DetailsAddressResolver.java"

# interfaces
.implements Lcom/sec/android/gallery3d/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/ui/DetailsAddressResolver;->resolveAddress([DLcom/sec/android/gallery3d/ui/DetailsAddressResolver$AddressResolvingListener;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sec/android/gallery3d/util/FutureListener",
        "<",
        "Landroid/location/Address;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/ui/DetailsAddressResolver;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/ui/DetailsAddressResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/DetailsAddressResolver$1;->this$0:Lcom/sec/android/gallery3d/ui/DetailsAddressResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFutureDone(Lcom/sec/android/gallery3d/util/Future;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/gallery3d/util/Future",
            "<",
            "Landroid/location/Address;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/DetailsAddressResolver$1;->this$0:Lcom/sec/android/gallery3d/ui/DetailsAddressResolver;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/ui/DetailsAddressResolver;->access$102(Lcom/sec/android/gallery3d/ui/DetailsAddressResolver;Lcom/sec/android/gallery3d/util/Future;)Lcom/sec/android/gallery3d/util/Future;

    invoke-interface {p1}, Lcom/sec/android/gallery3d/util/Future;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/DetailsAddressResolver$1;->this$0:Lcom/sec/android/gallery3d/ui/DetailsAddressResolver;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/DetailsAddressResolver;->access$300(Lcom/sec/android/gallery3d/ui/DetailsAddressResolver;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/android/gallery3d/ui/DetailsAddressResolver$1$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/gallery3d/ui/DetailsAddressResolver$1$1;-><init>(Lcom/sec/android/gallery3d/ui/DetailsAddressResolver$1;Lcom/sec/android/gallery3d/util/Future;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
