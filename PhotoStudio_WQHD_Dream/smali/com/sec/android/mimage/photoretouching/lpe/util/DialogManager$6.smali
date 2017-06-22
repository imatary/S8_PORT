.class Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$6;
.super Ljava/lang/Object;
.source "DialogManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$ed:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$6;->val$ed:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mDialogListener:Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$DialogListener;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;)Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$DialogListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$6;->val$ed:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$DialogListener;->onOther(Ljava/lang/Object;)V

    return-void
.end method
