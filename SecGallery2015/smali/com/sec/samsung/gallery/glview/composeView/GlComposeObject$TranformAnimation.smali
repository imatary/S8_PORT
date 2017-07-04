.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;
.super Lcom/sec/android/gallery3d/glcore/GlAnimationBase;
.source "GlComposeObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TranformAnimation"
.end annotation


# instance fields
.field private mRatio:F

.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransform(F)V
    .locals 14

    const/4 v13, 0x0

    iput p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->mRatio:F

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->access$1200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->access$1300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-static {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->access$1400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)I

    move-result v7

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v8, v8, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->msx:F

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v9, v9, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mtx:F

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v10, v10, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->msx:F

    sub-float/2addr v9, v10

    mul-float/2addr v9, p1

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v9, v9, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->msy:F

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v10, v10, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mty:F

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v11, v11, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->msy:F

    sub-float/2addr v10, v11

    mul-float/2addr v10, p1

    add-float/2addr v9, v10

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v10, v10, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->msz:F

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v11, v11, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mtz:F

    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v12, v12, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->msz:F

    sub-float/2addr v11, v12

    mul-float/2addr v11, p1

    add-float/2addr v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(IFFF)V

    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->access$1500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-static {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->access$1600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)F

    move-result v7

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-static {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->access$1700(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)F

    move-result v8

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-static {v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->access$1600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)F

    move-result v9

    sub-float/2addr v8, v9

    mul-float/2addr v8, p1

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-static {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->access$1800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)F

    move-result v8

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-static {v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->access$1900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)F

    move-result v9

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-static {v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->access$1800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)F

    move-result v10

    sub-float/2addr v9, v10

    mul-float/2addr v9, p1

    add-float/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSize(FF)V

    :cond_1
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->access$2000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v7, v7, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mSAlpha:F

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v8, v8, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTAlpha:F

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v9, v9, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mSAlpha:F

    sub-float/2addr v8, v9

    mul-float/2addr v8, p1

    add-float/2addr v7, v8

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setAlpha(F)V

    :cond_2
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->access$2100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v7, v7, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mSrcRoll:F

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v8, v8, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTgtRoll:F

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v9, v9, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mSrcRoll:F

    sub-float/2addr v8, v9

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v9, v9, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTransAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;

    iget v9, v9, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->mRatio:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setRoll(F)V

    :cond_3
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->access$2200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mSrcScale:F

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v7, v7, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTgtScale:F

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v8, v8, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mSrcScale:F

    sub-float/2addr v7, v8

    mul-float/2addr v7, p1

    add-float v4, v6, v7

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v6, v4, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setScale(FF)V

    :cond_4
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->access$2300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->access$2400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)F

    move-result v6

    cmpl-float v6, v6, v13

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->access$2500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)F

    move-result v6

    cmpl-float v6, v6, v13

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->access$2600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)F

    move-result v6

    cmpl-float v6, v6, v13

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->access$2700(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)F

    move-result v6

    cmpl-float v6, v6, v13

    if-nez v6, :cond_7

    :cond_5
    :goto_1
    return-void

    :cond_6
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v7, v7, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->msx:F

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v8, v8, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mtx:F

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v9, v9, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->msx:F

    sub-float/2addr v8, v9

    mul-float/2addr v8, p1

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v8, v8, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->msy:F

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v9, v9, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mty:F

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v10, v10, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->msy:F

    sub-float/2addr v9, v10

    mul-float/2addr v9, p1

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v9, v9, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->msz:F

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v10, v10, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mtz:F

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v11, v11, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->msz:F

    sub-float/2addr v10, v11

    mul-float/2addr v10, p1

    add-float/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    goto/16 :goto_0

    :cond_7
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->access$2800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)F

    move-result v6

    cmpl-float v6, v6, v13

    if-nez v6, :cond_8

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->access$2900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)F

    move-result v6

    cmpl-float v6, v6, v13

    if-nez v6, :cond_8

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->access$3000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)F

    move-result v6

    cmpl-float v6, v6, v13

    if-nez v6, :cond_8

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->access$3100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)F

    move-result v6

    cmpl-float v6, v6, v13

    if-eqz v6, :cond_5

    :cond_8
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->access$2800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)F

    move-result v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-static {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->access$2400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)F

    move-result v7

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-static {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->access$2800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)F

    move-result v8

    sub-float/2addr v7, v8

    mul-float/2addr v7, p1

    add-float v1, v6, v7

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->access$3000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)F

    move-result v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-static {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->access$2600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)F

    move-result v7

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-static {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->access$3000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)F

    move-result v8

    sub-float/2addr v7, v8

    mul-float/2addr v7, p1

    add-float v3, v6, v7

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->access$2900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)F

    move-result v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-static {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->access$2500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)F

    move-result v7

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-static {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->access$2900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)F

    move-result v8

    sub-float/2addr v7, v8

    mul-float/2addr v7, p1

    add-float v5, v6, v7

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->access$3100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)F

    move-result v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-static {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->access$2700(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)F

    move-result v7

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-static {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->access$3100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)F

    move-result v8

    sub-float/2addr v7, v8

    mul-float/2addr v7, p1

    add-float v0, v6, v7

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v6, v1, v5, v3, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setTexCoords(FFFF)V

    :cond_9
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->access$3200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->access$3300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)F

    move-result v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-static {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->access$3400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)F

    move-result v7

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-static {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->access$3300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)F

    move-result v8

    sub-float/2addr v7, v8

    mul-float/2addr v7, p1

    add-float v2, v6, v7

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-static {v6, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->access$3500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;F)V

    goto/16 :goto_1
.end method

.method protected onStop()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->access$1200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->access$1300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->access$1400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)I

    move-result v1

    invoke-virtual {v0, v1, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->addPos(II)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->access$1500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->access$1700(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)F

    move-result v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->access$1900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSize(FF)V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->access$2000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTAlpha:F

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setAlpha(F)V

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->access$2100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTgtRoll:F

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setRoll(F)V

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->access$2200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTgtScale:F

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTgtScale:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setScale(FF)V

    :cond_4
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPosAnimMode(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->removeAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    return-void

    :cond_5
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mtx:F

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mty:F

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mtz:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    goto :goto_0
.end method
