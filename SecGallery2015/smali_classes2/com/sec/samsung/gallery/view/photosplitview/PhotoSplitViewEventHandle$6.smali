.class Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$6;
.super Ljava/lang/Object;
.source "PhotoSplitViewEventHandle.java"

# interfaces
.implements Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$6;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHoverClick(IILjava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$6;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    # invokes: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->onPhotoItemClick(I)V
    invoke-static {v0, p2}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->access$700(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;I)V

    const/4 v0, 0x1

    return v0
.end method