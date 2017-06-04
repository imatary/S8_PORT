.class Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$11;
.super Ljava/lang/Object;
.source "CreateAlbumDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->createLeaveAlertDailog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$11;->this$1:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 11

    const/4 v8, 0x1

    const/4 v5, 0x0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$11;->this$1:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;

    # getter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mIsNewEvent:Z
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->access$1400(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;)Z

    move-result v0

    if-eqz v0, :cond_5

    # getter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->USE_CMH:Z
    invoke-static {}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->access$1500()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$11;->this$1:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;

    # getter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mIsLiveChannel:Z
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->access$2300(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$11;->this$1:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;

    # getter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mCtx:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->access$100(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryApplication()Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->getInstance(Lcom/sec/android/gallery3d/app/GalleryApp;)Lcom/sec/android/gallery3d/data/ChannelAlbumManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$11;->this$1:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;

    # getter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mCtx:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->access$100(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$11;->this$1:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;

    # getter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mString:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->access$1900(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$11;->this$1:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;

    # getter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mContact:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->access$2400(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->createNewLiveChannelAlbum(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$11;->this$1:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    # setter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mDoDismissDialog:Z
    invoke-static {v0, v8}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->access$2102(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;Z)Z

    :goto_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$11;->this$1:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mDoDismissDialog:Z
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->access$2100(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$11;->this$1:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;

    # getter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mCtx:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->access$100(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$11;->this$1:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->alertEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->access$500(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v9, v0, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$11;->this$1:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$11;->this$1:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;

    # getter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mCtx:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->access$100(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryApplication()Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->getInstance(Lcom/sec/android/gallery3d/app/GalleryApp;)Lcom/sec/android/gallery3d/data/ChannelAlbumManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$11;->this$1:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;

    # getter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mCtx:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->access$100(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$11;->this$1:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;

    # getter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mItemList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->access$2500(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$11;->this$1:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;

    # getter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mString:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->access$1900(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->createNewChannelAlbum(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$11;->this$1:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    # setter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mDoDismissDialog:Z
    invoke-static {v0, v8}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->access$2102(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;Z)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$11;->this$1:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mTextInputLayout:Landroid/support/design/widget/TextInputLayout;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->access$400(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;)Landroid/support/design/widget/TextInputLayout;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$11;->this$1:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mTextInputLayout:Landroid/support/design/widget/TextInputLayout;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->access$400(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;)Landroid/support/design/widget/TextInputLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$11;->this$1:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;

    # getter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mCtx:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->access$100(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a017d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$11;->this$1:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    # setter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mDoDismissDialog:Z
    invoke-static {v0, v5}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->access$2102(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;Z)Z

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$11;->this$1:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;

    iget-object v10, v0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$11;->this$1:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;

    # getter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mCtx:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->access$100(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryApplication()Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->getInstance(Lcom/sec/android/gallery3d/app/GalleryApp;)Lcom/sec/android/gallery3d/data/EventAlbumManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$11;->this$1:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;

    # getter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mCtx:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->access$100(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$11;->this$1:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;

    # getter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mItemList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->access$2500(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$11;->this$1:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;

    # getter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mBucketId:I
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->access$2200(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;)I

    move-result v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$11;->this$1:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;

    # getter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mString:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->access$1900(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;)Ljava/lang/String;

    move-result-object v4

    const-wide/16 v6, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->createNewEventAlbum(Landroid/content/Context;Ljava/util/ArrayList;ILjava/lang/String;ZJZ)Z

    move-result v0

    # setter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mDoDismissDialog:Z
    invoke-static {v10, v0}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->access$2102(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;Z)Z

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$11;->this$1:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;

    # getter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mCtx:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->access$100(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "NWAB"

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$11;->this$1:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    sget v2, Lcom/sec/samsung/gallery/core/Event;->EVENT_CREATE_NEW_ALBUM:I

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment$11;->this$1:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;

    # getter for: Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->mString:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->access$1900(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/core/Event;->setData(Ljava/lang/Object;)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
