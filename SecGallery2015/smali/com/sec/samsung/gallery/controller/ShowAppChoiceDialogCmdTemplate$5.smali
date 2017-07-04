.class Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate$5;
.super Ljava/lang/Object;
.source "ShowAppChoiceDialogCmdTemplate.java"

# interfaces
.implements Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$OnDialogDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;->showAppChoiceDialog(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate$5;->this$0:Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogDismiss()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate$5;->this$0:Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;->access$400(Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate$5;->this$0:Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->removeAll()V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate$5;->this$0:Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;->access$102(Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;)Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    return-void
.end method
