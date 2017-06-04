.class Lcom/sec/android/gallery3d/util/ImageDRMUtil$3;
.super Ljava/lang/Object;
.source "ImageDRMUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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

    iput-object p1, p0, Lcom/sec/android/gallery3d/util/ImageDRMUtil$3;->this$0:Lcom/sec/android/gallery3d/util/ImageDRMUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_2

    # getter for: Lcom/sec/android/gallery3d/util/ImageDRMUtil;->mListener:Lcom/sec/android/gallery3d/util/ImageDRMUtil$DrmPopupListener;
    invoke-static {}, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->access$200()Lcom/sec/android/gallery3d/util/ImageDRMUtil$DrmPopupListener;

    move-result-object v0

    if-eqz v0, :cond_0

    # getter for: Lcom/sec/android/gallery3d/util/ImageDRMUtil;->mListener:Lcom/sec/android/gallery3d/util/ImageDRMUtil$DrmPopupListener;
    invoke-static {}, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->access$200()Lcom/sec/android/gallery3d/util/ImageDRMUtil$DrmPopupListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/util/ImageDRMUtil$DrmPopupListener;->cancel()V

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
