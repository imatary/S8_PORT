.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView$1;
.super Lcom/sec/android/gallery3d/glcore/GlHandler;
.source "GlComposeChannelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;-><init>(Landroid/content/Context;ILcom/sec/android/gallery3d/data/MediaItem;ILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;Lcom/sec/android/gallery3d/glcore/GlRootView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;

    invoke-direct {p0, p2}, Lcom/sec/android/gallery3d/glcore/GlHandler;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;)V

    return-void
.end method


# virtual methods
.method public onMessage(ILjava/lang/Object;III)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;

    invoke-static {v0, p3, p5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->access$000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x25

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->access$100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;)V

    goto :goto_0
.end method
