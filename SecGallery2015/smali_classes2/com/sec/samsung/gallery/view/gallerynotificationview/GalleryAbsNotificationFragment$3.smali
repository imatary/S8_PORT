.class Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment$3;
.super Ljava/lang/Object;
.source "GalleryAbsNotificationFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->hideNoItemText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment$3;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment$3;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;

    # getter for: Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->mNoItemTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->access$100(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
