.class Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick$1;
.super Ljava/lang/Object;
.source "FavoriteViewActionBarForMultiPick.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;->setTitle(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;

.field final synthetic val$numberOfItemsSelected:I


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick$1;->this$0:Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;

    iput p2, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick$1;->val$numberOfItemsSelected:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const v11, 0x7f12007a

    const/4 v10, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v0, 0x0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick$1;->this$0:Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;->access$000(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;)Landroid/view/Menu;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick$1;->this$0:Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;->access$100(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->invalidateOptionsMenu()V

    :cond_0
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick$1;->this$0:Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;->access$200(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick$1;->this$0:Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;->access$300(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;)I

    move-result v1

    iget v5, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick$1;->val$numberOfItemsSelected:I

    if-gtz v5, :cond_1

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick$1;->this$0:Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;->access$400(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0a03ab

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick$1;->this$0:Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;->access$700(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;)Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick$1;->this$0:Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;

    iget v8, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick$1;->val$numberOfItemsSelected:I

    invoke-static {v5, v8, v2}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;->access$800(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;ILjava/lang/String;)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick$1;->this$0:Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;

    invoke-static {v5, v0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;->access$900(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick$1;->this$0:Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;->access$000(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;)Landroid/view/Menu;

    move-result-object v8

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick$1;->this$0:Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;->access$1000(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget v5, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick$1;->val$numberOfItemsSelected:I

    if-lez v5, :cond_4

    move v5, v6

    :goto_1
    invoke-static {v8, v11, v5}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick$1;->this$0:Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;->access$000(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;)Landroid/view/Menu;

    move-result-object v5

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick$1;->this$0:Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;

    invoke-static {v8}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;->access$1000(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget v8, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick$1;->val$numberOfItemsSelected:I

    if-lez v8, :cond_5

    :goto_2
    invoke-static {v5, v11, v6}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemEnable(Landroid/view/Menu;IZ)V

    return-void

    :cond_1
    if-lez v1, :cond_3

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick$1;->this$0:Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;->access$500(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isWQHD(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    const v3, 0x7f0a02ee

    :goto_3
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v8, v10, [Ljava/lang/Object;

    iget v9, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick$1;->val$numberOfItemsSelected:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f0a02ef

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v8, v10, [Ljava/lang/Object;

    iget v9, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick$1;->val$numberOfItemsSelected:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_2
    const v3, 0x7f0a02ed

    goto :goto_3

    :cond_3
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick$1;->this$0:Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;->access$600(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0a02f1

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v8, v6, [Ljava/lang/Object;

    iget v9, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick$1;->val$numberOfItemsSelected:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v7

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto/16 :goto_0

    :cond_4
    move v5, v7

    goto/16 :goto_1

    :cond_5
    move v6, v7

    goto :goto_2
.end method
