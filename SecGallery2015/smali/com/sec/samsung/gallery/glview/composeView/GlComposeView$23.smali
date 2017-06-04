.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$23;
.super Ljava/lang/Object;
.source "GlComposeView.java"

# interfaces
.implements Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;


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

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$23;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/sec/android/gallery3d/glcore/GlObject;)Z
    .locals 4

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$23;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mMode:I

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->isTalkBackEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$23;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->isLocationFocused:Z

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "GlComposeView"

    const-string/jumbo v3, "click timeview location text"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p1, Lcom/sec/android/gallery3d/glcore/GlObject;->mParent:Lcom/sec/android/gallery3d/glcore/GlObject;

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mIndex:I

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$23;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnLocationItemClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnLocationItemClickListener;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$23;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isActiveMapView()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$23;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getSATopScreenId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "1009"

    invoke-static {v1, v3}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$23;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v1

    sget v3, Lcom/sec/samsung/gallery/lib/factory/AudioManagerWrapper;->SOUND_TOUCH:I

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->playSoundEffect(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$23;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnLocationItemClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnLocationItemClickListener;

    invoke-interface {v1, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnLocationItemClickListener;->onLocationItemClick(I)Z

    :cond_3
    move v1, v2

    goto :goto_0
.end method
