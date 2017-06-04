.class Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentListPopupWindow$3;
.super Ljava/lang/Object;
.source "ChannelCommentsAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentListPopupWindow;->showDeleteDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentListPopupWindow;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentListPopupWindow;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentListPopupWindow$3;->this$1:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentListPopupWindow;

    iput p2, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentListPopupWindow$3;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentListPopupWindow$3;->this$1:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentListPopupWindow;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentListPopupWindow;->this$0:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;

    iget v1, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter$CommentListPopupWindow$3;->val$position:I

    # invokes: Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;->removeData(I)V
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;->access$200(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsAdapter;I)V

    return-void
.end method
