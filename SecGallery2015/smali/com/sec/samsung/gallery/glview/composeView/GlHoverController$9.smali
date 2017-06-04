.class Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$9;
.super Ljava/lang/Object;
.source "GlHoverController.java"

# interfaces
.implements Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$9;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/sec/android/gallery3d/glcore/GlObject;)Z
    .locals 9

    const/4 v5, 0x1

    instance-of v4, p1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-nez v4, :cond_0

    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_0
    check-cast p1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v1, p1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mIndex:I

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$9;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mOnHoverListener:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$OnHoverControlListener;
    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$2400(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$OnHoverControlListener;

    move-result-object v4

    if-nez v4, :cond_1

    move v4, v5

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$9;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mDisplayItemList:[Lcom/sec/samsung/gallery/view/image_manager/SingleImageItem;
    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$2500(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)[Lcom/sec/samsung/gallery/view/image_manager/SingleImageItem;

    move-result-object v4

    aget-object v0, v4, v1

    if-nez v0, :cond_2

    move v4, v5

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$9;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$700(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/samsung/gallery/util/SettingsUtil;->getModeAirViewSoundAndHaptic(Landroid/content/Context;)I

    move-result v3

    if-eq v3, v5, :cond_3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    :cond_3
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$9;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$700(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v4

    sget v6, Lcom/sec/samsung/gallery/lib/factory/AudioManagerWrapper;->SOUND_TOUCH:I

    invoke-virtual {v4, v6}, Landroid/media/AudioManager;->playSoundEffect(I)V

    :cond_4
    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/image_manager/SingleImageItem;->getItem()Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$9;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mIsSet:Z
    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$300(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$9;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mOnHoverListener:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$OnHoverControlListener;
    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$2400(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$OnHoverControlListener;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/image_manager/SingleImageItem;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$9;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mIndex:I
    invoke-static {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$2600(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)I

    move-result v7

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$9;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mFirstIndex:I
    invoke-static {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$2700(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)I

    move-result v8

    add-int/2addr v8, v1

    invoke-static {v7, v8}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v7

    invoke-interface {v4, v2, v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$OnHoverControlListener;->hoverClick(Lcom/sec/android/gallery3d/data/MediaItem;Landroid/graphics/Bitmap;I)Z

    :goto_1
    move v4, v5

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$9;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mOnHoverListener:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$OnHoverControlListener;
    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$2400(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$OnHoverControlListener;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/image_manager/SingleImageItem;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$9;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mIndex:I
    invoke-static {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$2600(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)I

    move-result v7

    invoke-interface {v4, v2, v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$OnHoverControlListener;->hoverClick(Lcom/sec/android/gallery3d/data/MediaItem;Landroid/graphics/Bitmap;I)Z

    goto :goto_1
.end method
