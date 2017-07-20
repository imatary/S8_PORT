.class Lcom/android/phone/BackupRestoreReceiver$4;
.super Ljava/lang/Object;
.source "BackupRestoreReceiver.java"

# interfaces
.implements Lcom/samsung/android/scloud/oem/lib/FileTool$PDMProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/BackupRestoreReceiver;->restore(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BackupRestoreReceiver;

.field final synthetic val$listener:Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;


# direct methods
.method constructor <init>(Lcom/android/phone/BackupRestoreReceiver;Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/BackupRestoreReceiver$4;->this$0:Lcom/android/phone/BackupRestoreReceiver;

    iput-object p2, p0, Lcom/android/phone/BackupRestoreReceiver$4;->val$listener:Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transferred(JJ)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/BackupRestoreReceiver$4;->val$listener:Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;->onProgress(JJ)V

    return-void
.end method
