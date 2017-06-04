.class abstract Lcom/sec/android/gallery3d/ui/VideoScreenNail$PlayerStates;
.super Ljava/lang/Object;
.source "VideoScreenNail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/ui/VideoScreenNail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "PlayerStates"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/ui/VideoScreenNail;


# direct methods
.method private constructor <init>(Lcom/sec/android/gallery3d/ui/VideoScreenNail;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail$PlayerStates;->this$0:Lcom/sec/android/gallery3d/ui/VideoScreenNail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/ui/VideoScreenNail;Lcom/sec/android/gallery3d/ui/VideoScreenNail$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/VideoScreenNail$PlayerStates;-><init>(Lcom/sec/android/gallery3d/ui/VideoScreenNail;)V

    return-void
.end method


# virtual methods
.method public abstract Action(Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;Landroid/graphics/SurfaceTexture;)V
.end method

.method public abstract stopAction(Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;)V
.end method
