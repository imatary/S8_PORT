.class Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$OnZoomAnimationListener;
.super Ljava/lang/Object;
.source "SpenSimpleSurfaceView.java"

# interfaces
.implements Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnZoomAnimationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$OnZoomAnimationListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$OnZoomAnimationListener;-><init>(Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;)V

    return-void
.end method


# virtual methods
.method public onChangeScale(FFF)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$OnZoomAnimationListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->setZoom(FFF)V

    return-void
.end method

.method public onCompleted()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$OnZoomAnimationListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mZoomAnimationListener:Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimationListener;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->access$2800(Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;)Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$OnZoomAnimationListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mZoomAnimationListener:Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimationListener;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->access$2800(Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;)Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimationListener;->onCompleleZoomAnimation()V

    :cond_0
    return-void
.end method
