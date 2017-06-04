.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton$3;
.super Ljava/lang/Object;
.source "GlComposeGoToTopButton.java"

# interfaces
.implements Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->initGenericMotionListener()Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton$3;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGenericMotionCancel(Lcom/sec/android/gallery3d/glcore/GlObject;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton$3;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->setFocusBorderVisible(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton$3;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton$3;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mButtonBGView:Lcom/sec/android/gallery3d/glcore/GlView;
    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->access$200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onGenericMotionEnter(Lcom/sec/android/gallery3d/glcore/GlObject;II)Z
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton$3;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->access$100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a01e7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton$3;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;

    invoke-virtual {v1, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->setFocusBorderVisible(Z)V

    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->getInstance()Lcom/sec/samsung/gallery/util/TTSUtil;

    move-result-object v2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton$3;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->access$100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2, v1, v0}, Lcom/sec/samsung/gallery/util/TTSUtil;->speak(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Ljava/lang/String;)V

    return v3
.end method
