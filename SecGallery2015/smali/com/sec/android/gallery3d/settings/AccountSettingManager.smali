.class public Lcom/sec/android/gallery3d/settings/AccountSettingManager;
.super Ljava/lang/Object;
.source "AccountSettingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/settings/AccountSettingManager$OnAccountUpdatedListener;
    }
.end annotation


# static fields
.field private static final SAMSUNG_ACCOUNT_TYPE:Ljava/lang/String; = "com.osp.app.signin"

.field private static final TAG:Ljava/lang/String; = "AccountSettingManager"

.field private static accountsResult:[Landroid/accounts/Account;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/gallery3d/settings/AccountSettingManager$OnAccountUpdatedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnAccountsUpdateListener:Landroid/accounts/OnAccountsUpdateListener;

.field private mSamsungAccount:Landroid/accounts/Account;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/gallery3d/settings/AccountSettingManager;->accountsResult:[Landroid/accounts/Account;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingManager;->mListeners:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingManager;->mSamsungAccount:Landroid/accounts/Account;

    new-instance v0, Lcom/sec/android/gallery3d/settings/AccountSettingManager$1;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/settings/AccountSettingManager$1;-><init>(Lcom/sec/android/gallery3d/settings/AccountSettingManager;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingManager;->mOnAccountsUpdateListener:Landroid/accounts/OnAccountsUpdateListener;

    iput-object p1, p0, Lcom/sec/android/gallery3d/settings/AccountSettingManager;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/sec/android/gallery3d/settings/AccountSettingManager;->updateAuthAccounts()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/gallery3d/settings/AccountSettingManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/settings/AccountSettingManager;->updateAuthAccounts()V

    return-void
.end method

.method static synthetic access$102([Landroid/accounts/Account;)[Landroid/accounts/Account;
    .locals 0

    sput-object p0, Lcom/sec/android/gallery3d/settings/AccountSettingManager;->accountsResult:[Landroid/accounts/Account;

    return-object p0
.end method

.method private static getAllAccounts(Landroid/content/Context;)[Landroid/accounts/Account;
    .locals 8

    const/4 v5, 0x0

    new-array v3, v5, [Landroid/accounts/Account;

    new-instance v2, Ljava/lang/Thread;

    new-instance v5, Lcom/sec/android/gallery3d/settings/AccountSettingManager$2;

    invoke-direct {v5, p0}, Lcom/sec/android/gallery3d/settings/AccountSettingManager$2;-><init>(Landroid/content/Context;)V

    const-string/jumbo v6, "AccountSettingThread"

    invoke-direct {v2, v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    const-wide/16 v6, 0x1388

    invoke-virtual {v2, v6, v7}, Ljava/lang/Thread;->join(J)V

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    const-string/jumbo v5, "AccountSettingManager"

    const-string/jumbo v6, "Account Thread Interrupt!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    sget-object v5, Lcom/sec/android/gallery3d/settings/AccountSettingManager;->accountsResult:[Landroid/accounts/Account;

    if-eqz v5, :cond_0

    sget-object v5, Lcom/sec/android/gallery3d/settings/AccountSettingManager;->accountsResult:[Landroid/accounts/Account;

    invoke-virtual {v5}, [Landroid/accounts/Account;->clone()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, [Landroid/accounts/Account;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    const-string/jumbo v5, "AccountSettingManager"

    invoke-virtual {v4}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getSamsungAccount([Landroid/accounts/Account;)V
    .locals 4

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/gallery3d/settings/AccountSettingManager;->mSamsungAccount:Landroid/accounts/Account;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-eq v1, v2, :cond_0

    aget-object v0, p1, v1

    const-string/jumbo v2, "com.osp.app.signin"

    iget-object v3, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingManager;->mSamsungAccount:Landroid/accounts/Account;

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private notifySyncAccountsChanged()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/gallery3d/settings/AccountSettingManager;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/settings/AccountSettingManager$OnAccountUpdatedListener;

    iget-object v2, p0, Lcom/sec/android/gallery3d/settings/AccountSettingManager;->mSamsungAccount:Landroid/accounts/Account;

    invoke-interface {v0, v2}, Lcom/sec/android/gallery3d/settings/AccountSettingManager$OnAccountUpdatedListener;->onSyncAccountsUpdated(Landroid/accounts/Account;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateAuthAccounts()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/gallery3d/settings/AccountSettingManager;->getAllAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/settings/AccountSettingManager;->getSamsungAccount([Landroid/accounts/Account;)V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/settings/AccountSettingManager;->notifySyncAccountsChanged()V

    return-void
.end method


# virtual methods
.method public getSamsungAccount()Landroid/accounts/Account;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingManager;->mSamsungAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method onPause()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/settings/AccountSettingManager;->mOnAccountsUpdateListener:Landroid/accounts/OnAccountsUpdateListener;

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    return-void
.end method

.method onResume()V
    .locals 5

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/settings/AccountSettingManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/settings/AccountSettingManager;->mOnAccountsUpdateListener:Landroid/accounts/OnAccountsUpdateListener;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/gallery3d/settings/AccountSettingManager;->notifySyncAccountsChanged()V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AccountSettingManager"

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerOnAccountUpdatedListener(Lcom/sec/android/gallery3d/settings/AccountSettingManager$OnAccountUpdatedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterOnAccountUpdatedListener(Lcom/sec/android/gallery3d/settings/AccountSettingManager$OnAccountUpdatedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
