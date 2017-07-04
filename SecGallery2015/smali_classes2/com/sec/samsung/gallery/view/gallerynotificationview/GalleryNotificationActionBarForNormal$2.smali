.class Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationActionBarForNormal$2;
.super Ljava/lang/Object;
.source "GalleryNotificationActionBarForNormal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationActionBarForNormal;->setTitle(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationActionBarForNormal;

.field final synthetic val$albumName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationActionBarForNormal;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationActionBarForNormal$2;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationActionBarForNormal;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationActionBarForNormal$2;->val$albumName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseActionBarSubTitle:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationActionBarForNormal$2;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationActionBarForNormal;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationActionBarForNormal;->access$300(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationActionBarForNormal;)Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationActionBarForNormal$2;->val$albumName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationActionBarForNormal$2;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationActionBarForNormal;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationActionBarForNormal;->access$400(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationActionBarForNormal;)Landroid/app/ActionBar;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationActionBarForNormal$2;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationActionBarForNormal;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationActionBarForNormal;->access$500(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationActionBarForNormal;)Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationActionBarForNormal$2;->val$albumName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
