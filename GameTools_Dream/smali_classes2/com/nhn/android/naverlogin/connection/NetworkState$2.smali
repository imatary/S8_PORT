.class Lcom/nhn/android/naverlogin/connection/NetworkState$2;
.super Ljava/lang/Object;
.source "NetworkState.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nhn/android/naverlogin/connection/NetworkState;->showRetry(Landroid/content/Context;Lcom/nhn/android/naverlogin/connection/NetworkState$RetryListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$retryListener:Lcom/nhn/android/naverlogin/connection/NetworkState$RetryListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/nhn/android/naverlogin/connection/NetworkState$RetryListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nhn/android/naverlogin/connection/NetworkState$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/nhn/android/naverlogin/connection/NetworkState$2;->val$retryListener:Lcom/nhn/android/naverlogin/connection/NetworkState$RetryListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v1, 0x0

    sput-boolean v1, Lcom/nhn/android/naverlogin/connection/NetworkState;->shown:Z

    iget-object v0, p0, Lcom/nhn/android/naverlogin/connection/NetworkState$2;->val$context:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nhn/android/naverlogin/connection/NetworkState$2;->val$context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nhn/android/naverlogin/connection/NetworkState$2;->val$retryListener:Lcom/nhn/android/naverlogin/connection/NetworkState$RetryListener;

    invoke-interface {v0, v1}, Lcom/nhn/android/naverlogin/connection/NetworkState$RetryListener;->onResult(Z)V

    goto :goto_0
.end method
