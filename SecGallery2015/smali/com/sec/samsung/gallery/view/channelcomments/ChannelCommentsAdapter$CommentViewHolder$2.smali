.class Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentViewHolder$2;
.super Ljava/lang/Object;
.source "ChannelCommentsAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentViewHolder;->setOnLongClickListener(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentViewHolder;

.field final synthetic val$_this:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentViewHolder;

.field final synthetic val$menuType:I


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentViewHolder;Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentViewHolder;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentViewHolder$2;->this$1:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentViewHolder;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentViewHolder$2;->val$_this:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentViewHolder;

    iput p3, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentViewHolder$2;->val$menuType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 6

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentViewHolder$2;->this$1:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentViewHolder;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentViewHolder;->mPopup:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentListPopupWindow;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentViewHolder$2;->this$1:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentViewHolder;

    new-instance v1, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentListPopupWindow;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentViewHolder$2;->this$1:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentViewHolder;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentViewHolder;->this$0:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentViewHolder$2;->this$1:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentViewHolder;

    iget-object v3, v3, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentViewHolder;->this$0:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;

    iget-object v3, v3, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;->mActivity:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentViewHolder$2;->val$_this:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentViewHolder;

    iget v5, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentViewHolder$2;->val$menuType:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentListPopupWindow;-><init>(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;Landroid/content/Context;Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentViewHolder;I)V

    iput-object v1, v0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentViewHolder;->mPopup:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentListPopupWindow;

    :goto_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentViewHolder$2;->this$1:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentViewHolder;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentViewHolder;->mPopup:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentListPopupWindow;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentViewHolder$2;->this$1:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentViewHolder;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentViewHolder;->mPopup:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentListPopupWindow;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentListPopupWindow;->dismiss()V

    :goto_1
    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentViewHolder$2;->this$1:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentViewHolder;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentViewHolder;->mPopup:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentListPopupWindow;

    iget v1, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentViewHolder$2;->val$menuType:I

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentListPopupWindow;->updateMenu(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentViewHolder$2;->this$1:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentViewHolder;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentViewHolder;->mPopup:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentListPopupWindow;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentListPopupWindow;->show()V

    goto :goto_1
.end method
