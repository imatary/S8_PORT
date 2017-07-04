.class Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit$2;
.super Ljava/lang/Object;
.source "TimeViewActionBarForEdit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->setTitle(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;

.field final synthetic val$countOfMediaItem:I

.field final synthetic val$numberOfSelectedItems:I


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;II)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit$2;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;

    iput p2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit$2;->val$numberOfSelectedItems:I

    iput p3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit$2;->val$countOfMediaItem:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit$2;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->access$000(Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit$2;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;

    iget v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit$2;->val$numberOfSelectedItems:I

    invoke-static {v4, v5}, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->access$102(Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;I)I

    sget-boolean v0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit$2;->val$countOfMediaItem:I

    :goto_0
    if-eqz v0, :cond_1

    iget v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit$2;->val$numberOfSelectedItems:I

    :goto_1
    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit$2;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->access$500(Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a02ee

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_2
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit$2;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;

    iget v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit$2;->val$numberOfSelectedItems:I

    invoke-static {v4, v5, v3}, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->access$700(Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;ILjava/lang/String;)V

    return-void

    :cond_0
    iget v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit$2;->val$numberOfSelectedItems:I

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit$2;->val$countOfMediaItem:I

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit$2;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->access$600(Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a02ed

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2
.end method
