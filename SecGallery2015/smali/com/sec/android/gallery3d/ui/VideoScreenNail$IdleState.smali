.class Lcom/sec/android/gallery3d/ui/VideoScreenNail$IdleState;
.super Lcom/sec/android/gallery3d/ui/VideoScreenNail$PlayerStates;
.source "VideoScreenNail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/ui/VideoScreenNail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdleState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/ui/VideoScreenNail;


# direct methods
.method private constructor <init>(Lcom/sec/android/gallery3d/ui/VideoScreenNail;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail$IdleState;->this$0:Lcom/sec/android/gallery3d/ui/VideoScreenNail;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/gallery3d/ui/VideoScreenNail$PlayerStates;-><init>(Lcom/sec/android/gallery3d/ui/VideoScreenNail;Lcom/sec/android/gallery3d/ui/VideoScreenNail$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/ui/VideoScreenNail;Lcom/sec/android/gallery3d/ui/VideoScreenNail$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/VideoScreenNail$IdleState;-><init>(Lcom/sec/android/gallery3d/ui/VideoScreenNail;)V

    return-void
.end method


# virtual methods
.method public Action(Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;Landroid/graphics/SurfaceTexture;)V
    .locals 3

    const-string/jumbo v0, "VideoScreenNail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "IdleState : Action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    # getter for: Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {p1}, Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;->access$400(Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    # setter for: Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {p1, v0}, Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;->access$402(Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    :cond_2
    new-instance v0, Lcom/sec/android/gallery3d/ui/VideoScreenNail$preparePlay;

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail$IdleState;->this$0:Lcom/sec/android/gallery3d/ui/VideoScreenNail;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/ui/VideoScreenNail$preparePlay;-><init>(Lcom/sec/android/gallery3d/ui/VideoScreenNail;Lcom/sec/android/gallery3d/ui/VideoScreenNail$1;)V

    invoke-virtual {p1, v0}, Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;->setState(Lcom/sec/android/gallery3d/ui/VideoScreenNail$PlayerStates;)V

    # invokes: Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;->doAction(Landroid/graphics/SurfaceTexture;)V
    invoke-static {p1, p2}, Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;->access$700(Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;Landroid/graphics/SurfaceTexture;)V

    goto :goto_0
.end method

.method public stopAction(Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;)V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v1, "VideoScreenNail"

    const-string/jumbo v2, "IdleState : stopAction"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    # getter for: Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {p1}, Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;->access$400(Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/sec/android/gallery3d/ui/VideoScreenNail$stopingState;

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail$IdleState;->this$0:Lcom/sec/android/gallery3d/ui/VideoScreenNail;

    invoke-direct {v1, v2, v3}, Lcom/sec/android/gallery3d/ui/VideoScreenNail$stopingState;-><init>(Lcom/sec/android/gallery3d/ui/VideoScreenNail;Lcom/sec/android/gallery3d/ui/VideoScreenNail$1;)V

    invoke-virtual {p1, v1}, Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;->setState(Lcom/sec/android/gallery3d/ui/VideoScreenNail$PlayerStates;)V

    :try_start_0
    # getter for: Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {p1}, Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;->access$400(Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    # getter for: Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {p1}, Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;->access$400(Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    :cond_0
    # getter for: Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {p1}, Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;->access$400(Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {p1, v1}, Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;->access$402(Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v1, Lcom/sec/android/gallery3d/ui/VideoScreenNail$IdleState;

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail$IdleState;->this$0:Lcom/sec/android/gallery3d/ui/VideoScreenNail;

    invoke-direct {v1, v2}, Lcom/sec/android/gallery3d/ui/VideoScreenNail$IdleState;-><init>(Lcom/sec/android/gallery3d/ui/VideoScreenNail;)V

    invoke-virtual {p1, v1}, Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;->setState(Lcom/sec/android/gallery3d/ui/VideoScreenNail$PlayerStates;)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    :goto_1
    const-string/jumbo v1, "VideoScreenNail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "IdleState err: Action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method
