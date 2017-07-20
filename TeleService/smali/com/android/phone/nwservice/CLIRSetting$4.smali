.class Lcom/android/phone/nwservice/CLIRSetting$4;
.super Ljava/lang/Object;
.source "CLIRSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/nwservice/CLIRSetting;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/nwservice/CLIRSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/nwservice/CLIRSetting;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/nwservice/CLIRSetting$4;->this$0:Lcom/android/phone/nwservice/CLIRSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/nwservice/CLIRSetting$4;->this$0:Lcom/android/phone/nwservice/CLIRSetting;

    iget-object v1, p0, Lcom/android/phone/nwservice/CLIRSetting$4;->this$0:Lcom/android/phone/nwservice/CLIRSetting;

    iget v1, v1, Lcom/android/phone/nwservice/CLIRSetting;->msgID:I

    invoke-virtual {v0, v1}, Lcom/android/phone/nwservice/CLIRSetting;->removeDialog(I)V

    return-void
.end method
