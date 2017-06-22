.class Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$4;
.super Ljava/lang/Object;
.source "DialogManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$img:Landroid/widget/ImageButton;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;Landroid/widget/ImageButton;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$4;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$4;->val$img:Landroid/widget/ImageButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$4;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mDialogListener:Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$DialogListener;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;)Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$DialogListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$4;->val$img:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$DialogListener;->onOther(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$4;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mCurrDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
