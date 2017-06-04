.class Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$3;
.super Landroid/text/InputFilter$LengthFilter;
.source "RenameDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$3;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    invoke-direct {p0, p2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-super/range {p0 .. p6}, Landroid/text/InputFilter$LengthFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$3;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog;->mTextInputLayout:Landroid/support/design/widget/TextInputLayout;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$200(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Landroid/support/design/widget/TextInputLayout;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$3;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog;->mShownError:Z
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$900(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$3;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog;->mShowInvalidCharError:Z
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$1000(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$3;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog;->mIsEvent:Z
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$500(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$3;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog;->mTextInputLayout:Landroid/support/design/widget/TextInputLayout;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$200(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Landroid/support/design/widget/TextInputLayout;

    move-result-object v2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$3;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mCtx:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->access$1300(Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog;->USE_DREAM_CHANNEL_VIEW_UX:Z
    invoke-static {}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$600()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0a0268

    :goto_0
    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$3;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->MAX_NAME_LENGTH:I
    invoke-static {v5}, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->access$1200(Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v3, v1, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$3;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    # setter for: Lcom/sec/samsung/gallery/view/common/RenameDialog;->mShownError:Z
    invoke-static {v1, v7}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$902(Lcom/sec/samsung/gallery/view/common/RenameDialog;Z)Z

    :cond_0
    :goto_2
    return-object v0

    :cond_1
    const v1, 0x7f0a04a1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$3;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog;->mTextInputLayout:Landroid/support/design/widget/TextInputLayout;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$200(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Landroid/support/design/widget/TextInputLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$3;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mCtx:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->access$1300(Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0250

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$3;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->MAX_NAME_LENGTH:I
    invoke-static {v5}, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->access$1200(Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$3;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog;->mTooLongToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$400(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$3;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    # setter for: Lcom/sec/samsung/gallery/view/common/RenameDialog;->mShownError:Z
    invoke-static {v1, v6}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$902(Lcom/sec/samsung/gallery/view/common/RenameDialog;Z)Z

    goto :goto_2
.end method
