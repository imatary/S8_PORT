.class Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$4;
.super Ljava/lang/Object;
.source "Advance.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->initViewParams()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$4;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v4, 0x1

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_THRESHOLD;->NONE:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_THRESHOLD;

    const/4 v3, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :goto_0
    :pswitch_0
    sget-object v5, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_THRESHOLD;->NONE:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_THRESHOLD;

    if-eq v2, v5, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_1

    :cond_0
    :goto_1
    return v4

    :pswitch_1
    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_THRESHOLD;->LOW:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_THRESHOLD;

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$4;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mInfo:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->access$1000(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;)Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;->getLowThres()I

    move-result v3

    goto :goto_0

    :pswitch_2
    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_THRESHOLD;->MIDDLE:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_THRESHOLD;

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$4;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mInfo:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->access$1000(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;)Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;->getMidThres()I

    move-result v3

    goto :goto_0

    :pswitch_3
    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_THRESHOLD;->HIGH:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_THRESHOLD;

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$4;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mInfo:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->access$1000(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;)Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;->getHighThres()I

    move-result v3

    goto :goto_0

    :pswitch_4
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$4;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->rangeSeekBarStartX:F
    invoke-static {v5, v6}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->access$1202(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;F)F

    goto :goto_1

    :pswitch_5
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$4;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    iget-object v5, v5, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v1, -0x1

    :goto_2
    int-to-float v5, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$4;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->rangeSeekBarStartX:F
    invoke-static {v7}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->access$1200(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;)F

    move-result v7

    sub-float/2addr v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$4;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mRangeSeekBar:Landroid/view/View;
    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->access$1300(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float/2addr v5, v6

    float-to-int v0, v5

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$4;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    add-int v6, v3, v0

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->checkRangeSeekBarMovementValidity(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_THRESHOLD;I)Z
    invoke-static {v5, v2, v6}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->access$1400(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_THRESHOLD;I)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$4;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mInfo:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->access$1000(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;)Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;

    move-result-object v5

    add-int v6, v3, v0

    invoke-virtual {v5, v6, v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;->updateValue(ILcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_THRESHOLD;)V

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$4;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->updateRangeSeekBarThumbs(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_THRESHOLD;)V
    invoke-static {v5, v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->access$1500(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_THRESHOLD;)V

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$4;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurveView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->access$1600(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$4;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mInfo:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;
    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->access$1000(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;)Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->updateThresholdBuffer(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;)V

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$4;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    iget-object v5, v5, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$4;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->applyAdvancePreview()V
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->access$1700(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;)V

    goto/16 :goto_1

    :cond_1
    move v1, v4

    goto :goto_2

    :pswitch_6
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$4;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    const/4 v6, 0x0

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->rangeSeekBarStartX:F
    invoke-static {v5, v6}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->access$1202(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;F)F

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x7f0e038b
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
