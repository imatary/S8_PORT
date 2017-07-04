.class Lcom/sec/android/gallery3d/remote/cloud/CloudImage$2;
.super Ljava/lang/Object;
.source "CloudImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->rotate(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/remote/cloud/CloudImage;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/remote/cloud/CloudImage;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage$2;->this$0:Lcom/sec/android/gallery3d/remote/cloud/CloudImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage$2;->this$0:Lcom/sec/android/gallery3d/remote/cloud/CloudImage;

    invoke-static {v1}, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->access$800(Lcom/sec/android/gallery3d/remote/cloud/CloudImage;)Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a049e

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    return-void
.end method
