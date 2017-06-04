.class Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation$1;
.super Landroid/os/Handler;
.source "GlEnlargeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/16 v7, 0x400

    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-direct {v6, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    # setter for: Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mBgDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v5, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->access$002(Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    invoke-static {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->access$100(Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v5

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v5, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mBgDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->access$000(Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->FEATURE_USE_TAB_UI:Z
    invoke-static {}, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->access$200()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    invoke-static {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->access$100(Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getViewConfig()Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    move-result-object v5

    iget-boolean v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIncludeTabView:Z

    if-eqz v5, :cond_0

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    invoke-static {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->access$100(Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v5

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v5, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryTab()Lcom/sec/samsung/gallery/drawer/GalleryTabable;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/samsung/gallery/drawer/GalleryTabable;->hideTab()V

    goto :goto_0

    :pswitch_1
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    invoke-static {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->access$100(Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v5

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v5, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5, v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->setShowHideAnimationEnabled(Z)V

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->FEATURE_USE_TAB_UI:Z
    invoke-static {}, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->access$200()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    invoke-static {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->access$100(Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getViewConfig()Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    move-result-object v5

    iget-boolean v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIncludeTabView:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    invoke-static {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->access$100(Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v5

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v5, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryTab()Lcom/sec/samsung/gallery/drawer/GalleryTabable;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/samsung/gallery/drawer/GalleryTabable;->hideTab()V

    goto/16 :goto_0

    :pswitch_2
    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->FEATURE_USE_TAB_UI:Z
    invoke-static {}, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->access$200()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    invoke-static {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->access$100(Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getViewConfig()Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    move-result-object v5

    iget-boolean v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIncludeTabView:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    invoke-static {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->access$100(Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v5

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v5, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryTab()Lcom/sec/samsung/gallery/drawer/GalleryTabable;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/samsung/gallery/drawer/GalleryTabable;->showTab()V

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    invoke-static {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->access$100(Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v5

    iget-object v6, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    invoke-static {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->access$100(Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v5

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v5, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v5}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getActionBarBackgroundRscID(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    invoke-static {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->access$100(Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v5

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v5, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->FEATURE_SHOW_STATUS_BAR:Z
    invoke-static {}, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->access$300()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    invoke-static {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->access$100(Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v5

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v5, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mIsFullView:Z
    invoke-static {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->access$400(Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4, v7}, Landroid/view/Window;->clearFlags(I)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;

    # setter for: Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mIsFullView:Z
    invoke-static {v5, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->access$402(Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;Z)Z

    goto/16 :goto_0

    :pswitch_3
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    invoke-static {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->access$100(Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v5

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getActiveObject()Landroid/util/SparseArray;

    move-result-object v3

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    if-eqz v2, :cond_2

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
    invoke-static {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->access$500(Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v2, v8}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setVisibility(Z)V

    goto :goto_2

    :pswitch_4
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    invoke-static {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->access$100(Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v5

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v5, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4, v7, v7}, Landroid/view/Window;->setFlags(II)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;

    # setter for: Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mIsFullView:Z
    invoke-static {v5, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->access$402(Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;Z)Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
