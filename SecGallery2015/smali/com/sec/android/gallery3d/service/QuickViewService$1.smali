.class Lcom/sec/android/gallery3d/service/QuickViewService$1;
.super Landroid/os/Handler;
.source "QuickViewService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/service/QuickViewService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/service/QuickViewService;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/service/QuickViewService;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/service/QuickViewService$1;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    const/4 v0, 0x0

    const/4 v9, 0x5

    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v1, -0x1

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string/jumbo v2, "QuickViewService"

    const-string/jumbo v3, "MSG_SHOW_VIEW"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/gallery3d/service/QuickViewService$1;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    invoke-static {v2}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$000(Lcom/sec/android/gallery3d/service/QuickViewService;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/gallery3d/service/QuickViewService$1;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    invoke-static {v2}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$200(Lcom/sec/android/gallery3d/service/QuickViewService;)Landroid/view/WindowManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/service/QuickViewService$1;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    invoke-static {v3}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$100(Lcom/sec/android/gallery3d/service/QuickViewService;)Landroid/view/View;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/service/QuickViewService$1;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    invoke-static {v2, v0}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$302(Lcom/sec/android/gallery3d/service/QuickViewService;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/gallery3d/service/QuickViewService$1;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    invoke-static {v2, v0}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$102(Lcom/sec/android/gallery3d/service/QuickViewService;Landroid/view/View;)Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/gallery3d/service/QuickViewService$1;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    invoke-static {v2, v4}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$002(Lcom/sec/android/gallery3d/service/QuickViewService;Z)Z

    :cond_1
    iget-object v2, p0, Lcom/sec/android/gallery3d/service/QuickViewService$1;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/service/QuickViewService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    iget-object v2, p0, Lcom/sec/android/gallery3d/service/QuickViewService$1;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    invoke-static {v2}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$100(Lcom/sec/android/gallery3d/service/QuickViewService;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/gallery3d/service/QuickViewService$1;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    const v3, 0x7f040099

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v6, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$102(Lcom/sec/android/gallery3d/service/QuickViewService;Landroid/view/View;)Landroid/view/View;

    :cond_2
    iget-object v0, p0, Lcom/sec/android/gallery3d/service/QuickViewService$1;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    invoke-static {v0}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$300(Lcom/sec/android/gallery3d/service/QuickViewService;)Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v2, p0, Lcom/sec/android/gallery3d/service/QuickViewService$1;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    iget-object v0, p0, Lcom/sec/android/gallery3d/service/QuickViewService$1;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    invoke-static {v0}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$100(Lcom/sec/android/gallery3d/service/QuickViewService;)Landroid/view/View;

    move-result-object v0

    const v3, 0x7f12003f

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v2, v0}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$302(Lcom/sec/android/gallery3d/service/QuickViewService;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    :cond_3
    iget-object v0, p0, Lcom/sec/android/gallery3d/service/QuickViewService$1;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    invoke-static {v0}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$400(Lcom/sec/android/gallery3d/service/QuickViewService;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/gallery3d/service/QuickViewService$1;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    invoke-static {v0}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$300(Lcom/sec/android/gallery3d/service/QuickViewService;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/gallery3d/service/QuickViewService$1;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    invoke-static {v2}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$400(Lcom/sec/android/gallery3d/service/QuickViewService;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_4
    iget-object v7, p0, Lcom/sec/android/gallery3d/service/QuickViewService$1;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7d2

    invoke-static {}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$600()I

    move-result v4

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    invoke-static {v7, v0}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$502(Lcom/sec/android/gallery3d/service/QuickViewService;Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/sec/android/gallery3d/service/QuickViewService$1;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    invoke-static {v0}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$500(Lcom/sec/android/gallery3d/service/QuickViewService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/sec/android/gallery3d/service/QuickViewService$1;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    invoke-static {v0}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$500(Lcom/sec/android/gallery3d/service/QuickViewService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x100

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget-object v0, p0, Lcom/sec/android/gallery3d/service/QuickViewService$1;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    invoke-static {v0}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$200(Lcom/sec/android/gallery3d/service/QuickViewService;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/service/QuickViewService$1;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    invoke-static {v1}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$100(Lcom/sec/android/gallery3d/service/QuickViewService;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/service/QuickViewService$1;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    invoke-static {v2}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$500(Lcom/sec/android/gallery3d/service/QuickViewService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/service/QuickViewService$1;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    invoke-static {v0, v8}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$002(Lcom/sec/android/gallery3d/service/QuickViewService;Z)Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/service/QuickViewService$1;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    invoke-static {v0, v8}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$702(Lcom/sec/android/gallery3d/service/QuickViewService;Z)Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/service/QuickViewService$1;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    invoke-static {v0}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$800(Lcom/sec/android/gallery3d/service/QuickViewService;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v9, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :pswitch_1
    const-string/jumbo v0, "QuickViewService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MSG_SHOW_VIEW_WITH_ANIMATION, mAnimationDuration : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/service/QuickViewService$1;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    invoke-static {v2}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$900(Lcom/sec/android/gallery3d/service/QuickViewService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/service/QuickViewService$1;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    invoke-static {v0}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$1000(Lcom/sec/android/gallery3d/service/QuickViewService;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "QuickViewService"

    const-string/jumbo v1, "already show view with animation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/sec/android/gallery3d/service/QuickViewService$1;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    invoke-static {v0}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$100(Lcom/sec/android/gallery3d/service/QuickViewService;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/service/QuickViewService$1;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    invoke-static {v0}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$100(Lcom/sec/android/gallery3d/service/QuickViewService;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/service/QuickViewService$1;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    iget-object v1, p0, Lcom/sec/android/gallery3d/service/QuickViewService$1;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    invoke-static {v1}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$100(Lcom/sec/android/gallery3d/service/QuickViewService;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$1102(Lcom/sec/android/gallery3d/service/QuickViewService;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/sec/android/gallery3d/service/QuickViewService$1;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    invoke-static {v0}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$1100(Lcom/sec/android/gallery3d/service/QuickViewService;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/service/QuickViewService$1;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    invoke-static {v1}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$900(Lcom/sec/android/gallery3d/service/QuickViewService;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/sec/android/gallery3d/service/QuickViewService$1$1;

    invoke-direct {v1, p0}, Lcom/sec/android/gallery3d/service/QuickViewService$1$1;-><init>(Lcom/sec/android/gallery3d/service/QuickViewService$1;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/service/QuickViewService$1;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    invoke-static {v0, v8}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$702(Lcom/sec/android/gallery3d/service/QuickViewService;Z)Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/service/QuickViewService$1;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    invoke-static {v0}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$800(Lcom/sec/android/gallery3d/service/QuickViewService;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v9, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :pswitch_2
    const-string/jumbo v0, "QuickViewService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MSG_HIDE_VIEW, mAnimationDuration : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/service/QuickViewService$1;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    invoke-static {v2}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$1200(Lcom/sec/android/gallery3d/service/QuickViewService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/service/QuickViewService$1;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    invoke-static {v0}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$1300(Lcom/sec/android/gallery3d/service/QuickViewService;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "QuickViewService"

    const-string/jumbo v1, "already hide view with animation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/sec/android/gallery3d/service/QuickViewService$1;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    invoke-static {v0}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$700(Lcom/sec/android/gallery3d/service/QuickViewService;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string/jumbo v0, "QuickViewService"

    const-string/jumbo v1, "Don\'t need hide view. Because didn\'t show image view"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/sec/android/gallery3d/service/QuickViewService$1;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    invoke-static {v0}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$800(Lcom/sec/android/gallery3d/service/QuickViewService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/service/QuickViewService$1;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    invoke-static {v0}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$100(Lcom/sec/android/gallery3d/service/QuickViewService;)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/service/QuickViewService$1;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    invoke-static {v0}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$100(Lcom/sec/android/gallery3d/service/QuickViewService;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/service/QuickViewService$1;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    iget-object v1, p0, Lcom/sec/android/gallery3d/service/QuickViewService$1;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    invoke-static {v1}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$100(Lcom/sec/android/gallery3d/service/QuickViewService;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$1102(Lcom/sec/android/gallery3d/service/QuickViewService;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/sec/android/gallery3d/service/QuickViewService$1;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    invoke-static {v0}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$1100(Lcom/sec/android/gallery3d/service/QuickViewService;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/service/QuickViewService$1;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    invoke-static {v1}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$1200(Lcom/sec/android/gallery3d/service/QuickViewService;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/sec/android/gallery3d/service/QuickViewService$1$2;

    invoke-direct {v1, p0}, Lcom/sec/android/gallery3d/service/QuickViewService$1$2;-><init>(Lcom/sec/android/gallery3d/service/QuickViewService$1;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_0

    :pswitch_3
    const-string/jumbo v0, "QuickViewService"

    const-string/jumbo v1, "MSG_SET_IMAGE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/service/QuickViewService$1;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    invoke-static {v0}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$300(Lcom/sec/android/gallery3d/service/QuickViewService;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/gallery3d/service/QuickViewService$1;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    invoke-static {v0}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$400(Lcom/sec/android/gallery3d/service/QuickViewService;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/gallery3d/service/QuickViewService$1;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    invoke-static {v0}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$400(Lcom/sec/android/gallery3d/service/QuickViewService;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    const-string/jumbo v0, "QuickViewService"

    const-string/jumbo v1, "mImageView is null or mBlurBitmap is null -> return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/sec/android/gallery3d/service/QuickViewService$1;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    invoke-static {v0}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$700(Lcom/sec/android/gallery3d/service/QuickViewService;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string/jumbo v0, "QuickViewService"

    const-string/jumbo v1, "Blur Image is stiil showing -> Retry setImage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/service/QuickViewService$1;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    invoke-static {v0}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$800(Lcom/sec/android/gallery3d/service/QuickViewService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/sec/android/gallery3d/service/QuickViewService$1;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    invoke-static {v0}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$300(Lcom/sec/android/gallery3d/service/QuickViewService;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/service/QuickViewService$1;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    invoke-static {v1}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$400(Lcom/sec/android/gallery3d/service/QuickViewService;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/gallery3d/service/QuickViewService$1;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    invoke-static {v0}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$700(Lcom/sec/android/gallery3d/service/QuickViewService;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string/jumbo v0, "QuickViewService"

    const-string/jumbo v1, "MSG_TIME_OUT_FOR_HIDE_VIEW"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/service/QuickViewService$1;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    const/16 v1, 0xc8

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$902(Lcom/sec/android/gallery3d/service/QuickViewService;I)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/service/QuickViewService$1;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    invoke-static {v0}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$800(Lcom/sec/android/gallery3d/service/QuickViewService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v0, "QuickViewService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Skip timeout! mIsHideAnimationState :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/service/QuickViewService$1;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    invoke-static {v2}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$1300(Lcom/sec/android/gallery3d/service/QuickViewService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mIsShowAnimationState :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/service/QuickViewService$1;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    invoke-static {v2}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$1000(Lcom/sec/android/gallery3d/service/QuickViewService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",mQuickViewAttatched :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/service/QuickViewService$1;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    invoke-static {v2}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$000(Lcom/sec/android/gallery3d/service/QuickViewService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/sec/android/gallery3d/service/QuickViewService$1;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    invoke-static {v0}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$000(Lcom/sec/android/gallery3d/service/QuickViewService;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v7, p0, Lcom/sec/android/gallery3d/service/QuickViewService$1;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7d2

    invoke-static {}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$600()I

    move-result v4

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    invoke-static {v7, v0}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$502(Lcom/sec/android/gallery3d/service/QuickViewService;Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/sec/android/gallery3d/service/QuickViewService$1;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    invoke-static {v0}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$500(Lcom/sec/android/gallery3d/service/QuickViewService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/sec/android/gallery3d/service/QuickViewService$1;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    invoke-static {v0}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$500(Lcom/sec/android/gallery3d/service/QuickViewService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x100

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget-object v1, p0, Lcom/sec/android/gallery3d/service/QuickViewService$1;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    iget-object v0, p0, Lcom/sec/android/gallery3d/service/QuickViewService$1;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    const-string/jumbo v2, "window"

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/service/QuickViewService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-static {v1, v0}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$202(Lcom/sec/android/gallery3d/service/QuickViewService;Landroid/view/WindowManager;)Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/sec/android/gallery3d/service/QuickViewService$1;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    invoke-static {v0}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$200(Lcom/sec/android/gallery3d/service/QuickViewService;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/service/QuickViewService$1;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    invoke-static {v1}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$100(Lcom/sec/android/gallery3d/service/QuickViewService;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/service/QuickViewService$1;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    invoke-static {v2}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$500(Lcom/sec/android/gallery3d/service/QuickViewService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/service/QuickViewService$1;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    invoke-static {v0, v8}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$002(Lcom/sec/android/gallery3d/service/QuickViewService;Z)Z

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
