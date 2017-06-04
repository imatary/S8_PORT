.class public Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;
.super Ljava/lang/Object;
.source "ProgressDialogHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ProgressDialogHelper"

.field private static final mHandler:Landroid/os/Handler;


# instance fields
.field private final mClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mEnableKeyListener:Z

.field private final mKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field private mListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mMaxCount:I

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mProgressStyle:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->mProgressStyle:I

    iput v0, p0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->mMaxCount:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->mEnableKeyListener:Z

    new-instance v0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper$3;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper$3;-><init>(Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->mClickListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper$4;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper$4;-><init>(Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->mKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->mProgressStyle:I

    iput v0, p0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->mMaxCount:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->mEnableKeyListener:Z

    new-instance v0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper$3;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper$3;-><init>(Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->mClickListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper$4;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper$4;-><init>(Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->mKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    iput p1, p0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->mProgressStyle:I

    iput p2, p0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->mMaxCount:I

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->mProgressStyle:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->mMaxCount:I

    return v0
.end method

.method static synthetic access$302(Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;I)I
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->mMaxCount:I

    return p1
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;)Landroid/content/DialogInterface$OnCancelListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->mListener:Landroid/content/DialogInterface$OnCancelListener;

    return-object v0
.end method

.method private closeProgressDialog(I)V
    .locals 4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper$1;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper$1;-><init>(Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public static restoreDialog(Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;Landroid/app/Activity;I)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;
    .locals 6

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->getTotalSize()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->getCurrentSize()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->getCurrentCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->hide()V

    new-instance p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->setNeedInitCurrentStatus(Z)V

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->setOwnerActivity(Landroid/app/Activity;)V

    invoke-virtual {p0, v4, v5}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->setTotalSize(J)V

    invoke-virtual {p0, v2, v3}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->setCurrentSize(J)V

    invoke-virtual {p0, p2}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->setTotalCount(I)V

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->setCurrentCount(I)V

    return-object p0
.end method


# virtual methods
.method public closeProgressDialog()V
    .locals 1

    const/16 v0, 0x3e8

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->closeProgressDialog(I)V

    return-void
.end method

.method public closeProgressDialogInstantly()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->closeProgressDialog(I)V

    return-void
.end method

.method public isShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZLandroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method public showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->closeProgressDialog()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->mProgressDialog:Landroid/app/ProgressDialog;

    iget v1, p0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->mProgressStyle:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->mEnableKeyListener:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->mKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_2
    iget v0, p0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->mProgressStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->mProgressDialog:Landroid/app/ProgressDialog;

    iget v1, p0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->mMaxCount:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p5}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    if-eqz p4, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0080

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->mClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iput-object p6, p0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->mListener:Landroid/content/DialogInterface$OnCancelListener;

    :cond_4
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p6}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    const-string/jumbo v0, "ProgressDialogHelper"

    const-string/jumbo v1, "Activity is finishing or destroyed."

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_7
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0
.end method

.method public showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 7

    iput-boolean p6, p0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->mEnableKeyListener:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZLandroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method public updateProgress(II)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper$2;-><init>(Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
