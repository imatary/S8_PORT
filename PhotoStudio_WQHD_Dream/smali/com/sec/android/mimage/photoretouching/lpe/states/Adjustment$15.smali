.class Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;
.super Ljava/lang/Object;
.source "Adjustment.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->applyNormalCrop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

.field final synthetic val$animation:Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAdjustmentAnimation;

.field final synthetic val$centerX:F

.field final synthetic val$centerY:F

.field final synthetic val$cropHeight:F

.field final synthetic val$cropWidth:F

.field final synthetic val$data:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

.field final synthetic val$event:Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

.field final synthetic val$hFlip:I

.field final synthetic val$height:I

.field final synthetic val$newBuffer:[I

.field final synthetic val$perAngle:F

.field final synthetic val$perType:I

.field final synthetic val$previewHeight:I

.field final synthetic val$previewWidth:I

.field final synthetic val$rotate:I

.field final synthetic val$rotation:F

.field final synthetic val$vFlip:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAdjustmentAnimation;Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;IFIIIIIIFFIF[ILcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;FF)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->val$animation:Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAdjustmentAnimation;

    iput-object p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->val$data:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    iput p4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->val$rotate:I

    iput p5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->val$rotation:F

    iput p6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->val$hFlip:I

    iput p7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->val$vFlip:I

    iput p8, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->val$width:I

    iput p9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->val$height:I

    iput p10, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->val$previewWidth:I

    iput p11, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->val$previewHeight:I

    iput p12, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->val$centerX:F

    iput p13, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->val$centerY:F

    iput p14, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->val$perType:I

    move/from16 v0, p15

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->val$perAngle:F

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->val$newBuffer:[I

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->val$event:Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    move/from16 v0, p18

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->val$cropWidth:F

    move/from16 v0, p19

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->val$cropHeight:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->val$data:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->val$newBuffer:[I

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->val$width:I

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->val$height:I

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->setPreviewBuffer([IIIZ)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->val$event:Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->val$data:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->val$data:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->val$data:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->addPreviewToHistory(Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;[IIIZ)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    const/16 v1, 0xc

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->setMode(I)V
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$1500(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setState(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->updateMenuUndoRedo()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->val$animation:Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAdjustmentAnimation;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;

    invoke-direct {v2, p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;)V

    const-wide/16 v4, 0xa

    invoke-virtual {v0, v2, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->postDelayed(Ljava/lang/Runnable;J)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$1;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$1;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;)V

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$1;->start()V

    return-void
.end method
