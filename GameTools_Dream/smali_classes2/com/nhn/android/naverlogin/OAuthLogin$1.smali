.class Lcom/nhn/android/naverlogin/OAuthLogin$1;
.super Ljava/lang/Object;
.source "OAuthLogin.java"

# interfaces
.implements Lcom/nhn/android/naverlogin/connection/NetworkState$RetryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nhn/android/naverlogin/OAuthLogin;->startOauthLoginActivity(Landroid/app/Activity;Lcom/nhn/android/naverlogin/OAuthLoginHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nhn/android/naverlogin/OAuthLogin;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$oauthLoginHandler:Lcom/nhn/android/naverlogin/OAuthLoginHandler;


# direct methods
.method constructor <init>(Lcom/nhn/android/naverlogin/OAuthLogin;Landroid/app/Activity;Lcom/nhn/android/naverlogin/OAuthLoginHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/nhn/android/naverlogin/OAuthLogin$1;->this$0:Lcom/nhn/android/naverlogin/OAuthLogin;

    iput-object p2, p0, Lcom/nhn/android/naverlogin/OAuthLogin$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/nhn/android/naverlogin/OAuthLogin$1;->val$oauthLoginHandler:Lcom/nhn/android/naverlogin/OAuthLoginHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nhn/android/naverlogin/OAuthLogin$1;->this$0:Lcom/nhn/android/naverlogin/OAuthLogin;

    iget-object v1, p0, Lcom/nhn/android/naverlogin/OAuthLogin$1;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/nhn/android/naverlogin/OAuthLogin$1;->val$oauthLoginHandler:Lcom/nhn/android/naverlogin/OAuthLoginHandler;

    invoke-virtual {v0, v1, v2}, Lcom/nhn/android/naverlogin/OAuthLogin;->startOauthLoginActivity(Landroid/app/Activity;Lcom/nhn/android/naverlogin/OAuthLoginHandler;)V

    :cond_0
    return-void
.end method
