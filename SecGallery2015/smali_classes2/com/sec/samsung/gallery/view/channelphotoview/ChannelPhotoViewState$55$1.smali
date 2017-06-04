.class Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$55$1;
.super Ljava/lang/Object;
.source "ChannelPhotoViewState.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$55;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field noItemViewTop:I

.field final synthetic this$1:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$55;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$55;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$55$1;->this$1:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$55;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 6

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$55$1;->this$1:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$55;

    iget-object v4, v4, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$55;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    iget-object v4, v4, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->isNoItemView()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f1200c6

    if-ne v4, v5, :cond_0

    iput p3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$55$1;->noItemViewTop:I

    :cond_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$55$1;->this$1:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$55;

    iget-object v4, v4, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$55;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    iget-object v4, v4, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->getPhotoCoverHeight()I

    move-result v0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$55$1;->this$1:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$55;

    iget-object v4, v4, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$55;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # invokes: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->getTopMarginNoItem(I)I
    invoke-static {v4, v0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$23800(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;I)I

    move-result v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$55$1;->this$1:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$55;

    iget-object v4, v4, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$55;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    iget-object v4, v4, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->getNoItemVI()Lcom/sec/samsung/gallery/NoItemVI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/NoItemVI;->getNoItemView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$55$1;->noItemViewTop:I

    sub-int/2addr v4, v3

    if-gez v4, :cond_2

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/sec/samsung/gallery/NoItemVI;->setVisibilityIconAndDescription(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$55$1;->this$1:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$55;

    iget-object v4, v4, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$55;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mShowNoItemText:Z
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$23900(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/sec/samsung/gallery/NoItemVI;->setVisibilityIconAndDescription(Z)V

    :cond_3
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$55$1;->this$1:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$55;

    iget-object v4, v4, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$55;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    const/4 v5, 0x1

    # setter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mShowNoItemText:Z
    invoke-static {v4, v5}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$23902(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;Z)Z

    goto :goto_0
.end method
