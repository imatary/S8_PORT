.class Lcom/nhn/android/naverlogin/OAuthLogin$OAuthLoginTask;
.super Landroid/os/AsyncTask;
.source "OAuthLogin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nhn/android/naverlogin/OAuthLogin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OAuthLoginTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private _context:Landroid/content/Context;

.field private mDialogMng:Lcom/nhn/android/naverlogin/ui/OAuthLoginDialogMng;

.field final synthetic this$0:Lcom/nhn/android/naverlogin/OAuthLogin;


# direct methods
.method constructor <init>(Lcom/nhn/android/naverlogin/OAuthLogin;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/nhn/android/naverlogin/OAuthLogin$OAuthLoginTask;->this$0:Lcom/nhn/android/naverlogin/OAuthLogin;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Lcom/nhn/android/naverlogin/ui/OAuthLoginDialogMng;

    invoke-direct {v0}, Lcom/nhn/android/naverlogin/ui/OAuthLoginDialogMng;-><init>()V

    iput-object v0, p0, Lcom/nhn/android/naverlogin/OAuthLogin$OAuthLoginTask;->mDialogMng:Lcom/nhn/android/naverlogin/ui/OAuthLoginDialogMng;

    iput-object p2, p0, Lcom/nhn/android/naverlogin/OAuthLogin$OAuthLoginTask;->_context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/nhn/android/naverlogin/OAuthLogin$OAuthLoginTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/nhn/android/naverlogin/OAuthLogin$OAuthLoginTask;->this$0:Lcom/nhn/android/naverlogin/OAuthLogin;

    iget-object v1, p0, Lcom/nhn/android/naverlogin/OAuthLogin$OAuthLoginTask;->_context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/nhn/android/naverlogin/OAuthLogin;->refreshAccessToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/nhn/android/naverlogin/OAuthLogin$OAuthLoginTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/nhn/android/naverlogin/OAuthLogin$OAuthLoginTask;->mDialogMng:Lcom/nhn/android/naverlogin/ui/OAuthLoginDialogMng;

    invoke-virtual {v1}, Lcom/nhn/android/naverlogin/ui/OAuthLoginDialogMng;->hideProgressDlg()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/nhn/android/naverlogin/OAuthLogin$OAuthLoginTask;->_context:Landroid/content/Context;

    const-class v2, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/nhn/android/naverlogin/OAuthLogin$OAuthLoginTask;->_context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return-void

    :cond_0
    sget-object v1, Lcom/nhn/android/naverlogin/OAuthLogin;->mOAuthLoginHandler:Lcom/nhn/android/naverlogin/OAuthLoginHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/nhn/android/naverlogin/OAuthLoginHandler;->run(Z)V

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 4

    iget-object v0, p0, Lcom/nhn/android/naverlogin/OAuthLogin$OAuthLoginTask;->mDialogMng:Lcom/nhn/android/naverlogin/ui/OAuthLoginDialogMng;

    iget-object v1, p0, Lcom/nhn/android/naverlogin/OAuthLogin$OAuthLoginTask;->_context:Landroid/content/Context;

    sget-object v2, Lcom/nhn/android/naverlogin/data/OAuthLoginString;->naveroauthlogin_string_getting_token:Lcom/nhn/android/naverlogin/data/OAuthLoginString;

    iget-object v3, p0, Lcom/nhn/android/naverlogin/OAuthLogin$OAuthLoginTask;->_context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/nhn/android/naverlogin/data/OAuthLoginString;->getString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/nhn/android/naverlogin/ui/OAuthLoginDialogMng;->showProgressDlg(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)Z

    return-void
.end method
