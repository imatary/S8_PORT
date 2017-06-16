.class Lcom/samsung/android/sdk/pen/engine/SpenSimpleView$OnZoomAnimationListener;
.super Ljava/lang/Object;
.source "SpenSimpleView.java"

# interfaces
.implements Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnZoomAnimationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView$OnZoomAnimationListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;Lcom/samsung/android/sdk/pen/engine/SpenSimpleView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView$OnZoomAnimationListener;-><init>(Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;)V

    return-void
.end method


# virtual methods
.method public onChangeScale(FFF)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView$OnZoomAnimationListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->setZoom(FFF)V

    return-void
.end method

.method public onCompleted()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView$OnZoomAnimationListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;

    # invokes: Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->deltaZoomSizeChanged()V
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->access$2300(Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView$OnZoomAnimationListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->mZoomAnimationListener:Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimationListener;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->access$2400(Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;)Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView$OnZoomAnimationListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->mZoomAnimationListener:Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimationListener;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->access$2400(Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;)Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimationListener;->onCompleleZoomAnimation()V

    :cond_0
    return-void
.end method
