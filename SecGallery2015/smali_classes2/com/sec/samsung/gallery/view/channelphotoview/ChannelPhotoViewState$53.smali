.class Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$53;
.super Ljava/lang/Object;
.source "ChannelPhotoViewState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->initNoItemActionBarTheme()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$53;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$53;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->getActionBarStyle()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$53;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setActionbarStyle(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$53;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # invokes: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setOverFlowColor(F)V
    invoke-static {v1, v0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$200(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;F)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$53;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # invokes: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setUpBtnColor(F)V
    invoke-static {v1, v0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$14100(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;F)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$53;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # invokes: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setAddContactColor(F)V
    invoke-static {v1, v0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$22400(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;F)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$53;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    const v2, 0x7f12007c

    # invokes: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setTextMenuColor(FI)V
    invoke-static {v1, v0, v2}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$22500(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;FI)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$53;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # invokes: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setActionBarTitleColor(F)V
    invoke-static {v1, v0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$22800(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;F)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$53;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # invokes: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setSelectionViewColor(F)V
    invoke-static {v1, v0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$22900(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;F)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$53;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # invokes: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setActionBarBGColor(F)V
    invoke-static {v1, v0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$23000(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;F)V

    return-void
.end method
