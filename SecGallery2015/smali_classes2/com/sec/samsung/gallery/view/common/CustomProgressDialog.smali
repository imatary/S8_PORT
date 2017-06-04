.class public Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;
.super Landroid/app/AlertDialog;
.source "CustomProgressDialog.java"


# static fields
.field private static final MAX_PROGRESS_VALUE:I = 0x64

.field private static final TAG:Ljava/lang/String; = "CustomProgressDialog"


# instance fields
.field private final mClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mContext:Landroid/content/Context;

.field private final mCountText:Landroid/widget/TextView;

.field private mCurrentCount:I

.field private mCurrentSize:J

.field private final mHandler:Landroid/os/Handler;

.field private mListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mNeedInitCurrentStatus:Z

.field private mPercentRate:I

.field private final mPercentText:Landroid/widget/TextView;

.field private final mProgressBar:Landroid/widget/ProgressBar;

.field private mProgressPercentAsCount:Z

.field private mTotalCount:I

.field private mTotalSize:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const v5, 0x7f1000c0

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->mNeedInitCurrentStatus:Z

    new-instance v2, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog$1;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog$1;-><init>(Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;)V

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->mClickListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f040042

    const/4 v2, 0x0

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f1200b0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;

    const v2, 0x7f1200b1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->mCountText:Landroid/widget/TextView;

    const v2, 0x7f1200b2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->mPercentText:Landroid/widget/TextView;

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->IsThemeInstalled:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->mCountText:Landroid/widget/TextView;

    invoke-static {p1, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->mPercentText:Landroid/widget/TextView;

    invoke-static {p1, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    invoke-virtual {p0, v4}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->setIcon(I)V

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->setView(Landroid/view/View;)V

    invoke-virtual {p0, v4}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;)Landroid/content/DialogInterface$OnCancelListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->mListener:Landroid/content/DialogInterface$OnCancelListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->mProgressPercentAsCount:Z

    return v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->mTotalCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->mCurrentCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->setCountText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->mPercentRate:I

    return v0
.end method

.method static synthetic access$502(Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;I)I
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->mPercentRate:I

    return p1
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->setPercentText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->setProcessing(I)V

    return-void
.end method

.method private initCurrentStatus()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->mNeedInitCurrentStatus:Z

    if-eqz v0, :cond_0

    iput-wide v2, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->mCurrentSize:J

    iput v1, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->mCurrentCount:I

    iput v1, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->mPercentRate:I

    const/4 v0, 0x1

    invoke-direct {p0, v2, v3, v0}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->needUpdate(JZ)Z

    invoke-direct {p0, v2, v3, v1}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->needUpdate(JZ)Z

    :cond_0
    return-void
.end method

.method private needUpdate(JZ)Z
    .locals 9

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_3

    iget-wide v4, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->mTotalSize:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_1

    iput v2, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->mPercentRate:I

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-wide v4, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->mCurrentSize:J

    add-long/2addr v4, p1

    iput-wide v4, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->mCurrentSize:J

    iget-wide v4, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->mCurrentSize:J

    const-wide/16 v6, 0x64

    mul-long/2addr v4, v6

    iget-wide v6, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->mTotalSize:J

    div-long/2addr v4, v6

    long-to-int v1, v4

    iget v4, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->mPercentRate:I

    if-le v1, v4, :cond_0

    const/16 v2, 0x64

    if-le v1, v2, :cond_2

    const/16 v1, 0x64

    :cond_2
    iput v1, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->mPercentRate:I

    const-string/jumbo v2, "CustomProgressDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "needUpdate : mPercentRate "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->mPercentRate:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    goto :goto_0

    :cond_3
    iget v4, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->mTotalCount:I

    if-gtz v4, :cond_4

    iput v2, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->mCurrentCount:I

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->mCurrentCount:I

    int-to-long v4, v2

    add-long/2addr v4, p1

    long-to-int v0, v4

    iget v2, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->mTotalCount:I

    if-le v0, v2, :cond_5

    iget v0, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->mTotalCount:I

    :cond_5
    iput v0, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->mCurrentCount:I

    const-string/jumbo v2, "CustomProgressDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "needUpdate : mCurrentCount "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->mCurrentCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    goto :goto_0
.end method

.method private setCountText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->mCountText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->mCountText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private setPercentText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->mPercentText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->mPercentText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private setProcessing(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public closeCustomProgressDialog()V
    .locals 1

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->closeCustomProgressDialog(I)V

    return-void
.end method

.method public closeCustomProgressDialog(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog$2;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog$2;-><init>(Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public getCurrentCount()I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->mCurrentCount:I

    return v0
.end method

.method public getCurrentSize()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->mCurrentSize:J

    return-wide v0
.end method

.method public getTotalSize()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->mTotalSize:J

    return-wide v0
.end method

.method public increaseProgress(JZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->increaseProgress(JZZ)V

    return-void
.end method

.method public increaseProgress(JZZ)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->needUpdate(JZ)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p4, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog$3;

    invoke-direct {v1, p0, p3}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog$3;-><init>(Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setCurrentCount(I)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->mCurrentCount:I

    return-void
.end method

.method public setCurrentSize(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->mCurrentSize:J

    return-void
.end method

.method public setNeedInitCurrentStatus(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->mNeedInitCurrentStatus:Z

    return-void
.end method

.method public setTotalCount(I)V
    .locals 4

    iput p1, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->mTotalCount:I

    const-string/jumbo v0, "CustomProgressDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mTotalCount : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->mTotalCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->increaseProgress(JZZ)V

    return-void
.end method

.method public setTotalSize(J)V
    .locals 5

    const/4 v4, 0x1

    iput-wide p1, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->mTotalSize:J

    const-string/jumbo v0, "CustomProgressDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTotalSize : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->mTotalSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->increaseProgress(JZZ)V

    return-void
.end method

.method public showProgressDialog(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p2}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p3}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->setCancelable(Z)V

    if-eqz p3, :cond_2

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0080

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->mClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_2
    iput-object p4, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->mListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {p0, p4}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->initCurrentStatus()V

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "CustomProgressDialog"

    invoke-virtual {v0}, Landroid/view/WindowManager$BadTokenException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->mListener:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->mListener:Landroid/content/DialogInterface$OnCancelListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    goto :goto_0
.end method

.method public showProgressDialog(Ljava/lang/String;Ljava/lang/String;ZZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->showProgressDialog(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    iput-boolean p4, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->mProgressPercentAsCount:Z

    return-void
.end method

.method public showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-virtual {p0, p2}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->setCancelable(Z)V

    if-eqz p2, :cond_3

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0080

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->mClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_3
    iput-object p3, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->mListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {p0, p3}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->initCurrentStatus()V

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "CustomProgressDialog"

    invoke-virtual {v0}, Landroid/view/WindowManager$BadTokenException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->mListener:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->mListener:Landroid/content/DialogInterface$OnCancelListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    goto :goto_0
.end method
