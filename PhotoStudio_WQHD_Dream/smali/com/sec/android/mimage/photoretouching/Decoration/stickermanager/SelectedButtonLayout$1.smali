.class Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout$1;
.super Ljava/lang/Object;
.source "SelectedButtonLayout.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;->initLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;->mIsIntercept:Z
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;->access$000(Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    # setter for: Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;->mPosX:F
    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;->access$102(Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;F)F

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    # setter for: Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;->mPosY:F
    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;->access$202(Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;F)F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;->mTempButton:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;->access$300(Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;)Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;->mPosX:F
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;->access$100(Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;)F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;->mTempButton:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;->access$300(Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;)Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v8

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;->setTranslationX(F)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;->mTempButton:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;->access$300(Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;)Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;->mPosY:F
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;->access$200(Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;)F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;->mTempButton:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;->access$300(Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;)Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v8

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;->setTranslationY(F)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;->mActivityLayoutTouchUpCallback:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout$ActivityLayoutTouchUpCallback;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;->access$400(Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;)Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout$ActivityLayoutTouchUpCallback;

    move-result-object v1

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;->mTempButton:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;->access$300(Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;)Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;->getLeft()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;->mPosX:F
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;->access$100(Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;)F

    move-result v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;->mTempButton:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;->access$300(Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;)Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v8

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;->mTempButton:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;->access$300(Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;)Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;->getTop()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;->mPosY:F
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;->access$200(Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;)F

    move-result v5

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;->mTempButton:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;->access$300(Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;)Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v8

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;->mTempButton:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;->access$300(Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;)Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;->getRight()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;->mPosX:F
    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;->access$100(Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;)F

    move-result v6

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;->mTempButton:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;
    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;->access$300(Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;)Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v8

    sub-float/2addr v5, v6

    float-to-int v5, v5

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;->mTempButton:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;
    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;->access$300(Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;)Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;->getBottom()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;->mPosY:F
    invoke-static {v7}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;->access$200(Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;)F

    move-result v7

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;->mTempButton:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;
    invoke-static {v7}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;->access$300(Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;)Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    float-to-int v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {v1, v2}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout$ActivityLayoutTouchUpCallback;->touchMove(Landroid/graphics/Rect;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;->mPosX:F
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;->access$100(Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;)F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;->mPosY:F
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;->access$200(Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;)F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/SelectedButtonLayout;->setDisableIntercept(FF)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
