.class Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;
.super Ljava/lang/Object;
.source "VideoScreenNail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/ui/VideoScreenNail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoPlayer"
.end annotation


# instance fields
.field private final mFilePath:Ljava/lang/String;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mState:Lcom/sec/android/gallery3d/ui/VideoScreenNail$PlayerStates;

.field final synthetic this$0:Lcom/sec/android/gallery3d/ui/VideoScreenNail;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/ui/VideoScreenNail;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;->this$0:Lcom/sec/android/gallery3d/ui/VideoScreenNail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iput-object p2, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;->mFilePath:Ljava/lang/String;

    new-instance v0, Lcom/sec/android/gallery3d/ui/VideoScreenNail$IdleState;

    invoke-direct {v0, p1, v1}, Lcom/sec/android/gallery3d/ui/VideoScreenNail$IdleState;-><init>(Lcom/sec/android/gallery3d/ui/VideoScreenNail;Lcom/sec/android/gallery3d/ui/VideoScreenNail$1;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;->setState(Lcom/sec/android/gallery3d/ui/VideoScreenNail$PlayerStates;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;)Lcom/sec/android/gallery3d/ui/VideoScreenNail$PlayerStates;
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;->getState()Lcom/sec/android/gallery3d/ui/VideoScreenNail$PlayerStates;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;)Landroid/media/MediaPlayer;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$700(Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;->doAction(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;->stopAction()V

    return-void
.end method

.method private doAction(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;->mState:Lcom/sec/android/gallery3d/ui/VideoScreenNail$PlayerStates;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;->mState:Lcom/sec/android/gallery3d/ui/VideoScreenNail$PlayerStates;

    invoke-virtual {v0, p0, p1}, Lcom/sec/android/gallery3d/ui/VideoScreenNail$PlayerStates;->Action(Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;Landroid/graphics/SurfaceTexture;)V

    :cond_0
    return-void
.end method

.method private getState()Lcom/sec/android/gallery3d/ui/VideoScreenNail$PlayerStates;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;->mState:Lcom/sec/android/gallery3d/ui/VideoScreenNail$PlayerStates;

    return-object v0
.end method

.method private stopAction()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;->mState:Lcom/sec/android/gallery3d/ui/VideoScreenNail$PlayerStates;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;->mState:Lcom/sec/android/gallery3d/ui/VideoScreenNail$PlayerStates;

    invoke-virtual {v0, p0}, Lcom/sec/android/gallery3d/ui/VideoScreenNail$PlayerStates;->stopAction(Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;)V

    :cond_0
    return-void
.end method


# virtual methods
.method setState(Lcom/sec/android/gallery3d/ui/VideoScreenNail$PlayerStates;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;->mState:Lcom/sec/android/gallery3d/ui/VideoScreenNail$PlayerStates;

    return-void
.end method
