.class Lcom/sec/android/gallery3d/ui/VideoScreenNail$stopingState;
.super Lcom/sec/android/gallery3d/ui/VideoScreenNail$PlayerStates;
.source "VideoScreenNail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/ui/VideoScreenNail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "stopingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/ui/VideoScreenNail;


# direct methods
.method private constructor <init>(Lcom/sec/android/gallery3d/ui/VideoScreenNail;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail$stopingState;->this$0:Lcom/sec/android/gallery3d/ui/VideoScreenNail;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/gallery3d/ui/VideoScreenNail$PlayerStates;-><init>(Lcom/sec/android/gallery3d/ui/VideoScreenNail;Lcom/sec/android/gallery3d/ui/VideoScreenNail$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/ui/VideoScreenNail;Lcom/sec/android/gallery3d/ui/VideoScreenNail$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/VideoScreenNail$stopingState;-><init>(Lcom/sec/android/gallery3d/ui/VideoScreenNail;)V

    return-void
.end method


# virtual methods
.method public Action(Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;Landroid/graphics/SurfaceTexture;)V
    .locals 2

    const-string/jumbo v0, "VideoScreenNail"

    const-string/jumbo v1, "stopingState : Action"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public stopAction(Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;)V
    .locals 2

    const-string/jumbo v0, "VideoScreenNail"

    const-string/jumbo v1, "stopingState : stopAction "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
