.class Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$19;
.super Ljava/lang/Object;
.source "Drawing.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->initZoomButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$19;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/high16 v3, 0x40400000    # 3.0f

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$19;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$19;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mZoomValue:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x3e800000    # 0.25f

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mZoomValue:Ljava/lang/Float;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$19;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mZoomValue:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$19;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mZoomValue:Ljava/lang/Float;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$19;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->access$1800(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$19;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSPenCanvasWidth:I
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->access$2500(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x64

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$19;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSPenCanvasHeight:I
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->access$2600(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x64

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$19;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->access$1800(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->getZoomRatio()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$19;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mZoomValue:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->setZoom(FFF)V

    return-void
.end method
