.class Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$1;
.super Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior$BottomSheetCallback;
.source "ChannelCommentsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;
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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$1;->this$0:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior$BottomSheetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(I)V
    .locals 3
    .param p1    # I
        .annotation build Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior$State;
        .end annotation
    .end param

    const-string/jumbo v0, "CommentsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStateChanged, newState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity$1;->this$0:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsActivity;->finish()V

    :cond_0
    return-void
.end method
