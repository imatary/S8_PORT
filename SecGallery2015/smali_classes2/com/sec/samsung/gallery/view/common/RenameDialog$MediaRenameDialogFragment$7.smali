.class Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$7;
.super Ljava/lang/Object;
.source "RenameDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
.method constructor <init>(Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$7;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14

    const/4 v13, 0x0

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$7;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mOrgName:Ljava/lang/String;
    invoke-static {v9}, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->access$1700(Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$7;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mOrgName:Ljava/lang/String;
    invoke-static {v9}, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->access$1700(Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$7;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    iget-object v10, v10, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog;->mAlertEditText:Landroid/widget/EditText;
    invoke-static {v10}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$300(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Landroid/widget/EditText;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$7;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    iget-object v9, v9, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog;->mTextInputLayout:Landroid/support/design/widget/TextInputLayout;
    invoke-static {v9}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$200(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Landroid/support/design/widget/TextInputLayout;

    move-result-object v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$7;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    iget-object v9, v9, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog;->mTextInputLayout:Landroid/support/design/widget/TextInputLayout;
    invoke-static {v9}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$200(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Landroid/support/design/widget/TextInputLayout;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$7;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mCtx:Landroid/content/Context;
    invoke-static {v10}, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->access$1300(Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a031e

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v9, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$7;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$7;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    iget-object v10, v10, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog;->mAlertEditText:Landroid/widget/EditText;
    invoke-static {v10}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$300(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Landroid/widget/EditText;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    # setter for: Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mString:Ljava/lang/String;
    invoke-static {v9, v10}, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->access$1802(Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;Ljava/lang/String;)Ljava/lang/String;

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$7;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mString:Ljava/lang/String;
    invoke-static {v9}, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->access$1800(Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$7;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$7;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mString:Ljava/lang/String;
    invoke-static {v10}, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->access$1800(Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "\n"

    const-string/jumbo v12, " "

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    # setter for: Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mString:Ljava/lang/String;
    invoke-static {v9, v10}, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->access$1802(Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;Ljava/lang/String;)Ljava/lang/String;

    :cond_2
    iget-object v9, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$7;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mString:Ljava/lang/String;
    invoke-static {v9}, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->access$1800(Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$7;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    iget-object v9, v9, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog;->mTextInputLayout:Landroid/support/design/widget/TextInputLayout;
    invoke-static {v9}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$200(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Landroid/support/design/widget/TextInputLayout;

    move-result-object v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$7;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    iget-object v9, v9, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog;->mTextInputLayout:Landroid/support/design/widget/TextInputLayout;
    invoke-static {v9}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$200(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Landroid/support/design/widget/TextInputLayout;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$7;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mCtx:Landroid/content/Context;
    invoke-static {v10}, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->access$1300(Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a02b1

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object v9, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$7;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    iget-object v9, v9, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog;->mIsEvent:Z
    invoke-static {v9}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$500(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Z

    move-result v9

    if-nez v9, :cond_5

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog;->USE_CMH:Z
    invoke-static {}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$1100()Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$7;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mString:Ljava/lang/String;
    invoke-static {v9}, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->access$1800(Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$7;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mString:Ljava/lang/String;
    invoke-static {v9}, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->access$1800(Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, ".."

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    :cond_4
    iget-object v9, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$7;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    iget-object v9, v9, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog;->mTextInputLayout:Landroid/support/design/widget/TextInputLayout;
    invoke-static {v9}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$200(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Landroid/support/design/widget/TextInputLayout;

    move-result-object v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$7;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    iget-object v9, v9, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog;->mTextInputLayout:Landroid/support/design/widget/TextInputLayout;
    invoke-static {v9}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$200(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Landroid/support/design/widget/TextInputLayout;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$7;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mCtx:Landroid/content/Context;
    invoke-static {v10}, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->access$1300(Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a047f

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_5
    iget-object v9, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$7;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mCtx:Landroid/content/Context;
    invoke-static {v9}, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->access$1300(Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;)Landroid/content/Context;

    move-result-object v9

    check-cast v9, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isEventViewMode()Z

    move-result v9

    if-nez v9, :cond_6

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$7;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    iget-object v9, v9, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog;->mIsEvent:Z
    invoke-static {v9}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$500(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Z

    move-result v9

    if-eqz v9, :cond_b

    :cond_6
    iget-object v9, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$7;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mItem:Lcom/sec/android/gallery3d/data/MediaObject;
    invoke-static {v9}, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->access$1900(Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v9

    instance-of v9, v9, Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v9, :cond_b

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$7;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mCtx:Landroid/content/Context;
    invoke-static {v9}, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->access$1300(Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;)Landroid/content/Context;

    move-result-object v9

    check-cast v9, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryApplication()Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v0

    sget-object v9, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEventView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v9}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->getInstance(Lcom/sec/android/gallery3d/app/GalleryApp;)Lcom/sec/android/gallery3d/data/EventAlbumManager;

    move-result-object v3

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$7;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mCtx:Landroid/content/Context;
    invoke-static {v9}, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->access$1300(Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;)Landroid/content/Context;

    move-result-object v9

    const-string/jumbo v10, "MOEV"

    invoke-static {v9, v10}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz v3, :cond_0

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$7;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mCtx:Landroid/content/Context;
    invoke-static {v9}, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->access$1300(Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;)Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$7;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mString:Ljava/lang/String;
    invoke-static {v10}, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->access$1800(Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->renameEvent(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$7;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    iget-object v9, v9, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$7;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    iget-object v10, v10, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog;->mAlertEditText:Landroid/widget/EditText;
    invoke-static {v10}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$300(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Landroid/widget/EditText;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v10

    # invokes: Lcom/sec/samsung/gallery/view/common/RenameDialog;->hideSoftInput(Landroid/os/IBinder;)V
    invoke-static {v9, v10}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$000(Lcom/sec/samsung/gallery/view/common/RenameDialog;Landroid/os/IBinder;)V

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$7;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->access$2000(Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;)Landroid/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog;->dismiss()V

    goto/16 :goto_0

    :cond_7
    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog;->USE_CMH:Z
    invoke-static {}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$1100()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->getInstance(Lcom/sec/android/gallery3d/app/GalleryApp;)Lcom/sec/android/gallery3d/data/ChannelAlbumManager;

    move-result-object v2

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$7;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mCtx:Landroid/content/Context;
    invoke-static {v9}, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->access$1300(Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;)Landroid/content/Context;

    move-result-object v9

    const-string/jumbo v10, "MOEV"

    invoke-static {v9, v10}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$7;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mCtx:Landroid/content/Context;
    invoke-static {v9}, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->access$1300(Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;)Landroid/content/Context;

    move-result-object v9

    check-cast v9, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$7;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    iget-object v9, v9, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$7;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    iget-object v10, v10, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog;->mAlertEditText:Landroid/widget/EditText;
    invoke-static {v10}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$300(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Landroid/widget/EditText;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v10

    # invokes: Lcom/sec/samsung/gallery/view/common/RenameDialog;->hideSoftInput(Landroid/os/IBinder;)V
    invoke-static {v9, v10}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$000(Lcom/sec/samsung/gallery/view/common/RenameDialog;Landroid/os/IBinder;)V

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$7;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->access$2000(Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;)Landroid/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$7;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mCtx:Landroid/content/Context;
    invoke-static {v9}, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->access$1300(Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;)Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v9

    const-string/jumbo v10, "EXIT_SELECTION_MODE"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_8
    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/gallery3d/data/MediaObject;

    instance-of v9, v5, Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v9, :cond_a

    move-object v4, v5

    check-cast v4, Lcom/sec/android/gallery3d/data/MediaSet;

    const/4 v1, -0x1

    instance-of v9, v4, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    if-eqz v9, :cond_9

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v1

    :cond_9
    if-eqz v2, :cond_0

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$7;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mCtx:Landroid/content/Context;
    invoke-static {v9}, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->access$1300(Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;)Landroid/content/Context;

    move-result-object v10

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$7;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mString:Ljava/lang/String;
    invoke-static {v9}, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->access$1800(Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;)Ljava/lang/String;

    move-result-object v11

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$7;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mCtx:Landroid/content/Context;
    invoke-static {v9}, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->access$1300(Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;)Landroid/content/Context;

    move-result-object v9

    check-cast v9, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v9

    invoke-virtual {v2, v10, v11, v9}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->renameChannel(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/gallery3d/ui/SelectionManager;)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$7;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mCtx:Landroid/content/Context;
    invoke-static {v9}, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->access$1300(Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;)Landroid/content/Context;

    move-result-object v9

    check-cast v9, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getSATopScreenId()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "3012"

    invoke-static {v8, v9}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$7;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    iget-object v9, v9, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$7;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    iget-object v10, v10, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog;->mAlertEditText:Landroid/widget/EditText;
    invoke-static {v10}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$300(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Landroid/widget/EditText;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v10

    # invokes: Lcom/sec/samsung/gallery/view/common/RenameDialog;->hideSoftInput(Landroid/os/IBinder;)V
    invoke-static {v9, v10}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$000(Lcom/sec/samsung/gallery/view/common/RenameDialog;Landroid/os/IBinder;)V

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$7;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->access$2000(Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;)Landroid/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v9, 0x2

    new-array v7, v9, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$7;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mString:Ljava/lang/String;
    invoke-static {v9}, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->access$1800(Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v13

    const/4 v9, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v9

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$7;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mCtx:Landroid/content/Context;
    invoke-static {v9}, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->access$1300(Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;)Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v9

    const-string/jumbo v10, "UPDATE_TITLE_EVENT"

    invoke-virtual {v9, v10, v7}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_a
    iget-object v9, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$7;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    iget-object v9, v9, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$7;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    iget-object v10, v10, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog;->mAlertEditText:Landroid/widget/EditText;
    invoke-static {v10}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$300(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Landroid/widget/EditText;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v10

    # invokes: Lcom/sec/samsung/gallery/view/common/RenameDialog;->hideSoftInput(Landroid/os/IBinder;)V
    invoke-static {v9, v10}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$000(Lcom/sec/samsung/gallery/view/common/RenameDialog;Landroid/os/IBinder;)V

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$7;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->access$2000(Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;)Landroid/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$7;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mCtx:Landroid/content/Context;
    invoke-static {v9}, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->access$1300(Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;)Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v9

    const-string/jumbo v10, "EXIT_SELECTION_MODE"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_b
    iget-object v9, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$7;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mCtx:Landroid/content/Context;
    invoke-static {v9}, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->access$1300(Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;)Landroid/content/Context;

    move-result-object v9

    check-cast v9, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getSATopScreenId()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "1243"

    invoke-static {v8, v9}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$7;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    iget-object v9, v9, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    # setter for: Lcom/sec/samsung/gallery/view/common/RenameDialog;->mShownError:Z
    invoke-static {v9, v13}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$902(Lcom/sec/samsung/gallery/view/common/RenameDialog;Z)Z

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$7;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    iget-object v9, v9, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog;->mAlertEditText:Landroid/widget/EditText;
    invoke-static {v9}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$300(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Landroid/widget/EditText;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$7;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    invoke-virtual {v10}, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f100111

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$7;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    iget-object v9, v9, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog;->mTextInputLayout:Landroid/support/design/widget/TextInputLayout;
    invoke-static {v9}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$200(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Landroid/support/design/widget/TextInputLayout;

    move-result-object v9

    if-eqz v9, :cond_c

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$7;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    iget-object v9, v9, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog;->mTextInputLayout:Landroid/support/design/widget/TextInputLayout;
    invoke-static {v9}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$200(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Landroid/support/design/widget/TextInputLayout;

    move-result-object v9

    invoke-virtual {v9, v13}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    :cond_c
    iget-object v9, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$7;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    # invokes: Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->startHandleRename()V
    invoke-static {v9}, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->access$2100(Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;)V

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$7;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    iget-object v9, v9, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$7;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    iget-object v10, v10, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog;->mAlertEditText:Landroid/widget/EditText;
    invoke-static {v10}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$300(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Landroid/widget/EditText;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v10

    # invokes: Lcom/sec/samsung/gallery/view/common/RenameDialog;->hideSoftInput(Landroid/os/IBinder;)V
    invoke-static {v9, v10}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$000(Lcom/sec/samsung/gallery/view/common/RenameDialog;Landroid/os/IBinder;)V

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$7;->this$1:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->access$2000(Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;)Landroid/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog;->dismiss()V

    goto/16 :goto_0
.end method
