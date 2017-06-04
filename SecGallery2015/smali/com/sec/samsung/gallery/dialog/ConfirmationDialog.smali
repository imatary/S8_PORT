.class public Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;
.super Lcom/sec/samsung/gallery/dialog/GalleryDialog;
.source "ConfirmationDialog.java"


# static fields
.field public static final DELETE_CANCEL:I = 0x1

.field public static final DELETE_CONFIRM:I = 0x2

.field public static final DESTROY_DIALOG:I


# instance fields
.field private final mCtx:Landroid/content/Context;

.field private final mEvent:Lcom/sec/samsung/gallery/core/Event;

.field private mIsAirButton:Z

.field private final mMessage:Ljava/lang/String;

.field private mNoOfStoriesSelected:I

.field private final mTitle:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Lcom/sec/samsung/gallery/core/Event;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/dialog/GalleryDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->mCtx:Landroid/content/Context;

    iput-object p4, p0, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->mEvent:Lcom/sec/samsung/gallery/core/Event;

    iput p2, p0, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->mTitle:I

    iput-object p3, p0, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->mMessage:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->mIsAirButton:Z

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->mCtx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->mTitle:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;)Lcom/sec/samsung/gallery/core/Event;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->mEvent:Lcom/sec/samsung/gallery/core/Event;

    return-object v0
.end method

.method private getDialogTitleString()Ljava/lang/String;
    .locals 9

    const v8, 0x7f0a0329

    const v7, 0x7f0a0328

    const v6, 0x7f0a02af

    const v5, 0x7f0a0022

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_1

    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->mEvent:Lcom/sec/samsung/gallery/core/Event;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/core/Event;->getType()I

    move-result v3

    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_DELETE_FROM_RECYCLEBIN:I

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->mEvent:Lcom/sec/samsung/gallery/core/Event;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/core/Event;->getType()I

    move-result v3

    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_EMPTY_TRASH_FROM_RECYCLEBIN:I

    if-ne v3, v4, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a032a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    return-object v2

    :cond_1
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "mediaType"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->mEvent:Lcom/sec/samsung/gallery/core/Event;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/core/Event;->getType()I

    move-result v3

    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_SHOW_DELETE_DIALOG_IN_DETAILVIEW_FROM_RECYCLEBIN:I

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->mEvent:Lcom/sec/samsung/gallery/core/Event;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/core/Event;->getType()I

    move-result v3

    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_REMOVE_FROM_EVENTVIEW:I

    if-ne v3, v4, :cond_7

    :cond_3
    iget v2, p0, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->mTitle:I

    if-eq v2, v8, :cond_4

    const/4 v2, 0x4

    if-ne v0, v2, :cond_5

    :cond_4
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_5
    iget v2, p0, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->mTitle:I

    if-eq v2, v7, :cond_6

    const/4 v2, 0x2

    if-ne v0, v2, :cond_9

    :cond_6
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_7
    iget v3, p0, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->mTitle:I

    if-ne v3, v5, :cond_8

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_8
    iget v3, p0, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->mTitle:I

    if-ne v3, v6, :cond_9

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->mNoOfStoriesSelected:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_9
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private logDCStateForConfirmPopup(Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$LoggingType;)V
    .locals 3

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->mEvent:Lcom/sec/samsung/gallery/core/Event;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/core/Event;->getType()I

    move-result v1

    sget v2, Lcom/sec/samsung/gallery/core/Event;->EVENT_NEW_ALBUM_CANCEL:I

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->mEvent:Lcom/sec/samsung/gallery/core/Event;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/core/Event;->getType()I

    move-result v1

    sget v2, Lcom/sec/samsung/gallery/core/Event;->EVENT_EMPTY_TRASH_FROM_RECYCLEBIN:I

    if-ne v1, v2, :cond_2

    const-string/jumbo v0, "RecycleBinPopUp"

    :goto_1
    invoke-static {v0, p1}, Lcom/samsung/android/devicecog/gallery/DCStateLogUtil;->logDCState(Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$LoggingType;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "DeletePopUp"

    goto :goto_1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    const v2, 0x7f0a00e0

    const v1, 0x7f0a02f4

    iget v3, p0, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->mTitle:I

    if-eq v3, v2, :cond_0

    iget v3, p0, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->mTitle:I

    const v4, 0x7f0a00e6

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->mTitle:I

    const v4, 0x7f0a00e7

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->mTitle:I

    const v4, 0x7f0a00fc

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->mTitle:I

    const v4, 0x7f0a00ef

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->mTitle:I

    const v4, 0x7f0a00f0

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->mTitle:I

    const v4, 0x7f0a0103

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->mTitle:I

    const v4, 0x7f0a0104

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->mTitle:I

    const v4, 0x7f0a00ea

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->mTitle:I

    const v4, 0x7f0a00eb

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->mTitle:I

    const v4, 0x7f0a00f2

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->mTitle:I

    const v4, 0x7f0a0328

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->mTitle:I

    const v4, 0x7f0a0329

    if-ne v3, v4, :cond_3

    :cond_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->mEvent:Lcom/sec/samsung/gallery/core/Event;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/core/Event;->getType()I

    move-result v3

    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_EMPTY_TRASH_FROM_RECYCLEBIN:I

    if-ne v3, v4, :cond_2

    const v1, 0x7f0a0162

    :cond_1
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->mMessage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog$2;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog$2;-><init>(Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;)V

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    new-instance v4, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog$1;

    invoke-direct {v4, p0}, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog$1;-><init>(Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x100

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x3eb

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->getDialogTitleString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    sget-object v2, Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$LoggingType;->ENTER:Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$LoggingType;

    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->logDCStateForConfirmPopup(Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$LoggingType;)V

    return-object v0

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->mTitle:I

    const v3, 0x7f0a0356

    if-eq v2, v3, :cond_4

    iget v2, p0, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->mTitle:I

    const v3, 0x7f0a035a

    if-eq v2, v3, :cond_4

    iget v2, p0, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->mTitle:I

    const v3, 0x7f0a0368

    if-eq v2, v3, :cond_4

    iget v2, p0, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->mTitle:I

    const v3, 0x7f0a035b

    if-eq v2, v3, :cond_4

    iget v2, p0, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->mTitle:I

    const v3, 0x7f0a0357

    if-eq v2, v3, :cond_4

    iget v2, p0, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->mTitle:I

    const v3, 0x7f0a0366

    if-ne v2, v3, :cond_5

    :cond_4
    const v1, 0x7f0a0356

    goto :goto_0

    :cond_5
    iget v2, p0, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->mTitle:I

    const v3, 0x7f0a011f

    if-ne v2, v3, :cond_6

    const v1, 0x7f0a00d8

    goto/16 :goto_0

    :cond_6
    iget v2, p0, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->mTitle:I

    const v3, 0x7f0a00e4

    if-eq v2, v3, :cond_7

    iget v2, p0, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->mTitle:I

    const v3, 0x7f0a00e1

    if-eq v2, v3, :cond_7

    iget v2, p0, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->mTitle:I

    const v3, 0x7f0a02af

    if-eq v2, v3, :cond_7

    iget v2, p0, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->mTitle:I

    const v3, 0x7f0a0022

    if-ne v2, v3, :cond_1

    :cond_7
    const v1, 0x7f0a00e0

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$LoggingType;->EXIT:Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$LoggingType;

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->logDCStateForConfirmPopup(Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$LoggingType;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->mCtx:Landroid/content/Context;

    instance-of v0, v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->mCtx:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v0

    const-string/jumbo v1, "UNLOCK_TOUCH"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->mIsAirButton:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->mCtx:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->removeAll()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->mCtx:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v0

    const-string/jumbo v1, "EXIT_SELECTION_MODE"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    invoke-super {p0}, Lcom/sec/samsung/gallery/dialog/GalleryDialog;->onDestroy()V

    return-void
.end method

.method public setIsAirButton(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->mIsAirButton:Z

    return-void
.end method

.method public setSelectedStoryCount(I)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->mNoOfStoriesSelected:I

    return-void
.end method
