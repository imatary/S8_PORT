.class Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentViewHolder$1;
.super Ljava/lang/Object;
.source "ChannelCommentsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentViewHolder;->bindViewFail(Lcom/sec/samsung/gallery/view/channelcomments/Comment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentViewHolder;

.field final synthetic val$comment:Lcom/sec/samsung/gallery/view/channelcomments/Comment;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentViewHolder;Lcom/sec/samsung/gallery/view/channelcomments/Comment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentViewHolder$1;->this$1:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentViewHolder;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentViewHolder$1;->val$comment:Lcom/sec/samsung/gallery/view/channelcomments/Comment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentViewHolder$1;->this$1:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentViewHolder;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentViewHolder;->this$0:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;->mDataLoader:Lcom/sec/samsung/gallery/view/channelcomments/ChannelDataLoaderInterface;

    check-cast v0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentViewHolder$1;->val$comment:Lcom/sec/samsung/gallery/view/channelcomments/Comment;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/channelcomments/Comment;->getCommentText()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentViewHolder$1;->val$comment:Lcom/sec/samsung/gallery/view/channelcomments/Comment;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/channelcomments/Comment;->getTimeStamp()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsDataLoader;->retryUploading(Ljava/lang/String;J)V

    return-void
.end method
