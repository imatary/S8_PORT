.class Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$20;
.super Ljava/lang/Object;
.source "ChannelPhotoViewState.java"

# interfaces
.implements Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnEnlargeAnimListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->onViewInitialize()V
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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$20;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V
    .locals 0

    return-void
.end method

.method public onStart(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V
    .locals 2

    move-object v0, p1

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mAnimForward:Z

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;

    iget-boolean v0, p1, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mRotationOnly:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$20;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$12600(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->hide()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$20;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$20;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mFlags:I
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$12900(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)I

    move-result v1

    or-int/lit8 v1, v1, 0x40

    # setter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mFlags:I
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$12802(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;I)I

    :cond_0
    return-void
.end method
