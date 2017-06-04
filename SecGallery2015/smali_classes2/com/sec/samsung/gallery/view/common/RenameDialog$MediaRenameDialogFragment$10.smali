.class Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$10;
.super Ljava/lang/Object;
.source "RenameDialog.java"

# interfaces
.implements Lcom/sec/android/gallery3d/data/OnProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->startHandleRename()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

.field final synthetic val$progressDialog:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$10;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$10;->val$progressDialog:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleOperation(Lcom/sec/android/gallery3d/data/MediaObject;)Z
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$10;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    sget v2, Lcom/sec/samsung/gallery/core/Event;->EVENT_RENAME_MEDIA:I

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$10;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mString:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->access$1800(Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/core/Event;->setData(Ljava/lang/Object;)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->notifyObservers(Ljava/lang/Object;)V

    const/4 v0, 0x0

    return v0
.end method

.method public onCompleted(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$10;->val$progressDialog:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->closeProgressDialog()V

    return-void
.end method

.method public onProgress(II)V
    .locals 0

    return-void
.end method
