.class Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior$SettleRunnable;
.super Ljava/lang/Object;
.source "ChannelCommentsBottomSheetBehavior.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettleRunnable"
.end annotation


# instance fields
.field private final mTargetState:I
    .annotation build Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior$State;
    .end annotation
.end field

.field private final mView:Landroid/view/View;

.field final synthetic this$0:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;Landroid/view/View;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior$SettleRunnable;->this$0:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior$SettleRunnable;->mView:Landroid/view/View;

    iput p3, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior$SettleRunnable;->mTargetState:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior$SettleRunnable;->this$0:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;

    # getter for: Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;->access$300(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior$SettleRunnable;->this$0:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;

    # getter for: Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;->access$300(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior$SettleRunnable;->mView:Landroid/view/View;

    invoke-static {v0, p0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior$SettleRunnable;->this$0:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;

    iget v1, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior$SettleRunnable;->mTargetState:I

    # invokes: Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;->setStateInternal(I)V
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;->access$400(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;I)V

    goto :goto_0
.end method
