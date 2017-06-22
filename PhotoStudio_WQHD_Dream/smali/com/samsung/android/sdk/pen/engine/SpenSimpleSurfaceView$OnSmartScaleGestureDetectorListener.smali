.class Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$OnSmartScaleGestureDetectorListener;
.super Ljava/lang/Object;
.source "SpenSimpleSurfaceView.java"

# interfaces
.implements Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnSmartScaleGestureDetectorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$OnSmartScaleGestureDetectorListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$OnSmartScaleGestureDetectorListener;-><init>(Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;)V

    return-void
.end method


# virtual methods
.method public onChangePan(FF)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$OnSmartScaleGestureDetectorListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->setPan(Landroid/graphics/PointF;)V

    return-void
.end method

.method public onChangeScale(FFF)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$OnSmartScaleGestureDetectorListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->setZoom(FFF)V

    return-void
.end method

.method public onFlick(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onUpdate()V
    .locals 0

    return-void
.end method

.method public onUpdateScreenFrameBuffer()V
    .locals 0

    return-void
.end method
