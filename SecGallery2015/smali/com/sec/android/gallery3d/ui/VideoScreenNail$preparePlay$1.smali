.class Lcom/sec/android/gallery3d/ui/VideoScreenNail$preparePlay$1;
.super Ljava/lang/Object;
.source "VideoScreenNail.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/ui/VideoScreenNail$preparePlay;->Action(Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;Landroid/graphics/SurfaceTexture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/gallery3d/ui/VideoScreenNail$preparePlay;

.field final synthetic val$vPlayer:Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/ui/VideoScreenNail$preparePlay;Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail$preparePlay$1;->this$1:Lcom/sec/android/gallery3d/ui/VideoScreenNail$preparePlay;

    iput-object p2, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail$preparePlay$1;->val$vPlayer:Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "VideoScreenNail"

    const-string/jumbo v1, "onPrepared  "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail$preparePlay$1;->val$vPlayer:Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail$preparePlay$1;->val$vPlayer:Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;->access$200(Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;)Lcom/sec/android/gallery3d/ui/VideoScreenNail$PlayerStates;

    move-result-object v0

    instance-of v0, v0, Lcom/sec/android/gallery3d/ui/VideoScreenNail$preparePlay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail$preparePlay$1;->val$vPlayer:Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;

    new-instance v1, Lcom/sec/android/gallery3d/ui/VideoScreenNail$startPlay;

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail$preparePlay$1;->this$1:Lcom/sec/android/gallery3d/ui/VideoScreenNail$preparePlay;

    iget-object v2, v2, Lcom/sec/android/gallery3d/ui/VideoScreenNail$preparePlay;->this$0:Lcom/sec/android/gallery3d/ui/VideoScreenNail;

    invoke-direct {v1, v2, v3}, Lcom/sec/android/gallery3d/ui/VideoScreenNail$startPlay;-><init>(Lcom/sec/android/gallery3d/ui/VideoScreenNail;Lcom/sec/android/gallery3d/ui/VideoScreenNail$1;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;->setState(Lcom/sec/android/gallery3d/ui/VideoScreenNail$PlayerStates;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail$preparePlay$1;->val$vPlayer:Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;

    invoke-static {v0, v3}, Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;->access$700(Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;Landroid/graphics/SurfaceTexture;)V

    :cond_0
    return-void
.end method
