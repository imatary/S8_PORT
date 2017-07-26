.class Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity$GetAccessTokenTask;
.super Landroid/os/AsyncTask;
.source "OAuthLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetAccessTokenTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/nhn/android/naverlogin/data/OAuthResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;


# direct methods
.method private constructor <init>(Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity$GetAccessTokenTask;->this$0:Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity$GetAccessTokenTask;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity$GetAccessTokenTask;-><init>(Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/nhn/android/naverlogin/data/OAuthResponse;
    .locals 6

    :try_start_0
    iget-object v1, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity$GetAccessTokenTask;->this$0:Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;

    invoke-static {v1}, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;->access$1(Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity$GetAccessTokenTask;->this$0:Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;

    invoke-static {v2}, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;->access$2(Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;)Lcom/nhn/android/naverlogin/data/OAuthLoginData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nhn/android/naverlogin/data/OAuthLoginData;->getClientId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity$GetAccessTokenTask;->this$0:Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;

    invoke-static {v3}, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;->access$2(Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;)Lcom/nhn/android/naverlogin/data/OAuthLoginData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nhn/android/naverlogin/data/OAuthLoginData;->getClientSecret()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity$GetAccessTokenTask;->this$0:Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;

    invoke-static {v4}, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;->access$2(Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;)Lcom/nhn/android/naverlogin/data/OAuthLoginData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nhn/android/naverlogin/data/OAuthLoginData;->getState()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity$GetAccessTokenTask;->this$0:Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;

    invoke-static {v5}, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;->access$2(Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;)Lcom/nhn/android/naverlogin/data/OAuthLoginData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nhn/android/naverlogin/data/OAuthLoginData;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/nhn/android/naverlogin/connection/OAuthLoginConnection;->requestAccessToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nhn/android/naverlogin/data/OAuthResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/nhn/android/naverlogin/data/OAuthResponse;

    sget-object v2, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;->CLIENT_ERROR_CONNECTION_ERROR:Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    invoke-direct {v1, v2}, Lcom/nhn/android/naverlogin/data/OAuthResponse;-><init>(Lcom/nhn/android/naverlogin/data/OAuthErrorCode;)V

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity$GetAccessTokenTask;->doInBackground([Ljava/lang/Void;)Lcom/nhn/android/naverlogin/data/OAuthResponse;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/nhn/android/naverlogin/data/OAuthResponse;)V
    .locals 8

    :try_start_0
    iget-object v3, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity$GetAccessTokenTask;->this$0:Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;

    invoke-static {v3}, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;->access$0(Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;)Lcom/nhn/android/naverlogin/ui/OAuthLoginDialogMng;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nhn/android/naverlogin/ui/OAuthLoginDialogMng;->hideProgressDlg()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;

    iget-object v3, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity$GetAccessTokenTask;->this$0:Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;

    invoke-static {v3}, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;->access$1(Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/nhn/android/naverlogin/data/OAuthResponse;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/nhn/android/naverlogin/data/OAuthResponse;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;->setAccessToken(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/nhn/android/naverlogin/data/OAuthResponse;->getRefreshToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;->setRefreshToken(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {p1}, Lcom/nhn/android/naverlogin/data/OAuthResponse;->getExpiresIn()J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;->setExpiresAt(J)V

    invoke-virtual {p1}, Lcom/nhn/android/naverlogin/data/OAuthResponse;->getTokenType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;->setTokenType(Ljava/lang/String;)V

    sget-object v3, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;->NONE:Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    invoke-virtual {v2, v3}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;->setLastErrorCode(Lcom/nhn/android/naverlogin/data/OAuthErrorCode;)V

    sget-object v3, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;->NONE:Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    invoke-virtual {v3}, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;->getDesc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;->setLastErrorDesc(Ljava/lang/String;)V

    const-string/jumbo v3, "oauth_access_token"

    invoke-virtual {p1}, Lcom/nhn/android/naverlogin/data/OAuthResponse;->getAccessToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "oauth_refresh_token"

    invoke-virtual {p1}, Lcom/nhn/android/naverlogin/data/OAuthResponse;->getRefreshToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "oauth_expires_in"

    invoke-virtual {p1}, Lcom/nhn/android/naverlogin/data/OAuthResponse;->getExpiresIn()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v3, "oauth_token_type"

    invoke-virtual {p1}, Lcom/nhn/android/naverlogin/data/OAuthResponse;->getTokenType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity$GetAccessTokenTask;->this$0:Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;

    const/4 v4, -0x1

    invoke-virtual {v3, v4, v1}, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;->setResult(ILandroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    iget-object v3, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity$GetAccessTokenTask;->this$0:Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;

    invoke-virtual {v3}, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;->finish()V

    :try_start_2
    iget-object v3, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity$GetAccessTokenTask;->this$0:Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;

    invoke-virtual {p1}, Lcom/nhn/android/naverlogin/data/OAuthResponse;->isSuccess()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;->access$4(Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    return-void

    :cond_0
    :try_start_3
    invoke-virtual {p1}, Lcom/nhn/android/naverlogin/data/OAuthResponse;->getErrorCode()Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    move-result-object v3

    sget-object v4, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;->NONE:Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity$GetAccessTokenTask;->this$0:Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;

    sget-object v4, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;->CLIENT_USER_CANCEL:Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    invoke-static {v3, v4}, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;->access$3(Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;Lcom/nhn/android/naverlogin/data/OAuthErrorCode;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_1
    :try_start_4
    invoke-virtual {p1}, Lcom/nhn/android/naverlogin/data/OAuthResponse;->getErrorCode()Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;->setLastErrorCode(Lcom/nhn/android/naverlogin/data/OAuthErrorCode;)V

    invoke-virtual {p1}, Lcom/nhn/android/naverlogin/data/OAuthResponse;->getErrorDesc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;->setLastErrorDesc(Ljava/lang/String;)V

    const-string/jumbo v3, "oauth_error_code"

    invoke-virtual {p1}, Lcom/nhn/android/naverlogin/data/OAuthResponse;->getErrorCode()Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "oauth_error_desc"

    invoke-virtual {p1}, Lcom/nhn/android/naverlogin/data/OAuthResponse;->getErrorDesc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity$GetAccessTokenTask;->this$0:Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1}, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;->setResult(ILandroid/content/Intent;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception v3

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/nhn/android/naverlogin/data/OAuthResponse;

    invoke-virtual {p0, p1}, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity$GetAccessTokenTask;->onPostExecute(Lcom/nhn/android/naverlogin/data/OAuthResponse;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity$GetAccessTokenTask;->this$0:Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;

    invoke-static {v0}, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;->access$0(Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;)Lcom/nhn/android/naverlogin/ui/OAuthLoginDialogMng;

    move-result-object v0

    iget-object v1, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity$GetAccessTokenTask;->this$0:Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;

    invoke-static {v1}, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;->access$1(Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/nhn/android/naverlogin/data/OAuthLoginString;->naveroauthlogin_string_getting_token:Lcom/nhn/android/naverlogin/data/OAuthLoginString;

    iget-object v3, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity$GetAccessTokenTask;->this$0:Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;

    invoke-static {v3}, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;->access$1(Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nhn/android/naverlogin/data/OAuthLoginString;->getString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/nhn/android/naverlogin/ui/OAuthLoginDialogMng;->showProgressDlg(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
