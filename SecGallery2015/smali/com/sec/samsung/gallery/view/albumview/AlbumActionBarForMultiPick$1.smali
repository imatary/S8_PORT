.class Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForMultiPick$1;
.super Ljava/lang/Object;
.source "AlbumActionBarForMultiPick.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForMultiPick;->setTitle(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForMultiPick;

.field final synthetic val$numberOfItemsSelected:I


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForMultiPick;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForMultiPick$1;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForMultiPick;

    iput p2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForMultiPick$1;->val$numberOfItemsSelected:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v9, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForMultiPick$1;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForMultiPick;

    invoke-static {v7}, Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForMultiPick;->access$000(Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForMultiPick;)Landroid/view/Menu;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForMultiPick$1;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForMultiPick;

    invoke-static {v7}, Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForMultiPick;->access$100(Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForMultiPick;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->invalidateOptionsMenu()V

    :cond_0
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForMultiPick$1;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForMultiPick;

    invoke-static {v7}, Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForMultiPick;->access$200(Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForMultiPick;)I

    move-result v1

    iget v7, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForMultiPick$1;->val$numberOfItemsSelected:I

    if-gtz v7, :cond_1

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForMultiPick$1;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForMultiPick;

    invoke-static {v7}, Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForMultiPick;->access$300(Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForMultiPick;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a03ab

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_0
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForMultiPick$1;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForMultiPick;

    iget v8, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForMultiPick$1;->val$numberOfItemsSelected:I

    invoke-static {v7, v8, v4}, Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForMultiPick;->access$700(Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForMultiPick;ILjava/lang/String;)V

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForMultiPick$1;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForMultiPick;

    invoke-static {v7}, Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForMultiPick;->access$000(Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForMultiPick;)Landroid/view/Menu;

    move-result-object v7

    const v8, 0x7f12007a

    iget v9, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForMultiPick$1;->val$numberOfItemsSelected:I

    if-lez v9, :cond_6

    :goto_1
    invoke-static {v7, v8, v5}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemEnabled(Landroid/view/Menu;IZ)V

    return-void

    :cond_1
    if-lez v1, :cond_5

    sget-boolean v0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v0, :cond_2

    move v2, v1

    :goto_2
    if-eqz v0, :cond_3

    iget v3, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForMultiPick$1;->val$numberOfItemsSelected:I

    :goto_3
    sget-object v7, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v7}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForMultiPick$1;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForMultiPick;

    invoke-static {v7}, Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForMultiPick;->access$400(Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForMultiPick;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a02ee

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForMultiPick$1;->val$numberOfItemsSelected:I

    goto :goto_2

    :cond_3
    move v3, v1

    goto :goto_3

    :cond_4
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForMultiPick$1;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForMultiPick;

    invoke-static {v7}, Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForMultiPick;->access$500(Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForMultiPick;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a02ed

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_5
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForMultiPick$1;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForMultiPick;

    invoke-static {v7}, Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForMultiPick;->access$600(Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForMultiPick;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a02f1

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v5, [Ljava/lang/Object;

    iget v9, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForMultiPick$1;->val$numberOfItemsSelected:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_6
    move v5, v6

    goto/16 :goto_1
.end method
