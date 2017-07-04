.class Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;
.super Ljava/lang/Object;
.source "DetailViewState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->refreshActionBarTheme(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

.field final synthetic val$isResume:Z


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Z)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    iput-boolean p2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->val$isResume:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$34400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$34300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const-string/jumbo v14, "action_bar"

    const-string/jumbo v15, "id"

    const-string/jumbo v16, "android"

    invoke-virtual/range {v13 .. v16}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-nez v1, :cond_1

    const-string/jumbo v12, "DetailViewState"

    const-string/jumbo v13, "actionBarView is null!"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$34500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/lib/libinterface/ViewInterface;

    move-result-object v12

    if-nez v12, :cond_2

    new-instance v5, Lcom/sec/samsung/gallery/lib/factory/ViewFactory;

    invoke-direct {v5}, Lcom/sec/samsung/gallery/lib/factory/ViewFactory;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$34600(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v12

    invoke-interface {v5, v12}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/samsung/gallery/lib/libinterface/ViewInterface;

    invoke-static {v13, v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$34502(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Lcom/sec/samsung/gallery/lib/libinterface/ViewInterface;)Lcom/sec/samsung/gallery/lib/libinterface/ViewInterface;

    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    new-instance v13, Landroid/content/res/ColorStateList;

    const/4 v14, 0x2

    new-array v14, v14, [[I

    const/4 v15, 0x0

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const v18, 0x101009e

    aput v18, v16, v17

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x2

    new-array v15, v15, [I

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$34800(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v17

    const v18, 0x7f1000bc

    invoke-static/range {v17 .. v18}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v17

    aput v17, v15, v16

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$34900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v17

    const v18, 0x7f1000bc

    invoke-static/range {v17 .. v18}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v17

    aput v17, v15, v16

    invoke-direct {v13, v14, v15}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-static {v12, v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$34702(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    new-instance v13, Landroid/content/res/ColorStateList;

    const/4 v14, 0x2

    new-array v14, v14, [[I

    const/4 v15, 0x0

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const v18, 0x101009e

    aput v18, v16, v17

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x2

    new-array v15, v15, [I

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$35100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v17

    const v18, 0x7f100272

    invoke-static/range {v17 .. v18}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v17

    aput v17, v15, v16

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$35200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v17

    const v18, 0x7f100272

    invoke-static/range {v17 .. v18}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v17

    aput v17, v15, v16

    invoke-direct {v13, v14, v15}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-static {v12, v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$35002(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$35300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v12

    const v13, 0x7f0a0266

    invoke-virtual {v12, v13}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x2

    invoke-virtual {v1, v6, v12, v13}, Landroid/view/ViewGroup;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$3300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getPreviousActivityState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v10

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_d

    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    instance-of v12, v12, Landroid/widget/TextView;

    if-eqz v12, :cond_d

    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    :cond_3
    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$35500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v12

    const v13, 0x7f0a02b2

    invoke-virtual {v12, v13}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x2

    invoke-virtual {v1, v6, v12, v13}, Landroid/view/ViewGroup;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    const/4 v11, 0x0

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_13

    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    instance-of v12, v12, Landroid/widget/ImageButton;

    if-eqz v12, :cond_13

    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageButton;

    :cond_4
    :goto_2
    if-nez v11, :cond_5

    const-string/jumbo v12, "DetailViewState"

    const-string/jumbo v13, "refreshActionBarTheme : navigate up button cannot find."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$35600(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v12

    invoke-static {v12}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isCameraQuickViewOnLockscreen(Landroid/app/Activity;)Z

    move-result v12

    if-eqz v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$35700(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v12

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/detailview/util/DetailViewStateHelper;->isActionBarShowing(Lcom/sec/samsung/gallery/view/ActionBarManager;)Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isEasyOrEmergencyMode()Z

    move-result v12

    if-nez v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$6500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    move-result-object v12

    if-eqz v12, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$6500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->isFastOptionViewShowing()Z

    move-result v12

    if-nez v12, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$6500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->showFastOptionView(Z)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$6700(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;

    move-result-object v12

    if-eqz v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$6700(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->isCommentsViewShowing()Z

    move-result v12

    if-nez v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-virtual {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->getCurrentMediaItem()Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v12

    instance-of v12, v12, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;

    if-eqz v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$6700(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->showCommentsView()V

    :cond_7
    invoke-static {}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$24200()Z

    move-result v12

    if-eqz v12, :cond_a

    if-eqz v11, :cond_a

    invoke-static {}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isDualScreenMode()Z

    move-result v12

    if-eqz v12, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;

    move-result-object v12

    if-nez v12, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$35800(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v12

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isExpandableActivity(Landroid/app/Activity;)Z

    move-result v12

    if-nez v12, :cond_9

    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$5400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v12

    if-eqz v12, :cond_15

    :cond_9
    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_a
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->val$isResume:Z

    if-eqz v12, :cond_1b

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$35900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-eqz v12, :cond_b

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$36000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-eqz v12, :cond_b

    if-eqz v11, :cond_b

    const v12, 0x7f0200a6

    invoke-virtual {v11, v12}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$36100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v12

    invoke-static {v12}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getNavigateUpButtonResourceIdDetailView(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$4100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v12

    if-nez v12, :cond_17

    if-eqz v7, :cond_17

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$36200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-nez v12, :cond_c

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$36300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Landroid/content/res/ColorStateList;

    move-result-object v12

    if-nez v12, :cond_c

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v12, v7}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$36402(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Landroid/widget/TextView;)Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-virtual {v7}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$36202(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-virtual {v7}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$36302(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$36500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v12

    invoke-static {v12}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isEnableButtonBackgrounds(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_16

    const v12, 0x7f0200a7

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :goto_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$36600(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v12

    const v13, 0x7f1000bc

    invoke-static {v12, v13}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v12

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setTextColor(I)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$34500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/lib/libinterface/ViewInterface;

    move-result-object v12

    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v14}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$36700(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v14

    const v15, 0x7f1000ee

    invoke-static {v14, v15}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v14

    const v15, 0x3e99999a    # 0.3f

    invoke-interface {v12, v7, v13, v14, v15}, Lcom/sec/samsung/gallery/lib/libinterface/ViewInterface;->addStrokeTextEffect(Landroid/widget/TextView;FIF)V

    goto/16 :goto_0

    :cond_d
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_e

    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    instance-of v12, v12, Landroid/widget/ImageView;

    if-eqz v12, :cond_e

    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    goto/16 :goto_1

    :cond_e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$35400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v12

    instance-of v12, v12, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    if-eqz v12, :cond_10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$35400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v12

    check-cast v12, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    invoke-virtual {v12}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->getPreviousOverFlow()Landroid/view/View;

    move-result-object v9

    instance-of v12, v9, Landroid/widget/TextView;

    if-eqz v12, :cond_f

    move-object v7, v9

    check-cast v7, Landroid/widget/TextView;

    goto/16 :goto_1

    :cond_f
    instance-of v12, v9, Landroid/widget/ImageView;

    if-eqz v12, :cond_3

    move-object v8, v9

    check-cast v8, Landroid/widget/ImageView;

    goto/16 :goto_1

    :cond_10
    instance-of v12, v10, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    if-eqz v12, :cond_12

    check-cast v10, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    invoke-virtual {v10}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->getPreviousOverFlow()Landroid/view/View;

    move-result-object v9

    instance-of v12, v9, Landroid/widget/TextView;

    if-eqz v12, :cond_11

    move-object v7, v9

    check-cast v7, Landroid/widget/TextView;

    goto/16 :goto_1

    :cond_11
    instance-of v12, v9, Landroid/widget/ImageView;

    if-eqz v12, :cond_3

    move-object v8, v9

    check-cast v8, Landroid/widget/ImageView;

    goto/16 :goto_1

    :cond_12
    const-string/jumbo v12, "DetailViewState"

    const-string/jumbo v13, "refreshActionBarTheme : overflow menu cannot find."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_13
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v2, :cond_4

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v12, v3, Landroid/widget/ImageButton;

    if-eqz v12, :cond_14

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageButton;

    goto/16 :goto_2

    :cond_14
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_15
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_3

    :cond_16
    const v12, 0x7f0200a6

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_4

    :cond_17
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$4100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v12

    if-nez v12, :cond_0

    if-eqz v8, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$36200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-nez v12, :cond_18

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$36800(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Landroid/content/res/ColorStateList;

    move-result-object v12

    if-nez v12, :cond_18

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v12, v8}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$36902(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$36202(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getImageTintList()Landroid/content/res/ColorStateList;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$36802(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    :cond_18
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$37000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v12

    invoke-static {v12}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isEnableButtonBackgrounds(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_1a

    sget-boolean v12, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v12, :cond_19

    const v12, 0x7f0200aa

    invoke-virtual {v8, v12}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$34700(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Landroid/content/res/ColorStateList;

    move-result-object v12

    invoke-virtual {v8, v12}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_0

    :cond_19
    const v12, 0x7f0200a9

    invoke-virtual {v8, v12}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_6

    :cond_1a
    const v12, 0x7f0200a6

    invoke-virtual {v8, v12}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_6

    :cond_1b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$37100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v12

    if-eqz v12, :cond_2a

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v12

    instance-of v12, v12, Lcom/sec/android/gallery3d/data/UriImage;

    if-eqz v12, :cond_1c

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$37200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v12

    if-nez v12, :cond_1d

    :cond_1c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$37300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/gallery3d/app/StateManager;->getStateCount()I

    move-result v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_1d

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$3300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isFromMyFiles()Z

    move-result v12

    if-nez v12, :cond_1d

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$29100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v12

    if-eqz v12, :cond_1e

    :cond_1d
    const-string/jumbo v12, "DetailViewState"

    const-string/jumbo v13, "refreshActionBarTheme : have not to change action bar color."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$36200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-eqz v12, :cond_23

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$36300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Landroid/content/res/ColorStateList;

    move-result-object v12

    if-eqz v12, :cond_23

    if-eqz v7, :cond_22

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$36200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$36300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Landroid/content/res/ColorStateList;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$34500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/lib/libinterface/ViewInterface;

    move-result-object v12

    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v14}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$37400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v14

    const v15, 0x7f1000ee

    invoke-static {v14, v15}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v14

    const/4 v15, 0x0

    invoke-interface {v12, v7, v13, v14, v15}, Lcom/sec/samsung/gallery/lib/libinterface/ViewInterface;->addStrokeTextEffect(Landroid/widget/TextView;FIF)V

    :cond_1f
    :goto_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$36200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-eqz v12, :cond_26

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$36800(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Landroid/content/res/ColorStateList;

    move-result-object v12

    if-eqz v12, :cond_26

    if-eqz v8, :cond_25

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$36200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v8, v12}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$36800(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Landroid/content/res/ColorStateList;

    move-result-object v12

    invoke-virtual {v8, v12}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_20
    :goto_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$35900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-eqz v12, :cond_21

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$36000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-eqz v12, :cond_21

    if-eqz v11, :cond_21

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$35900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$36000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_21
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$36202(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$36302(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$35902(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$36002(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    :cond_22
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$36400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Landroid/widget/TextView;

    move-result-object v12

    if-eqz v12, :cond_1f

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$36400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Landroid/widget/TextView;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$36200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$36400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Landroid/widget/TextView;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$36300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Landroid/content/res/ColorStateList;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$34500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/lib/libinterface/ViewInterface;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$36400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Landroid/widget/TextView;

    move-result-object v13

    const/high16 v14, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v15}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$37500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v15

    const v16, 0x7f1000ee

    invoke-static/range {v15 .. v16}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v15

    const/16 v16, 0x0

    invoke-interface/range {v12 .. v16}, Lcom/sec/samsung/gallery/lib/libinterface/ViewInterface;->addStrokeTextEffect(Landroid/widget/TextView;FIF)V

    goto/16 :goto_7

    :cond_23
    if-eqz v7, :cond_24

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$37600(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v12

    const v13, 0x7f100272

    invoke-static {v12, v13}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v12

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setTextColor(I)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$34500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/lib/libinterface/ViewInterface;

    move-result-object v12

    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v14}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$37700(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v14

    const v15, 0x7f1000ee

    invoke-static {v14, v15}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v14

    const/4 v15, 0x0

    invoke-interface {v12, v7, v13, v14, v15}, Lcom/sec/samsung/gallery/lib/libinterface/ViewInterface;->addStrokeTextEffect(Landroid/widget/TextView;FIF)V

    goto/16 :goto_7

    :cond_24
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$36400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Landroid/widget/TextView;

    move-result-object v12

    if-eqz v12, :cond_1f

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$36400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Landroid/widget/TextView;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$37800(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v13

    const v14, 0x7f100272

    invoke-static {v13, v14}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextColor(I)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$34500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/lib/libinterface/ViewInterface;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$36400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Landroid/widget/TextView;

    move-result-object v13

    const/high16 v14, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v15}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$37900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v15

    const v16, 0x7f1000ee

    invoke-static/range {v15 .. v16}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v15

    const/16 v16, 0x0

    invoke-interface/range {v12 .. v16}, Lcom/sec/samsung/gallery/lib/libinterface/ViewInterface;->addStrokeTextEffect(Landroid/widget/TextView;FIF)V

    goto/16 :goto_7

    :cond_25
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$36900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Landroid/widget/ImageView;

    move-result-object v12

    if-eqz v12, :cond_20

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$36900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Landroid/widget/ImageView;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$36200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$36900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Landroid/widget/ImageView;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$36800(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Landroid/content/res/ColorStateList;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_8

    :cond_26
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$36200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-eqz v12, :cond_28

    if-eqz v8, :cond_27

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$36200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v8, v12}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$35000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Landroid/content/res/ColorStateList;

    move-result-object v12

    invoke-virtual {v8, v12}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_8

    :cond_27
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$36900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Landroid/widget/ImageView;

    move-result-object v12

    if-eqz v12, :cond_20

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$36900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Landroid/widget/ImageView;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$36200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$36900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Landroid/widget/ImageView;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$35000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Landroid/content/res/ColorStateList;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_8

    :cond_28
    if-eqz v8, :cond_29

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$35000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Landroid/content/res/ColorStateList;

    move-result-object v12

    invoke-virtual {v8, v12}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_8

    :cond_29
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$36900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Landroid/widget/ImageView;

    move-result-object v12

    if-eqz v12, :cond_20

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$36900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Landroid/widget/ImageView;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$35000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Landroid/content/res/ColorStateList;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_8

    :cond_2a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$4100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v12

    if-nez v12, :cond_31

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$36200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-nez v12, :cond_2b

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$36300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Landroid/content/res/ColorStateList;

    move-result-object v12

    if-nez v12, :cond_2b

    if-eqz v7, :cond_2b

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-virtual {v7}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$36202(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-virtual {v7}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$36302(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$38000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v12

    invoke-static {v12}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isEnableButtonBackgrounds(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_2e

    const v12, 0x7f0200a7

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :goto_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$38100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v12

    const v13, 0x7f1000bc

    invoke-static {v12, v13}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v12

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setTextColor(I)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$34500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/lib/libinterface/ViewInterface;

    move-result-object v12

    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v14}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$38200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v14

    const v15, 0x7f1000ee

    invoke-static {v14, v15}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v14

    const v15, 0x3e99999a    # 0.3f

    invoke-interface {v12, v7, v13, v14, v15}, Lcom/sec/samsung/gallery/lib/libinterface/ViewInterface;->addStrokeTextEffect(Landroid/widget/TextView;FIF)V

    :cond_2b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$36200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-nez v12, :cond_2c

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$36800(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Landroid/content/res/ColorStateList;

    move-result-object v12

    if-nez v12, :cond_2c

    if-eqz v8, :cond_2c

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$36202(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getImageTintList()Landroid/content/res/ColorStateList;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$36802(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    :cond_2c
    if-eqz v8, :cond_2d

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$38300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v12

    invoke-static {v12}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isEnableButtonBackgrounds(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_30

    sget-boolean v12, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v12, :cond_2f

    const v12, 0x7f0200aa

    invoke-virtual {v8, v12}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$34700(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Landroid/content/res/ColorStateList;

    move-result-object v12

    invoke-virtual {v8, v12}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_2d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$35900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-nez v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$36000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-nez v12, :cond_0

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-virtual {v11}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$35902(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-virtual {v11}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$36002(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    const v12, 0x7f0200a6

    invoke-virtual {v11, v12}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$38400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v12

    invoke-static {v12}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getNavigateUpButtonResourceIdDetailView(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_2e
    const v12, 0x7f0200a6

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_9

    :cond_2f
    const v12, 0x7f0200a9

    invoke-virtual {v8, v12}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_a

    :cond_30
    const v12, 0x7f0200a6

    invoke-virtual {v8, v12}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_a

    :cond_31
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$35900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-nez v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$36000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-nez v12, :cond_0

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-virtual {v11}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$35902(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-virtual {v11}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$36002(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    const v12, 0x7f0200a6

    invoke-virtual {v11, v12}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$47;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$38500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v12

    invoke-static {v12}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getNavigateUpButtonResourceIdDetailView(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method
