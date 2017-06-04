.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar$2;
.super Ljava/lang/Object;
.source "GlComposeQuickScrollBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->handleMessageOnUiThread(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;

.field final synthetic val$msg:I


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;

    iput p2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar$2;->val$msg:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget-object v0, v0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar$2;->val$msg:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->fadeOut()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
