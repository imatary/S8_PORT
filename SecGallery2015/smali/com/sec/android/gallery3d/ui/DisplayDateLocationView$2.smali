.class Lcom/sec/android/gallery3d/ui/DisplayDateLocationView$2;
.super Ljava/lang/Object;
.source "DisplayDateLocationView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->getDisplayDateLocationInfo(Lcom/sec/android/gallery3d/data/MediaItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;

.field final synthetic val$item:Lcom/sec/android/gallery3d/data/MediaItem;

.field final synthetic val$reverseGeocoder:Lcom/sec/android/gallery3d/util/ReverseGeocoder;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;Lcom/sec/android/gallery3d/util/ReverseGeocoder;Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView$2;->this$0:Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;

    iput-object p2, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView$2;->val$reverseGeocoder:Lcom/sec/android/gallery3d/util/ReverseGeocoder;

    iput-object p3, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView$2;->val$item:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView$2;->val$reverseGeocoder:Lcom/sec/android/gallery3d/util/ReverseGeocoder;

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView$2;->val$item:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaItem;->getLatitude()D

    move-result-wide v4

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView$2;->val$item:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaItem;->getLongitude()D

    move-result-wide v6

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->getLocality(DD)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView$2;->this$0:Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;

    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->access$400(Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView$2;->this$0:Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;

    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->access$400(Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
