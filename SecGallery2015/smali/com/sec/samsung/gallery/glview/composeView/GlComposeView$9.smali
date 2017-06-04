.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$9;
.super Ljava/lang/Object;
.source "GlComposeView.java"

# interfaces
.implements Lcom/sec/android/gallery3d/glcore/GlObject$GlLongClickListener;


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

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$9;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Lcom/sec/android/gallery3d/glcore/GlObject;II)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$9;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mMode:I

    if-eq v2, v4, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    check-cast p1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v1, p1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mIndex:I

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$9;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mClickable:Z
    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$2200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$9;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-boolean v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mClickEnabled:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$9;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnItemLongClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemLongClickListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$9;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getSATopScreenId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "1031"

    invoke-static {v2, v3}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$9;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v2

    sget v3, Lcom/sec/samsung/gallery/lib/factory/AudioManagerWrapper;->SOUND_TOUCH:I

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->playSoundEffect(I)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$9;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2, v5}, Lcom/sec/android/gallery3d/ui/SelectionManager;->setExpansionMode(Z)V

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$9;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnItemLongClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemLongClickListener;

    const/4 v3, -0x1

    invoke-interface {v2, v0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemLongClickListener;->onItemLongClick(II)Z

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$9;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v1, v5, v5}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessage(IIII)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$9;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->clearFocus()V

    goto :goto_0
.end method
