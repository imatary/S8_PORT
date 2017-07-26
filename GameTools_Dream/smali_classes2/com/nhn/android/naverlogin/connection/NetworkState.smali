.class public Lcom/nhn/android/naverlogin/connection/NetworkState;
.super Ljava/lang/Object;
.source "NetworkState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nhn/android/naverlogin/connection/NetworkState$RetryListener;
    }
.end annotation


# static fields
.field static shown:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/nhn/android/naverlogin/connection/NetworkState;->shown:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkConnectivity(Landroid/content/Context;ZLcom/nhn/android/naverlogin/connection/NetworkState$RetryListener;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/nhn/android/naverlogin/connection/NetworkState;->isDataConnected(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return v1

    :cond_0
    if-eqz p1, :cond_2

    if-nez p2, :cond_1

    sget-object v3, Lcom/nhn/android/naverlogin/data/OAuthLoginString;->naveroauthlogin_string_network_state_not_available:Lcom/nhn/android/naverlogin/data/OAuthLoginString;

    invoke-virtual {v3, p0}, Lcom/nhn/android/naverlogin/data/OAuthLoginString;->getString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    move v1, v2

    goto :goto_0

    :cond_1
    invoke-static {p0, p2}, Lcom/nhn/android/naverlogin/connection/NetworkState;->showRetry(Landroid/content/Context;Lcom/nhn/android/naverlogin/connection/NetworkState$RetryListener;)V

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public static getNetworkState(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "other"

    invoke-static {p0}, Lcom/nhn/android/naverlogin/connection/NetworkState;->is3GConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v0, "cell"

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/nhn/android/naverlogin/connection/NetworkState;->isWifiConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "wifi"

    goto :goto_0
.end method

.method public static is3GConnected(Landroid/content/Context;)Z
    .locals 5

    const/4 v3, 0x0

    const/4 v2, 0x0

    :try_start_0
    const-string/jumbo v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    :goto_0
    return v3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isDataConnected(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    const-string/jumbo v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isWifiConnected(Landroid/content/Context;)Z
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    :try_start_0
    const-string/jumbo v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_0

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    return v3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static showRetry(Landroid/content/Context;Lcom/nhn/android/naverlogin/connection/NetworkState$RetryListener;)V
    .locals 4

    sget-boolean v2, Lcom/nhn/android/naverlogin/connection/NetworkState;->shown:Z

    if-nez v2, :cond_0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v2, p0, Landroid/app/Activity;

    if-eqz v2, :cond_2

    move-object v2, p0

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v2, 0x1

    sput-boolean v2, Lcom/nhn/android/naverlogin/connection/NetworkState;->shown:Z

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1080027

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    sget-object v2, Lcom/nhn/android/naverlogin/data/OAuthLoginString;->naveroauthlogin_string_network_state_not_available:Lcom/nhn/android/naverlogin/data/OAuthLoginString;

    invoke-virtual {v2, p0}, Lcom/nhn/android/naverlogin/data/OAuthLoginString;->getString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    sget-object v2, Lcom/nhn/android/naverlogin/data/OAuthLoginString;->naveroauthlogin_string_msg_retry:Lcom/nhn/android/naverlogin/data/OAuthLoginString;

    invoke-virtual {v2, p0}, Lcom/nhn/android/naverlogin/data/OAuthLoginString;->getString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/nhn/android/naverlogin/connection/NetworkState$1;

    invoke-direct {v3, p0, p1}, Lcom/nhn/android/naverlogin/connection/NetworkState$1;-><init>(Landroid/content/Context;Lcom/nhn/android/naverlogin/connection/NetworkState$RetryListener;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    sget-object v2, Lcom/nhn/android/naverlogin/data/OAuthLoginString;->naveroauthlogin_string_msg_cancel:Lcom/nhn/android/naverlogin/data/OAuthLoginString;

    invoke-virtual {v2, p0}, Lcom/nhn/android/naverlogin/data/OAuthLoginString;->getString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/nhn/android/naverlogin/connection/NetworkState$2;

    invoke-direct {v3, p0, p1}, Lcom/nhn/android/naverlogin/connection/NetworkState$2;-><init>(Landroid/content/Context;Lcom/nhn/android/naverlogin/connection/NetworkState$RetryListener;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/nhn/android/naverlogin/connection/NetworkState$3;

    invoke-direct {v2, p0, p1}, Lcom/nhn/android/naverlogin/connection/NetworkState$3;-><init>(Landroid/content/Context;Lcom/nhn/android/naverlogin/connection/NetworkState$RetryListener;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    :try_start_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
