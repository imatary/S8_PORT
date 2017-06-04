.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView$8;
.super Ljava/lang/Object;
.source "GlComposeChannelView.java"

# interfaces
.implements Lcom/sec/android/gallery3d/glcore/GlObject$GlSecondaryClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->registerObjectSecondaryClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView$8;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/sec/android/gallery3d/glcore/GlObject;II)Z
    .locals 6

    const/4 v5, 0x1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView$8;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->checkValidityForSecondaryClick()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v5

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView$8;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;

    invoke-virtual {v2, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->getIndexFromThumbObject(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView$8;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mDesktopModeStoryAlbumClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView$DesktopModeStoryAlbumClickListener;
    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->access$600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView$DesktopModeStoryAlbumClickListener;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView$8;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mDesktopModeStoryAlbumClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView$DesktopModeStoryAlbumClickListener;
    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->access$600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView$DesktopModeStoryAlbumClickListener;

    move-result-object v2

    invoke-interface {v2, v0, p2, p3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView$DesktopModeStoryAlbumClickListener;->onSecondaryClick(III)V

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView$8;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;

    int-to-float v3, p2

    int-to-float v4, p3

    invoke-virtual {v2, v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->showContextMenu(FF)V

    goto :goto_0
.end method
