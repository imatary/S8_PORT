.class Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter$1;
.super Ljava/lang/Object;
.source "ComposeChannelItemAdapter.java"

# interfaces
.implements Lcom/sec/samsung/gallery/view/image_manager/UpdateOwnerThumbnailJob$OnUpdateThumbnailListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdateOwnerThumbnail(Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;Landroid/graphics/drawable/Drawable;)V
    .locals 8

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v4, p1, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mOwnerInfoView:Lcom/sec/android/gallery3d/glcore/GlView;

    const/16 v5, 0x190

    invoke-virtual {v4, v5}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-nez v3, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;

    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->access$000(Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;)Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getSocialStoryDetailDimension()Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;

    move-result-object v0

    iget v2, v0, Lcom/sec/samsung/gallery/view/DimensionConfig$SocialStoryDetailDimension;->social_story_detail_like_comment_icon_size:I

    new-instance v3, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, p2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v2, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    const/4 v4, 0x1

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    iget-object v4, p1, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mOwnerInfoView:Lcom/sec/android/gallery3d/glcore/GlView;

    const/16 v5, 0x190

    invoke-virtual {v4, v3, v5}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :goto_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->mViewListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ViewListener;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/ComposeChannelItemAdapter;->mViewListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ViewListener;

    iget v5, p1, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mIndex:I

    const/4 v6, 0x0

    const/4 v7, -0x1

    invoke-interface {v4, v5, v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ViewListener;->onContentUpdated(III)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {v3, p2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v4, "ChannelItemAdapter"

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
