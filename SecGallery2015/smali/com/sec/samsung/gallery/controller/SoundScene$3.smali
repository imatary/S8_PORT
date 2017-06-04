.class Lcom/sec/samsung/gallery/controller/SoundScene$3;
.super Ljava/lang/Object;
.source "SoundScene.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/controller/SoundScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/SoundScene;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/SoundScene;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/SoundScene$3;->this$0:Lcom/sec/samsung/gallery/controller/SoundScene;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 3

    const-string/jumbo v0, "SoundScene"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAudioFocusChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/SoundScene$3;->this$0:Lcom/sec/samsung/gallery/controller/SoundScene;

    # invokes: Lcom/sec/samsung/gallery/controller/SoundScene;->stopPlaying()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/SoundScene;->access$200(Lcom/sec/samsung/gallery/controller/SoundScene;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
