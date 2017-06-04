.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard$4;
.super Ljava/lang/Object;
.source "GlComposeTipCard.java"

# interfaces
.implements Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->resetLaterButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard$4;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGenericMotionCancel(Lcom/sec/android/gallery3d/glcore/GlObject;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard$4;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->drawLaterBtnFocusBorder(Z)V

    const/4 v0, 0x1

    return v0
.end method

.method public onGenericMotionEnter(Lcom/sec/android/gallery3d/glcore/GlObject;II)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard$4;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->drawTotalFocusBorder(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard$4;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->drawCancelFocusBorder(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard$4;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->drawDoneFocusBorder(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard$4;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->drawLaterBtnFocusBorder(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard$4;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->clearFocusFromTimeView()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard$4;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->clearTimeLineFocus()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard$4;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->clearExpandObjFocus()V

    return v2
.end method
