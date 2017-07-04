.class Lcom/sec/android/gallery3d/ui/VideoScreenNail$preparePlay;
.super Lcom/sec/android/gallery3d/ui/VideoScreenNail$PlayerStates;
.source "VideoScreenNail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/ui/VideoScreenNail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "preparePlay"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/ui/VideoScreenNail;


# direct methods
.method private constructor <init>(Lcom/sec/android/gallery3d/ui/VideoScreenNail;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail$preparePlay;->this$0:Lcom/sec/android/gallery3d/ui/VideoScreenNail;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/gallery3d/ui/VideoScreenNail$PlayerStates;-><init>(Lcom/sec/android/gallery3d/ui/VideoScreenNail;Lcom/sec/android/gallery3d/ui/VideoScreenNail$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/ui/VideoScreenNail;Lcom/sec/android/gallery3d/ui/VideoScreenNail$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/VideoScreenNail$preparePlay;-><init>(Lcom/sec/android/gallery3d/ui/VideoScreenNail;)V

    return-void
.end method


# virtual methods
.method public Action(Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;Landroid/graphics/SurfaceTexture;)V
    .locals 8

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;->access$400(Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v3

    if-eqz v3, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const-string/jumbo v3, "VideoScreenNail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "preparePlay Err "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v3, "VideoScreenNail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "MediaPlayer.setDataSource() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;->access$400(Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;->access$400(Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-static {p1}, Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;->access$1400(Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    new-instance v2, Landroid/view/Surface;

    invoke-direct {v2, p2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {p1}, Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;->access$400(Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    invoke-virtual {v2}, Landroid/view/Surface;->release()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v1, 0x0

    :try_start_2
    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail$preparePlay;->this$0:Lcom/sec/android/gallery3d/ui/VideoScreenNail;

    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/VideoScreenNail;->access$600(Lcom/sec/android/gallery3d/ui/VideoScreenNail;)Lcom/sec/samsung/gallery/lib/libinterface/MediaPlayerInterface;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail$preparePlay;->this$0:Lcom/sec/android/gallery3d/ui/VideoScreenNail;

    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/VideoScreenNail;->access$600(Lcom/sec/android/gallery3d/ui/VideoScreenNail;)Lcom/sec/samsung/gallery/lib/libinterface/MediaPlayerInterface;

    move-result-object v3

    invoke-static {p1}, Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;->access$400(Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v4

    sget v5, Lcom/sec/samsung/gallery/lib/factory/MediaPlayerFactory;->KEY_PARAMETER_EXCLUDE_AUDIO_TRACK:I

    const/4 v6, 0x1

    invoke-interface {v3, v4, v5, v6}, Lcom/sec/samsung/gallery/lib/libinterface/MediaPlayerInterface;->SetParameter(Landroid/media/MediaPlayer;II)V

    :cond_2
    invoke-static {p1}, Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;->access$400(Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setLooping(Z)V

    invoke-static {p1}, Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;->access$400(Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v3

    new-instance v4, Lcom/sec/android/gallery3d/ui/VideoScreenNail$preparePlay$1;

    invoke-direct {v4, p0, p1}, Lcom/sec/android/gallery3d/ui/VideoScreenNail$preparePlay$1;-><init>(Lcom/sec/android/gallery3d/ui/VideoScreenNail$preparePlay;Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;)V

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    invoke-static {p1}, Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;->access$400(Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    const-string/jumbo v3, "VideoScreenNail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "preparePlay "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    :cond_3
    new-instance v3, Lcom/sec/android/gallery3d/ui/VideoScreenNail$stopPlay;

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail$preparePlay;->this$0:Lcom/sec/android/gallery3d/ui/VideoScreenNail;

    invoke-direct {v3, v4, v7}, Lcom/sec/android/gallery3d/ui/VideoScreenNail$stopPlay;-><init>(Lcom/sec/android/gallery3d/ui/VideoScreenNail;Lcom/sec/android/gallery3d/ui/VideoScreenNail$1;)V

    invoke-virtual {p1, v3}, Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;->setState(Lcom/sec/android/gallery3d/ui/VideoScreenNail$PlayerStates;)V

    invoke-static {p1, v7}, Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;->access$700(Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;Landroid/graphics/SurfaceTexture;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :catch_5
    move-exception v0

    goto :goto_1

    :catch_6
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :catch_7
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :catch_8
    move-exception v0

    goto :goto_1

    :catch_9
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method public stopAction(Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;)V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "VideoScreenNail"

    const-string/jumbo v1, "preparePlay : stopAction "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/ui/VideoScreenNail$stopPlay;

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail$preparePlay;->this$0:Lcom/sec/android/gallery3d/ui/VideoScreenNail;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/ui/VideoScreenNail$stopPlay;-><init>(Lcom/sec/android/gallery3d/ui/VideoScreenNail;Lcom/sec/android/gallery3d/ui/VideoScreenNail$1;)V

    invoke-virtual {p1, v0}, Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;->setState(Lcom/sec/android/gallery3d/ui/VideoScreenNail$PlayerStates;)V

    invoke-static {p1, v2}, Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;->access$700(Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;Landroid/graphics/SurfaceTexture;)V

    :cond_0
    return-void
.end method
