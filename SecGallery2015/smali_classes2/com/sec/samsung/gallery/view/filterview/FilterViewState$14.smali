.class Lcom/sec/samsung/gallery/view/filterview/FilterViewState$14;
.super Ljava/lang/Object;
.source "FilterViewState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->startPhotoView(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/filterview/FilterViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$14;->this$0:Lcom/sec/samsung/gallery/view/filterview/FilterViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const/4 v11, 0x1

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$14;->this$0:Lcom/sec/samsung/gallery/view/filterview/FilterViewState;

    invoke-static {v8}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->access$800(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$14;->this$0:Lcom/sec/samsung/gallery/view/filterview/FilterViewState;

    invoke-static {v9}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->access$3700(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v3

    const/4 v2, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v8

    if-gtz v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v8, "/local/all"

    sget-object v9, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FACE:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-static {v9}, Lcom/sec/android/gallery3d/app/FilterUtils;->toClusterType(Lcom/sec/samsung/gallery/core/TabTagType;)I

    move-result v9

    invoke-static {v8, v9}, Lcom/sec/android/gallery3d/app/FilterUtils;->newClusterPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    sget-object v8, Lcom/sec/samsung/gallery/features/FeatureNames;->UsePeopleViewAsCategoryType:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v8}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaSet;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$14;->this$0:Lcom/sec/samsung/gallery/view/filterview/FilterViewState;

    invoke-static {v8}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->access$3800(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v8

    sget-object v9, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->CONTACTS_PERMISSION_GROUP:[Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->isRequiredPermissionEnabled(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    const/4 v8, 0x4

    new-array v5, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$14;->this$0:Lcom/sec/samsung/gallery/view/filterview/FilterViewState;

    invoke-static {v9}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->access$3900(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v9

    aput-object v9, v5, v8

    sget-object v8, Lcom/sec/samsung/gallery/controller/DialogVisibility;->SHOW:Lcom/sec/samsung/gallery/controller/DialogVisibility;

    aput-object v8, v5, v11

    const/4 v8, 0x2

    sget-object v9, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->REQUIRED_PERMISSION_ON_ENTERING_PEOPLE_CATEGORY:[Ljava/lang/String;

    aput-object v9, v5, v8

    const/4 v8, 0x3

    const/16 v9, 0x6b

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v8

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$14;->this$0:Lcom/sec/samsung/gallery/view/filterview/FilterViewState;

    invoke-static {v8}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->access$4000(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v8

    const-string/jumbo v9, "START_PERMISSION_REQUEST_ACTIVITY"

    invoke-virtual {v8, v9, v5}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$14;->this$0:Lcom/sec/samsung/gallery/view/filterview/FilterViewState;

    invoke-static {v8}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->access$4100(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaSet;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v8, "Scenery"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$14;->this$0:Lcom/sec/samsung/gallery/view/filterview/FilterViewState;

    invoke-static {v8}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->access$3500(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v8

    sget-object v9, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_SCENERY:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v8, v9}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;)V

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$14;->this$0:Lcom/sec/samsung/gallery/view/filterview/FilterViewState;

    invoke-static {v8}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->access$4200(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v8

    const-string/jumbo v9, "CGVW"

    const-string/jumbo v10, "Scenery"

    invoke-static {v8, v9, v10}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$14;->this$0:Lcom/sec/samsung/gallery/view/filterview/FilterViewState;

    invoke-static {v8}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->access$3500(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v8

    const-class v9, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;

    invoke-virtual {v8, v9}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setPreviousViewState(Ljava/lang/Class;)V

    const-string/jumbo v8, "KEY_MEDIA_SET_PATH"

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$14;->this$0:Lcom/sec/samsung/gallery/view/filterview/FilterViewState;

    invoke-static {v9}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->access$5300(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v8, "KEY_MEDIA_ITEM_PATH"

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaSet;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v8, "KEY_MEDIA_SET_POSITION"

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$14;->this$0:Lcom/sec/samsung/gallery/view/filterview/FilterViewState;

    invoke-static {v9}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->access$3700(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)I

    move-result v9

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v8, "KEY_NO_SPLIT_MODE"

    invoke-virtual {v0, v8, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v8, "KEY_VIEW_REDRAW"

    invoke-virtual {v0, v8, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz v2, :cond_5

    const-string/jumbo v8, "KEY_IS_SIGHT_MODE"

    invoke-virtual {v0, v8, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_5
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$14;->this$0:Lcom/sec/samsung/gallery/view/filterview/FilterViewState;

    invoke-static {v8}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->access$5400(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v8

    const-class v9, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-virtual {v8, v9, v0}, Lcom/sec/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v8, "Documents"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$14;->this$0:Lcom/sec/samsung/gallery/view/filterview/FilterViewState;

    invoke-static {v8}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->access$3500(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v8

    sget-object v9, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_DOCUMENTS:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v8, v9}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;)V

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$14;->this$0:Lcom/sec/samsung/gallery/view/filterview/FilterViewState;

    invoke-static {v8}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->access$4300(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v8

    const-string/jumbo v9, "CGVW"

    const-string/jumbo v10, "Documents"

    invoke-static {v8, v9, v10}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    const-string/jumbo v8, "Food"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$14;->this$0:Lcom/sec/samsung/gallery/view/filterview/FilterViewState;

    invoke-static {v8}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->access$3500(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v8

    sget-object v9, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FOOD:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v8, v9}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;)V

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$14;->this$0:Lcom/sec/samsung/gallery/view/filterview/FilterViewState;

    invoke-static {v8}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->access$4400(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v8

    const-string/jumbo v9, "CGVW"

    const-string/jumbo v10, "Food"

    invoke-static {v8, v9, v10}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    const-string/jumbo v8, "People"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$14;->this$0:Lcom/sec/samsung/gallery/view/filterview/FilterViewState;

    invoke-static {v8}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->access$3500(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v8

    sget-object v9, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FACE:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v8, v9}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;)V

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$14;->this$0:Lcom/sec/samsung/gallery/view/filterview/FilterViewState;

    invoke-static {v8}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->access$4500(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v8

    const-string/jumbo v9, "CGVW"

    const-string/jumbo v10, "People"

    invoke-static {v8, v9, v10}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    const-string/jumbo v8, "Flower"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$14;->this$0:Lcom/sec/samsung/gallery/view/filterview/FilterViewState;

    invoke-static {v8}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->access$3500(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v8

    sget-object v9, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FLOWERS:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v8, v9}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;)V

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$14;->this$0:Lcom/sec/samsung/gallery/view/filterview/FilterViewState;

    invoke-static {v8}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->access$4600(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v8

    const-string/jumbo v9, "CGVW"

    const-string/jumbo v10, "Flowers"

    invoke-static {v8, v9, v10}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_a
    sget-object v8, Lcom/sec/samsung/gallery/features/FeatureNames;->ShowShotModeAlbum:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v8}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v8

    if-nez v8, :cond_b

    sget-object v8, Lcom/sec/samsung/gallery/features/FeatureNames;->IsEnabledWeChatVideoShotMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v8}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_b
    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_c

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$14;->this$0:Lcom/sec/samsung/gallery/view/filterview/FilterViewState;

    invoke-static {v8}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->access$4700(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a006a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$14;->this$0:Lcom/sec/samsung/gallery/view/filterview/FilterViewState;

    invoke-static {v8}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->access$4800(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v8

    const-string/jumbo v9, "CGVW"

    const-string/jumbo v10, "Burst shot"

    invoke-static {v8, v9, v10}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    :goto_2
    if-eqz v2, :cond_12

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$14;->this$0:Lcom/sec/samsung/gallery/view/filterview/FilterViewState;

    invoke-static {v8}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->access$3500(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v8

    sget-object v9, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_SIGHTMODE:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v8, v9}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;)V

    goto/16 :goto_1

    :cond_d
    const v8, 0x7f0a031c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$14;->this$0:Lcom/sec/samsung/gallery/view/filterview/FilterViewState;

    invoke-static {v8}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->access$4900(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v8

    const-string/jumbo v9, "CGVW"

    const-string/jumbo v10, "Panorama"

    invoke-static {v8, v9, v10}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_e
    const v8, 0x7f0a04c7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$14;->this$0:Lcom/sec/samsung/gallery/view/filterview/FilterViewState;

    invoke-static {v8}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->access$5000(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v8

    const-string/jumbo v9, "CGVW"

    const-string/jumbo v10, "Video"

    invoke-static {v8, v9, v10}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_f
    const v8, 0x7f0a003b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$14;->this$0:Lcom/sec/samsung/gallery/view/filterview/FilterViewState;

    invoke-static {v8}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->access$5100(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v8

    const-string/jumbo v9, "CGVW"

    const-string/jumbo v10, "Pictures"

    invoke-static {v8, v9, v10}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_10
    const v8, 0x7f0a04d7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$14;->this$0:Lcom/sec/samsung/gallery/view/filterview/FilterViewState;

    invoke-static {v8}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->access$5200(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v8

    const-string/jumbo v9, "CGVW"

    const-string/jumbo v10, "Multiview"

    invoke-static {v8, v9, v10}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_11
    const v8, 0x7f0a04e2

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    const/4 v2, 0x1

    goto/16 :goto_2

    :cond_12
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$14;->this$0:Lcom/sec/samsung/gallery/view/filterview/FilterViewState;

    invoke-static {v8}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->access$3500(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v8

    sget-object v9, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_OTHER_CATEGORY:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v8, v9}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;)V

    goto/16 :goto_1
.end method
