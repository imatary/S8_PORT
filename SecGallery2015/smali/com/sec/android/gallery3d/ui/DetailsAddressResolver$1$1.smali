.class Lcom/sec/android/gallery3d/ui/DetailsAddressResolver$1$1;
.super Ljava/lang/Object;
.source "DetailsAddressResolver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/ui/DetailsAddressResolver$1;->onFutureDone(Lcom/sec/android/gallery3d/util/Future;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/gallery3d/ui/DetailsAddressResolver$1;

.field final synthetic val$future:Lcom/sec/android/gallery3d/util/Future;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/ui/DetailsAddressResolver$1;Lcom/sec/android/gallery3d/util/Future;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/DetailsAddressResolver$1$1;->this$1:Lcom/sec/android/gallery3d/ui/DetailsAddressResolver$1;

    iput-object p2, p0, Lcom/sec/android/gallery3d/ui/DetailsAddressResolver$1$1;->val$future:Lcom/sec/android/gallery3d/util/Future;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string/jumbo v0, "Location"

    const-string/jumbo v1, "called updateLocation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/DetailsAddressResolver$1$1;->this$1:Lcom/sec/android/gallery3d/ui/DetailsAddressResolver$1;

    iget-object v1, v0, Lcom/sec/android/gallery3d/ui/DetailsAddressResolver$1;->this$0:Lcom/sec/android/gallery3d/ui/DetailsAddressResolver;

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/DetailsAddressResolver$1$1;->val$future:Lcom/sec/android/gallery3d/util/Future;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    invoke-static {v1, v0}, Lcom/sec/android/gallery3d/ui/DetailsAddressResolver;->access$200(Lcom/sec/android/gallery3d/ui/DetailsAddressResolver;Landroid/location/Address;)V

    return-void
.end method
