.class Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$OnGestureListener;
.super Ljava/lang/Object;
.source "SpenSimpleSurfaceView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$OnGestureListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$OnGestureListener;-><init>(Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$OnGestureListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->getToolTypeAction(I)I

    move-result v2

    if-ne v2, v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$OnGestureListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mSmartScaleGestureDetector:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->access$1400(Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;)Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$OnGestureListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mLongPressListener:Lcom/samsung/android/sdk/pen/engine/SpenLongPressListener;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->access$1300(Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;)Lcom/samsung/android/sdk/pen/engine/SpenLongPressListener;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "SpenSimpleSurfaceView"

    const-string v1, "mLongPressListener.onLongPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$OnGestureListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mLongPressListener:Lcom/samsung/android/sdk/pen/engine/SpenLongPressListener;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->access$1300(Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;)Lcom/samsung/android/sdk/pen/engine/SpenLongPressListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenLongPressListener;->onLongPressed(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
