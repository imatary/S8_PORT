.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar$4;
.super Ljava/lang/Object;
.source "GlComposeQuickScrollBar.java"

# interfaces
.implements Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->initGenericMotionListener()Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar$4;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGenericMotionCancel(Lcom/sec/android/gallery3d/glcore/GlObject;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar$4;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->setFocusBorderVisible(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar$4;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mScrollBarObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar$4;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mScrollBarView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onGenericMotionEnter(Lcom/sec/android/gallery3d/glcore/GlObject;II)Z
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar$4;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a01a1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar$4;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;

    invoke-virtual {v1, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->setFocusBorderVisible(Z)V

    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->getInstance()Lcom/sec/samsung/gallery/util/TTSUtil;

    move-result-object v2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar$4;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2, v1, v0}, Lcom/sec/samsung/gallery/util/TTSUtil;->speak(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Ljava/lang/String;)V

    return v3
.end method
