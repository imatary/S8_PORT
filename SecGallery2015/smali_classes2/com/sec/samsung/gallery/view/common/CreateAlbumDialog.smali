.class public Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;
.super Lcom/sec/samsung/gallery/view/ViewObservable;
.source "CreateAlbumDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;
    }
.end annotation


# static fields
.field private static final HIDE_SOFT_INPUT:I = 0x0

.field private static final IS_VISIBLE_WINDOW:Ljava/lang/String; = "AxT9IME.isVisibleWindow"

.field private static final RESPONSE_AXT9INFO:Ljava/lang/String; = "ResponseAxT9Info"

.field private static final TAG:Ljava/lang/String; = "CreateAlbumDialog"

.field private static final USE_CMH:Z

.field private static final USE_DREAM_CHANNEL_VIEW_UX:Z

.field private static newAlbumPath:Ljava/lang/String;


# instance fields
.field private alertEditText:Landroid/widget/EditText;

.field private isSipVisible:Z

.field private mAlbumName:Ljava/lang/String;

.field private final mCtx:Landroid/content/Context;

.field private final mDialogFragment:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;

.field private mDoDismissDialog:Z

.field private mHandler:Landroid/os/Handler;

.field private final mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mNewAlbumDialogIsReady:Z

.field private mOperationType:I

.field private mPreviousName:Ljava/lang/String;

.field private mReceiveTime:J

.field private final mSDCardRemovedReceiver:Landroid/content/BroadcastReceiver;

.field private mShownError:Z

.field private mShownInvalidCharError:Z

.field private mSipIntentFilter:Landroid/content/IntentFilter;

.field private mSipReceiver:Landroid/content/BroadcastReceiver;

.field private mStoragePath:Ljava/lang/String;

.field private mTextInputLayout:Landroid/support/design/widget/TextInputLayout;

.field private mTitleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTooLongToast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDreamChannelViewGUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->USE_DREAM_CHANNEL_VIEW_UX:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/gallery3d/util/MediaSetUtils;->DEFAULT_NEW_ALBUM_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->newAlbumPath:Ljava/lang/String;

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->USE_CMH:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, v2

    move-object v5, v3

    move v6, v2

    move-object v7, v3

    move-object v8, v3

    invoke-direct/range {v0 .. v8}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;-><init>(Landroid/content/Context;ZLjava/util/ArrayList;ILjava/lang/String;ZLjava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, v2

    move-object v5, v3

    move v6, v2

    move-object v7, v3

    move-object v8, v3

    invoke-direct/range {v0 .. v8}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;-><init>(Landroid/content/Context;ZLjava/util/ArrayList;ILjava/lang/String;ZLjava/lang/String;Ljava/util/ArrayList;)V

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mStoragePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mAlbumName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLjava/util/ArrayList;ILjava/lang/String;ZLjava/lang/String;Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;I",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/ViewObservable;-><init>()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mDoDismissDialog:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mNewAlbumDialogIsReady:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mReceiveTime:J

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->alertEditText:Landroid/widget/EditText;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mStoragePath:Ljava/lang/String;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mTextInputLayout:Landroid/support/design/widget/TextInputLayout;

    const/4 v2, -0x1

    iput v2, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mOperationType:I

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mShownError:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mShownInvalidCharError:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mPreviousName:Ljava/lang/String;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mTitleList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mAlbumName:Ljava/lang/String;

    new-instance v2, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$3;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$3;-><init>(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;)V

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mSDCardRemovedReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mCtx:Landroid/content/Context;

    new-instance v2, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mCtx:Landroid/content/Context;

    move-object v3, p0

    move v5, p2

    move-object v6, p3

    move v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v2 .. v10}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;-><init>(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;Landroid/content/Context;ZLjava/util/ArrayList;ILjava/lang/String;ZLjava/lang/String;)V

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mDialogFragment:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;

    new-instance v2, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$1;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mCtx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$1;-><init>(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mTitleList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mCtx:Landroid/content/Context;

    const-string/jumbo v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->hideSoftInput(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mAlbumName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->getSuggestedName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mPreviousName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mPreviousName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mShownInvalidCharError:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mShownInvalidCharError:Z

    return p1
.end method

.method static synthetic access$1500()Z
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->USE_CMH:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mOperationType:I

    return v0
.end method

.method static synthetic access$1802(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mNewAlbumDialogIsReady:Z

    return p1
.end method

.method static synthetic access$200(Landroid/content/Context;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->setStorageForNewAlbum(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic access$2100(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mDoDismissDialog:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mDoDismissDialog:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->insertSALog(ZZ)V

    return-void
.end method

.method static synthetic access$2800(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mTitleList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;)Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mDialogFragment:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mShownError:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->isItemExist()Z

    move-result v0

    return v0
.end method

.method static synthetic access$302(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mShownError:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->existPrivateItemsOnly()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->setSipBroadcastReceiver()V

    return-void
.end method

.method static synthetic access$3300(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->isSipVisible:Z

    return v0
.end method

.method static synthetic access$3302(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->isSipVisible:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mReceiveTime:J

    return-wide v0
.end method

.method static synthetic access$3502(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;J)J
    .locals 1

    iput-wide p1, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mReceiveTime:J

    return-wide p1
.end method

.method static synthetic access$3600(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mSipReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mSipReceiver:Landroid/content/BroadcastReceiver;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mCtx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mStoragePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3900()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->newAlbumPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;)Landroid/support/design/widget/TextInputLayout;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mTextInputLayout:Landroid/support/design/widget/TextInputLayout;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;Landroid/support/design/widget/TextInputLayout;)Landroid/support/design/widget/TextInputLayout;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mTextInputLayout:Landroid/support/design/widget/TextInputLayout;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->alertEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->alertEditText:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mSDCardRemovedReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;)Landroid/widget/Toast;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mTooLongToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$702(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mTooLongToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$800()Z
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->USE_DREAM_CHANNEL_VIEW_UX:Z

    return v0
.end method

.method static synthetic access$900(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method private existPrivateItemsOnly()Z
    .locals 7

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mCtx:Landroid/content/Context;

    check-cast v4, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v4

    if-nez v4, :cond_0

    move v4, v5

    :goto_0
    return v4

    :cond_0
    new-instance v1, Lcom/sec/samsung/gallery/lib/factory/PrivateModeFactory;

    invoke-direct {v1}, Lcom/sec/samsung/gallery/lib/factory/PrivateModeFactory;-><init>()V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mCtx:Landroid/content/Context;

    invoke-interface {v1, v4}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/lib/libinterface/PrivateModeInterface;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mCtx:Landroid/content/Context;

    invoke-interface {v2, v4}, Lcom/sec/samsung/gallery/lib/libinterface/PrivateModeInterface;->isPrivateStorageMounted(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v4

    if-ge v0, v4, :cond_2

    invoke-virtual {v3, v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->get(I)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v4

    instance-of v4, v4, Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v4, :cond_1

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mCtx:Landroid/content/Context;

    invoke-virtual {v3, v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->get(I)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->isSecretBoxPath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    move v4, v5

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    move v4, v5

    goto :goto_0
.end method

.method private getSelectedAlbumName()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mCtx:Landroid/content/Context;

    check-cast v3, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/MediaObject;

    instance-of v3, v2, Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getStorageForNewAlbum()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->newAlbumPath:Ljava/lang/String;

    return-object v0
.end method

.method private getSuggestedName()Ljava/lang/String;
    .locals 13

    const v12, 0x7f0a02ec

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget v6, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mOperationType:I

    sget v7, Lcom/sec/samsung/gallery/core/Event;->EVENT_COLLECT_EVENT_ALBUM:I

    if-ne v6, v7, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->getSelectedAlbumName()Ljava/lang/String;

    move-result-object v5

    :goto_0
    return-object v5

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/sec/android/gallery3d/util/MediaSetUtils;->DEFAULT_NEW_ALBUM_DIR:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mStoragePath:Ljava/lang/String;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mStoragePath:Ljava/lang/String;

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mCtx:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a02ba

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    sget-object v3, Lcom/sec/android/gallery3d/util/MediaSetUtils;->REMOVABLE_SD_DIR_PATH:Ljava/lang/String;

    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mCtx:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0039

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v0, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mCtx:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mCtx:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x1

    add-long/2addr v0, v6

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0
.end method

.method private hideSoftInput(Landroid/os/IBinder;)V
    .locals 4

    :try_start_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mCtx:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mCtx:Landroid/content/Context;

    const-string/jumbo v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "CreateAlbumDialog"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private insertSALog(ZZ)V
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mCtx:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getSATopScreenId()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const-string/jumbo v1, "3007"

    :goto_0
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    const-string/jumbo v1, "3006"

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const-string/jumbo v1, "1086"

    :goto_2
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string/jumbo v1, "1085"

    goto :goto_2
.end method

.method private isItemExist()Z
    .locals 11

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mCtx:Landroid/content/Context;

    check-cast v7, Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getCloneMediaList()Ljava/util/LinkedList;

    move-result-object v6

    const/4 v1, 0x0

    invoke-virtual {v6}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/gallery3d/data/MediaObject;

    instance-of v10, v5, Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v10, :cond_0

    move-object v4, v5

    check-cast v4, Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v10, v4, Lcom/sec/android/gallery3d/data/LocalMediaItem;

    if-nez v10, :cond_1

    instance-of v10, v4, Lcom/sec/android/gallery3d/data/UnionLocalItem;

    if-eqz v10, :cond_4

    :cond_1
    move v3, v9

    :goto_0
    instance-of v10, v4, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;

    if-nez v10, :cond_2

    instance-of v10, v4, Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;

    if-nez v10, :cond_2

    instance-of v10, v4, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;

    if-nez v10, :cond_2

    instance-of v10, v4, Lcom/sec/android/gallery3d/data/UnionSCloudItem;

    if-eqz v10, :cond_5

    :cond_2
    move v2, v9

    :goto_1
    if-eqz v2, :cond_6

    const/4 v1, 0x1

    :cond_3
    :goto_2
    return v1

    :cond_4
    move v3, v8

    goto :goto_0

    :cond_5
    move v2, v8

    goto :goto_1

    :cond_6
    if-eqz v3, :cond_0

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v1, 0x1

    goto :goto_2
.end method

.method private setSipBroadcastReceiver()V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mSipIntentFilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mSipIntentFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mSipIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "ResponseAxT9Info"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mSipReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$2;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$2;-><init>(Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mSipReceiver:Landroid/content/BroadcastReceiver;

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mCtx:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mSipReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mSipIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private static setStorageForNewAlbum(Landroid/content/Context;Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a02ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->newAlbumPath:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/gallery3d/util/MediaSetUtils;->DEFAULT_NEW_ALBUM_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->newAlbumPath:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public dismissDialog()V
    .locals 5

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mDialogFragment:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x7f120094

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    iput v4, v2, Landroid/os/Message;->what:I

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    iget-boolean v3, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mNewAlbumDialogIsReady:Z

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iput-boolean v4, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mNewAlbumDialogIsReady:Z

    :cond_1
    return-void
.end method

.method public getNewAlbumDialogIsReady()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mNewAlbumDialogIsReady:Z

    return v0
.end method

.method public getOperationType()I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mOperationType:I

    return v0
.end method

.method public handleCreateStory(ILjava/lang/String;ZLjava/lang/String;Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v8, 0x1

    sget-boolean v0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->USE_CMH:Z

    if-eqz v0, :cond_3

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mCtx:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryApplication()Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->getInstance(Lcom/sec/android/gallery3d/app/GalleryApp;)Lcom/sec/android/gallery3d/data/ChannelAlbumManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mCtx:Landroid/content/Context;

    invoke-virtual {v0, v1, p2, p4}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->createNewLiveChannelAlbum(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v8, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mDoDismissDialog:Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mCtx:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryApplication()Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->getInstance(Lcom/sec/android/gallery3d/app/GalleryApp;)Lcom/sec/android/gallery3d/data/ChannelAlbumManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mCtx:Landroid/content/Context;

    invoke-virtual {v0, v1, p5, p2}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->createNewChannelAlbum(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v8, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mDoDismissDialog:Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mTextInputLayout:Landroid/support/design/widget/TextInputLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mTextInputLayout:Landroid/support/design/widget/TextInputLayout;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a017d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    :cond_2
    iput-boolean v5, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mDoDismissDialog:Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mCtx:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryApplication()Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->getInstance(Lcom/sec/android/gallery3d/app/GalleryApp;)Lcom/sec/android/gallery3d/data/EventAlbumManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mCtx:Landroid/content/Context;

    const-wide/16 v6, 0x0

    move-object v2, p5

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v8}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->createNewEventAlbum(Landroid/content/Context;Ljava/util/ArrayList;ILjava/lang/String;ZJZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mDoDismissDialog:Z

    goto :goto_0
.end method

.method public setCurrentName(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mDialogFragment:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->setCurrentName(Ljava/lang/String;)V

    return-void
.end method

.method public setDialogDismiss(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mDoDismissDialog:Z

    return-void
.end method

.method public setOperationType(I)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mOperationType:I

    return-void
.end method

.method public showNewAlbumDialog()V
    .locals 4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mDialogFragment:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mDialogFragment:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->mCtx:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v3, "dialog"

    invoke-virtual {v2, v1, v3}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog$NewAlbumAlertDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "CreateAlbumDialog"

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
