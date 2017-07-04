.class Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick$1;
.super Ljava/lang/Object;
.source "TimeViewActionBarForMultiPick.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick;->setTitle(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick;

.field final synthetic val$numberOfItemsSelected:I


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick$1;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick;

    iput p2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick$1;->val$numberOfItemsSelected:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const v11, 0x7f0a02ee

    const v10, 0x7f0a02ed

    const/4 v9, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick$1;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick;

    iget v8, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick$1;->val$numberOfItemsSelected:I

    iput v8, v5, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick;->mCount:I

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick$1;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick;->access$000(Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick;)Landroid/view/Menu;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick$1;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick;->access$100(Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->invalidateOptionsMenu()V

    :cond_0
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick$1;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick;->access$200(Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick;)I

    move-result v1

    iget v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick$1;->val$numberOfItemsSelected:I

    if-gtz v5, :cond_1

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick$1;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick;->access$300(Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0a03ab

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_0
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick$1;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick;

    iget v8, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick$1;->val$numberOfItemsSelected:I

    invoke-static {v5, v8, v4}, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick;->access$800(Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick;ILjava/lang/String;)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick$1;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick;

    const/4 v8, 0x0

    invoke-static {v5, v8}, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick;->access$900(Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick$1;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick;->access$000(Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick;)Landroid/view/Menu;

    move-result-object v8

    const v9, 0x7f12007a

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick$1;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick;->access$1000(Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick$1;->val$numberOfItemsSelected:I

    if-lez v5, :cond_7

    move v5, v6

    :goto_1
    invoke-static {v8, v9, v5}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick$1;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick;->access$000(Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick;)Landroid/view/Menu;

    move-result-object v5

    const v8, 0x7f12007a

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick$1;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick;

    invoke-static {v9}, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick;->access$1000(Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick;)Z

    move-result v9

    if-eqz v9, :cond_8

    iget v9, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick$1;->val$numberOfItemsSelected:I

    if-lez v9, :cond_8

    :goto_2
    invoke-static {v5, v8, v6}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemEnable(Landroid/view/Menu;IZ)V

    return-void

    :cond_1
    if-lez v1, :cond_5

    sget-boolean v0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v0, :cond_2

    move v2, v1

    :goto_3
    if-eqz v0, :cond_3

    iget v3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick$1;->val$numberOfItemsSelected:I

    :goto_4
    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick$1;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick;->access$400(Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick$1;->val$numberOfItemsSelected:I

    goto :goto_3

    :cond_3
    move v3, v1

    goto :goto_4

    :cond_4
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick$1;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick;->access$500(Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_5
    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick$1;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick;->access$600(Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v8, v9, [Ljava/lang/Object;

    iget v9, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick$1;->val$numberOfItemsSelected:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_6
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick$1;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick;->access$700(Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v8, v9, [Ljava/lang/Object;

    iget v9, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick$1;->val$numberOfItemsSelected:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_7
    move v5, v7

    goto/16 :goto_1

    :cond_8
    move v6, v7

    goto/16 :goto_2
.end method
