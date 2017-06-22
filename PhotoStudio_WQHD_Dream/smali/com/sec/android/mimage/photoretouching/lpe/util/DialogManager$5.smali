.class Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$5;
.super Ljava/lang/Object;
.source "DialogManager.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;

.field final synthetic val$tv:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$5;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$5;->val$tv:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$5;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mDialogListener:Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$DialogListener;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;)Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$DialogListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$5;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mDialogListener:Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$DialogListener;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;)Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$DialogListener;

    move-result-object v0

    mul-int/lit8 v1, p2, 0x2d

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v2

    div-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$DialogListener;->onOther(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$5;->val$tv:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    mul-int/lit8 v2, p2, 0x2d

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v3

    div-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
