.class Lcom/sec/android/gallery3d/util/DualScreenManager$3;
.super Ljava/lang/Object;
.source "DualScreenManager.java"

# interfaces
.implements Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$ShrinkRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/util/DualScreenManager;->setShrinkRequestListener(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/util/DualScreenManager;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/util/DualScreenManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/util/DualScreenManager$3;->this$0:Lcom/sec/android/gallery3d/util/DualScreenManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShrinkRequested(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;I)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isDualScreenMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x68

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/util/DualScreenManager$3;->this$0:Lcom/sec/android/gallery3d/util/DualScreenManager;

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/DualScreenManager;->access$100(Lcom/sec/android/gallery3d/util/DualScreenManager;)Lcom/sec/android/gallery3d/app/GalleryActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isMainScreen(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/util/DualScreenManager$3;->this$0:Lcom/sec/android/gallery3d/util/DualScreenManager;

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/DualScreenManager;->access$200(Lcom/sec/android/gallery3d/util/DualScreenManager;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->expandShrinkDualView(ZZ)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/util/DualScreenManager$3;->this$0:Lcom/sec/android/gallery3d/util/DualScreenManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/util/DualScreenManager;->setExpandShrinkButton()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/gallery3d/util/DualScreenManager$3;->this$0:Lcom/sec/android/gallery3d/util/DualScreenManager;

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/DualScreenManager;->access$200(Lcom/sec/android/gallery3d/util/DualScreenManager;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->expandShrinkDualView(Z)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/util/DualScreenManager$3;->this$0:Lcom/sec/android/gallery3d/util/DualScreenManager;

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/DualScreenManager;->access$300(Lcom/sec/android/gallery3d/util/DualScreenManager;)V

    goto :goto_0
.end method
