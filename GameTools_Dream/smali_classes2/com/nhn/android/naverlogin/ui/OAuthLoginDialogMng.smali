.class public Lcom/nhn/android/naverlogin/ui/OAuthLoginDialogMng;
.super Ljava/lang/Object;
.source "OAuthLoginDialogMng.java"


# instance fields
.field public mAlertDialogSync:Ljava/lang/Object;

.field private mNLoginGlobalDefaultProgressDialog:Landroid/app/ProgressDialog;

.field public mProgressDialogSync:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginDialogMng;->mProgressDialogSync:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginDialogMng;->mAlertDialogSync:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginDialogMng;->mNLoginGlobalDefaultProgressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$0(Lcom/nhn/android/naverlogin/ui/OAuthLoginDialogMng;Landroid/app/ProgressDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginDialogMng;->mNLoginGlobalDefaultProgressDialog:Landroid/app/ProgressDialog;

    return-void
.end method


# virtual methods
.method public declared-synchronized hideProgressDlg()Z
    .locals 4

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginDialogMng;->mProgressDialogSync:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginDialogMng;->mNLoginGlobalDefaultProgressDialog:Landroid/app/ProgressDialog;

    if-nez v3, :cond_0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    :try_start_2
    iget-object v3, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginDialogMng;->mNLoginGlobalDefaultProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->hide()V

    iget-object v3, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginDialogMng;->mNLoginGlobalDefaultProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginDialogMng;->mNLoginGlobalDefaultProgressDialog:Landroid/app/ProgressDialog;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v2

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public showProgressDlg(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginDialogMng;->mProgressDialogSync:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginDialogMng;->mNLoginGlobalDefaultProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginDialogMng;->mNLoginGlobalDefaultProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->hide()V

    iget-object v4, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginDialogMng;->mNLoginGlobalDefaultProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    new-instance v4, Landroid/app/ProgressDialog;

    invoke-direct {v4, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginDialogMng;->mNLoginGlobalDefaultProgressDialog:Landroid/app/ProgressDialog;

    iget-object v4, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginDialogMng;->mNLoginGlobalDefaultProgressDialog:Landroid/app/ProgressDialog;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v4, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginDialogMng;->mNLoginGlobalDefaultProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4, p2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginDialogMng;->mNLoginGlobalDefaultProgressDialog:Landroid/app/ProgressDialog;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    if-eqz p3, :cond_1

    iget-object v4, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginDialogMng;->mNLoginGlobalDefaultProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4, p3}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    :cond_1
    iget-object v4, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginDialogMng;->mNLoginGlobalDefaultProgressDialog:Landroid/app/ProgressDialog;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v4, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginDialogMng;->mNLoginGlobalDefaultProgressDialog:Landroid/app/ProgressDialog;

    new-instance v5, Lcom/nhn/android/naverlogin/ui/OAuthLoginDialogMng$1;

    invoke-direct {v5, p0}, Lcom/nhn/android/naverlogin/ui/OAuthLoginDialogMng$1;-><init>(Lcom/nhn/android/naverlogin/ui/OAuthLoginDialogMng;)V

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v4, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginDialogMng;->mNLoginGlobalDefaultProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v3

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    monitor-exit v3

    move v1, v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
