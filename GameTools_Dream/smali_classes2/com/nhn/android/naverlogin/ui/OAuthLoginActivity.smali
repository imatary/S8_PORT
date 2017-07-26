.class public Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;
.super Landroid/app/Activity;
.source "OAuthLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity$GetAccessTokenTask;
    }
.end annotation


# static fields
.field private static REQUESTCODE_LOGIN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "NaverLoginOAuth|OAuthLoginActivity"


# instance fields
.field private mClientName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDialogMng:Lcom/nhn/android/naverlogin/ui/OAuthLoginDialogMng;

.field private mIsLoginActivityStarted:Z

.field private mOAuthLoginData:Lcom/nhn/android/naverlogin/data/OAuthLoginData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x64

    sput v0, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;->REQUESTCODE_LOGIN:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/nhn/android/naverlogin/ui/OAuthLoginDialogMng;

    invoke-direct {v0}, Lcom/nhn/android/naverlogin/ui/OAuthLoginDialogMng;-><init>()V

    iput-object v0, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;->mDialogMng:Lcom/nhn/android/naverlogin/ui/OAuthLoginDialogMng;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;->mIsLoginActivityStarted:Z

    return-void
.end method

.method static synthetic access$0(Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;)Lcom/nhn/android/naverlogin/ui/OAuthLoginDialogMng;
    .locals 1

    iget-object v0, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;->mDialogMng:Lcom/nhn/android/naverlogin/ui/OAuthLoginDialogMng;

    return-object v0
.end method

.method static synthetic access$1(Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2(Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;)Lcom/nhn/android/naverlogin/data/OAuthLoginData;
    .locals 1

    iget-object v0, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;->mOAuthLoginData:Lcom/nhn/android/naverlogin/data/OAuthLoginData;

    return-object v0
.end method

.method static synthetic access$3(Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;Lcom/nhn/android/naverlogin/data/OAuthErrorCode;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;->finishWithErrorResult(Lcom/nhn/android/naverlogin/data/OAuthErrorCode;)V

    return-void
.end method

.method static synthetic access$4(Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;->propagationResult(Z)V

    return-void
.end method

.method private finishWithErrorResult(Lcom/nhn/android/naverlogin/data/OAuthErrorCode;)V
    .locals 5

    const/4 v4, 0x0

    sget-boolean v2, Lcom/nhn/android/naverlogin/OAuthLoginDefine;->DEVELOPER_VERSION:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "GILSUB"

    const-string/jumbo v3, "Login finishWithErrorResult()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;

    iget-object v2, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;->setLastErrorCode(Lcom/nhn/android/naverlogin/data/OAuthErrorCode;)V

    invoke-virtual {p1}, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;->getDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;->setLastErrorDesc(Ljava/lang/String;)V

    const-string/jumbo v2, "oauth_error_code"

    invoke-virtual {p1}, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "oauth_error_desc"

    invoke-virtual {p1}, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;->getDesc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v4, v0}, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;->finish()V

    invoke-direct {p0, v4}, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;->propagationResult(Z)V

    return-void
.end method

.method private initData(Landroid/os/Bundle;)Z
    .locals 7

    const/4 v5, 0x0

    iput-object p0, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;

    iget-object v6, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;->mContext:Landroid/content/Context;

    invoke-direct {v3, v6}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;->getClientSecret()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;->getCallbackUrl()Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_0

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;->getClientName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;->mClientName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    sget-object v6, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;->CLIENT_ERROR_NO_CLIENTID:Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    invoke-direct {p0, v6}, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;->finishWithErrorResult(Lcom/nhn/android/naverlogin/data/OAuthErrorCode;)V

    :goto_1
    return v5

    :cond_0
    const-string/jumbo v6, "OAuthLoginData_state"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;->CLIENT_ERROR_NO_CLIENTSECRET:Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    invoke-direct {p0, v6}, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;->finishWithErrorResult(Lcom/nhn/android/naverlogin/data/OAuthErrorCode;)V

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;->mClientName:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    sget-object v6, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;->CLIENT_ERROR_NO_CLIENTNAME:Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    invoke-direct {p0, v6}, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;->finishWithErrorResult(Lcom/nhn/android/naverlogin/data/OAuthErrorCode;)V

    goto :goto_1

    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    sget-object v6, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;->CLIENT_ERROR_NO_CALLBACKURL:Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    invoke-direct {p0, v6}, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;->finishWithErrorResult(Lcom/nhn/android/naverlogin/data/OAuthErrorCode;)V

    goto :goto_1

    :cond_4
    new-instance v5, Lcom/nhn/android/naverlogin/data/OAuthLoginData;

    invoke-direct {v5, v1, v2, v0, v4}, Lcom/nhn/android/naverlogin/data/OAuthLoginData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;->mOAuthLoginData:Lcom/nhn/android/naverlogin/data/OAuthLoginData;

    const/4 v5, 0x1

    goto :goto_1
.end method

.method private propagationResult(Z)V
    .locals 2

    sget-object v1, Lcom/nhn/android/naverlogin/OAuthLogin;->mOAuthLoginHandler:Lcom/nhn/android/naverlogin/OAuthLoginHandler;

    if-eqz v1, :cond_0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->what:I

    sget-object v1, Lcom/nhn/android/naverlogin/OAuthLogin;->mOAuthLoginHandler:Lcom/nhn/android/naverlogin/OAuthLoginHandler;

    invoke-virtual {v1, v0}, Lcom/nhn/android/naverlogin/OAuthLoginHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private runOnlyOnce()V
    .locals 1

    iget-object v0, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;->mOAuthLoginData:Lcom/nhn/android/naverlogin/data/OAuthLoginData;

    if-nez v0, :cond_0

    sget-object v0, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;->CLIENT_ERROR_NO_CLIENTID:Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    invoke-direct {p0, v0}, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;->finishWithErrorResult(Lcom/nhn/android/naverlogin/data/OAuthErrorCode;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;->startLoginActivity()V

    goto :goto_0
.end method

.method private startLoginActivity()V
    .locals 9

    sget-boolean v0, Lcom/nhn/android/naverlogin/OAuthLoginDefine;->DEVELOPER_VERSION:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NaverLoginOAuth|OAuthLoginActivity"

    const-string/jumbo v1, "startLoginActivity()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v0, "ClientId"

    iget-object v1, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;->mOAuthLoginData:Lcom/nhn/android/naverlogin/data/OAuthLoginData;

    invoke-virtual {v1}, Lcom/nhn/android/naverlogin/data/OAuthLoginData;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "ClientCallbackUrl"

    iget-object v1, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;->mOAuthLoginData:Lcom/nhn/android/naverlogin/data/OAuthLoginData;

    invoke-virtual {v1}, Lcom/nhn/android/naverlogin/data/OAuthLoginData;->getCallbackUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "state"

    iget-object v1, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;->mOAuthLoginData:Lcom/nhn/android/naverlogin/data/OAuthLoginData;

    invoke-virtual {v1}, Lcom/nhn/android/naverlogin/data/OAuthLoginData;->getInitState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "app_name"

    iget-object v1, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;->mClientName:Ljava/lang/String;

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "oauth_sdk_version"

    const-string/jumbo v1, "4.1.4.1"

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.nhn.android.search.action.OAUTH2_LOGIN"

    invoke-static {v0, v1}, Lcom/nhn/android/naverlogin/util/DeviceAppInfo;->isIntentFilterExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/nhn/android/naverlogin/OAuthLoginDefine;->DEVELOPER_VERSION:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "NaverLoginOAuth|OAuthLoginActivity"

    const-string/jumbo v1, "startLoginActivity() with naapp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string/jumbo v0, "com.nhn.android.search"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "com.nhn.android.search.action.OAUTH2_LOGIN"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget v0, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;->REQUESTCODE_LOGIN:I

    invoke-virtual {p0, v8, v0}, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.naver.android.action.OAUTH2_LOGIN"

    invoke-static {v0, v1}, Lcom/nhn/android/naverlogin/util/DeviceAppInfo;->isIntentFilterExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/nhn/android/naverlogin/OAuthLoginDefine;->DEVELOPER_VERSION:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "NaverLoginOAuth|OAuthLoginActivity"

    const-string/jumbo v1, "startLoginActivity() with appstore"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string/jumbo v0, "com.naver.android.action.OAUTH2_LOGIN"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nhn/android/naverlogin/util/DeviceAppInfo;->getPrimaryNaverOAuth2ndAppPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v8, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    sget v0, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;->REQUESTCODE_LOGIN:I

    invoke-virtual {p0, v8, v0}, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    sget-boolean v0, Lcom/nhn/android/naverlogin/OAuthLoginDefine;->DEVELOPER_VERSION:Z

    if-eqz v0, :cond_6

    const-string/jumbo v0, "NaverLoginOAuth|OAuthLoginActivity"

    const-string/jumbo v1, "startLoginActivity() with webview"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v1, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    sget v2, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;->REQUESTCODE_LOGIN:I

    iget-object v0, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;->mOAuthLoginData:Lcom/nhn/android/naverlogin/data/OAuthLoginData;

    invoke-virtual {v0}, Lcom/nhn/android/naverlogin/data/OAuthLoginData;->getClientId()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;->mOAuthLoginData:Lcom/nhn/android/naverlogin/data/OAuthLoginData;

    invoke-virtual {v0}, Lcom/nhn/android/naverlogin/data/OAuthLoginData;->getInitState()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;->mOAuthLoginData:Lcom/nhn/android/naverlogin/data/OAuthLoginData;

    invoke-virtual {v0}, Lcom/nhn/android/naverlogin/data/OAuthLoginData;->getCallbackUrl()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;->startLoginWebviewActivity(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startLoginWebviewActivity(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "ClientId"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "ClientCallbackUrl"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "oauth_sdk_version"

    const-string/jumbo v2, "4.1.4.1"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    const/4 v7, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    if-nez p3, :cond_0

    sget-object v5, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;->CLIENT_USER_CANCEL:Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    invoke-direct {p0, v5}, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;->finishWithErrorResult(Lcom/nhn/android/naverlogin/data/OAuthErrorCode;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v5, "oauth_state"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "oauth_code"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "oauth_error_code"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "oauth_error_desc"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;->mOAuthLoginData:Lcom/nhn/android/naverlogin/data/OAuthLoginData;

    invoke-virtual {v5, v0, v4, v1, v2}, Lcom/nhn/android/naverlogin/data/OAuthLoginData;->setMiddleResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v5, Lcom/nhn/android/naverlogin/OAuthLoginDefine;->DEVELOPER_VERSION:Z

    if-eqz v5, :cond_1

    const-string/jumbo v5, "GILSUB"

    const-string/jumbo v6, "Login onActivityResult()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v3, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;

    iget-object v5, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;->fromString(Ljava/lang/String;)Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;->setLastErrorCode(Lcom/nhn/android/naverlogin/data/OAuthErrorCode;)V

    invoke-virtual {v3, v2}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;->setLastErrorDesc(Ljava/lang/String;)V

    invoke-virtual {p0, v7, p3}, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;->finish()V

    invoke-direct {p0, v7}, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;->propagationResult(Z)V

    goto :goto_0

    :cond_2
    new-instance v5, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity$GetAccessTokenTask;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity$GetAccessTokenTask;-><init>(Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity$GetAccessTokenTask;)V

    new-array v6, v7, [Ljava/lang/Void;

    invoke-virtual {v5, v6}, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity$GetAccessTokenTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget-boolean v0, Lcom/nhn/android/naverlogin/OAuthLoginDefine;->DEVELOPER_VERSION:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NaverLoginOAuth|OAuthLoginActivity"

    const-string/jumbo v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;->initData(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz p1, :cond_3

    const-string/jumbo v0, "IsLoginActivityStarted"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;->mIsLoginActivityStarted:Z

    :cond_3
    iget-boolean v0, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;->mIsLoginActivityStarted:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;->mIsLoginActivityStarted:Z

    sget-boolean v0, Lcom/nhn/android/naverlogin/OAuthLoginDefine;->DEVELOPER_VERSION:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, "NaverLoginOAuth|OAuthLoginActivity"

    const-string/jumbo v1, "onCreate() first"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-direct {p0}, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;->runOnlyOnce()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    sget-boolean v0, Lcom/nhn/android/naverlogin/OAuthLoginDefine;->DEVELOPER_VERSION:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NaverLoginOAuth|OAuthLoginActivity"

    const-string/jumbo v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    sget-boolean v0, Lcom/nhn/android/naverlogin/OAuthLoginDefine;->DEVELOPER_VERSION:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NaverLoginOAuth|OAuthLoginActivity"

    const-string/jumbo v1, "onRestoreInstanceState()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    const-string/jumbo v0, "IsLoginActivityStarted"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;->mIsLoginActivityStarted:Z

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    sget-boolean v0, Lcom/nhn/android/naverlogin/OAuthLoginDefine;->DEVELOPER_VERSION:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NaverLoginOAuth|OAuthLoginActivity"

    const-string/jumbo v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    sget-boolean v0, Lcom/nhn/android/naverlogin/OAuthLoginDefine;->DEVELOPER_VERSION:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NaverLoginOAuth|OAuthLoginActivity"

    const-string/jumbo v1, "Login onSaveInstanceState()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v0, "IsLoginActivityStarted"

    iget-boolean v1, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;->mIsLoginActivityStarted:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "OAuthLoginData_state"

    iget-object v1, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;->mOAuthLoginData:Lcom/nhn/android/naverlogin/data/OAuthLoginData;

    invoke-virtual {v1}, Lcom/nhn/android/naverlogin/data/OAuthLoginData;->getInitState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
