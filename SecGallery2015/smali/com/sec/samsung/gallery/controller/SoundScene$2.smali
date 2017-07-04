.class Lcom/sec/samsung/gallery/controller/SoundScene$2;
.super Ljava/lang/Object;
.source "SoundScene.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/SoundScene$2;->this$0:Lcom/sec/samsung/gallery/controller/SoundScene;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/SoundScene$2;->this$0:Lcom/sec/samsung/gallery/controller/SoundScene;

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/SoundScene;->access$000(Lcom/sec/samsung/gallery/controller/SoundScene;)V

    sput-boolean v1, Lcom/sec/samsung/gallery/controller/SoundScene;->isPlayingState:Z

    return v1
.end method
