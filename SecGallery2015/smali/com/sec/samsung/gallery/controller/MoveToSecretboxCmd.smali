.class public Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "MoveToSecretboxCmd.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Ljava/util/Observer;
.implements Lorg/puremvc/java/multicore/interfaces/ICommand;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$PrivateModeChangeListener;
    }
.end annotation


# static fields
.field private static final MSG_EXIT_SELECTION_MODE:I = 0x0

.field private static final MSG_EXIT_SELECTION_MODE_AND_RESET:I = 0x1

.field private static final MSG_PRIVATE_MODE_ON:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MoveToSecretboxCmd"

.field private static mAlbumPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mItemCount:I

.field static mPrivateModeChangeListener:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$PrivateModeChangeListener;

.field public static final mPrivateTasks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/sec/samsung/gallery/util/SecretboxOperations$OnSecretboxListener;",
            "Lcom/sec/samsung/gallery/util/SecretboxOperations;",
            ">;"
        }
    .end annotation
.end field

.field private static mSelectedCount:I


# instance fields
.field private final lock:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

.field private mDialog:Landroid/app/AlertDialog;

.field private mFileUtils:Lcom/sec/samsung/gallery/util/FileUtil;

.field private final mHandler:Landroid/os/Handler;

.field private mIsCancel:Z

.field private mIsCheck:Z

.field private mIsFileNameUsed:Z

.field private mIsRename:Z

.field private mIsSingleCancel:Z

.field private mIsTouchOutside:Z

.field private mMediaSize:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mOperatePrivateAsyncTask:Lcom/sec/samsung/gallery/util/SecretboxOperations;

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mPrivateModeInterface:Lcom/sec/samsung/gallery/lib/libinterface/PrivateModeInterface;

.field private mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

.field private mSingleOperation:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mAlbumPaths:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mPrivateTasks:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->lock:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mIsCheck:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mIsRename:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mIsCancel:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mIsSingleCancel:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mIsTouchOutside:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mIsFileNameUsed:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mMediaSize:Landroid/util/SparseArray;

    new-instance v0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$1;-><init>(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()I
    .locals 1

    sget v0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mSelectedCount:I

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;IILandroid/app/Activity;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->handleOnDismissDialog(IILandroid/app/Activity;Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mMediaSize:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;Landroid/util/SparseArray;)Landroid/util/SparseArray;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mMediaSize:Landroid/util/SparseArray;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;)Lcom/sec/samsung/gallery/util/FileUtil;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mFileUtils:Lcom/sec/samsung/gallery/util/FileUtil;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;Lcom/sec/samsung/gallery/util/FileUtil;)Lcom/sec/samsung/gallery/util/FileUtil;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mFileUtils:Lcom/sec/samsung/gallery/util/FileUtil;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->dismissDialog()V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;)Lcom/sec/samsung/gallery/lib/libinterface/PrivateModeInterface;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mPrivateModeInterface:Lcom/sec/samsung/gallery/lib/libinterface/PrivateModeInterface;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;IIIIILjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->showToast(IIIIILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mSingleOperation:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;)Lcom/sec/android/gallery3d/data/DataManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mIsCheck:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mIsCheck:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mIsFileNameUsed:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mIsFileNameUsed:Z

    return p1
.end method

.method static synthetic access$200()I
    .locals 1

    sget v0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mItemCount:I

    return v0
.end method

.method static synthetic access$2000(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->showDialog(Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;)Lcom/sec/samsung/gallery/util/SecretboxOperations;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mOperatePrivateAsyncTask:Lcom/sec/samsung/gallery/util/SecretboxOperations;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mIsSingleCancel:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mIsSingleCancel:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mIsRename:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mIsRename:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$300()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mAlbumPaths:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;IIILjava/util/ArrayList;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->handleMultipleFileOperation(IIILjava/util/ArrayList;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mIsTouchOutside:Z

    return v0
.end method

.method static synthetic access$602(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mIsTouchOutside:Z

    return p1
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mIsCancel:Z

    return v0
.end method

.method static synthetic access$702(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mIsCancel:Z

    return p1
.end method

.method static synthetic access$800(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;Ljava/io/File;Ljava/io/File;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->showRenameDialog(Ljava/io/File;Ljava/io/File;IZ)V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private dismissDialog()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->releasePowerWakeLock()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->closeCustomProgressDialog()V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mDialog:Landroid/app/AlertDialog;

    :cond_1
    iput-object v1, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    return-void
.end method

.method private handleMultipleFileOperation(IIILjava/util/ArrayList;Ljava/lang/String;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    if-nez v1, :cond_0

    if-nez p1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0282

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    :goto_0
    new-instance v1, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    invoke-virtual {v1, p3}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->setTotalCount(I)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v2, v1}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->setOwnerActivity(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v9, v2, v3, p0}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->showProgressDialog(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v8

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    invoke-virtual {v8, v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->saveDialog(Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    new-instance v2, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$8;

    invoke-direct {v2, p0, p1, p3}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$8;-><init>(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;II)V

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->setPowerWakeLock(Landroid/content/Context;)V

    :cond_0
    new-instance v0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;

    move-object v1, p0

    move v2, p3

    move v3, p2

    move-object v4, p4

    move v5, p1

    move-object v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;-><init>(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;IILjava/util/ArrayList;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mOperatePrivateAsyncTask:Lcom/sec/samsung/gallery/util/SecretboxOperations;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mOperatePrivateAsyncTask:Lcom/sec/samsung/gallery/util/SecretboxOperations;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/util/SecretboxOperations;->cancel(Z)Z

    :cond_1
    new-instance v1, Lcom/sec/samsung/gallery/util/SecretboxOperations;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mContext:Landroid/content/Context;

    invoke-direct {v1, p1, v0, v2}, Lcom/sec/samsung/gallery/util/SecretboxOperations;-><init>(ILcom/sec/samsung/gallery/util/SecretboxOperations$OnSecretboxListener;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mOperatePrivateAsyncTask:Lcom/sec/samsung/gallery/util/SecretboxOperations;

    sget-object v1, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mPrivateTasks:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mOperatePrivateAsyncTask:Lcom/sec/samsung/gallery/util/SecretboxOperations;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mOperatePrivateAsyncTask:Lcom/sec/samsung/gallery/util/SecretboxOperations;

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v3}, Lcom/sec/samsung/gallery/util/SecretboxOperations;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0360

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_0
.end method

.method private handleOnDismissDialog(IILandroid/app/Activity;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 9

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->hide()V

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->getTotalSize()J

    move-result-wide v4

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->getCurrentSize()J

    move-result-wide v2

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->getCurrentCount()I

    move-result v0

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object p3

    new-instance v6, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    invoke-direct {v6, p3}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->setNeedInitCurrentStatus(Z)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    invoke-virtual {v6, p3}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->setOwnerActivity(Landroid/app/Activity;)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    invoke-virtual {v6, v4, v5}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->setTotalSize(J)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    invoke-virtual {v6, v2, v3}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->setCurrentSize(J)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    invoke-virtual {v6, p2}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->setTotalCount(I)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    invoke-virtual {v6, v0}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->setCurrentCount(I)V

    if-nez p1, :cond_1

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0282

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v6, v1, v7, v8, p0}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->showProgressDialog(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    invoke-virtual {v6, p4}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->show()V

    iput-object p3, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mContext:Landroid/content/Context;

    :cond_0
    const-string/jumbo v6, "MoveToSecretboxCmd"

    const-string/jumbo v7, "onDismiss : progress dialog is dismissed."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0360

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private handleSingleFileOperation(Lcom/sec/android/gallery3d/ui/SelectionManager;IIIZ)V
    .locals 22

    const/16 v17, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/sec/android/gallery3d/data/MediaObject;

    if-nez p5, :cond_3

    const/16 v18, 0x1

    :goto_0
    move-object/from16 v0, v16

    instance-of v2, v0, Lcom/sec/android/gallery3d/data/LocalMediaItem;

    if-eqz v2, :cond_5

    if-eqz v18, :cond_4

    move-object/from16 v2, v16

    check-cast v2, Lcom/sec/android/gallery3d/data/LocalMediaItem;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/LocalMediaItem;->getGroupId()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-lez v2, :cond_4

    const/16 v18, 0x1

    :cond_0
    :goto_1
    if-eqz v16, :cond_1

    move-object/from16 v0, v16

    instance-of v2, v0, Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v2, :cond_1

    if-nez v18, :cond_1

    move-object/from16 v4, v16

    check-cast v4, Lcom/sec/android/gallery3d/data/MediaItem;

    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->getSecretBoxPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v13, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v19, Ljava/io/File;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v13, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0273

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v2, v3, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/LayoutInflater;

    const v3, 0x7f040114

    const/4 v2, 0x0

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v14, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    const v2, 0x7f120266

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v15}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a01a7

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f0a036b

    new-instance v2, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$5;

    move-object/from16 v3, p0

    move/from16 v6, p2

    move/from16 v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$5;-><init>(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;Lcom/sec/android/gallery3d/data/MediaItem;Ljava/io/File;IZ)V

    invoke-virtual {v8, v9, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0080

    new-instance v6, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$4;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$4;-><init>(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;)V

    invoke-virtual {v2, v3, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0370

    new-instance v6, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$3;

    move-object/from16 v7, p0

    move/from16 v8, p2

    move/from16 v9, p3

    move-object v10, v5

    move/from16 v11, p5

    invoke-direct/range {v6 .. v11}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$3;-><init>(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;IILjava/io/File;Z)V

    invoke-virtual {v2, v3, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mDialog:Landroid/app/AlertDialog;

    new-instance v3, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$6;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$6;-><init>(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mDialog:Landroid/app/AlertDialog;

    new-instance v3, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$7;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$7;-><init>(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    :cond_1
    if-nez v17, :cond_2

    sget-object v10, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mAlbumPaths:Ljava/util/ArrayList;

    const/4 v11, 0x0

    move-object/from16 v6, p0

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v12, p5

    invoke-direct/range {v6 .. v12}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->handleMultipleFileOperation(IIILjava/util/ArrayList;Ljava/lang/String;Z)V

    :cond_2
    return-void

    :cond_3
    const/16 v18, 0x0

    goto/16 :goto_0

    :cond_4
    const/16 v18, 0x0

    goto/16 :goto_1

    :cond_5
    move-object/from16 v0, v16

    instance-of v2, v0, Lcom/sec/android/gallery3d/data/UnionLocalItem;

    if-eqz v2, :cond_0

    if-eqz v18, :cond_6

    move-object/from16 v2, v16

    check-cast v2, Lcom/sec/android/gallery3d/data/UnionLocalItem;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/data/UnionLocalItem;->getGroupId()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-lez v2, :cond_6

    const/16 v18, 0x1

    :goto_2
    goto/16 :goto_1

    :cond_6
    const/16 v18, 0x0

    goto :goto_2
.end method

.method private releasePowerWakeLock()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_0
    return-void
.end method

.method private setPowerWakeLock(Landroid/content/Context;)V
    .locals 3

    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string/jumbo v2, "Gallery-Secretbox"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_0
    return-void
.end method

.method private setPrivateModeChangeListener()V
    .locals 1

    new-instance v0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$16;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$16;-><init>(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;)V

    sput-object v0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mPrivateModeChangeListener:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$PrivateModeChangeListener;

    return-void
.end method

.method private showDialog(Ljava/io/File;)V
    .locals 10

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mContext:Landroid/content/Context;

    const v6, 0x7f0a0273

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v6, 0x7f040114

    const/4 v5, 0x0

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v1, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v5, 0x7f12004f

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const v5, 0x7f120266

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0a01a7

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0a036b

    new-instance v7, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$13;

    invoke-direct {v7, p0, v0}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$13;-><init>(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;Landroid/widget/CheckBox;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0a0080

    new-instance v7, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$12;

    invoke-direct {v7, p0, v0}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$12;-><init>(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;Landroid/widget/CheckBox;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0a0370

    new-instance v7, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$11;

    invoke-direct {v7, p0, v0}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$11;-><init>(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;Landroid/widget/CheckBox;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mDialog:Landroid/app/AlertDialog;

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mDialog:Landroid/app/AlertDialog;

    new-instance v6, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$14;

    invoke-direct {v6, p0}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$14;-><init>(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mDialog:Landroid/app/AlertDialog;

    new-instance v6, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$15;

    invoke-direct {v6, p0}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$15;-><init>(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showRenameDialog(Ljava/io/File;Ljava/io/File;IZ)V
    .locals 5

    const/16 v4, 0x2e

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sec/samsung/gallery/view/common/RenameDialog;

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/sec/samsung/gallery/view/common/RenameDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->setOrgName(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->setCurrentName(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->setCurrentFilePath(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->setFileRename(Z)V

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->showMediaRenameDialog()V

    new-instance v3, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$10;

    invoke-direct {v3, p0, v0, p3, p4}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$10;-><init>(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;Ljava/lang/String;IZ)V

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->addObserver(Ljava/util/Observer;)V

    return-void
.end method

.method private showToast(IIIIILjava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    if-eqz p6, :cond_2

    move-object v1, p6

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    if-nez p1, :cond_a

    if-ge p2, p5, :cond_6

    instance-of v2, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    if-nez v2, :cond_6

    if-ne p2, v5, :cond_4

    sub-int v2, p5, p2

    if-ne v2, v5, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a030d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a030e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    if-le p2, v5, :cond_0

    sub-int v2, p5, p2

    if-ne v2, v5, :cond_5

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0233

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0234

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_6
    instance-of v2, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    if-eqz v2, :cond_8

    if-ne p3, v5, :cond_7

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0270

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_7
    if-le p3, v5, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0271

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_8
    if-ne p4, v5, :cond_9

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0274

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_9
    if-le p4, v5, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0275

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_a
    if-ne p1, v5, :cond_0

    instance-of v2, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    if-eqz v2, :cond_d

    if-ne p4, v5, :cond_c

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a035d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    sget-object v4, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->RESTORE_PATH:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_b
    :goto_2
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/sec/android/gallery3d/common/Utils;->showToastLongDouble(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_c
    if-le p4, v5, :cond_b

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a035e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    sget-object v4, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->RESTORE_PATH:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_d
    if-ne p4, v5, :cond_e

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0362

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_e
    if-le p4, v5, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0363

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 26

    invoke-interface/range {p1 .. p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object/from16 v23, v2

    check-cast v23, [Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v2, v23, v2

    check-cast v2, Landroid/content/Context;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    const/4 v2, 0x1

    aget-object v2, v23, v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    const/4 v2, 0x2

    aget-object v2, v23, v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v25

    move-object/from16 v0, v23

    array-length v2, v0

    const/4 v5, 0x3

    if-le v2, v5, :cond_2

    const/4 v2, 0x3

    aget-object v2, v23, v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    :goto_0
    const/4 v4, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mSingleOperation:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mIsCheck:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mIsRename:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mIsCancel:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mIsFileNameUsed:Z

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mIsTouchOutside:Z

    if-eqz v16, :cond_3

    const/4 v4, 0x0

    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "PRMO"

    invoke-static {v2, v5}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v3

    new-instance v2, Lcom/sec/samsung/gallery/util/FileUtil;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/sec/samsung/gallery/util/FileUtil;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mFileUtils:Lcom/sec/samsung/gallery/util/FileUtil;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v2

    sput v2, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mSelectedCount:I

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberItemOfMarkedAsSelected()I

    move-result v2

    if-nez v2, :cond_4

    sget v2, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mSelectedCount:I

    :goto_2
    sput v2, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mItemCount:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v2

    instance-of v2, v2, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    if-eqz v2, :cond_7

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getList()Ljava/util/LinkedList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mAlbumPaths:Ljava/util/ArrayList;

    monitor-enter v19

    :try_start_0
    invoke-virtual/range {v19 .. v19}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sec/android/gallery3d/data/MediaObject;

    move-object/from16 v0, v22

    instance-of v5, v0, Lcom/sec/android/gallery3d/data/LocalMergeAlbum;

    if-eqz v5, :cond_5

    sget-object v5, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mAlbumPaths:Ljava/util/ArrayList;

    check-cast v22, Lcom/sec/android/gallery3d/data/LocalMergeAlbum;

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/gallery3d/data/LocalMergeAlbum;->getPathOnFileSystem()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :catchall_0
    move-exception v2

    monitor-exit v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_2
    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_3
    if-eqz v25, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberItemOfMarkedAsSelected()I

    move-result v2

    goto :goto_2

    :cond_5
    :try_start_1
    move-object/from16 v0, v22

    instance-of v5, v0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;

    if-eqz v5, :cond_1

    sget-object v5, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mAlbumPaths:Ljava/util/ArrayList;

    check-cast v22, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->getPathOnFileSystem()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    monitor-exit v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->setPrivateModeChangeListener()V

    invoke-static {}, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->isSecretModeOn()Z

    move-result v2

    if-eqz v2, :cond_c

    sget v2, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mItemCount:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_b

    new-instance v20, Ljava/util/ArrayList;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/sec/android/gallery3d/data/MediaObject;

    move-object/from16 v0, v21

    instance-of v2, v0, Lcom/sec/android/gallery3d/data/LocalMediaItem;

    if-nez v2, :cond_8

    move-object/from16 v0, v21

    instance-of v2, v0, Lcom/sec/android/gallery3d/data/UnionLocalItem;

    if-eqz v2, :cond_a

    :cond_8
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mSingleOperation:Z

    sget v5, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mSelectedCount:I

    sget v6, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mItemCount:I

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->handleSingleFileOperation(Lcom/sec/android/gallery3d/ui/SelectionManager;IIIZ)V

    :goto_4
    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mContext:Landroid/content/Context;

    const v5, 0x7f0a056b

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2, v5, v6}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "MoveToKNOX"

    sget-object v6, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    move-object/from16 v0, v24

    invoke-static {v2, v5, v6, v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    :cond_9
    return-void

    :cond_a
    sget v10, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mSelectedCount:I

    sget v11, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mItemCount:I

    sget-object v12, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mAlbumPaths:Ljava/util/ArrayList;

    const/4 v13, 0x0

    move-object/from16 v8, p0

    move v9, v4

    move v14, v7

    invoke-direct/range {v8 .. v14}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->handleMultipleFileOperation(IIILjava/util/ArrayList;Ljava/lang/String;Z)V

    goto :goto_4

    :cond_b
    sget v10, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mSelectedCount:I

    sget v11, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mItemCount:I

    sget-object v12, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mAlbumPaths:Ljava/util/ArrayList;

    const/4 v13, 0x0

    move-object/from16 v8, p0

    move v9, v4

    move v14, v7

    invoke-direct/range {v8 .. v14}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->handleMultipleFileOperation(IIILjava/util/ArrayList;Ljava/lang/String;Z)V

    goto :goto_4

    :cond_c
    :try_start_2
    new-instance v17, Lcom/sec/samsung/gallery/lib/factory/PrivateModeFactory;

    invoke-direct/range {v17 .. v17}, Lcom/sec/samsung/gallery/lib/factory/PrivateModeFactory;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mContext:Landroid/content/Context;

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/lib/libinterface/PrivateModeInterface;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mPrivateModeInterface:Lcom/sec/samsung/gallery/lib/libinterface/PrivateModeInterface;

    new-instance v18, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$2;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$2;-><init>(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mPrivateModeInterface:Lcom/sec/samsung/gallery/lib/libinterface/PrivateModeInterface;

    move-object/from16 v0, v18

    invoke-interface {v2, v0}, Lcom/sec/samsung/gallery/lib/libinterface/PrivateModeInterface;->setListener(Lcom/sec/samsung/gallery/lib/libinterface/PrivateModeInterface$OnPrivateModeListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mPrivateModeInterface:Lcom/sec/samsung/gallery/lib/libinterface/PrivateModeInterface;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mContext:Landroid/content/Context;

    invoke-interface {v2, v5}, Lcom/sec/samsung/gallery/lib/libinterface/PrivateModeInterface;->getInstance(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception v15

    const-string/jumbo v2, "MoveToSecretboxCmd"

    invoke-virtual {v15}, Ljava/lang/NoClassDefFoundError;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 5

    const/4 v2, 0x0

    const/4 v4, 0x1

    const-string/jumbo v0, "MoveToSecretboxCmd"

    const-string/jumbo v1, "onCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mIsCancel:Z

    iput-object v2, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mFileUtils:Lcom/sec/samsung/gallery/util/FileUtil;

    iput-object v2, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mMediaSize:Landroid/util/SparseArray;

    sget-object v0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mPrivateTasks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mOperatePrivateAsyncTask:Lcom/sec/samsung/gallery/util/SecretboxOperations;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mOperatePrivateAsyncTask:Lcom/sec/samsung/gallery/util/SecretboxOperations;

    invoke-virtual {v0, v4}, Lcom/sec/samsung/gallery/util/SecretboxOperations;->cancel(Z)Z

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->dismissDialog()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mPrivateModeInterface:Lcom/sec/samsung/gallery/lib/libinterface/PrivateModeInterface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mPrivateModeInterface:Lcom/sec/samsung/gallery/lib/libinterface/PrivateModeInterface;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/sec/samsung/gallery/lib/libinterface/PrivateModeInterface;->unregisterClient(Landroid/content/Context;Z)V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sec/android/gallery3d/data/DataManager;->setChangeNotifierActive(Z)V

    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
