.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$35;
.super Ljava/lang/Object;
.source "GlComposeView.java"

# interfaces
.implements Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnGenericMotionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->updateNoItem()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mFirstClickedTime:J

.field private mNextClickedTime:J

.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$35;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGenericMotionCancel()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$35;->mFirstClickedTime:J

    iput-wide v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$35;->mNextClickedTime:J

    return-void
.end method

.method public onGenericMotionEnter(I)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$35;->mFirstClickedTime:J

    iget-wide v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$35;->mFirstClickedTime:J

    iget-wide v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$35;->mNextClickedTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$35;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGlNoItemObject:Lcom/sec/samsung/gallery/glview/GlNoItemObject;
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$6900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/GlNoItemObject;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->getInstance()Lcom/sec/samsung/gallery/util/TTSUtil;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$35;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$35;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGlNoItemObject:Lcom/sec/samsung/gallery/glview/GlNoItemObject;
    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$6900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/GlNoItemObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/GlNoItemObject;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/sec/samsung/gallery/util/TTSUtil;->speak(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Ljava/lang/String;)V

    :cond_1
    iget-wide v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$35;->mFirstClickedTime:J

    iput-wide v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$35;->mNextClickedTime:J

    goto :goto_0
.end method
