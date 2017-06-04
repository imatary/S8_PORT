.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$6;
.super Ljava/lang/Object;
.source "GlComposeChannelPhotoView.java"

# interfaces
.implements Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->initListenersForCommentView()V
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

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$6;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/sec/android/gallery3d/glcore/GlObject;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$6;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mOnLastCommentClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnLastCommentClickListener;

    iget-object v0, p1, Lcom/sec/android/gallery3d/glcore/GlObject;->mParent:Lcom/sec/android/gallery3d/glcore/GlObject;

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mIndex:I

    invoke-interface {v1, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnLastCommentClickListener;->onLastCommentClick(I)Z

    const/4 v0, 0x0

    return v0
.end method
