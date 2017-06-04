.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView$1;
.super Ljava/lang/Object;
.source "GlComposeSplitView.java"

# interfaces
.implements Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/sec/android/gallery3d/glcore/GlObject;)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->playSoundKeyClick(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mNewAlbumHeaderFocused:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mOnItemClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemClickListener;

    const/4 v2, -0x1

    invoke-interface {v1, v2, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemClickListener;->onItemClick(II)Z

    const/4 v0, 0x1

    goto :goto_0
.end method
