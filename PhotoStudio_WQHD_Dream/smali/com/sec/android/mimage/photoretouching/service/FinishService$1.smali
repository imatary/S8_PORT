.class Lcom/sec/android/mimage/photoretouching/service/FinishService$1;
.super Landroid/os/Handler;
.source "FinishService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/service/FinishService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/service/FinishService;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v13, 0x1

    const/4 v1, -0x1

    const/4 v11, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v0, "PEDIT_FinishService"

    const-string v2, "MSG_SHOW_VIEW"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mQuickViewAttatched:Z
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$000(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$200(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mQuickView:Landroid/view/View;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$100(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Landroid/view/View;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # setter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mImageView:Landroid/widget/ImageView;
    invoke-static {v0, v3}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$302(Lcom/sec/android/mimage/photoretouching/service/FinishService;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # setter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mQuickView:Landroid/view/View;
    invoke-static {v0, v3}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$102(Lcom/sec/android/mimage/photoretouching/service/FinishService;Landroid/view/View;)Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # setter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mQuickViewAttatched:Z
    invoke-static {v0, v11}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$002(Lcom/sec/android/mimage/photoretouching/service/FinishService;Z)Z

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mQuickView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$100(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    const v2, 0x7f03003d

    invoke-virtual {v6, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    # setter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mQuickView:Landroid/view/View;
    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$102(Lcom/sec/android/mimage/photoretouching/service/FinishService;Landroid/view/View;)Landroid/view/View;

    :cond_2
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$300(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mQuickView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$100(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0e0061

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    # setter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mImageView:Landroid/widget/ImageView;
    invoke-static {v2, v0}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$302(Lcom/sec/android/mimage/photoretouching/service/FinishService;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    :cond_3
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mBlurBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$400(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$300(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mBlurBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$400(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_4
    iget-object v12, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7d2

    const v4, 0x80508

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    # setter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v12, v0}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$502(Lcom/sec/android/mimage/photoretouching/service/FinishService;Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$500(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$500(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x100

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$200(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mQuickView:Landroid/view/View;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$100(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$500(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$200(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$300(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mBoundary:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$600(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mBoundary:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$600(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mBoundary:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$600(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    :goto_1
    iput v0, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mBoundary:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$600(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mBoundary:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$600(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mBoundary:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$600(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    :goto_2
    iput v0, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mBoundary:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$600(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mBoundary:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$600(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v9, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mBoundary:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$600(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int v0, v9, v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mBoundary:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$600(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int v8, v0, v1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mBoundary:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$600(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_9

    :goto_3
    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    :goto_4
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mBoundary:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$600(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mBoundary:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$600(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Landroid/graphics/Rect;

    move-result-object v0

    iget v11, v0, Landroid/graphics/Rect;->top:I

    :cond_5
    iput v11, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    :cond_6
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$300(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # setter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mQuickViewAttatched:Z
    invoke-static {v0, v13}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$002(Lcom/sec/android/mimage/photoretouching/service/FinishService;Z)Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # setter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mNeedHideView:Z
    invoke-static {v0, v13}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$702(Lcom/sec/android/mimage/photoretouching/service/FinishService;Z)Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # invokes: Lcom/sec/android/mimage/photoretouching/service/FinishService;->requestFinishActivity()V
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$800(Lcom/sec/android/mimage/photoretouching/service/FinishService;)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v0

    goto/16 :goto_1

    :cond_8
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v0

    goto/16 :goto_2

    :cond_9
    move v8, v11

    goto :goto_3

    :cond_a
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mBoundary:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$600(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mBoundary:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$600(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    :goto_5
    iput v0, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_4

    :cond_b
    move v0, v11

    goto :goto_5

    :pswitch_1
    const-string v0, "PEDIT_FinishService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSG_SHOW_VIEW_WITH_ANIMATION, mAnimationDuration : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mAnimationDuration:I
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$900(Lcom/sec/android/mimage/photoretouching/service/FinishService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mIsShowAnimationState:Z
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$1000(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "PEDIT_FinishService"

    const-string v1, "already show view with animation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mQuickView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$100(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mQuickView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$100(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mQuickView:Landroid/view/View;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$100(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    # setter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mAnimator:Landroid/view/ViewPropertyAnimator;
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$1102(Lcom/sec/android/mimage/photoretouching/service/FinishService;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mAnimator:Landroid/view/ViewPropertyAnimator;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$1100(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mAnimationDuration:I
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$900(Lcom/sec/android/mimage/photoretouching/service/FinishService;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/sec/android/mimage/photoretouching/service/FinishService$1$1;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/service/FinishService$1$1;-><init>(Lcom/sec/android/mimage/photoretouching/service/FinishService$1;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # setter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mNeedHideView:Z
    invoke-static {v0, v13}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$702(Lcom/sec/android/mimage/photoretouching/service/FinishService;Z)Z

    goto/16 :goto_0

    :pswitch_2
    const-string v0, "PEDIT_FinishService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSG_HIDE_VIEW, mAnimationDuration : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mHideAnimationDuration:I
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$1200(Lcom/sec/android/mimage/photoretouching/service/FinishService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mIsHideAnimationState:Z
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$1300(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "PEDIT_FinishService"

    const-string v1, "already hide view with animation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_d
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mNeedHideView:Z
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$700(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "PEDIT_FinishService"

    const-string v1, "Don\'t need hide view. Because didn\'t show image view"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_e
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$1400(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mQuickView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$100(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mQuickView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$100(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mQuickView:Landroid/view/View;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$100(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    # setter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mAnimator:Landroid/view/ViewPropertyAnimator;
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$1102(Lcom/sec/android/mimage/photoretouching/service/FinishService;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mAnimator:Landroid/view/ViewPropertyAnimator;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$1100(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mHideAnimationDuration:I
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$1200(Lcom/sec/android/mimage/photoretouching/service/FinishService;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/sec/android/mimage/photoretouching/service/FinishService$1$2;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/service/FinishService$1$2;-><init>(Lcom/sec/android/mimage/photoretouching/service/FinishService$1;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_0

    :pswitch_3
    const-string v0, "PEDIT_FinishService"

    const-string v1, "MSG_SET_IMAGE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$300(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mBlurBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$400(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mBlurBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$400(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_f
    const-string v0, "PEDIT_FinishService"

    const-string v1, "mImageView is null or mBlurBitmap is null -> return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_10
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mNeedHideView:Z
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$700(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "PEDIT_FinishService"

    const-string v1, "Blur Image is stiil showing -> Retry setImage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$1400(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_11
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$300(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mBlurBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$400(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mNeedHideView:Z
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$700(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "PEDIT_FinishService"

    const-string v1, "MSG_TIME_OUT_FOR_HIDE_VIEW"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # setter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mAnimationDuration:I
    invoke-static {v0, v11}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$902(Lcom/sec/android/mimage/photoretouching/service/FinishService;I)I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$1400(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_12
    const-string v0, "PEDIT_FinishService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skip timeout! mIsHideAnimationState :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mIsHideAnimationState:Z
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$1300(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsShowAnimationState :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mIsShowAnimationState:Z
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$1000(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mQuickViewAttatched :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mQuickViewAttatched:Z
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$000(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mQuickViewAttatched:Z
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$000(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7d2

    const v4, 0x80508

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    # setter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v11, v0}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$502(Lcom/sec/android/mimage/photoretouching/service/FinishService;Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$500(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$500(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x100

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    # setter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v1, v0}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$202(Lcom/sec/android/mimage/photoretouching/service/FinishService;Landroid/view/WindowManager;)Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$200(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mQuickView:Landroid/view/View;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$100(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$500(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # setter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mQuickViewAttatched:Z
    invoke-static {v0, v13}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$002(Lcom/sec/android/mimage/photoretouching/service/FinishService;Z)Z

    goto/16 :goto_0

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
