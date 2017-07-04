.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject$UploadCancelObject;
.super Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
.source "GlComposeChannelShareProgressObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UploadCancelObject"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;Lcom/sec/android/gallery3d/glcore/GlLayer;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject$UploadCancelObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;

    invoke-direct {p0, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;)V

    return-void
.end method


# virtual methods
.method protected drawBorder(Z)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject$UploadCancelObject;->setBorderVisible(Z)V

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject$UploadCancelObject;->setFocusBorderVisible(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject$UploadCancelObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->access$500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f100111

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject$UploadCancelObject;->setBorderColor(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject$UploadCancelObject;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;->access$500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressObject$UploadCancelObject;->setBorderWidth(F)V

    return-void
.end method
