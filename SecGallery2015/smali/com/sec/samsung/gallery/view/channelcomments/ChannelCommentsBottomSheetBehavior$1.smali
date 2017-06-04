.class Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior$1;
.super Landroid/support/v4/widget/ViewDragHelper$Callback;
.source "ChannelCommentsBottomSheetBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior$1;->this$0:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;

    invoke-direct {p0}, Landroid/support/v4/widget/ViewDragHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior$1;->this$0:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;

    # getter for: Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;->mBottomOffset:I
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;->access$000(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;)I

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior$1;->this$0:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;

    # getter for: Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;->mTopOffset:I
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;->access$100(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;)I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public getViewVerticalDragRange(Landroid/view/View;)I
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior$1;->this$0:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;

    # getter for: Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;->mBottomOffset:I
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;->access$000(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;)I

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior$1;->this$0:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;

    # getter for: Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;->mTopOffset:I
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;->access$100(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public onViewDragStateChanged(I)V
    .locals 4

    const/4 v3, 0x1

    const-string/jumbo v0, "CommentsBehavior"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "drag state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v3, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior$1;->this$0:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;

    # invokes: Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;->setStateInternal(I)V
    invoke-static {v0, v3}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;->access$400(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;I)V

    :cond_0
    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 4

    const/4 v2, 0x0

    cmpl-float v2, p3, v2

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior$1;->this$0:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;

    # invokes: Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;->shouldHide(Landroid/view/View;F)Z
    invoke-static {v2, p1, p3}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;->access$200(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;Landroid/view/View;F)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior$1;->this$0:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;

    # getter for: Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;->mBottomOffset:I
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;->access$000(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;)I

    move-result v1

    const/4 v0, 0x3

    :goto_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior$1;->this$0:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;

    # getter for: Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;->access$300(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/support/v4/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior$SettleRunnable;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior$1;->this$0:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;

    invoke-direct {v2, v3, p1, v0}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior$SettleRunnable;-><init>(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;Landroid/view/View;I)V

    invoke-static {p1, v2}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior$1;->this$0:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;

    const/4 v3, 0x4

    # invokes: Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;->setStateInternal(I)V
    invoke-static {v2, v3}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;->access$400(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;I)V

    :goto_1
    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior$1;->this$0:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;

    # getter for: Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;->mTopOffset:I
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;->access$100(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;)I

    move-result v1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior$1;->this$0:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;

    # invokes: Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;->setStateInternal(I)V
    invoke-static {v2, v0}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;->access$400(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;I)V

    goto :goto_1
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 3

    const-string/jumbo v0, "CommentsBehavior"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tryCaptureView, child="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method
