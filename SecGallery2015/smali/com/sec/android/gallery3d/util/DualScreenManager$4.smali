.class Lcom/sec/android/gallery3d/util/DualScreenManager$4;
.super Ljava/lang/Object;
.source "DualScreenManager.java"

# interfaces
.implements Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$ExpandRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/util/DualScreenManager;->setExpandRequestListener()V
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

    iput-object p1, p0, Lcom/sec/android/gallery3d/util/DualScreenManager$4;->this$0:Lcom/sec/android/gallery3d/util/DualScreenManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExpandRequested(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/util/DualScreenManager$4;->this$0:Lcom/sec/android/gallery3d/util/DualScreenManager;

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/DualScreenManager;->access$200(Lcom/sec/android/gallery3d/util/DualScreenManager;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->expandShrinkDualView(Z)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/util/DualScreenManager$4;->this$0:Lcom/sec/android/gallery3d/util/DualScreenManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/util/DualScreenManager;->setExpandShrinkButton()V

    return-void
.end method
