.class Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;
.super Landroid/app/DialogFragment;
.source "RenameDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/common/RenameDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaRenameDialogFragment"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RenameDialogFragment"


# instance fields
.field private MAX_NAME_LENGTH:I

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mClipVisible:Z

.field private final mCtx:Landroid/content/Context;

.field private mIsFileRename:Z

.field private mItem:Lcom/sec/android/gallery3d/data/MediaObject;

.field private mNeedExitSelectionMode:Z

.field private mOrgFilePath:Ljava/lang/String;

.field private mOrgName:Ljava/lang/String;

.field private mSetPath:Ljava/lang/String;

.field private mString:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/view/common/RenameDialog;Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mClipVisible:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mIsFileRename:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mNeedExitSelectionMode:Z

    const/16 v1, 0x32

    iput v1, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->MAX_NAME_LENGTH:I

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mAlertDialog:Landroid/app/AlertDialog;

    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mString:Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mSetPath:Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mOrgName:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mCtx:Landroid/content/Context;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->setArguments(Landroid/os/Bundle;)V

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog;->mNeedExtraLength:Z
    invoke-static {p1}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$100(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEventView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDreamChannelViewGUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x50

    iput v1, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->MAX_NAME_LENGTH:I

    :cond_0
    return-void
.end method

.method static synthetic access$1200(Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->MAX_NAME_LENGTH:I

    return v0
.end method

.method static synthetic access$1300(Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mCtx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mNeedExitSelectionMode:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mNeedExitSelectionMode:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mOrgName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mOrgName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;)Lcom/sec/android/gallery3d/data/MediaObject;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mItem:Lcom/sec/android/gallery3d/data/MediaObject;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->startHandleRename()V

    return-void
.end method

.method static synthetic access$2300(Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mOrgFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mClipVisible:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mIsFileRename:Z

    return p1
.end method

.method private startHandleRename()V
    .locals 7

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mSetPath:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mItem:Lcom/sec/android/gallery3d/data/MediaObject;

    if-eqz v1, :cond_1

    :cond_0
    new-instance v0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;-><init>()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mCtx:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mCtx:Landroid/content/Context;

    const v4, 0x7f0a0247

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    new-instance v6, Lcom/sec/samsung/gallery/util/FileUtil;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mCtx:Landroid/content/Context;

    invoke-direct {v6, v1}, Lcom/sec/samsung/gallery/util/FileUtil;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$10;

    invoke-direct {v1, p0, v0}, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$10;-><init>(Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mSetPath:Ljava/lang/String;

    invoke-virtual {v6, v1, v2}, Lcom/sec/samsung/gallery/util/FileUtil;->operateMedias(Lcom/sec/android/gallery3d/data/OnProgressListener;Ljava/lang/String;)Lcom/sec/samsung/gallery/util/MediaOperations;

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_RENAME_MEDIA:I

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/core/Event;->setData(Ljava/lang/Object;)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_0
    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mIsFileRename:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mCtx:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    const-string/jumbo v2, "EXIT_SELECTION_MODE"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mNeedExitSelectionMode:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mCtx:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->removeAll()V

    :cond_2
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 18

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mCtx:Landroid/content/Context;

    invoke-static {v11}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v12

    const v13, 0x7f040033

    const/4 v11, 0x0

    check-cast v11, Landroid/view/ViewGroup;

    invoke-virtual {v12, v13, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    const v11, 0x7f120093

    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/support/design/widget/TextInputLayout;

    # setter for: Lcom/sec/samsung/gallery/view/common/RenameDialog;->mTextInputLayout:Landroid/support/design/widget/TextInputLayout;
    invoke-static {v12, v11}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$202(Lcom/sec/samsung/gallery/view/common/RenameDialog;Landroid/support/design/widget/TextInputLayout;)Landroid/support/design/widget/TextInputLayout;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    const v11, 0x7f120094

    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    # setter for: Lcom/sec/samsung/gallery/view/common/RenameDialog;->mAlertEditText:Landroid/widget/EditText;
    invoke-static {v12, v11}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$302(Lcom/sec/samsung/gallery/view/common/RenameDialog;Landroid/widget/EditText;)Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog;->mAlertEditText:Landroid/widget/EditText;
    invoke-static {v11}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$300(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Landroid/widget/EditText;

    move-result-object v11

    const v12, 0x84001

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setInputType(I)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog;->mAlertEditText:Landroid/widget/EditText;
    invoke-static {v11}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$300(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Landroid/widget/EditText;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/EditText;->requestFocus()Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog;->mAlertEditText:Landroid/widget/EditText;
    invoke-static {v11}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$300(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Landroid/widget/EditText;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->getInputExtras(Z)Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v11, "maxLength"

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->MAX_NAME_LENGTH:I

    invoke-virtual {v3, v11, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog;->mTooLongToast:Landroid/widget/Toast;
    invoke-static {v11}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$400(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Landroid/widget/Toast;

    move-result-object v11

    if-nez v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog;->mIsEvent:Z
    invoke-static {v11}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$500(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Z

    move-result v11

    if-eqz v11, :cond_9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mCtx:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mCtx:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog;->USE_DREAM_CHANNEL_VIEW_UX:Z
    invoke-static {}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$600()Z

    move-result v11

    if-eqz v11, :cond_8

    const v11, 0x7f0a0268

    :goto_0
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->MAX_NAME_LENGTH:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v14, v11, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x0

    invoke-static {v13, v11, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    # setter for: Lcom/sec/samsung/gallery/view/common/RenameDialog;->mTooLongToast:Landroid/widget/Toast;
    invoke-static {v12, v11}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$402(Lcom/sec/samsung/gallery/view/common/RenameDialog;Landroid/widget/Toast;)Landroid/widget/Toast;

    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog;->mInvalidToast:Landroid/widget/Toast;
    invoke-static {v11}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$700(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Landroid/widget/Toast;

    move-result-object v11

    if-nez v11, :cond_1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mCtx:Landroid/content/Context;

    const v13, 0x7f0a021c

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v12

    # setter for: Lcom/sec/samsung/gallery/view/common/RenameDialog;->mInvalidToast:Landroid/widget/Toast;
    invoke-static {v11, v12}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$702(Lcom/sec/samsung/gallery/view/common/RenameDialog;Landroid/widget/Toast;)Landroid/widget/Toast;

    :cond_1
    new-instance v7, Lcom/sec/samsung/gallery/lib/factory/InputMethodManagerFactory;

    invoke-direct {v7}, Lcom/sec/samsung/gallery/lib/factory/InputMethodManagerFactory;-><init>()V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mCtx:Landroid/content/Context;

    invoke-interface {v7, v11}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/samsung/gallery/lib/libinterface/InputMethodManagerInterface;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mCtx:Landroid/content/Context;

    invoke-interface {v5, v11}, Lcom/sec/samsung/gallery/lib/libinterface/InputMethodManagerInterface;->isAccessoryKeyboardState(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog;->mAlertEditText:Landroid/widget/EditText;
    invoke-static {v11}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$300(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Landroid/widget/EditText;

    move-result-object v11

    new-instance v12, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$1;-><init>(Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;)V

    const-wide/16 v14, 0x12c

    invoke-virtual {v11, v12, v14, v15}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mString:Ljava/lang/String;

    if-eqz v11, :cond_c

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mString:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->MAX_NAME_LENGTH:I

    if-le v11, v12, :cond_c

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog;->mAlertEditText:Landroid/widget/EditText;
    invoke-static {v11}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$300(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Landroid/widget/EditText;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mString:Ljava/lang/String;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->MAX_NAME_LENGTH:I

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog;->mAlertEditText:Landroid/widget/EditText;
    invoke-static {v11}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$300(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Landroid/widget/EditText;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mString:Ljava/lang/String;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->MAX_NAME_LENGTH:I

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setSelection(I)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog;->mAlertEditText:Landroid/widget/EditText;
    invoke-static {v11}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$300(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Landroid/widget/EditText;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/EditText;->selectAll()V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog;->mTextInputLayout:Landroid/support/design/widget/TextInputLayout;
    invoke-static {v11}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$200(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Landroid/support/design/widget/TextInputLayout;

    move-result-object v11

    if-eqz v11, :cond_3

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog;->mIsEvent:Z
    invoke-static {v11}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$500(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Z

    move-result v11

    if-eqz v11, :cond_b

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog;->mTextInputLayout:Landroid/support/design/widget/TextInputLayout;
    invoke-static {v11}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$200(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Landroid/support/design/widget/TextInputLayout;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mCtx:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog;->USE_DREAM_CHANNEL_VIEW_UX:Z
    invoke-static {}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$600()Z

    move-result v11

    if-eqz v11, :cond_a

    const v11, 0x7f0a0268

    :goto_2
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->MAX_NAME_LENGTH:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v13, v11, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog;->mAlertEditText:Landroid/widget/EditText;
    invoke-static {v11}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$300(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Landroid/widget/EditText;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    new-instance v4, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$2;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$2;-><init>(Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;)V

    new-instance v6, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$3;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->MAX_NAME_LENGTH:I

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v11}, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$3;-><init>(Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;I)V

    const v10, 0x7f0a036c

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mCtx:Landroid/content/Context;

    check-cast v11, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isEventViewMode()Z

    move-result v11

    if-nez v11, :cond_4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog;->mIsEvent:Z
    invoke-static {v11}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$500(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Z

    move-result v11

    if-eqz v11, :cond_e

    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mItem:Lcom/sec/android/gallery3d/data/MediaObject;

    instance-of v11, v11, Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v11, :cond_e

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog;->USE_CMH:Z
    invoke-static {}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$1100()Z

    move-result v11

    if-eqz v11, :cond_5

    const v10, 0x7f0a036d

    :cond_5
    :goto_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog;->mAlertEditText:Landroid/widget/EditText;
    invoke-static {v11}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$300(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Landroid/widget/EditText;

    move-result-object v11

    const-string/jumbo v12, "inputType=filename;disableEmoticonInput=true"

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog;->mAlertEditText:Landroid/widget/EditText;
    invoke-static {v11}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$300(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Landroid/widget/EditText;

    move-result-object v11

    const/4 v12, 0x2

    new-array v12, v12, [Landroid/text/InputFilter;

    const/4 v13, 0x0

    aput-object v4, v12, v13

    const/4 v13, 0x1

    aput-object v6, v12, v13

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mOrgName:Ljava/lang/String;

    if-nez v11, :cond_6

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mItem:Lcom/sec/android/gallery3d/data/MediaObject;

    instance-of v11, v11, Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v11, :cond_f

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mItem:Lcom/sec/android/gallery3d/data/MediaObject;

    check-cast v11, Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mOrgName:Ljava/lang/String;

    :cond_6
    :goto_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog;->mPreviousName:Ljava/lang/String;
    invoke-static {v11}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$1400(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_7

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mOrgName:Ljava/lang/String;

    # setter for: Lcom/sec/samsung/gallery/view/common/RenameDialog;->mPreviousName:Ljava/lang/String;
    invoke-static {v11, v12}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$1402(Lcom/sec/samsung/gallery/view/common/RenameDialog;Ljava/lang/String;)Ljava/lang/String;

    :cond_7
    new-instance v11, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v11, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    invoke-virtual {v11, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f0a036b

    new-instance v13, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$5;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$5;-><init>(Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;)V

    invoke-virtual {v11, v12, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const/high16 v12, 0x1040000

    new-instance v13, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$4;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$4;-><init>(Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;)V

    invoke-virtual {v11, v12, v13}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v11}, Landroid/app/AlertDialog;->show()V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog;->mAlertEditText:Landroid/widget/EditText;
    invoke-static {v11}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$300(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Landroid/widget/EditText;

    move-result-object v11

    new-instance v12, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$6;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$6;-><init>(Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;)V

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v12, -0x1

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mOrgName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog;->mAlertEditText:Landroid/widget/EditText;
    invoke-static {v13}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$300(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Landroid/widget/EditText;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    # invokes: Lcom/sec/samsung/gallery/view/common/RenameDialog;->isSameName(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v11, v12, v13}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$1600(Lcom/sec/samsung/gallery/view/common/RenameDialog;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_10

    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_6
    new-instance v11, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$7;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$7;-><init>(Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;)V

    invoke-virtual {v8, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v9, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$8;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$8;-><init>(Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog;->mAlertEditText:Landroid/widget/EditText;
    invoke-static {v11}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$300(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Landroid/widget/EditText;

    move-result-object v11

    invoke-virtual {v11, v9}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog;->mAlertEditText:Landroid/widget/EditText;
    invoke-static {v11}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$300(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Landroid/widget/EditText;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setFocusable(Z)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v11

    :cond_8
    const v11, 0x7f0a04a1

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mCtx:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mCtx:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a0250

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->MAX_NAME_LENGTH:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v12

    # setter for: Lcom/sec/samsung/gallery/view/common/RenameDialog;->mTooLongToast:Landroid/widget/Toast;
    invoke-static {v11, v12}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$402(Lcom/sec/samsung/gallery/view/common/RenameDialog;Landroid/widget/Toast;)Landroid/widget/Toast;

    goto/16 :goto_1

    :cond_a
    const v11, 0x7f0a04a1

    goto/16 :goto_2

    :cond_b
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog;->mTextInputLayout:Landroid/support/design/widget/TextInputLayout;
    invoke-static {v11}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$200(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Landroid/support/design/widget/TextInputLayout;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mCtx:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a0250

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->MAX_NAME_LENGTH:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_c
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    const/4 v12, 0x0

    # setter for: Lcom/sec/samsung/gallery/view/common/RenameDialog;->mShownError:Z
    invoke-static {v11, v12}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$902(Lcom/sec/samsung/gallery/view/common/RenameDialog;Z)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog;->mAlertEditText:Landroid/widget/EditText;
    invoke-static {v11}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$300(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Landroid/widget/EditText;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f100111

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog;->mTextInputLayout:Landroid/support/design/widget/TextInputLayout;
    invoke-static {v11}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$200(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Landroid/support/design/widget/TextInputLayout;

    move-result-object v11

    if-eqz v11, :cond_d

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog;->mTextInputLayout:Landroid/support/design/widget/TextInputLayout;
    invoke-static {v11}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$200(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Landroid/support/design/widget/TextInputLayout;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    :cond_d
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog;->mAlertEditText:Landroid/widget/EditText;
    invoke-static {v11}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$300(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Landroid/widget/EditText;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mString:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog;->mAlertEditText:Landroid/widget/EditText;
    invoke-static {v11}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$300(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Landroid/widget/EditText;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog;->mAlertEditText:Landroid/widget/EditText;
    invoke-static {v12}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$300(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Landroid/widget/EditText;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/EditText;->length()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setSelection(I)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog;->mAlertEditText:Landroid/widget/EditText;
    invoke-static {v11}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$300(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Landroid/widget/EditText;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/EditText;->selectAll()V

    goto/16 :goto_3

    :cond_e
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mIsFileRename:Z

    if-eqz v11, :cond_5

    const v10, 0x7f0a08a7

    goto/16 :goto_4

    :cond_f
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mItem:Lcom/sec/android/gallery3d/data/MediaObject;

    check-cast v11, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/data/MediaItem;->getName()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mOrgName:Ljava/lang/String;

    goto/16 :goto_5

    :cond_10
    const/4 v11, 0x1

    invoke-virtual {v8, v11}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_6
.end method

.method public onPause()V
    .locals 8

    const/4 v3, 0x1

    invoke-super {p0}, Landroid/app/DialogFragment;->onPause()V

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

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mCtx:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/lib/libinterface/ClipBoardManagerInterface;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mCtx:Landroid/content/Context;

    invoke-interface {v0, v2}, Lcom/sec/samsung/gallery/lib/libinterface/ClipBoardManagerInterface;->isShowing(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mClipVisible:Z

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog;->mReceiveTime:J
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$2800(Lcom/sec/samsung/gallery/view/common/RenameDialog;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x2ee

    cmp-long v2, v4, v6

    if-gez v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    # setter for: Lcom/sec/samsung/gallery/view/common/RenameDialog;->mIsSipVisible:Z
    invoke-static {v2, v3}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$2602(Lcom/sec/samsung/gallery/view/common/RenameDialog;Z)Z

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog;->mSipReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$2900(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mCtx:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog;->mSipReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$2900(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Landroid/content/BroadcastReceiver;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    const/4 v3, 0x0

    # setter for: Lcom/sec/samsung/gallery/view/common/RenameDialog;->mSipReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v2, v3}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$2902(Lcom/sec/samsung/gallery/view/common/RenameDialog;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog;->mAlertEditText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$300(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    # invokes: Lcom/sec/samsung/gallery/view/common/RenameDialog;->hideSoftInput(Landroid/os/IBinder;)V
    invoke-static {v2, v3}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$000(Lcom/sec/samsung/gallery/view/common/RenameDialog;Landroid/os/IBinder;)V

    return-void

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog;->mDialogFragment:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$2400(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f120094

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    # invokes: Lcom/sec/samsung/gallery/view/common/RenameDialog;->setSipBroadcastReceiver()V
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$2500(Lcom/sec/samsung/gallery/view/common/RenameDialog;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/RenameDialog;->mIsSipVisible:Z
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->access$2600(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$9;

    invoke-direct {v2, p0, v1}, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment$9;-><init>(Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;Landroid/widget/EditText;)V

    const-wide/16 v4, 0x258

    invoke-virtual {v1, v2, v4, v5}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public setCurrentFilePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mOrgFilePath:Ljava/lang/String;

    return-void
.end method

.method public setCurrentItem(Lcom/sec/android/gallery3d/data/MediaObject;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mItem:Lcom/sec/android/gallery3d/data/MediaObject;

    return-void
.end method

.method public setCurrentName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mString:Ljava/lang/String;

    return-void
.end method

.method public setCurrentTopSetPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mSetPath:Ljava/lang/String;

    return-void
.end method
