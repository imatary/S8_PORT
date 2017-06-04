.class Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$2;
.super Ljava/lang/Object;
.source "ChannelCommentsActivity.java"

# interfaces
.implements Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentModelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->createCommentView(Landroid/content/Intent;Landroid/support/v7/widget/RecyclerView$LayoutManager;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$2;->this$0:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditItemStart(Lcom/sec/samsung/gallery/view/channelcomments/Comment;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$2;->this$0:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;

    # getter for: Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->mHelper:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->access$000(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;)Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;->editComment(Lcom/sec/samsung/gallery/view/channelcomments/Comment;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$2;->this$0:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;

    const/4 v1, 0x1

    # setter for: Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->mIsCommentEditView:Z
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->access$102(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;Z)Z

    return-void
.end method
