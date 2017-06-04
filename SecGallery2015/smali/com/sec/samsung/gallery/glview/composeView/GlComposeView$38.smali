.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$38;
.super Ljava/lang/Object;
.source "GlComposeView.java"

# interfaces
.implements Lcom/sec/android/gallery3d/glcore/GlObject$GlSecondaryClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->registerObjectSecondaryClickListener()V
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

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$38;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/sec/android/gallery3d/glcore/GlObject;II)Z
    .locals 7

    const/4 v6, 0x1

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$38;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->checkValidityForSecondaryClick()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$38;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v3, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getIndexFromThumbObject(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v0

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$38;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mDexThumbnailClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$DexThumbnailClickListener;
    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$7000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$DexThumbnailClickListener;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$38;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseSmartClustering:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$38;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$38;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    invoke-virtual {v3, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v3

    if-eqz v3, :cond_0

    :cond_2
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$38;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mDexThumbnailClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$DexThumbnailClickListener;
    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$7000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$DexThumbnailClickListener;

    move-result-object v3

    invoke-interface {v3, v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$DexThumbnailClickListener;->thumbnailClicked(II)V

    :cond_3
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$38;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    int-to-float v4, p2

    int-to-float v5, p3

    invoke-virtual {v3, v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->showContextMenu(FF)V

    goto :goto_0
.end method
