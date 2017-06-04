.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton$4;
.super Ljava/lang/Object;
.source "GlComposeGoToTopButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->handleMessageOnUiThread(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;

.field final synthetic val$msg:I


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton$4;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;

    iput p2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton$4;->val$msg:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton$4;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget-object v0, v0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton$4;->val$msg:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton$4;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->fadeOut()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->access$300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
