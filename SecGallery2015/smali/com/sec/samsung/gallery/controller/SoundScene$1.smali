.class Lcom/sec/samsung/gallery/controller/SoundScene$1;
.super Ljava/lang/Object;
.source "SoundScene.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/SoundScene$1;->this$0:Lcom/sec/samsung/gallery/controller/SoundScene;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/SoundScene$1;->this$0:Lcom/sec/samsung/gallery/controller/SoundScene;

    # invokes: Lcom/sec/samsung/gallery/controller/SoundScene;->avandonAudioFocus()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/SoundScene;->access$000(Lcom/sec/samsung/gallery/controller/SoundScene;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/SoundScene$1;->this$0:Lcom/sec/samsung/gallery/controller/SoundScene;

    # getter for: Lcom/sec/samsung/gallery/controller/SoundScene;->mAdditionalCompleteListener:Landroid/media/MediaPlayer$OnCompletionListener;
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/SoundScene;->access$100(Lcom/sec/samsung/gallery/controller/SoundScene;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/SoundScene$1;->this$0:Lcom/sec/samsung/gallery/controller/SoundScene;

    # getter for: Lcom/sec/samsung/gallery/controller/SoundScene;->mAdditionalCompleteListener:Landroid/media/MediaPlayer$OnCompletionListener;
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/SoundScene;->access$100(Lcom/sec/samsung/gallery/controller/SoundScene;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    :cond_0
    return-void
.end method
