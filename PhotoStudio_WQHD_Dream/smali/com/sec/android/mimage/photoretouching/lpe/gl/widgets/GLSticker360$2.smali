.class Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360$2;
.super Ljava/lang/Object;
.source "GLSticker360.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 10

    const/high16 v9, 0x42a00000    # 80.0f

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v6, 0x41a00000    # 20.0f

    const/4 v1, 0x0

    const/high16 v0, 0x40000000    # 2.0f

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->z:F
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;)F

    move-result v4

    sub-float/2addr v4, v1

    mul-float/2addr v4, v9

    sub-float v5, v0, v1

    div-float/2addr v4, v5

    add-float v3, v6, v4

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v2

    div-float/2addr v3, v2

    cmpg-float v4, v3, v6

    if-gez v4, :cond_2

    const/high16 v3, 0x41a00000    # 20.0f

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;

    sub-float v5, v3, v6

    sub-float v6, v0, v1

    mul-float/2addr v5, v6

    div-float/2addr v5, v9

    add-float/2addr v5, v1

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->z:F
    invoke-static {v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->access$102(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;F)F

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->z:F
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;)F

    move-result v4

    cmpl-float v4, v4, v7

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->z:F
    invoke-static {v4, v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->access$102(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;F)F

    :cond_1
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->z:F
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;)F

    move-result v4

    cmpl-float v4, v4, v8

    if-lez v4, :cond_3

    sget v4, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->MAX_VIEW_ANGLE:F

    :goto_1
    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mViewAngle:F
    invoke-static {v5, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->access$202(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;F)F

    const-string v4, "nayab"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "scaling :: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->z:F
    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    return v4

    :cond_2
    const/high16 v4, 0x42c80000    # 100.0f

    cmpl-float v4, v3, v4

    if-lez v4, :cond_0

    const/high16 v3, 0x42c80000    # 100.0f

    goto :goto_0

    :cond_3
    sget v4, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->MIN_VIEW_ANGLE:F

    sget v6, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->MAX_VIEW_ANGLE:F

    sget v7, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->MIN_VIEW_ANGLE:F

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->z:F
    invoke-static {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;)F

    move-result v7

    sub-float/2addr v7, v1

    mul-float/2addr v6, v7

    sub-float v7, v8, v1

    div-float/2addr v6, v7

    add-float/2addr v4, v6

    goto :goto_1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mScaling:Z
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->access$302(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;Z)Z

    return v1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mScaleEndTime:J
    invoke-static {v0, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->access$402(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;J)J

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;

    iput v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mTouchMode:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mScaling:Z
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->access$302(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;Z)Z

    return-void
.end method
