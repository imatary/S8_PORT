.class Lcom/sec/samsung/gallery/glview/composeView/TitleDecorator;
.super Ljava/lang/Object;
.source "TitleDecorator.java"

# interfaces
.implements Lcom/sec/samsung/gallery/glview/composeView/PositionControllerTitleDecorator;


# instance fields
.field final mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/TitleDecorator;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    return-void
.end method


# virtual methods
.method public updateTitle(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)V
    .locals 7

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/TitleDecorator;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget v0, p1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mIndex:I

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/TitleDecorator;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleCanvsW:I

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/TitleDecorator;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleCanvsH:I

    invoke-virtual {p1, v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->updateCanvas(II)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/TitleDecorator;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    const/4 v2, -0x1

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getView()Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/TitleDecorator;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getView(IILcom/sec/android/gallery3d/glcore/GlView;Lcom/sec/android/gallery3d/glcore/GlLayer;Ljava/lang/Object;)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    :cond_0
    return-void
.end method
