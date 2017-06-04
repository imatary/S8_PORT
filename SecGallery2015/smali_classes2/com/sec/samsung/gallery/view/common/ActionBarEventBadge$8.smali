.class Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge$8;
.super Ljava/lang/Object;
.source "ActionBarEventBadge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->startNotification(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;

.field final synthetic val$count:I


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge$8;->this$0:Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;

    iput p2, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge$8;->val$count:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    iget v1, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge$8;->val$count:I

    if-gtz v1, :cond_0

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNotificationTab:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge$8;->this$0:Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;

    # getter for: Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->access$000(Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    const-class v2, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge$8;->this$0:Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;

    # getter for: Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->access$000(Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/access/cmh/CMHSocialStoryNotificationInterface;->getGalleryNotificationCount(Landroid/content/Context;Z)I

    move-result v0

    if-lez v0, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge$8;->this$0:Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;

    # getter for: Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->access$000(Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    const-class v2, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge$8;->this$0:Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;

    # getter for: Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->access$000(Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a02db

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    goto :goto_0
.end method
