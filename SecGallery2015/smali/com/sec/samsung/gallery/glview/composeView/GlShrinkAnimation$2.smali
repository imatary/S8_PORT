.class Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation$2;
.super Landroid/os/Handler;
.source "GlShrinkAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->access$000(Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsSearchView:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->access$000(Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isWeChatSightMode(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-static {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->access$102(Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->access$000(Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->access$100(Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->access$200()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->access$000(Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getViewConfig()Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    move-result-object v2

    iget-boolean v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIncludeTabView:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->access$000(Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryTab()Lcom/sec/samsung/gallery/drawer/GalleryTabable;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/samsung/gallery/drawer/GalleryTabable;->showTab()V

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/samsung/gallery/drawer/GalleryTabable;->setAlpha(F)V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->access$000(Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsChannelPhotoView:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->access$000(Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v2

    instance-of v2, v2, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    if-nez v2, :cond_0

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->access$000(Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsSearchView:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->access$000(Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isWeChatSightMode(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->access$000(Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->access$300(Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->access$000(Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->access$200()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->access$000(Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getViewConfig()Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    move-result-object v2

    iget-boolean v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIncludeTabView:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->access$000(Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryTab()Lcom/sec/samsung/gallery/drawer/GalleryTabable;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/samsung/gallery/drawer/GalleryTabable;->showTab()V

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {v1, v2}, Lcom/sec/samsung/gallery/drawer/GalleryTabable;->setAlpha(F)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
