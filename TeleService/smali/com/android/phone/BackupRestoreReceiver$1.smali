.class Lcom/android/phone/BackupRestoreReceiver$1;
.super Ljava/lang/Object;
.source "BackupRestoreReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/BackupRestoreReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BackupRestoreReceiver;

.field final synthetic val$filepath:Ljava/lang/String;

.field final synthetic val$saveKey:Ljava/lang/String;

.field final synthetic val$securityLevel:I

.field final synthetic val$sessiontime:Ljava/lang/String;

.field final synthetic val$source:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/phone/BackupRestoreReceiver;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/BackupRestoreReceiver$1;->this$0:Lcom/android/phone/BackupRestoreReceiver;

    iput-object p2, p0, Lcom/android/phone/BackupRestoreReceiver$1;->val$filepath:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/phone/BackupRestoreReceiver$1;->val$saveKey:Ljava/lang/String;

    iput p4, p0, Lcom/android/phone/BackupRestoreReceiver$1;->val$securityLevel:I

    iput-object p5, p0, Lcom/android/phone/BackupRestoreReceiver$1;->val$source:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/phone/BackupRestoreReceiver$1;->val$sessiontime:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v1, p0, Lcom/android/phone/BackupRestoreReceiver$1;->this$0:Lcom/android/phone/BackupRestoreReceiver;

    iget-object v2, p0, Lcom/android/phone/BackupRestoreReceiver$1;->val$filepath:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/BackupRestoreReceiver$1;->val$saveKey:Ljava/lang/String;

    iget v4, p0, Lcom/android/phone/BackupRestoreReceiver$1;->val$securityLevel:I

    invoke-static {v1, v2, v3, v4}, Lcom/android/phone/BackupRestoreReceiver;->-wrap0(Lcom/android/phone/BackupRestoreReceiver;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/phone/BackupRestoreReceiver$1;->this$0:Lcom/android/phone/BackupRestoreReceiver;

    const-string/jumbo v2, "com.samsung.android.intent.action.RESPONSE_BACKUP_CALL_SETTING"

    iget-object v3, p0, Lcom/android/phone/BackupRestoreReceiver$1;->val$source:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/phone/BackupRestoreReceiver$1;->val$sessiontime:Ljava/lang/String;

    invoke-static {v1, v2, v0, v3, v4}, Lcom/android/phone/BackupRestoreReceiver;->-wrap2(Lcom/android/phone/BackupRestoreReceiver;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
