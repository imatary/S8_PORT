.class Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$7;
.super Ljava/lang/Object;
.source "NetworkOperatorsLGT.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;


# direct methods
.method constructor <init>(Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$7;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;->getDataState()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mDisconnectAutoSelectDialogListener: state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->-wrap7(Ljava/lang/String;)V

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    const-string/jumbo v1, "mDisconnectAutoSelectDialogListener : disableDataConnectivity"

    invoke-static {v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->-wrap7(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$7;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;

    invoke-static {v1, v3}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->-wrap11(Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;Z)V

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$7;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;

    const/16 v2, 0x12c

    invoke-virtual {v1, v2}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->removeDialog(I)V

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$7;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;

    invoke-virtual {v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d0c68

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_1
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$7;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;

    invoke-static {v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->-get0(Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;)I

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mDisconnectAutoSelectDialogListener : DATA_DISCONNECTED : mActionType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$7;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;

    invoke-static {v2}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->-get0(Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->-wrap7(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$7;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;

    const/16 v2, -0x2712

    invoke-static {v1, v2}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->-set1(Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;I)I

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$7;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;

    invoke-static {v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->-wrap13(Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;)V

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mDisconnectAutoSelectDialogListener : else mActionType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$7;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;

    invoke-static {v2}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->-get0(Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->-wrap7(Ljava/lang/String;)V

    goto :goto_0
.end method
