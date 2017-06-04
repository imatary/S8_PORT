.class Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$DynamicScaleAnimConfig;
.super Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ScaleAniConfig;
.source "ChannelPhotoViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DynamicScaleAnimConfig"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$DynamicScaleAnimConfig;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ScaleAniConfig;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$DynamicScaleAnimConfig;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V

    return-void
.end method

.method private isDynamicLayoutScale()Z
    .locals 5

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$DynamicScaleAnimConfig;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    iget-object v4, v4, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->getPosCtrlCom()Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->getPosCtrl1()Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    move-result-object v0

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->getPosCtrl2()Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->isDynamicLayout()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->isDynamicLayout()Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public checkUseTextureCoordinationOnScale()Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$DynamicScaleAnimConfig;->isDynamicLayoutScale()Z

    move-result v0

    return v0
.end method
