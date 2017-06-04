.class Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$1;
.super Landroid/os/Handler;
.source "MoreInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    const/4 v8, 0x0

    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    const-string/jumbo v6, "MoreInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "The Message Not handled : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mRootView:Landroid/view/View;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->access$000(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v2

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;

    const/16 v7, 0x99

    invoke-static {v7, v8, v8, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    # setter for: Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mBackgroundColor:I
    invoke-static {v6, v7}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->access$102(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;I)I

    :try_start_0
    new-instance v6, Landroid/animation/ArgbEvaluator;

    invoke-direct {v6}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mBackgroundColor:I
    invoke-static {v9}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->access$100(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v6, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$MyAnimatorListener;

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mRootView:Landroid/view/View;
    invoke-static {v7}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->access$000(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;)Landroid/view/View;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$MyAnimatorListener;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string/jumbo v6, "MoreInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Exception : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;

    # invokes: Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->updateActionBar()V
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->access$200(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;)V

    goto :goto_0

    :pswitch_2
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v6, v6, Landroid/view/View;

    if-eqz v6, :cond_0

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    const v4, 0x7f05002b

    # getter for: Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->FEATURE_USE_VISUAL_MOREINFO:Z
    invoke-static {}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->access$300()Z

    move-result v6

    if-nez v6, :cond_1

    const v4, 0x7f05002c

    :cond_1
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->access$400(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;)Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    const/16 v6, 0x64

    invoke-static {v6}, Lcom/sec/samsung/gallery/view/utils/PathInterpolatorUtils;->getInterpolator(I)Landroid/view/animation/Interpolator;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;

    # invokes: Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->actionEditDone()V
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->access$500(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;

    # invokes: Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->actionEditCancel()V
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->access$600(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;

    # invokes: Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->hideSoftInput()V
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->access$700(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mInputMethodHeight:I
    invoke-static {v7}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->access$900(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;)I

    move-result v7

    # setter for: Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mPreviousInputMethodHeight:I
    invoke-static {v6, v7}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->access$802(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;I)I

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mInputMethodHeight:I
    invoke-static {v7}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->access$900(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->setMoreInfoContainerMargin(I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
