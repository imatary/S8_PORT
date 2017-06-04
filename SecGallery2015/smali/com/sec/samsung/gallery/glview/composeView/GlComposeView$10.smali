.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$10;
.super Ljava/lang/Object;
.source "GlComposeView.java"

# interfaces
.implements Lcom/sec/android/gallery3d/glcore/GlObject$GlDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$10;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrop(Lcom/sec/android/gallery3d/glcore/GlObject;)Z
    .locals 3

    move-object v2, p1

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v1, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mIndex:I

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$10;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnDragDropListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnDragDropListener;

    if-eqz v2, :cond_0

    check-cast p1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-boolean v2, p1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->isSideSyncDrag:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$10;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnDragDropListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnDragDropListener;

    invoke-interface {v2, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnDragDropListener;->onDragDrop(I)Z

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
