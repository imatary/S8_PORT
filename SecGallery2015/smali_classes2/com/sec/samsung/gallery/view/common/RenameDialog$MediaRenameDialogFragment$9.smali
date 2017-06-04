.class Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$9;
.super Ljava/lang/Object;
.source "RenameDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

.field final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$9;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$9;->val$editText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$9;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$800(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$9;->val$editText:Landroid/widget/EditText;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMassDialog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->EnableClipboardEx:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Lcom/sec/samsung/gallery/lib/factory/ClipBoardManagerFactory;

    invoke-direct {v1}, Lcom/sec/samsung/gallery/lib/factory/ClipBoardManagerFactory;-><init>()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$9;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mCtx:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->access$1300(Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/lib/libinterface/ClipBoardManagerInterface;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$9;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mClipVisible:Z
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->access$2700(Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$9;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mCtx:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->access$1300(Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/sec/samsung/gallery/lib/libinterface/ClipBoardManagerInterface;->isShowing(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$9;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mCtx:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->access$1300(Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/sec/samsung/gallery/lib/libinterface/ClipBoardManagerInterface;->showDialog(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
