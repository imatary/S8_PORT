.class Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView$1;
.super Ljava/lang/Object;
.source "GlComposePhotoView.java"

# interfaces
.implements Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$OnDragAnimListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDragAnimDone(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mOnStatusChangedListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnStatusChangedListener;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnStatusChangedListener;->onStatusChange(III)V

    :cond_0
    return-void
.end method
