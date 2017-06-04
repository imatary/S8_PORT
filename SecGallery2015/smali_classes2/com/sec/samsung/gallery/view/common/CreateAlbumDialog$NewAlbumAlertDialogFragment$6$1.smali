.class Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6$1;
.super Ljava/lang/Object;
.source "CreateAlbumDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6$1;->this$2:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6$1;->this$2:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6;->this$1:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;

    # getter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mCtx:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->access$100(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->closeOptionsMenu()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6$1;->this$2:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6;->this$1:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6$1;->this$2:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6;

    iget-object v3, v3, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6;->this$1:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;

    iget-object v3, v3, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->alertEditText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->access$500(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mString:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->access$1902(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6$1;->this$2:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6;->this$1:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6$1;->this$2:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6;

    iget-object v3, v3, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6;->this$1:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;

    # getter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mString:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->access$1900(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->checkNameExisted(Ljava/lang/String;)Z
    invoke-static {v2, v3}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->access$2000(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6$1;->this$2:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6;->this$1:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6$1;->this$2:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6;->this$1:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;

    # getter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mString:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->access$1900(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6$1;->this$2:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6;->this$1:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6$1;->this$2:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6;

    iget-object v3, v3, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6;->this$1:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;

    # getter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mString:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->access$1900(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "\n"

    const-string/jumbo v5, " "

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mString:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->access$1902(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;Ljava/lang/String;)Ljava/lang/String;

    :cond_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6$1;->this$2:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6;->this$1:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;

    # getter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mString:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->access$1900(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6$1;->this$2:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6;->this$1:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;

    # getter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mString:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->access$1900(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ".."

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6$1;->this$2:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6;->this$1:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mTextInputLayout:Landroid/support/design/widget/TextInputLayout;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->access$400(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;)Landroid/support/design/widget/TextInputLayout;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6$1;->this$2:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6;->this$1:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mTextInputLayout:Landroid/support/design/widget/TextInputLayout;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->access$400(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;)Landroid/support/design/widget/TextInputLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6$1;->this$2:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6;

    iget-object v3, v3, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6;->this$1:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;

    # getter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mCtx:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->access$100(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a047f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6$1;->this$2:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6;->this$1:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    # setter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mShownError:Z
    invoke-static {v2, v6}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->access$302(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;Z)Z

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6$1;->this$2:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6;->this$1:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->alertEditText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->access$500(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;)Landroid/widget/EditText;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6$1;->this$2:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6;

    iget-object v3, v3, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6;->this$1:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100111

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6$1;->this$2:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6;->this$1:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mTextInputLayout:Landroid/support/design/widget/TextInputLayout;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->access$400(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;)Landroid/support/design/widget/TextInputLayout;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6$1;->this$2:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6;->this$1:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mTextInputLayout:Landroid/support/design/widget/TextInputLayout;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->access$400(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;)Landroid/support/design/widget/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    :cond_5
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6$1;->this$2:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6;->this$1:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;

    # getter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mCtx:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->access$100(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getSATopScreenId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1086"

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6$1;->this$2:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6;->this$1:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v3

    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_CREATE_NEW_ALBUM:I

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6$1;->this$2:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6;

    iget-object v4, v4, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6;->this$1:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;

    # getter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mString:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->access$1900(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/core/Event;->setData(Ljava/lang/Object;)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->notifyObservers(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6$1;->this$2:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6;->this$1:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mDoDismissDialog:Z
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->access$2100(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6$1;->this$2:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6;->this$1:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;

    # getter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mCtx:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->access$100(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6$1;->this$2:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6;->this$1:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->alertEditText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->access$500(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6$1;->this$2:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$6;->this$1:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    goto/16 :goto_0
.end method
