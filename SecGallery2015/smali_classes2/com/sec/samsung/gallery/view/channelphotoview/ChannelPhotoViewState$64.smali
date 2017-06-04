.class Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$64;
.super Ljava/lang/Object;
.source "ChannelPhotoViewState.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->createFailDialog(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;ILandroid/content/Intent;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$64;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    iput p2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$64;->val$state:I

    iput-object p3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$64;->val$intent:Landroid/content/Intent;

    iput-object p4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$64;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$64;->val$state:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$64;->val$intent:Landroid/content/Intent;

    const-string/jumbo v3, "SHARE_EVENT_ID"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$64;->val$intent:Landroid/content/Intent;

    const-string/jumbo v3, "SHARE_EVENT_UGCI"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$64;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->eventShareRequestSender:Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$14900(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$64;->val$context:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;->hostDeleteGroup(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
