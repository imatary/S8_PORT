.class public Lcom/sec/samsung/gallery/view/common/RenameDialog;
.super Lcom/sec/samsung/gallery/view/ViewObservable;
.source "RenameDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;
    }
.end annotation


# static fields
.field private static final HIDE_SOFT_INPUT:I = 0x0

.field static final INVALID_CHANNEL_CHAR:[Ljava/lang/String;

.field static final INVALID_CHAR:[Ljava/lang/String;

.field static final INVALID_EVENT_CHAR:[Ljava/lang/String;

.field private static final IS_VISIBLE_WINDOW:Ljava/lang/String; = "AxT9IME.isVisibleWindow"

.field private static final RESPONSE_AXT9INFO:Ljava/lang/String; = "ResponseAxT9Info"

.field private static final TAG:Ljava/lang/String; = "RenameDialog"

.field private static final USE_CMH:Z

.field private static final USE_DREAM_CHANNEL_VIEW_UX:Z


# instance fields
.field private mAlertEditText:Landroid/widget/EditText;

.field private final mCtx:Landroid/content/Context;

.field private final mDialogFragment:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

.field private mHandler:Landroid/os/Handler;

.field private final mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mInvalidToast:Landroid/widget/Toast;

.field private mIsEvent:Z

.field private mIsSipVisible:Z

.field private mNeedExtraLength:Z

.field private mPreviousName:Ljava/lang/String;

.field private mReachedUpToMax:Z

.field private mReceiveTime:J

.field private mShowInvalidCharError:Z

.field private mShownError:Z

.field private mSipIntentFilter:Landroid/content/IntentFilter;

.field private mSipReceiver:Landroid/content/BroadcastReceiver;

.field private mTextInputLayout:Landroid/support/design/widget/TextInputLayout;

.field private mTooLongToast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/common/RenameDialog;->USE_CMH:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDreamChannelViewGUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/common/RenameDialog;->USE_DREAM_CHANNEL_VIEW_UX:Z

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "\\"

    aput-object v1, v0, v3

    const-string/jumbo v1, "/"

    aput-object v1, v0, v4

    const-string/jumbo v1, ":"

    aput-object v1, v0, v5

    const-string/jumbo v1, "*"

    aput-object v1, v0, v6

    const-string/jumbo v1, "?"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "\""

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "<"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, ">"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "|"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "."

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/samsung/gallery/view/common/RenameDialog;->INVALID_CHAR:[Ljava/lang/String;

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "\\"

    aput-object v1, v0, v3

    const-string/jumbo v1, "/"

    aput-object v1, v0, v4

    const-string/jumbo v1, ":"

    aput-object v1, v0, v5

    const-string/jumbo v1, "*"

    aput-object v1, v0, v6

    const-string/jumbo v1, "?"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "\""

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "<"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, ">"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "|"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "%"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/samsung/gallery/view/common/RenameDialog;->INVALID_EVENT_CHAR:[Ljava/lang/String;

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "\\"

    aput-object v1, v0, v3

    const-string/jumbo v1, "/"

    aput-object v1, v0, v4

    const-string/jumbo v1, ":"

    aput-object v1, v0, v5

    const-string/jumbo v1, "*"

    aput-object v1, v0, v6

    const-string/jumbo v1, "?"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "\""

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "<"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, ">"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "|"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/samsung/gallery/view/common/RenameDialog;->INVALID_CHANNEL_CHAR:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/samsung/gallery/view/common/RenameDialog;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 3

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/ViewObservable;-><init>()V

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog;->mIsEvent:Z

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog;->mShownError:Z

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog;->mShowInvalidCharError:Z

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog;->mNeedExtraLength:Z

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog;->mReachedUpToMax:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog;->mReceiveTime:J

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog;->mAlertEditText:Landroid/widget/EditText;

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog;->mHandler:Landroid/os/Handler;

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog;->mPreviousName:Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog;->mTextInputLayout:Landroid/support/design/widget/TextInputLayout;

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog;->mTooLongToast:Landroid/widget/Toast;

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog;->mInvalidToast:Landroid/widget/Toast;

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog;->mCtx:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog;->mNeedExtraLength:Z

    new-instance v0, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog;->mCtx:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;-><init>(Lcom/sec/samsung/gallery/view/common/RenameDialog;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog;->mDialogFragment:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    new-instance v0, Lcom/sec/samsung/gallery/view/common/RenameDialog$1;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog;->mCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/view/common/RenameDialog$1;-><init>(Lcom/sec/samsung/gallery/view/common/RenameDialog;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog;->mCtx:Landroid/content/Context;

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/common/RenameDialog;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->hideSoftInput(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog;->mNeedExtraLength:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog;->mShowInvalidCharError:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/sec/samsung/gallery/view/common/RenameDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog;->mShowInvalidCharError:Z

    return p1
.end method

.method static synthetic access$1100()Z
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/view/common/RenameDialog;->USE_CMH:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog;->mPreviousName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/sec/samsung/gallery/view/common/RenameDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog;->mPreviousName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/sec/samsung/gallery/view/common/RenameDialog;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->isSameName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Landroid/support/design/widget/TextInputLayout;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog;->mTextInputLayout:Landroid/support/design/widget/TextInputLayout;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/samsung/gallery/view/common/RenameDialog;Landroid/support/design/widget/TextInputLayout;)Landroid/support/design/widget/TextInputLayout;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog;->mTextInputLayout:Landroid/support/design/widget/TextInputLayout;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog;->mReachedUpToMax:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/sec/samsung/gallery/view/common/RenameDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog;->mReachedUpToMax:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog;->mDialogFragment:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sec/samsung/gallery/view/common/RenameDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->setSipBroadcastReceiver()V

    return-void
.end method

.method static synthetic access$2600(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog;->mIsSipVisible:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/sec/samsung/gallery/view/common/RenameDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog;->mIsSipVisible:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/sec/samsung/gallery/view/common/RenameDialog;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog;->mReceiveTime:J

    return-wide v0
.end method

.method static synthetic access$2802(Lcom/sec/samsung/gallery/view/common/RenameDialog;J)J
    .locals 1

    iput-wide p1, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog;->mReceiveTime:J

    return-wide p1
.end method

.method static synthetic access$2900(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog;->mSipReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/sec/samsung/gallery/view/common/RenameDialog;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog;->mSipReceiver:Landroid/content/BroadcastReceiver;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog;->mAlertEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/samsung/gallery/view/common/RenameDialog;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog;->mAlertEditText:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Landroid/widget/Toast;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog;->mTooLongToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/samsung/gallery/view/common/RenameDialog;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog;->mTooLongToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog;->mIsEvent:Z

    return v0
.end method

.method static synthetic access$600()Z
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/view/common/RenameDialog;->USE_DREAM_CHANNEL_VIEW_UX:Z

    return v0
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Landroid/widget/Toast;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog;->mInvalidToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$702(Lcom/sec/samsung/gallery/view/common/RenameDialog;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog;->mInvalidToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$800(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/samsung/gallery/view/common/RenameDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog;->mShownError:Z

    return v0
.end method

.method static synthetic access$902(Lcom/sec/samsung/gallery/view/common/RenameDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog;->mShownError:Z

    return p1
.end method

.method private hideSoftInput(Landroid/os/IBinder;)V
    .locals 4

    :try_start_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog;->mCtx:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog;->mCtx:Landroid/content/Context;

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

    const-string/jumbo v2, "RenameDialog"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isSameName(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-boolean v0, Lcom/sec/samsung/gallery/view/common/RenameDialog;->USE_CMH:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog;->mCtx:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isEventViewMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog;->mIsEvent:Z

    if-eqz v0, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    return v0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method private setSipBroadcastReceiver()V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog;->mSipIntentFilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog;->mSipIntentFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog;->mSipIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "ResponseAxT9Info"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog;->mSipReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sec/samsung/gallery/view/common/RenameDialog$2;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/common/RenameDialog$2;-><init>(Lcom/sec/samsung/gallery/view/common/RenameDialog;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog;->mSipReceiver:Landroid/content/BroadcastReceiver;

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog;->mCtx:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog;->mSipReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog;->mSipIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public dismissMediaRenameDialog()V
    .locals 4

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog;->mDialogFragment:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog;->mDialogFragment:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    const v3, 0x7f120094

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    const/4 v3, 0x0

    iput v3, v2, Landroid/os/Message;->what:I

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog;->mDialogFragment:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->dismiss()V

    :cond_1
    return-void
.end method

.method public setCurrentFilePath(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog;->mDialogFragment:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->setCurrentFilePath(Ljava/lang/String;)V

    return-void
.end method

.method public setCurrentItem(Lcom/sec/android/gallery3d/data/MediaObject;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog;->mDialogFragment:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->setCurrentItem(Lcom/sec/android/gallery3d/data/MediaObject;)V

    return-void
.end method

.method public setCurrentName(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog;->mDialogFragment:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->setCurrentName(Ljava/lang/String;)V

    return-void
.end method

.method public setEvent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog;->mIsEvent:Z

    return-void
.end method

.method public setExitSelectionMode(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog;->mDialogFragment:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    # setter for: Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mNeedExitSelectionMode:Z
    invoke-static {v0, p1}, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->access$1502(Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;Z)Z

    return-void
.end method

.method public setFileRename(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog;->mDialogFragment:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    # setter for: Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mIsFileRename:Z
    invoke-static {v0, p1}, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->access$3002(Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;Z)Z

    return-void
.end method

.method public setOrgName(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog;->mDialogFragment:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    # setter for: Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->mOrgName:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->access$1702(Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public setTopSetPath(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog;->mDialogFragment:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->setCurrentTopSetPath(Ljava/lang/String;)V

    return-void
.end method

.method public showMediaRenameDialog()V
    .locals 4

    :try_start_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog;->mDialogFragment:Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/RenameDialog;->mCtx:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v3, "dialog"

    invoke-virtual {v2, v1, v3}, Lcom/sec/samsung/gallery/view/common/RenameDialog$MediaRenameDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "RenameDialog"

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
