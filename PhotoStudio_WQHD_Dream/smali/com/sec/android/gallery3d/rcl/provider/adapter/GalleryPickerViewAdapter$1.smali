.class Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$1;
.super Ljava/lang/Object;
.source "GalleryPickerViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;

.field final synthetic val$finalViewHolder:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;

.field final synthetic val$mediaItem:Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$1;->this$0:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;

    iput-object p2, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$1;->val$mediaItem:Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;

    iput-object p3, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$1;->val$finalViewHolder:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1, v6}, Landroid/view/View;->setClickable(Z)V

    iget-object v5, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$1;->this$0:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;

    # getter for: Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->access$100(Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->isGalleryAppInstalled(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$1;->this$0:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;

    # getter for: Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->access$100(Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;

    iget-object v5, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$1;->this$0:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;

    # getter for: Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->access$100(Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->isUltraSavingMode(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$1;->this$0:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;

    # getter for: Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mUltraPowerSavingModeToast:Landroid/widget/Toast;
    invoke-static {v5}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->access$200(Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;)Landroid/widget/Toast;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string v5, "GalleryPickerViewAdapter"

    const-string v6, "onGalleryButtonIsClicked : Ultra Saving Mode"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$1;->this$0:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;

    # getter for: Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mUltraPowerSavingModeToast:Landroid/widget/Toast;
    invoke-static {v5}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->access$200(Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$1;->this$0:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;

    # getter for: Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mUnableOpenGalleryToast:Landroid/widget/Toast;
    invoke-static {v5}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->access$300(Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;)Landroid/widget/Toast;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string v5, "GalleryPickerViewAdapter"

    const-string v6, "onGalleryButtonIsClicked : gallery is disabled"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$1;->this$0:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;

    # getter for: Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mUnableOpenGalleryToast:Landroid/widget/Toast;
    invoke-static {v5}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->access$300(Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    :try_start_0
    iget-object v5, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$1;->val$mediaItem:Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "com.sec.android.gallery3d"

    const-string v6, "com.sec.android.gallery3d.app.GalleryActivity"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v4, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v5, "SingleItemOnly"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v5, "isFromCrossPicker"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->isNOS()Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "activity-transition-VI"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_4
    const/4 v2, 0x0

    iget-object v5, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$1;->val$finalViewHolder:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;

    iget-object v5, v5, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;->thumbnail:Landroid/widget/ImageView;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$1;->this$0:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;

    # getter for: Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->access$100(Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;)Landroid/content/Context;

    move-result-object v5

    instance-of v5, v5, Landroid/app/Activity;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$1;->val$finalViewHolder:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;

    iget-object v5, v5, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;->thumbnail:Landroid/widget/ImageView;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$1;->val$finalViewHolder:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;

    iget-object v8, v8, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;->thumbnail:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v8

    iget-object v9, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$1;->val$finalViewHolder:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;

    iget-object v9, v9, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$CrossViewHolder;->thumbnail:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v9

    invoke-static {v5, v6, v7, v8, v9}, Landroid/app/ActivityOptions;->makeScaleUpAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    :cond_5
    if-eqz v2, :cond_6

    :try_start_1
    iget-object v5, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$1;->this$0:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;

    # getter for: Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->access$100(Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v5, "GalleryPickerViewAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startActivityForGalleryDetailView "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v5, "GalleryPickerViewAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can not find gallery acitivty : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$1;->val$mediaItem:Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    :try_start_3
    iget-object v5, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter$1;->this$0:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;

    # getter for: Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->access$100(Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0
.end method
