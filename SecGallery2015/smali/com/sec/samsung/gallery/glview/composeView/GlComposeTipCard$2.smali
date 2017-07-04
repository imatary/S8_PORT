.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard$2;
.super Ljava/lang/Object;
.source "GlComposeTipCard.java"

# interfaces
.implements Lcom/sec/android/gallery3d/glcore/GlObject$GlHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->resetCancelButton()V
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

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHoverEnter(Lcom/sec/android/gallery3d/glcore/GlObject;II)Z
    .locals 4

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0080

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->access$000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getObjectRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->access$000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getObjectRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->access$100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;Ljava/lang/String;II)V

    const/4 v0, 0x1

    return v0
.end method

.method public onHoverExit(Lcom/sec/android/gallery3d/glcore/GlObject;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->access$200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onHoverMove(Lcom/sec/android/gallery3d/glcore/GlObject;II)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
