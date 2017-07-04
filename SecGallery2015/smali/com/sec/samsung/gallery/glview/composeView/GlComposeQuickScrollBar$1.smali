.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar$1;
.super Landroid/os/Handler;
.source "GlComposeQuickScrollBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->access$000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;I)V

    return-void
.end method
