.class Lcom/samsung/android/sdk/rcl/RclExpansionHelper$CustomGlobalLayoutListener;
.super Ljava/lang/Object;
.source "RclExpansionHelper.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/rcl/RclExpansionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CustomGlobalLayoutListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$CustomGlobalLayoutListener;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 8

    const/4 v4, 0x0

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    iget-object v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$CustomGlobalLayoutListener;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    # getter for: Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mRootViewTreeObserver:Landroid/view/ViewTreeObserver;
    invoke-static {v2}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->access$000(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)Landroid/view/ViewTreeObserver;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$CustomGlobalLayoutListener;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    # getter for: Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mContainer:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->access$100(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$CustomGlobalLayoutListener;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    iget-object v3, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$CustomGlobalLayoutListener;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    # getter for: Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mContainer:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->access$100(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    # setter for: Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mRootViewTreeObserver:Landroid/view/ViewTreeObserver;
    invoke-static {v2, v3}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->access$002(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;Landroid/view/ViewTreeObserver;)Landroid/view/ViewTreeObserver;

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$CustomGlobalLayoutListener;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    # getter for: Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mInitialized:Z
    invoke-static {v2}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->access$200(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$CustomGlobalLayoutListener;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    # getter for: Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mContainer:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->access$100(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$CustomGlobalLayoutListener;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    # getter for: Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mRootViewTreeObserver:Landroid/view/ViewTreeObserver;
    invoke-static {v2}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->access$000(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$CustomGlobalLayoutListener;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    # setter for: Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mOnGlobalLayoutListener:Lcom/samsung/android/sdk/rcl/RclExpansionHelper$CustomGlobalLayoutListener;
    invoke-static {v2, v4}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->access$302(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;Lcom/samsung/android/sdk/rcl/RclExpansionHelper$CustomGlobalLayoutListener;)Lcom/samsung/android/sdk/rcl/RclExpansionHelper$CustomGlobalLayoutListener;

    iget-object v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$CustomGlobalLayoutListener;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    # setter for: Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mRootViewTreeObserver:Landroid/view/ViewTreeObserver;
    invoke-static {v2, v4}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->access$002(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;Landroid/view/ViewTreeObserver;)Landroid/view/ViewTreeObserver;

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$CustomGlobalLayoutListener;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    # getter for: Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mState:I
    invoke-static {v2}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->access$400(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)I

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$CustomGlobalLayoutListener;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    # getter for: Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mContainer:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->access$100(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    iget-object v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$CustomGlobalLayoutListener;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    # getter for: Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mContainer:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->access$100(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    sub-int/2addr v3, v2

    iget-object v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$CustomGlobalLayoutListener;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    # getter for: Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mContainer:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->access$100(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    sub-int v0, v3, v2

    iget-object v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$CustomGlobalLayoutListener;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    # getter for: Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mRequestedMaxHeight:I
    invoke-static {v2}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->access$500(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$CustomGlobalLayoutListener;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    iget-object v3, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$CustomGlobalLayoutListener;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    # getter for: Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mRequestedMaxHeight:I
    invoke-static {v3}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->access$500(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)I

    move-result v3

    sub-int v3, v0, v3

    # setter for: Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mPaddingTop:I
    invoke-static {v2, v3}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->access$602(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;I)I

    iget-object v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$CustomGlobalLayoutListener;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    # getter for: Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mPaddingTop:I
    invoke-static {v2}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->access$600(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)I

    move-result v2

    if-gez v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$CustomGlobalLayoutListener;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    const/4 v3, 0x0

    # setter for: Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mPaddingTop:I
    invoke-static {v2, v3}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->access$602(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;I)I

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$CustomGlobalLayoutListener;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    # getter for: Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mRequestedMaxHeight:I
    invoke-static {v2}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->access$500(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$CustomGlobalLayoutListener;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    # getter for: Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mMinHeight:I
    invoke-static {v2}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->access$700(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    iget-object v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$CustomGlobalLayoutListener;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    # getter for: Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mRequestedMinHeight:I
    invoke-static {v2}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->access$800(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)I

    move-result v2

    if-ltz v2, :cond_e

    iget-object v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$CustomGlobalLayoutListener;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    # getter for: Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mRequestedMinHeight:I
    invoke-static {v2}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->access$800(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)I

    move-result v1

    :goto_1
    if-le v1, v0, :cond_6

    move v1, v0

    :cond_6
    iget-object v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$CustomGlobalLayoutListener;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    # getter for: Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mMinHeight:I
    invoke-static {v2}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->access$700(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)I

    move-result v2

    if-ne v1, v2, :cond_7

    iget-object v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$CustomGlobalLayoutListener;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    # getter for: Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mMaxHeight:I
    invoke-static {v2}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->access$900(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)I

    move-result v2

    if-eq v0, v2, :cond_d

    :cond_7
    iget-object v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$CustomGlobalLayoutListener;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    # invokes: Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->onConfigurationChanged()V
    invoke-static {v2}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->access$1000(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$CustomGlobalLayoutListener;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    # getter for: Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mOnExpansionStatusListener:Lcom/samsung/android/sdk/rcl/RclExpansionHelper$OnExpansionStatusListener;
    invoke-static {v2}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->access$1100(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)Lcom/samsung/android/sdk/rcl/RclExpansionHelper$OnExpansionStatusListener;

    move-result-object v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$CustomGlobalLayoutListener;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    # getter for: Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mState:I
    invoke-static {v2}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->access$400(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)I

    move-result v2

    if-ne v2, v6, :cond_10

    iget-object v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$CustomGlobalLayoutListener;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    # getter for: Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mMinHeight:I
    invoke-static {v2}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->access$700(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)I

    move-result v2

    if-ne v2, v1, :cond_8

    if-nez v1, :cond_10

    :cond_8
    if-nez v1, :cond_f

    iget-object v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$CustomGlobalLayoutListener;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    # getter for: Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mOnExpansionStatusListener:Lcom/samsung/android/sdk/rcl/RclExpansionHelper$OnExpansionStatusListener;
    invoke-static {v2}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->access$1100(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)Lcom/samsung/android/sdk/rcl/RclExpansionHelper$OnExpansionStatusListener;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$CustomGlobalLayoutListener;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    # getter for: Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mFixedHeight:I
    invoke-static {v3}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->access$1200(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)I

    move-result v3

    sub-int v3, v0, v3

    invoke-interface {v2, v3}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$OnExpansionStatusListener;->onMaxHeightChanged(I)V

    :cond_9
    :goto_2
    iget-object v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$CustomGlobalLayoutListener;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    # setter for: Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mMinHeight:I
    invoke-static {v2, v1}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->access$702(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;I)I

    iget-object v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$CustomGlobalLayoutListener;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    # setter for: Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mMaxHeight:I
    invoke-static {v2, v0}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->access$902(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;I)I

    iget-object v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$CustomGlobalLayoutListener;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    # getter for: Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mExpansionMode:I
    invoke-static {v2}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->access$1600(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)I

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$CustomGlobalLayoutListener;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    # getter for: Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mMinHeight:I
    invoke-static {v2}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->access$700(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)I

    move-result v2

    if-nez v2, :cond_12

    iget-object v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$CustomGlobalLayoutListener;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    # setter for: Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mExpansionMode:I
    invoke-static {v2, v5}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->access$1602(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;I)I

    :cond_a
    :goto_3
    iget-object v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$CustomGlobalLayoutListener;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    # getter for: Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mExpansionMode:I
    invoke-static {v2}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->access$1600(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)I

    move-result v2

    if-ne v2, v5, :cond_b

    iget-object v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$CustomGlobalLayoutListener;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    # getter for: Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mRootView:Landroid/view/View;
    invoke-static {v2}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->access$1700(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v3, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$CustomGlobalLayoutListener;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    # getter for: Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mMaxHeight:I
    invoke-static {v3}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->access$900(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)I

    move-result v3

    if-eq v2, v3, :cond_b

    iget-object v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$CustomGlobalLayoutListener;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    # getter for: Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mRootView:Landroid/view/View;
    invoke-static {v2}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->access$1700(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$CustomGlobalLayoutListener;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    # getter for: Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mMaxHeight:I
    invoke-static {v3}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->access$900(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$CustomGlobalLayoutListener;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    # getter for: Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mRootView:Landroid/view/View;
    invoke-static {v2}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->access$1700(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    :cond_b
    iget-object v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$CustomGlobalLayoutListener;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    # getter for: Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mState:I
    invoke-static {v2}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->access$400(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)I

    move-result v2

    if-ne v2, v7, :cond_13

    iget-object v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$CustomGlobalLayoutListener;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    # getter for: Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mContainer:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->access$100(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v3, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$CustomGlobalLayoutListener;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    # getter for: Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mMaxHeight:I
    invoke-static {v3}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->access$900(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)I

    move-result v3

    if-eq v2, v3, :cond_13

    iget-object v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$CustomGlobalLayoutListener;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    # getter for: Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mContainer:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->access$100(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$CustomGlobalLayoutListener;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    # getter for: Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mMaxHeight:I
    invoke-static {v3}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->access$900(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$CustomGlobalLayoutListener;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    # getter for: Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mContainer:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->access$100(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_c
    :goto_4
    iget-object v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$CustomGlobalLayoutListener;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    # invokes: Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->consumePendingExpansion()V
    invoke-static {v2}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->access$1800(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)V

    :cond_d
    iget-object v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$CustomGlobalLayoutListener;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    # invokes: Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->notifyExpansionState()V
    invoke-static {v2}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->access$1900(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)V

    goto/16 :goto_0

    :pswitch_0
    iget-object v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$CustomGlobalLayoutListener;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    # getter for: Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mContainer:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->access$100(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    goto/16 :goto_1

    :pswitch_1
    move v1, v0

    goto/16 :goto_1

    :cond_e
    iget-object v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$CustomGlobalLayoutListener;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    # getter for: Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mMinHeight:I
    invoke-static {v2}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->access$700(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)I

    move-result v1

    goto/16 :goto_1

    :cond_f
    iget-object v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$CustomGlobalLayoutListener;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    # getter for: Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mOnExpansionStatusListener:Lcom/samsung/android/sdk/rcl/RclExpansionHelper$OnExpansionStatusListener;
    invoke-static {v2}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->access$1100(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)Lcom/samsung/android/sdk/rcl/RclExpansionHelper$OnExpansionStatusListener;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$CustomGlobalLayoutListener;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    # getter for: Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mFixedHeight:I
    invoke-static {v3}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->access$1200(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)I

    move-result v3

    sub-int v3, v1, v3

    invoke-interface {v2, v3}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$OnExpansionStatusListener;->onMaxHeightChanged(I)V

    goto/16 :goto_2

    :cond_10
    iget-object v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$CustomGlobalLayoutListener;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    # getter for: Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mState:I
    invoke-static {v2}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->access$400(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)I

    move-result v2

    if-ne v2, v7, :cond_11

    iget-object v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$CustomGlobalLayoutListener;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    # getter for: Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mMaxHeight:I
    invoke-static {v2}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->access$900(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)I

    move-result v2

    if-eq v2, v0, :cond_11

    iget-object v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$CustomGlobalLayoutListener;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    # getter for: Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mOnExpansionStatusListener:Lcom/samsung/android/sdk/rcl/RclExpansionHelper$OnExpansionStatusListener;
    invoke-static {v2}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->access$1100(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)Lcom/samsung/android/sdk/rcl/RclExpansionHelper$OnExpansionStatusListener;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$CustomGlobalLayoutListener;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    # getter for: Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mFixedHeight:I
    invoke-static {v3}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->access$1200(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)I

    move-result v3

    sub-int v3, v0, v3

    invoke-interface {v2, v3}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$OnExpansionStatusListener;->onMaxHeightChanged(I)V

    goto/16 :goto_2

    :cond_11
    iget-object v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$CustomGlobalLayoutListener;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    # getter for: Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mIntercept:Z
    invoke-static {v2}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->access$1300(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$CustomGlobalLayoutListener;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    # getter for: Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mMaxHeight:I
    invoke-static {v2}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->access$900(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)I

    move-result v2

    if-eq v2, v0, :cond_9

    iget-object v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$CustomGlobalLayoutListener;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    iget-object v3, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$CustomGlobalLayoutListener;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    # getter for: Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mInitialValue:I
    invoke-static {v3}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->access$1400(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$CustomGlobalLayoutListener;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    # getter for: Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mMaxHeight:I
    invoke-static {v4}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->access$900(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)I

    move-result v4

    sub-int v4, v0, v4

    add-int/2addr v3, v4

    # setter for: Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mInitialValue:I
    invoke-static {v2, v3}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->access$1402(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;I)I

    iget-object v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$CustomGlobalLayoutListener;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    iget-object v3, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$CustomGlobalLayoutListener;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    # getter for: Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mInitialValue:I
    invoke-static {v3}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->access$1400(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)I

    move-result v3

    # setter for: Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mLatestNotifyHeight:I
    invoke-static {v2, v3}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->access$1502(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;I)I

    iget-object v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$CustomGlobalLayoutListener;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    # getter for: Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mOnExpansionStatusListener:Lcom/samsung/android/sdk/rcl/RclExpansionHelper$OnExpansionStatusListener;
    invoke-static {v2}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->access$1100(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)Lcom/samsung/android/sdk/rcl/RclExpansionHelper$OnExpansionStatusListener;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$CustomGlobalLayoutListener;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    # getter for: Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mFixedHeight:I
    invoke-static {v3}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->access$1200(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)I

    move-result v3

    sub-int v3, v0, v3

    invoke-interface {v2, v3}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$OnExpansionStatusListener;->onMaxHeightChanged(I)V

    goto/16 :goto_2

    :cond_12
    iget-object v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$CustomGlobalLayoutListener;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    const/4 v3, 0x1

    # setter for: Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mExpansionMode:I
    invoke-static {v2, v3}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->access$1602(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;I)I

    goto/16 :goto_3

    :cond_13
    iget-object v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$CustomGlobalLayoutListener;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    # getter for: Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mState:I
    invoke-static {v2}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->access$400(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)I

    move-result v2

    if-ne v2, v6, :cond_c

    iget-object v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$CustomGlobalLayoutListener;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    # getter for: Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mContainer:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->access$100(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v3, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$CustomGlobalLayoutListener;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    # getter for: Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mMinHeight:I
    invoke-static {v3}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->access$700(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)I

    move-result v3

    if-eq v2, v3, :cond_c

    iget-object v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$CustomGlobalLayoutListener;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    # getter for: Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mContainer:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->access$100(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$CustomGlobalLayoutListener;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    # getter for: Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mMinHeight:I
    invoke-static {v3}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->access$700(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$CustomGlobalLayoutListener;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    # getter for: Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mContainer:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->access$100(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->requestLayout()V

    goto/16 :goto_4

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
