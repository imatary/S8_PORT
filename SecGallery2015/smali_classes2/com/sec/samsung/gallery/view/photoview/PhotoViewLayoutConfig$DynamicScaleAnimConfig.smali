.class Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$DynamicScaleAnimConfig;
.super Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ScaleAniConfig;
.source "PhotoViewLayoutConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DynamicScaleAnimConfig"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$DynamicScaleAnimConfig;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ScaleAniConfig;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$DynamicScaleAnimConfig;-><init>(Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;)V

    return-void
.end method

.method private isDynamicLayoutScale()Z
    .locals 6

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$DynamicScaleAnimConfig;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;

    iget-object v4, v4, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v4, v4, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$DynamicScaleAnimConfig;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;

    iget-object v4, v4, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v4, v4, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->getPosCtrlCom()Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

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

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->isDynamicLayout()Z

    move-result v5

    if-eq v4, v5, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public checkUseTextureCoordinationOnScale()Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$DynamicScaleAnimConfig;->isDynamicLayoutScale()Z

    move-result v0

    return v0
.end method
