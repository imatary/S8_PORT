.class Lcom/sec/android/gallery3d/util/ImageDRMUtil$1;
.super Ljava/lang/Object;
.source "ImageDRMUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/util/ImageDRMUtil;->showAskPopupDialog(Landroid/content/Context;ILcom/sec/android/gallery3d/data/MediaItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/util/ImageDRMUtil;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$item:Lcom/sec/android/gallery3d/data/MediaItem;

.field final synthetic val$popupType:I


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/util/ImageDRMUtil;ILcom/sec/android/gallery3d/data/MediaItem;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/util/ImageDRMUtil$1;->this$0:Lcom/sec/android/gallery3d/util/ImageDRMUtil;

    iput p2, p0, Lcom/sec/android/gallery3d/util/ImageDRMUtil$1;->val$popupType:I

    iput-object p3, p0, Lcom/sec/android/gallery3d/util/ImageDRMUtil$1;->val$item:Lcom/sec/android/gallery3d/data/MediaItem;

    iput-object p4, p0, Lcom/sec/android/gallery3d/util/ImageDRMUtil$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget v0, p0, Lcom/sec/android/gallery3d/util/ImageDRMUtil$1;->val$popupType:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/util/ImageDRMUtil$1;->val$item:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaItem;->getSupportedOperations()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->access$200()Lcom/sec/android/gallery3d/util/ImageDRMUtil$DrmPopupListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->access$200()Lcom/sec/android/gallery3d/util/ImageDRMUtil$DrmPopupListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/util/ImageDRMUtil$DrmPopupListener;->deletePhoto()V

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseFLDRMOnly:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/util/ImageDRMUtil$1;->val$context:Landroid/content/Context;

    const v1, 0x7f0a049e

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/util/ImageDRMUtil$1;->this$0:Lcom/sec/android/gallery3d/util/ImageDRMUtil;

    iget-object v1, p0, Lcom/sec/android/gallery3d/util/ImageDRMUtil$1;->val$item:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->access$300(Lcom/sec/android/gallery3d/util/ImageDRMUtil;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/gallery3d/util/ImageDRMUtil$1;->this$0:Lcom/sec/android/gallery3d/util/ImageDRMUtil;

    iget-object v1, p0, Lcom/sec/android/gallery3d/util/ImageDRMUtil$1;->val$item:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->consume(Lcom/sec/android/gallery3d/data/MediaItem;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
