.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView$7;
.super Ljava/lang/Object;
.source "GlComposeChannelView.java"

# interfaces
.implements Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->createGlGenericMotionListener(I)Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;

.field final synthetic val$objectType:I


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView$7;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;

    iput p2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView$7;->val$objectType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGenericMotionCancel(Lcom/sec/android/gallery3d/glcore/GlObject;)Z
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sec/android/gallery3d/glcore/GlObject;->setBorderVisible(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView$7;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->access$502(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;Lcom/sec/android/gallery3d/glcore/GlObject;)Lcom/sec/android/gallery3d/glcore/GlObject;

    const/4 v0, 0x1

    return v0
.end method

.method public onGenericMotionEnter(Lcom/sec/android/gallery3d/glcore/GlObject;II)Z
    .locals 4

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView$7;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->access$200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView$7;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;

    invoke-static {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->access$300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;Lcom/sec/android/gallery3d/glcore/GlObject;)V

    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->getInstance()Lcom/sec/samsung/gallery/util/TTSUtil;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView$7;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView$7;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView$7;->val$objectType:I

    invoke-static {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->access$400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/sec/samsung/gallery/util/TTSUtil;->speak(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method
