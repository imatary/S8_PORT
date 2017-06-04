.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView$2;
.super Ljava/lang/Object;
.source "GlComposeChannelView.java"

# interfaces
.implements Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/sec/android/gallery3d/glcore/GlObject;)Z
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mClickEnabled:Z

    if-nez v1, :cond_0

    :goto_0
    return v3

    :cond_0
    check-cast p1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v1, p1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mIndex:I

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v1

    sget v2, Lcom/sec/samsung/gallery/lib/factory/AudioManagerWrapper;->SOUND_TOUCH:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mOnItemClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemClickListener;

    const/4 v2, -0x1

    invoke-interface {v1, v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemClickListener;->onItemClick(II)Z

    goto :goto_0
.end method
