.class Lcom/sec/android/gallery3d/settings/AccountSettingManager$1;
.super Ljava/lang/Object;
.source "AccountSettingManager.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/settings/AccountSettingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/settings/AccountSettingManager;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/settings/AccountSettingManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/settings/AccountSettingManager$1;->this$0:Lcom/sec/android/gallery3d/settings/AccountSettingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingManager$1;->this$0:Lcom/sec/android/gallery3d/settings/AccountSettingManager;

    # invokes: Lcom/sec/android/gallery3d/settings/AccountSettingManager;->updateAuthAccounts()V
    invoke-static {v0}, Lcom/sec/android/gallery3d/settings/AccountSettingManager;->access$000(Lcom/sec/android/gallery3d/settings/AccountSettingManager;)V

    return-void
.end method
