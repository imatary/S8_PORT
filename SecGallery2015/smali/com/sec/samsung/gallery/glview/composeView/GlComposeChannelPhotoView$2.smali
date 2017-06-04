.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$2;
.super Ljava/lang/Object;
.source "GlComposeChannelPhotoView.java"

# interfaces
.implements Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->initListenersForTimelineGridToggle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/sec/android/gallery3d/glcore/GlObject;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mOnGridToggleClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$OnGridToggleClickListener;
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->access$100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$OnGridToggleClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$OnGridToggleClickListener;->onGridToggleClick()Z

    const/4 v0, 0x0

    return v0
.end method
