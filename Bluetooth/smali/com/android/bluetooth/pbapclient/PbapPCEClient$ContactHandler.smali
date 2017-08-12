.class Lcom/android/bluetooth/pbapclient/PbapPCEClient$ContactHandler;
.super Landroid/os/Handler;
.source "PbapPCEClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pbapclient/PbapPCEClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactHandler"
.end annotation


# static fields
.field public static final EVENT_ADD_ACCOUNT:I = 0x1

.field public static final EVENT_ADD_CONTACTS:I = 0x2

.field public static final EVENT_CLEANUP:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/pbapclient/PbapPCEClient;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/pbapclient/PbapPCEClient;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient$ContactHandler;->this$0:Lcom/android/bluetooth/pbapclient/PbapPCEClient;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private addAccount(Landroid/accounts/Account;)Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient$ContactHandler;->this$0:Lcom/android/bluetooth/pbapclient/PbapPCEClient;

    invoke-static {v0}, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->-get1(Lcom/android/bluetooth/pbapclient/PbapPCEClient;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, p1, v1, v1}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private removeAccount(Landroid/accounts/Account;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient$ContactHandler;->this$0:Lcom/android/bluetooth/pbapclient/PbapPCEClient;

    invoke-static {v0}, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->-get1(Lcom/android/bluetooth/pbapclient/PbapPCEClient;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/accounts/AccountManager;->removeAccountExplicitly(Landroid/accounts/Account;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string/jumbo v0, "PbapPCEClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to remove account "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient$ContactHandler;->this$0:Lcom/android/bluetooth/pbapclient/PbapPCEClient;

    invoke-static {v2}, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->-get0(Lcom/android/bluetooth/pbapclient/PbapPCEClient;)Landroid/accounts/Account;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method private removeUncleanAccounts()V
    .locals 7

    iget-object v2, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient$ContactHandler;->this$0:Lcom/android/bluetooth/pbapclient/PbapPCEClient;

    invoke-static {v2}, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->-get1(Lcom/android/bluetooth/pbapclient/PbapPCEClient;)Landroid/accounts/AccountManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient$ContactHandler;->this$0:Lcom/android/bluetooth/pbapclient/PbapPCEClient;

    invoke-static {v3}, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->-get4(Lcom/android/bluetooth/pbapclient/PbapPCEClient;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a00d5

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    const-string/jumbo v2, "PbapPCEClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " unclean accounts"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    const-string/jumbo v4, "PbapPCEClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Deleting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/android/bluetooth/pbapclient/PbapPCEClient$ContactHandler;->removeAccount(Landroid/accounts/Account;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x0

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    const-string/jumbo v2, "PbapPCEClient"

    const-string/jumbo v3, "Unknown Request to Contact Handler"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Landroid/accounts/Account;

    if-eqz v2, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/accounts/Account;

    invoke-direct {p0, v0}, Lcom/android/bluetooth/pbapclient/PbapPCEClient$ContactHandler;->addAccount(Landroid/accounts/Account;)Z

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "PbapPCEClient"

    const-string/jumbo v3, "invalid Instance in Contact Handler: Add Account"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Lcom/android/bluetooth/pbapclient/PullRequest;

    if-eqz v2, :cond_1

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/bluetooth/pbapclient/PullRequest;

    invoke-virtual {v1}, Lcom/android/bluetooth/pbapclient/PullRequest;->onPullComplete()V

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "PbapPCEClient"

    const-string/jumbo v3, "invalid Instance in Contact Handler: Add Contacts"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    invoke-direct {p0}, Lcom/android/bluetooth/pbapclient/PbapPCEClient$ContactHandler;->removeUncleanAccounts()V

    iget-object v2, p0, Lcom/android/bluetooth/pbapclient/PbapPCEClient$ContactHandler;->this$0:Lcom/android/bluetooth/pbapclient/PbapPCEClient;

    invoke-static {v2}, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->-get4(Lcom/android/bluetooth/pbapclient/PbapPCEClient;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
