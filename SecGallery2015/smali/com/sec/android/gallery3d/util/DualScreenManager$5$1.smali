.class Lcom/sec/android/gallery3d/util/DualScreenManager$5$1;
.super Ljava/lang/Object;
.source "DualScreenManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/util/DualScreenManager$5;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/gallery3d/util/DualScreenManager$5;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/util/DualScreenManager$5;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/util/DualScreenManager$5$1;->this$1:Lcom/sec/android/gallery3d/util/DualScreenManager$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/util/DualScreenManager$5$1;->this$1:Lcom/sec/android/gallery3d/util/DualScreenManager$5;

    iget-object v0, v0, Lcom/sec/android/gallery3d/util/DualScreenManager$5;->this$0:Lcom/sec/android/gallery3d/util/DualScreenManager;

    # getter for: Lcom/sec/android/gallery3d/util/DualScreenManager;->mActivity:Lcom/sec/android/gallery3d/app/GalleryActivity;
    invoke-static {v0}, Lcom/sec/android/gallery3d/util/DualScreenManager;->access$100(Lcom/sec/android/gallery3d/util/DualScreenManager;)Lcom/sec/android/gallery3d/app/GalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->invalidateOptionsMenu()V

    return-void
.end method