.class Lcom/sec/samsung/gallery/controller/ShowImageVideoConversionDialogCmd$3;
.super Ljava/lang/Object;
.source "ShowImageVideoConversionDialogCmd.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/controller/ShowImageVideoConversionDialogCmd;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/ShowImageVideoConversionDialogCmd;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/ShowImageVideoConversionDialogCmd;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/ShowImageVideoConversionDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowImageVideoConversionDialogCmd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowImageVideoConversionDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowImageVideoConversionDialogCmd;

    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/ShowImageVideoConversionDialogCmd;->access$000(Lcom/sec/samsung/gallery/controller/ShowImageVideoConversionDialogCmd;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    instance-of v1, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->stopBottomAreaHideAnim()V

    :cond_0
    return-void
.end method
