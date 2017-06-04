.class public Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTaskForTimeGroup;
.super Landroid/os/AsyncTask;
.source "SelectionUpdateTaskForTimeGroup.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mFinishingState:Z

.field protected final mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

.field private final mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private final mOnProgressListener:Lcom/sec/android/gallery3d/data/OnProgressListener;

.field protected final mPosition:I

.field private mProgressDialogHelper:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaSet;ILcom/sec/android/gallery3d/data/OnProgressListener;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTaskForTimeGroup;->mFinishingState:Z

    new-instance v0, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTaskForTimeGroup$1;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTaskForTimeGroup$1;-><init>(Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTaskForTimeGroup;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTaskForTimeGroup;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTaskForTimeGroup;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTaskForTimeGroup;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    iput p3, p0, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTaskForTimeGroup;->mPosition:I

    iput-object p4, p0, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTaskForTimeGroup;->mOnProgressListener:Lcom/sec/android/gallery3d/data/OnProgressListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTaskForTimeGroup;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTaskForTimeGroup;->mFinishingState:Z

    return v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTaskForTimeGroup;)Lcom/sec/android/gallery3d/data/OnProgressListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTaskForTimeGroup;->mOnProgressListener:Lcom/sec/android/gallery3d/data/OnProgressListener;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTaskForTimeGroup;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTaskForTimeGroup;->mProgressDialogHelper:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->closeProgressDialog()V

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTaskForTimeGroup;->onCancelled(Ljava/lang/Void;)V

    return-void
.end method

.method protected onCancelled(Ljava/lang/Void;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTaskForTimeGroup;->mProgressDialogHelper:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->closeProgressDialog()V

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTaskForTimeGroup;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTaskForTimeGroup;->mOnProgressListener:Lcom/sec/android/gallery3d/data/OnProgressListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/gallery3d/data/OnProgressListener;->onCompleted(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTaskForTimeGroup;->mProgressDialogHelper:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->closeProgressDialog()V

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 6

    new-instance v0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTaskForTimeGroup;->mProgressDialogHelper:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTaskForTimeGroup;->mProgressDialogHelper:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTaskForTimeGroup;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTaskForTimeGroup;->mContext:Landroid/content/Context;

    const v4, 0x7f0a0247

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTaskForTimeGroup;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method

.method public setFinishingState()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTaskForTimeGroup;->mFinishingState:Z

    return-void
.end method
