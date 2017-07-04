.class Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment$2;
.super Ljava/lang/Object;
.source "GalleryAbsNotificationFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->updateBadge()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;

.field final synthetic val$badgeView:Landroid/widget/TextView;

.field final synthetic val$count:I

.field final synthetic val$titleView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;ILandroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment$2;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;

    iput p2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment$2;->val$count:I

    iput-object p3, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment$2;->val$badgeView:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment$2;->val$titleView:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x0

    iget v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment$2;->val$count:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment$2;->val$badgeView:Landroid/widget/TextView;

    iget v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment$2;->val$count:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment$2;->val$badgeView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment$2;->val$titleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment$2;->val$titleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment$2;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b04ed

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment$2;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b04f7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v4, v4, v1, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment$2;->val$badgeView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment$2;->val$titleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment$2;->val$titleView:Landroid/widget/TextView;

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0
.end method
