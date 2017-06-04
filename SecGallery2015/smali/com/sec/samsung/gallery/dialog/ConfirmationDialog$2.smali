.class Lcom/sec/samsung/gallery/dialog/ConfirmationDialog$2;
.super Ljava/lang/Object;
.source "ConfirmationDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog$2;->this$0:Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v1, p0, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog$2;->this$0:Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;

    # getter for: Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->mCtx:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->access$000(Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;)Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog$2;->this$0:Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;

    # getter for: Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->mCtx:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->access$000(Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    const-string/jumbo v2, "UNLOCK_TOUCH"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog$2;->this$0:Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;

    # getter for: Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->mCtx:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->access$000(Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v1

    instance-of v1, v1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog$2;->this$0:Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;

    # getter for: Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->mCtx:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->access$000(Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    const-string/jumbo v2, "DELETE_IN_SELECTION_MODE"

    invoke-virtual {v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog$2;->this$0:Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;

    # getter for: Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->mCtx:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->access$000(Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getSATopScreenId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog$2;->this$0:Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;

    # getter for: Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->mTitle:I
    invoke-static {v1}, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->access$100(Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;)I

    move-result v1

    const v2, 0x7f0a00e4

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog$2;->this$0:Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;

    # getter for: Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->mTitle:I
    invoke-static {v1}, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->access$100(Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;)I

    move-result v1

    const v2, 0x7f0a00e1

    if-ne v1, v2, :cond_4

    :cond_2
    const-string/jumbo v1, "1241"

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog$2;->this$0:Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;

    iget-object v2, p0, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog$2;->this$0:Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;

    # getter for: Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->mEvent:Lcom/sec/samsung/gallery/core/Event;
    invoke-static {v2}, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->access$200(Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->notifyObservers(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog$2;->this$0:Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->dismissDialog()V

    return-void

    :cond_4
    iget-object v1, p0, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog$2;->this$0:Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;

    # getter for: Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->mEvent:Lcom/sec/samsung/gallery/core/Event;
    invoke-static {v1}, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->access$200(Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/core/Event;->getType()I

    move-result v1

    sget v2, Lcom/sec/samsung/gallery/core/Event;->EVENT_EMPTY_TRASH_FROM_RECYCLEBIN:I

    if-ne v1, v2, :cond_5

    const-string/jumbo v1, "5034"

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog$2;->this$0:Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;

    # getter for: Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->mEvent:Lcom/sec/samsung/gallery/core/Event;
    invoke-static {v1}, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->access$200(Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/core/Event;->getType()I

    move-result v1

    sget v2, Lcom/sec/samsung/gallery/core/Event;->EVENT_DELETE_FROM_RECYCLEBIN:I

    if-eq v1, v2, :cond_6

    iget-object v1, p0, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog$2;->this$0:Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;

    # getter for: Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->mEvent:Lcom/sec/samsung/gallery/core/Event;
    invoke-static {v1}, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->access$200(Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/core/Event;->getType()I

    move-result v1

    sget v2, Lcom/sec/samsung/gallery/core/Event;->EVENT_SHOW_DELETE_DIALOG_IN_DETAILVIEW_FROM_RECYCLEBIN:I

    if-ne v1, v2, :cond_3

    :cond_6
    const-string/jumbo v1, "5038"

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
