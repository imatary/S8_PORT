.class Lcom/sec/android/app/camera/SoundManager$2;
.super Ljava/lang/Object;
.source "SoundManager.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/SoundManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/SoundManager;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/SoundManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/SoundManager$2;->this$0:Lcom/sec/android/app/camera/SoundManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 3

    const-string v0, "SoundManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAudioFocusChange "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string v0, "SoundManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown audio focus change code,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/SoundManager$2;->this$0:Lcom/sec/android/app/camera/SoundManager;

    invoke-static {v0}, Lcom/sec/android/app/camera/SoundManager;->access$000(Lcom/sec/android/app/camera/SoundManager;)Lcom/sec/android/app/camera/Camera;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "camera.action.AUDIOFOCUS_LOSS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/SoundManager$2;->this$0:Lcom/sec/android/app/camera/SoundManager;

    invoke-static {v0}, Lcom/sec/android/app/camera/SoundManager;->access$000(Lcom/sec/android/app/camera/SoundManager;)Lcom/sec/android/app/camera/Camera;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "camera.action.AUDIOFOCUS_GAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
