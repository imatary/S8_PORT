.class Lcom/sec/android/gallery3d/util/ImageDRMUtil$2;
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


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/util/ImageDRMUtil;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/util/ImageDRMUtil$2;->this$0:Lcom/sec/android/gallery3d/util/ImageDRMUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    # getter for: Lcom/sec/android/gallery3d/util/ImageDRMUtil;->mListener:Lcom/sec/android/gallery3d/util/ImageDRMUtil$DrmPopupListener;
    invoke-static {}, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->access$200()Lcom/sec/android/gallery3d/util/ImageDRMUtil$DrmPopupListener;

    move-result-object v0

    if-eqz v0, :cond_0

    # getter for: Lcom/sec/android/gallery3d/util/ImageDRMUtil;->mListener:Lcom/sec/android/gallery3d/util/ImageDRMUtil$DrmPopupListener;
    invoke-static {}, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->access$200()Lcom/sec/android/gallery3d/util/ImageDRMUtil$DrmPopupListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/util/ImageDRMUtil$DrmPopupListener;->cancel()V

    :cond_0
    return-void
.end method