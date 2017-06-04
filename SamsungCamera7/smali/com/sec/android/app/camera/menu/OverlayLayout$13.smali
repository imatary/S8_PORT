.class Lcom/sec/android/app/camera/menu/OverlayLayout$13;
.super Ljava/lang/Object;
.source "OverlayLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/menu/OverlayLayout;->startVisionIntelligenceEffectAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/OverlayLayout;

.field final synthetic val$tempI:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/OverlayLayout;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout$13;->this$0:Lcom/sec/android/app/camera/menu/OverlayLayout;

    iput p2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout$13;->val$tempI:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 11

    const v10, 0x43968000    # 301.0f

    const/high16 v6, 0x43860000    # 268.0f

    const v7, 0x3fd33333    # 1.65f

    const/high16 v8, 0x40000000    # 2.0f

    const v9, 0x43a68000    # 333.0f

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout$13;->this$0:Lcom/sec/android/app/camera/menu/OverlayLayout;

    iget-object v3, v3, Lcom/sec/android/app/camera/menu/OverlayLayout;->mVisionIntelligenceEffect:[Lcom/samsung/android/glview/GLCircle;

    iget v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout$13;->val$tempI:I

    aget-object v3, v3, v4

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout$13;->this$0:Lcom/sec/android/app/camera/menu/OverlayLayout;

    # getter for: Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v3}, Lcom/sec/android/app/camera/menu/OverlayLayout;->access$300(Lcom/sec/android/app/camera/menu/OverlayLayout;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    cmpg-float v3, v2, v6

    if-gez v3, :cond_5

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout$13;->this$0:Lcom/sec/android/app/camera/menu/OverlayLayout;

    iget-object v3, v3, Lcom/sec/android/app/camera/menu/OverlayLayout;->mVisionIntelligenceEffect:[Lcom/samsung/android/glview/GLCircle;

    iget v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout$13;->val$tempI:I

    aget-object v3, v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v4, v2

    const v5, 0x43858000    # 267.0f

    div-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLCircle;->setAlpha(F)V

    :cond_2
    :goto_1
    cmpg-float v3, v2, v9

    if-gez v3, :cond_7

    sub-float v3, v9, v2

    mul-float/2addr v3, v7

    div-float/2addr v3, v9

    sub-float v0, v7, v3

    const/4 v3, 0x0

    cmpg-float v3, v0, v3

    if-gez v3, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout$13;->this$0:Lcom/sec/android/app/camera/menu/OverlayLayout;

    iget-object v3, v3, Lcom/sec/android/app/camera/menu/OverlayLayout;->mVisionIntelligenceEffect:[Lcom/samsung/android/glview/GLCircle;

    iget v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout$13;->val$tempI:I

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout$13;->this$0:Lcom/sec/android/app/camera/menu/OverlayLayout;

    # getter for: Lcom/sec/android/app/camera/menu/OverlayLayout;->VI_EFFECT_POS_Y:[I
    invoke-static {v4}, Lcom/sec/android/app/camera/menu/OverlayLayout;->access$1000(Lcom/sec/android/app/camera/menu/OverlayLayout;)[I

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/menu/OverlayLayout$13;->val$tempI:I

    aget v4, v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayLayout$13;->this$0:Lcom/sec/android/app/camera/menu/OverlayLayout;

    # getter for: Lcom/sec/android/app/camera/menu/OverlayLayout;->VI_EFFECT_SIZE:[I
    invoke-static {v5}, Lcom/sec/android/app/camera/menu/OverlayLayout;->access$1100(Lcom/sec/android/app/camera/menu/OverlayLayout;)[I

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout$13;->val$tempI:I

    aget v5, v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, v0

    div-float/2addr v5, v8

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayLayout$13;->this$0:Lcom/sec/android/app/camera/menu/OverlayLayout;

    # getter for: Lcom/sec/android/app/camera/menu/OverlayLayout;->VI_EFFECT_POS_X:[I
    invoke-static {v5}, Lcom/sec/android/app/camera/menu/OverlayLayout;->access$1200(Lcom/sec/android/app/camera/menu/OverlayLayout;)[I

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout$13;->val$tempI:I

    aget v5, v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout$13;->this$0:Lcom/sec/android/app/camera/menu/OverlayLayout;

    # getter for: Lcom/sec/android/app/camera/menu/OverlayLayout;->VI_EFFECT_SIZE:[I
    invoke-static {v6}, Lcom/sec/android/app/camera/menu/OverlayLayout;->access$1100(Lcom/sec/android/app/camera/menu/OverlayLayout;)[I

    move-result-object v6

    iget v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout$13;->val$tempI:I

    aget v6, v6, v7

    int-to-float v6, v6

    mul-float/2addr v6, v0

    div-float/2addr v6, v8

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout$13;->this$0:Lcom/sec/android/app/camera/menu/OverlayLayout;

    # getter for: Lcom/sec/android/app/camera/menu/OverlayLayout;->VI_EFFECT_SIZE:[I
    invoke-static {v6}, Lcom/sec/android/app/camera/menu/OverlayLayout;->access$1100(Lcom/sec/android/app/camera/menu/OverlayLayout;)[I

    move-result-object v6

    iget v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout$13;->val$tempI:I

    aget v6, v6, v7

    int-to-float v6, v6

    mul-float/2addr v6, v0

    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout$13;->this$0:Lcom/sec/android/app/camera/menu/OverlayLayout;

    # getter for: Lcom/sec/android/app/camera/menu/OverlayLayout;->VI_EFFECT_SIZE:[I
    invoke-static {v7}, Lcom/sec/android/app/camera/menu/OverlayLayout;->access$1100(Lcom/sec/android/app/camera/menu/OverlayLayout;)[I

    move-result-object v7

    iget v8, p0, Lcom/sec/android/app/camera/menu/OverlayLayout$13;->val$tempI:I

    aget v7, v7, v8

    int-to-float v7, v7

    mul-float/2addr v7, v0

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/samsung/android/glview/GLCircle;->setCircle(FFFF)V

    :goto_2
    cmpg-float v3, v9, v2

    if-gez v3, :cond_4

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout$13;->this$0:Lcom/sec/android/app/camera/menu/OverlayLayout;

    iget-object v3, v3, Lcom/sec/android/app/camera/menu/OverlayLayout;->mVisionIntelligenceEffect:[Lcom/samsung/android/glview/GLCircle;

    iget v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout$13;->val$tempI:I

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout$13;->this$0:Lcom/sec/android/app/camera/menu/OverlayLayout;

    # getter for: Lcom/sec/android/app/camera/menu/OverlayLayout;->VI_EFFECT_DEFAULT_COLOR:I
    invoke-static {v4}, Lcom/sec/android/app/camera/menu/OverlayLayout;->access$1300(Lcom/sec/android/app/camera/menu/OverlayLayout;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLCircle;->setColor(I)V

    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout$13;->this$0:Lcom/sec/android/app/camera/menu/OverlayLayout;

    # getter for: Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v3}, Lcom/sec/android/app/camera/menu/OverlayLayout;->access$300(Lcom/sec/android/app/camera/menu/OverlayLayout;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    goto/16 :goto_0

    :cond_5
    cmpg-float v3, v6, v2

    if-gez v3, :cond_6

    cmpg-float v3, v2, v10

    if-gez v3, :cond_6

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout$13;->this$0:Lcom/sec/android/app/camera/menu/OverlayLayout;

    iget-object v3, v3, Lcom/sec/android/app/camera/menu/OverlayLayout;->mVisionIntelligenceEffect:[Lcom/samsung/android/glview/GLCircle;

    iget v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout$13;->val$tempI:I

    aget-object v3, v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3f333333    # 0.7f

    sub-float v6, v2, v6

    mul-float/2addr v5, v6

    const/high16 v6, 0x42040000    # 33.0f

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLCircle;->setAlpha(F)V

    goto/16 :goto_1

    :cond_6
    cmpl-float v3, v2, v10

    if-lez v3, :cond_2

    const/high16 v3, 0x43a70000    # 334.0f

    cmpg-float v3, v2, v3

    if-gez v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout$13;->this$0:Lcom/sec/android/app/camera/menu/OverlayLayout;

    iget-object v3, v3, Lcom/sec/android/app/camera/menu/OverlayLayout;->mVisionIntelligenceEffect:[Lcom/samsung/android/glview/GLCircle;

    iget v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout$13;->val$tempI:I

    aget-object v3, v3, v4

    const v4, 0x3e99999a    # 0.3f

    const v5, 0x3f333333    # 0.7f

    sub-float v6, v2, v10

    mul-float/2addr v5, v6

    const/high16 v6, 0x42040000    # 33.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLCircle;->setAlpha(F)V

    goto/16 :goto_1

    :cond_7
    const v3, 0x3f266666    # 0.65f

    sub-float v4, v2, v9

    mul-float/2addr v3, v4

    div-float/2addr v3, v9

    sub-float v1, v7, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout$13;->this$0:Lcom/sec/android/app/camera/menu/OverlayLayout;

    iget-object v3, v3, Lcom/sec/android/app/camera/menu/OverlayLayout;->mVisionIntelligenceEffect:[Lcom/samsung/android/glview/GLCircle;

    iget v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout$13;->val$tempI:I

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout$13;->this$0:Lcom/sec/android/app/camera/menu/OverlayLayout;

    # getter for: Lcom/sec/android/app/camera/menu/OverlayLayout;->VI_EFFECT_POS_Y:[I
    invoke-static {v4}, Lcom/sec/android/app/camera/menu/OverlayLayout;->access$1000(Lcom/sec/android/app/camera/menu/OverlayLayout;)[I

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/menu/OverlayLayout$13;->val$tempI:I

    aget v4, v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayLayout$13;->this$0:Lcom/sec/android/app/camera/menu/OverlayLayout;

    # getter for: Lcom/sec/android/app/camera/menu/OverlayLayout;->VI_EFFECT_SIZE:[I
    invoke-static {v5}, Lcom/sec/android/app/camera/menu/OverlayLayout;->access$1100(Lcom/sec/android/app/camera/menu/OverlayLayout;)[I

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout$13;->val$tempI:I

    aget v5, v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, v1

    div-float/2addr v5, v8

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayLayout$13;->this$0:Lcom/sec/android/app/camera/menu/OverlayLayout;

    # getter for: Lcom/sec/android/app/camera/menu/OverlayLayout;->VI_EFFECT_POS_X:[I
    invoke-static {v5}, Lcom/sec/android/app/camera/menu/OverlayLayout;->access$1200(Lcom/sec/android/app/camera/menu/OverlayLayout;)[I

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout$13;->val$tempI:I

    aget v5, v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout$13;->this$0:Lcom/sec/android/app/camera/menu/OverlayLayout;

    # getter for: Lcom/sec/android/app/camera/menu/OverlayLayout;->VI_EFFECT_SIZE:[I
    invoke-static {v6}, Lcom/sec/android/app/camera/menu/OverlayLayout;->access$1100(Lcom/sec/android/app/camera/menu/OverlayLayout;)[I

    move-result-object v6

    iget v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout$13;->val$tempI:I

    aget v6, v6, v7

    int-to-float v6, v6

    mul-float/2addr v6, v1

    div-float/2addr v6, v8

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout$13;->this$0:Lcom/sec/android/app/camera/menu/OverlayLayout;

    # getter for: Lcom/sec/android/app/camera/menu/OverlayLayout;->VI_EFFECT_SIZE:[I
    invoke-static {v6}, Lcom/sec/android/app/camera/menu/OverlayLayout;->access$1100(Lcom/sec/android/app/camera/menu/OverlayLayout;)[I

    move-result-object v6

    iget v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout$13;->val$tempI:I

    aget v6, v6, v7

    int-to-float v6, v6

    mul-float/2addr v6, v1

    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout$13;->this$0:Lcom/sec/android/app/camera/menu/OverlayLayout;

    # getter for: Lcom/sec/android/app/camera/menu/OverlayLayout;->VI_EFFECT_SIZE:[I
    invoke-static {v7}, Lcom/sec/android/app/camera/menu/OverlayLayout;->access$1100(Lcom/sec/android/app/camera/menu/OverlayLayout;)[I

    move-result-object v7

    iget v8, p0, Lcom/sec/android/app/camera/menu/OverlayLayout$13;->val$tempI:I

    aget v7, v7, v8

    int-to-float v7, v7

    mul-float/2addr v7, v1

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/samsung/android/glview/GLCircle;->setCircle(FFFF)V

    goto/16 :goto_2
.end method
