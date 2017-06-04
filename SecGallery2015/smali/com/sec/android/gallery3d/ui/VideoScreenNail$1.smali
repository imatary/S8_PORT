.class Lcom/sec/android/gallery3d/ui/VideoScreenNail$1;
.super Ljava/lang/Object;
.source "VideoScreenNail.java"

# interfaces
.implements Lcom/sec/samsung/gallery/lib/libinterface/MediaPlayerInterface$MediaResourceHelperListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/ui/VideoScreenNail;->initMediaResourceHelper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/ui/VideoScreenNail;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/ui/VideoScreenNail;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail$1;->this$0:Lcom/sec/android/gallery3d/ui/VideoScreenNail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdd()V
    .locals 2

    const-string/jumbo v0, "VideoScreenNail"

    const-string/jumbo v1, " onAdd "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail$1;->this$0:Lcom/sec/android/gallery3d/ui/VideoScreenNail;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/VideoScreenNail;->stopMediaPlayer()V

    return-void
.end method

.method public onRemove()V
    .locals 2

    const-string/jumbo v0, "VideoScreenNail"

    const-string/jumbo v1, " onRemove "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail$1;->this$0:Lcom/sec/android/gallery3d/ui/VideoScreenNail;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/VideoScreenNail;->startMediaPlayer()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail$1;->this$0:Lcom/sec/android/gallery3d/ui/VideoScreenNail;

    # getter for: Lcom/sec/android/gallery3d/ui/VideoScreenNail;->mListener:Lcom/sec/android/gallery3d/ui/VideoScreenNail$Listener;
    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/VideoScreenNail;->access$000(Lcom/sec/android/gallery3d/ui/VideoScreenNail;)Lcom/sec/android/gallery3d/ui/VideoScreenNail$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/ui/VideoScreenNail$Listener;->requestRender()V

    return-void
.end method
