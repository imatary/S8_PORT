.class Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$RegisterProgress;
.super Landroid/os/AsyncTask;
.source "SDKRegister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RegisterProgress"
.end annotation

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
.field final synthetic this$0:Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;


# direct methods
.method private constructor <init>(Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$RegisterProgress;->this$0:Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$RegisterProgress;-><init>(Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$RegisterProgress;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$RegisterProgress;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 7

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$RegisterProgress;->this$0:Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;

    # getter for: Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;
    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->access$600(Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;)Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$RegisterProgress;->this$0:Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;

    # getter for: Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;
    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->access$600(Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;)Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$RegisterProgress;->this$0:Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;

    # getter for: Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->access$300(Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;)Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$RegisterProgress;->this$0:Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;

    # getter for: Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->access$300(Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;)Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f0a0340

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move v5, v4

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZLandroid/content/DialogInterface$OnCancelListener;)V

    :cond_0
    return-void
.end method
